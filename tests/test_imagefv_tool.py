import hashlib
import importlib.util
import io
import struct
import tempfile
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SPEC = importlib.util.spec_from_file_location(
    "imagefv_tool", ROOT / "tools" / "imagefv_tool.py"
)
imagefv_tool = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(imagefv_tool)

CUSTOM_LOGO_SHA256 = (
    "714d280878b83652810316d4b2a19628b34a42bb8fe29c24b3bf7d578db24876"
)


class ImagefvToolTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.stock_path = ROOT / "images" / "imagefv_stock.img"
        cls.data = cls.stock_path.read_bytes()
        cls.image = imagefv_tool.SplashImage(cls.data)
        cls.checked_in_path = ROOT / "images" / "imagefv.img"
        cls.checked_in_data = cls.checked_in_path.read_bytes()
        cls.checked_in_image = imagefv_tool.SplashImage(cls.checked_in_data)
        cls.rehashed_path = ROOT / "images" / "imagefv_rehashed.img"
        cls.rehashed_data = cls.rehashed_path.read_bytes()
        cls.rehashed_image = imagefv_tool.SplashImage(cls.rehashed_data)

    def _modified_logo(self, tmp: Path) -> Path:
        logo = next(f for f in self.image.inner.files if f.name == "logo_m_unlock.bmp")
        raw = next(s for s in logo.sections if s.type == imagefv_tool.SECTION_TYPE_RAW)
        bmp = bytearray(raw.data)
        pixel_offset = struct.unpack_from("<I", bmp, 10)[0]
        bmp[pixel_offset] ^= 0x01
        path = tmp / "logo_m_unlock.bmp"
        path.write_bytes(bytes(bmp))
        return path

    @staticmethod
    def _raw_images(image: "imagefv_tool.SplashImage") -> dict[str, bytes]:
        result = {}
        for file in image.inner.files:
            raw = next(
                (s for s in file.sections if s.type == imagefv_tool.SECTION_TYPE_RAW),
                None,
            )
            if file.name and raw is not None:
                result[file.name] = raw.data
        return result

    def test_stock_image_parses_and_hashes_match(self):
        self.assertEqual(len(self.image.inner.files), 17)
        self.assertIn("logo_m_unlock.bmp", self.image.image_names())
        self.assertTrue(self.image.outer.header_valid())
        self.assertTrue(self.image.inner.header_valid())
        self.assertTrue(self.image.hash.matches(self.data))
        self.assertTrue(self.image.hash.oem_signature_valid())

    def test_checked_in_image_has_new_logo_and_valid_oem_signature(self):
        self.assertNotEqual(self.checked_in_data, self.data)
        self.assertEqual(len(self.checked_in_image.inner.files), 17)
        self.assertTrue(self.checked_in_image.outer.header_valid())
        self.assertTrue(self.checked_in_image.inner.header_valid())
        self.assertFalse(self.checked_in_image.hash.matches(self.checked_in_data))
        self.assertTrue(self.checked_in_image.hash.oem_signature_valid())
        logo = self._raw_images(self.checked_in_image)["logo_m_unlock.bmp"]
        self.assertEqual(hashlib.sha256(logo).hexdigest(), CUSTOM_LOGO_SHA256)

    def test_rehashed_build_is_self_consistent_but_unsigned(self):
        self.assertNotEqual(self.rehashed_data, self.data)
        self.assertTrue(self.rehashed_image.outer.header_valid())
        self.assertTrue(self.rehashed_image.inner.header_valid())
        self.assertTrue(self.rehashed_image.hash.matches(self.rehashed_data))
        self.assertFalse(self.rehashed_image.hash.oem_signature_valid())
        logo = self._raw_images(self.rehashed_image)["logo_m_unlock.bmp"]
        self.assertEqual(hashlib.sha256(logo).hexdigest(), CUSTOM_LOGO_SHA256)

    def test_only_logo_m_unlock_changed_in_custom_builds(self):
        stock = self._raw_images(self.image)
        for custom_image in (self.checked_in_image, self.rehashed_image):
            custom = self._raw_images(custom_image)
            self.assertEqual(set(custom), set(stock))
            for name in stock:
                if name == "logo_m_unlock.bmp":
                    self.assertNotEqual(custom[name], stock[name])
                else:
                    self.assertEqual(custom[name], stock[name], name)

    def test_unchanged_repack_preserves_signed_image(self):
        logo = next(f for f in self.image.inner.files if f.name == "logo_m_unlock.bmp")
        raw = next(s for s in logo.sections if s.type == imagefv_tool.SECTION_TYPE_RAW)
        with tempfile.TemporaryDirectory() as tmp:
            bmp = Path(tmp) / "logo_m_unlock.bmp"
            bmp.write_bytes(raw.data)
            result = self.image.repack({"logo_m_unlock.bmp": bmp})
        self.assertEqual(result, self.data)
        self.assertTrue(imagefv_tool.SplashImage(result).hash.oem_signature_valid())

    @unittest.skipUnless(imagefv_tool.HAVE_PIL, "Pillow is required for PNG input")
    def test_transparent_png_is_flattened_onto_black(self):
        from PIL import Image

        logo = next(f for f in self.image.inner.files if f.name == "logo_m_unlock.bmp")
        raw = next(s for s in logo.sections if s.type == imagefv_tool.SECTION_TYPE_RAW)
        with tempfile.TemporaryDirectory() as tmp:
            image = Image.new("RGBA", (300, 2400), (255, 255, 255, 0))
            image.putpixel((150, 1200), (255, 255, 255, 255))
            path = Path(tmp) / "logo.png"
            image.save(path, "PNG")
            result = self.image._normalise_replacement("logo_m_unlock.bmp", path)
        decoded = Image.open(io.BytesIO(result)).convert("RGB")
        self.assertEqual(decoded.getpixel((0, 0)), (0, 0, 0))
        self.assertEqual(decoded.getpixel((150, 1200)), (255, 255, 255))
        self.assertEqual(len(result), len(raw.data))

    def test_modified_image_rebuilds_uefi_but_invalidates_signature(self):
        with tempfile.TemporaryDirectory() as tmp:
            path = self._modified_logo(Path(tmp))
            result = self.image.repack({"logo_m_unlock.bmp": path})
            output = Path(tmp) / "imagefv.img"
            output.write_bytes(result)
            check = imagefv_tool.SplashImage(result)
            self.assertTrue(check.outer.header_valid())
            self.assertTrue(check.inner.header_valid())
            self.assertTrue(check.hash.matches(result))
            self.assertFalse(check.hash.oem_signature_valid())
            self.assertNotEqual(result, self.data)
            self.assertEqual(imagefv_tool.main(["verify", str(output)]), 1)

    def test_preserve_oem_signature_keeps_signature_but_not_hashes(self):
        with tempfile.TemporaryDirectory() as tmp:
            path = self._modified_logo(Path(tmp))
            output = Path(tmp) / "imagefv.img"
            args = [
                "repack",
                str(self.stock_path),
                "-o",
                str(output),
                "--replace",
                f"logo_m_unlock={path}",
                "--preserve-oem-signature",
            ]
            self.assertEqual(imagefv_tool.main(args), 0)
            result = output.read_bytes()
            check = imagefv_tool.SplashImage(result)
            self.assertFalse(check.hash.matches(result))
            self.assertTrue(check.hash.oem_signature_valid())
            self.assertEqual(imagefv_tool.main(["verify", str(output)]), 1)

    def test_repack_refuses_unsigned_output_without_override(self):
        with tempfile.TemporaryDirectory() as tmp:
            path = self._modified_logo(Path(tmp))
            output = Path(tmp) / "imagefv.img"
            args = [
                "repack",
                str(self.stock_path),
                "-o",
                str(output),
                "--replace",
                f"logo_m_unlock={path}",
            ]
            self.assertEqual(imagefv_tool.main(args), 2)
            self.assertFalse(output.exists())

            self.assertEqual(imagefv_tool.main(args + ["--allow-unsigned"]), 0)
            self.assertTrue(output.exists())
            self.assertEqual(imagefv_tool.main(["verify", str(output)]), 1)


if __name__ == "__main__":
    unittest.main()
