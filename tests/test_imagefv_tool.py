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
        cls.image_path = ROOT / "images" / "imagefv.img"
        cls.data = cls.image_path.read_bytes()
        cls.image = imagefv_tool.SplashImage(cls.data)

    def test_stock_image_parses_and_hashes_match(self):
        self.assertEqual(len(self.image.inner.files), 17)
        self.assertIn("logo_m_unlock.bmp", self.image.image_names())
        self.assertTrue(self.image.outer.header_valid())
        self.assertTrue(self.image.inner.header_valid())
        self.assertTrue(self.image.hash.matches(self.data))

    def test_unchanged_repack_preserves_signed_image(self):
        logo = next(f for f in self.image.inner.files if f.name == "logo_m_unlock.bmp")
        raw = next(s for s in logo.sections if s.type == imagefv_tool.SECTION_TYPE_RAW)
        with tempfile.TemporaryDirectory() as tmp:
            bmp = Path(tmp) / "logo_m_unlock.bmp"
            bmp.write_bytes(raw.data)
            result = self.image.repack({"logo_m_unlock.bmp": bmp})
        self.assertEqual(result, self.data)

    def test_modified_image_rebuilds_uefi_and_hash_table(self):
        logo = next(f for f in self.image.inner.files if f.name == "logo_m_unlock.bmp")
        raw = next(s for s in logo.sections if s.type == imagefv_tool.SECTION_TYPE_RAW)
        bmp = bytearray(raw.data)
        pixel_offset = struct.unpack_from("<I", bmp, 10)[0]
        bmp[pixel_offset] ^= 0x01
        with tempfile.TemporaryDirectory() as tmp:
            path = Path(tmp) / "logo_m_unlock.bmp"
            path.write_bytes(bytes(bmp))
            result = self.image.repack({"logo_m_unlock.bmp": path})
            output = Path(tmp) / "imagefv.img"
            output.write_bytes(result)
            check = imagefv_tool.SplashImage(result)
            self.assertTrue(check.outer.header_valid())
            self.assertTrue(check.inner.header_valid())
            self.assertTrue(check.hash.matches(result))
            self.assertNotEqual(result, self.data)
            self.assertEqual(imagefv_tool.main(["verify", str(output)]), 0)


if __name__ == "__main__":
    unittest.main()
