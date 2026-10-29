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
CUSTOM_REDMI_LOGO_SHA256 = (
    "8047e412831ecbd109b6c86a2aeee0d9f61995f84c59939bde18e31c611c364d"
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
        cls.redmi_path = ROOT / "images" / "imagefv_r_unlock.img"
        cls.redmi_data = cls.redmi_path.read_bytes()
        cls.redmi_image = imagefv_tool.SplashImage(cls.redmi_data)
        cls.redmi_rehashed_path = ROOT / "images" / "imagefv_r_unlock_rehashed.img"
        cls.redmi_rehashed_data = cls.redmi_rehashed_path.read_bytes()
        cls.redmi_rehashed_image = imagefv_tool.SplashImage(cls.redmi_rehashed_data)
        cls.combined_path = ROOT / "images" / "imagefv_mr_unlock.img"
        cls.combined_data = cls.combined_path.read_bytes()
        cls.combined_image = imagefv_tool.SplashImage(cls.combined_data)
        cls.combined_rehashed_path = ROOT / "images" / "imagefv_mr_unlock_rehashed.img"
        cls.combined_rehashed_data = cls.combined_rehashed_path.read_bytes()
        cls.combined_rehashed_image = imagefv_tool.SplashImage(
            cls.combined_rehashed_data
        )
        cls.all_logo_path = ROOT / "images" / "imagefv_all_logo.img"
        cls.all_logo_data = cls.all_logo_path.read_bytes()
        cls.all_logo_image = imagefv_tool.SplashImage(cls.all_logo_data)
        cls.all_logo_rehashed_path = (
            ROOT / "images" / "imagefv_all_logo_rehashed.img"
        )
        cls.all_logo_rehashed_data = cls.all_logo_rehashed_path.read_bytes()
        cls.all_logo_rehashed_image = imagefv_tool.SplashImage(
            cls.all_logo_rehashed_data
        )

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
        report = self.image.report()
        self.assertTrue(report["oem_signature_and_hash_table_valid"])
        self.assertIsNone(report["fully_authenticated"])
        self.assertIsNone(report["certificate_chain_trusted"])

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

    def test_redmi_builds_only_change_logo_r_unlock(self):
        stock = self._raw_images(self.image)
        for custom_image in (self.redmi_image, self.redmi_rehashed_image):
            custom = self._raw_images(custom_image)
            self.assertEqual(set(custom), set(stock))
            for name in stock:
                if name == "logo_r_unlock.bmp":
                    self.assertNotEqual(custom[name], stock[name])
                    self.assertEqual(
                        hashlib.sha256(custom[name]).hexdigest(),
                        CUSTOM_REDMI_LOGO_SHA256,
                    )
                else:
                    self.assertEqual(custom[name], stock[name], name)

    def test_redmi_signature_preserving_and_rehashed_states(self):
        self.assertFalse(self.redmi_image.hash.matches(self.redmi_data))
        self.assertTrue(self.redmi_image.hash.oem_signature_valid())
        self.assertTrue(
            self.redmi_rehashed_image.hash.matches(self.redmi_rehashed_data)
        )
        self.assertFalse(self.redmi_rehashed_image.hash.oem_signature_valid())

    def test_combined_builds_change_both_unlock_logos(self):
        stock = self._raw_images(self.image)
        for custom_image in (self.combined_image, self.combined_rehashed_image):
            custom = self._raw_images(custom_image)
            self.assertEqual(set(custom), set(stock))
            self.assertEqual(
                hashlib.sha256(custom["logo_m_unlock.bmp"]).hexdigest(),
                CUSTOM_LOGO_SHA256,
            )
            self.assertEqual(
                hashlib.sha256(custom["logo_r_unlock.bmp"]).hexdigest(),
                CUSTOM_REDMI_LOGO_SHA256,
            )
            for name in stock:
                if name in ("logo_m_unlock.bmp", "logo_r_unlock.bmp"):
                    continue
                self.assertEqual(custom[name], stock[name], name)

    def test_all_logo_builds_change_every_logo_resource(self):
        stock = self._raw_images(self.image)
        logo_names = set(self.image.logo_names())
        self.assertEqual(len(logo_names), 8)
        self.assertIn("logo_fastboot.bmp", logo_names)
        self.assertIn("logo_destory.bmp", logo_names)
        for custom_image in (self.all_logo_image, self.all_logo_rehashed_image):
            custom = self._raw_images(custom_image)
            self.assertEqual(set(custom), set(stock))
            for name in stock:
                if name in logo_names:
                    self.assertNotEqual(custom[name], stock[name], name)
                    self.assertEqual(
                        imagefv_tool.bmp_info(custom[name], name)["width"],
                        imagefv_tool.bmp_info(stock[name], name)["width"],
                    )
                else:
                    self.assertEqual(custom[name], stock[name], name)

    def test_all_logo_builds_have_expected_authentication_states(self):
        self.assertFalse(self.all_logo_image.hash.matches(self.all_logo_data))
        self.assertTrue(self.all_logo_image.hash.oem_signature_valid())
        self.assertEqual(
            self.all_logo_image.validation_failures(check_signature=False),
            ["Qualcomm hash table does not match the ELF segments"],
        )
        self.assertTrue(
            self.all_logo_rehashed_image.hash.matches(self.all_logo_rehashed_data)
        )
        self.assertFalse(
            self.all_logo_rehashed_image.hash.oem_signature_valid()
        )
        self.assertEqual(
            self.all_logo_rehashed_image.validation_failures(check_signature=False),
            [],
        )

    @unittest.skipUnless(imagefv_tool.HAVE_PIL, "Pillow is required to fit logos")
    def test_replace_logo_fits_every_slot(self):
        source = ROOT / "splash" / "logo_m_unlock.png"
        with tempfile.TemporaryDirectory() as tmp:
            output = Path(tmp) / "imagefv.img"
            args = [
                "repack",
                str(self.stock_path),
                "-o",
                str(output),
                "--replace-logo",
                str(source),
                "--preserve-oem-signature",
            ]
            self.assertEqual(imagefv_tool.main(args), 0)
            result = imagefv_tool.SplashImage(output.read_bytes())
        stock = self._raw_images(self.image)
        fitted = self._raw_images(result)
        for name in self.image.logo_names():
            stock_info = imagefv_tool.bmp_info(stock[name], name)
            fitted_info = imagefv_tool.bmp_info(fitted[name], name)
            self.assertEqual(fitted_info["width"], stock_info["width"])
            self.assertEqual(fitted_info["height"], stock_info["height"])
            self.assertNotEqual(fitted[name], stock[name])
        for name in stock:
            if name not in self.image.logo_names():
                self.assertEqual(fitted[name], stock[name], name)

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

    def test_full_no_change_roundtrip_is_byte_identical(self):
        with tempfile.TemporaryDirectory() as tmp:
            extracted = Path(tmp) / "extracted"
            self.image.extract(extracted)
            names = self.image.image_names()
            replacements = {name: extracted / name for name in names}
            result = self.image.repack(replacements)
        self.assertEqual(result, self.data)
        self.assertEqual(imagefv_tool.changed_ranges(self.data, result), [])
        check = imagefv_tool.SplashImage(result)
        self.assertEqual(check.inner_stream, self.image.inner_stream)
        self.assertEqual(check.validation_failures(), [])
        self.assertEqual(imagefv_tool.main(["verify", str(self.stock_path)]), 0)

    def test_identical_pixel_data_replacement_stays_structurally_valid(self):
        logo = next(f for f in self.image.inner.files if f.name == "logo_m_unlock.bmp")
        raw = next(s for s in logo.sections if s.type == imagefv_tool.SECTION_TYPE_RAW)
        original_info = imagefv_tool.bmp_info(raw.data, logo.name)
        bmp = bytearray(raw.data)
        # Change a non-pixel header field while keeping the pixel data identical.
        struct.pack_into("<i", bmp, 38, 12345)
        with tempfile.TemporaryDirectory() as tmp:
            path = Path(tmp) / "logo_m_unlock.bmp"
            path.write_bytes(bytes(bmp))
            result = self.image.repack({"logo_m_unlock.bmp": path})
        self.assertEqual(result, self.data)
        check = imagefv_tool.SplashImage(result)
        check_info = imagefv_tool.bmp_info(
            next(
                s
                for f in check.inner.files
                if f.name == "logo_m_unlock.bmp"
                for s in f.sections
                if s.type == imagefv_tool.SECTION_TYPE_RAW
            ).data,
            "logo_m_unlock.bmp",
        )
        for key in ("width", "height", "bit_count", "compression", "pixel_size"):
            self.assertEqual(check_info[key], original_info[key])
        self.assertEqual(check.bmp_validation_failures(), [])
        self.assertEqual(check.validation_failures(), [])

    def test_stream_reconstruction_preserves_trailing_bytes(self):
        stream = b"PREFIX" + b"OLD-FV" + b"TRAILING-DATA"
        result = imagefv_tool.reconstruct_inner_stream(stream, 6, 12, b"NEW-FV")
        self.assertEqual(result, b"PREFIX" + b"NEW-FV" + b"TRAILING-DATA")
        with self.assertRaises(imagefv_tool.ImagefvError):
            imagefv_tool.reconstruct_inner_stream(stream, 6, len(stream) + 1, b"")

    def test_lzma_header_records_new_stream_length(self):
        stream = self.image.inner_stream + b"\x00\x00\x00\x00"
        compressed = self.image._compress_stream(stream)
        self.assertEqual(
            struct.unpack_from("<Q", compressed, 5)[0], len(stream)
        )
        self.assertEqual(
            imagefv_tool.lzma.decompress(compressed, format=imagefv_tool.lzma.FORMAT_ALONE),
            stream,
        )

    def test_modified_bmp_keeps_dimensions_and_valid_lzma_stream(self):
        with tempfile.TemporaryDirectory() as tmp:
            path = self._modified_logo(Path(tmp))
            result = self.image.repack({"logo_m_unlock.bmp": path})
        self.assertNotEqual(result, self.data)
        check = imagefv_tool.SplashImage(result)
        rebuilt_inner = check.inner.raw[check.inner.offset : check.inner.end]
        self.assertEqual(check.reconstruct_stream(rebuilt_inner), check.inner_stream)
        self.assertEqual(check.lzma_declared_size, len(check.inner_stream))
        self.assertEqual(
            check.inner_stream[: check.inner_fv_offset],
            self.image.inner_stream[: self.image.inner_fv_offset],
        )
        self.assertEqual(
            check.inner_stream[check.inner_fv_end :],
            self.image.inner_stream[self.image.inner_fv_end :],
        )
        self.assertEqual(
            check.validation_failures(check_signature=False),
            [],
        )
        stock_info = imagefv_tool.bmp_info(
            self._raw_images(self.image)["logo_m_unlock.bmp"], "stock logo"
        )
        new_info = imagefv_tool.bmp_info(
            self._raw_images(check)["logo_m_unlock.bmp"], "new logo"
        )
        for key in ("width", "height", "bit_count", "compression", "pixel_size"):
            self.assertEqual(new_info[key], stock_info[key])

    def test_repack_refuses_to_overwrite_the_input_image(self):
        with tempfile.TemporaryDirectory() as tmp:
            original = Path(tmp) / "imagefv_stock.img"
            original.write_bytes(self.data)
            before = original.read_bytes()
            args = ["repack", str(original), "-o", str(original)]
            self.assertEqual(imagefv_tool.main(args), 2)
            self.assertEqual(original.read_bytes(), before)

    def test_bmp_validation_rejects_unsupported_compression(self):
        logo = next(f for f in self.image.inner.files if f.name == "logo_m_unlock.bmp")
        raw = next(s for s in logo.sections if s.type == imagefv_tool.SECTION_TYPE_RAW)
        bmp = bytearray(raw.data)
        struct.pack_into("<I", bmp, 30, 1)
        with tempfile.TemporaryDirectory() as tmp:
            path = Path(tmp) / "logo_m_unlock.bmp"
            path.write_bytes(bytes(bmp))
            with self.assertRaises(imagefv_tool.ImagefvError):
                self.image._normalise_replacement("logo_m_unlock.bmp", path)


if __name__ == "__main__":
    unittest.main()
