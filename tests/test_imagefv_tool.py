import importlib.util
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


class ImagefvToolTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.stock_path = ROOT / "images" / "imagefv_stock.img"
        cls.data = cls.stock_path.read_bytes()
        cls.image = imagefv_tool.SplashImage(cls.data)
        cls.checked_in_path = ROOT / "images" / "imagefv.img"
        cls.checked_in_data = cls.checked_in_path.read_bytes()
        cls.checked_in_image = imagefv_tool.SplashImage(cls.checked_in_data)

    def _modified_logo(self, tmp: Path) -> Path:
        logo = next(f for f in self.image.inner.files if f.name == "logo_m_unlock.bmp")
        raw = next(s for s in logo.sections if s.type == imagefv_tool.SECTION_TYPE_RAW)
        bmp = bytearray(raw.data)
        pixel_offset = struct.unpack_from("<I", bmp, 10)[0]
        bmp[pixel_offset] ^= 0x01
        path = tmp / "logo_m_unlock.bmp"
        path.write_bytes(bytes(bmp))
        return path

    def test_stock_image_parses_and_hashes_match(self):
        self.assertEqual(len(self.image.inner.files), 17)
        self.assertIn("logo_m_unlock.bmp", self.image.image_names())
        self.assertTrue(self.image.outer.header_valid())
        self.assertTrue(self.image.inner.header_valid())
        self.assertTrue(self.image.hash.matches(self.data))
        self.assertTrue(self.image.hash.oem_signature_valid())

    def test_checked_in_image_is_stock_and_signed(self):
        self.assertEqual(self.checked_in_data, self.data)
        self.assertEqual(len(self.checked_in_image.inner.files), 17)
        self.assertTrue(self.checked_in_image.outer.header_valid())
        self.assertTrue(self.checked_in_image.inner.header_valid())
        self.assertTrue(self.checked_in_image.hash.matches(self.checked_in_data))
        self.assertTrue(self.checked_in_image.hash.oem_signature_valid())

    def test_unchanged_repack_preserves_signed_image(self):
        logo = next(f for f in self.image.inner.files if f.name == "logo_m_unlock.bmp")
        raw = next(s for s in logo.sections if s.type == imagefv_tool.SECTION_TYPE_RAW)
        with tempfile.TemporaryDirectory() as tmp:
            bmp = Path(tmp) / "logo_m_unlock.bmp"
            bmp.write_bytes(raw.data)
            result = self.image.repack({"logo_m_unlock.bmp": bmp})
        self.assertEqual(result, self.data)
        self.assertTrue(imagefv_tool.SplashImage(result).hash.oem_signature_valid())

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
