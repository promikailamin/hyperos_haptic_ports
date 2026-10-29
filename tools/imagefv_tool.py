#!/usr/bin/env python3
"""Unpack, edit, repack and validate Qualcomm Xiaomi ``imagefv`` images.

The veux ``imagefv`` is a Qualcomm signed ELF:

    ELF header + program headers
    hash table segment (MBN v5/v6/v7, OEM signed)
    PT_LOAD segment: UEFI firmware volume
        FFS file
            LZMA GUID-defined section
                inner UEFI firmware volume
                    FFS files named "logo_*.bmp" / "battery_symbol_*.bmp"

The UEFI layers are rebuilt byte-for-byte and the Qualcomm SHA-256/384 table
is refreshed, so the output is structurally correct.  The OEM RSA-PSS signature
that covers the hash table cannot be regenerated without Xiaomi's private key;
the tool verifies that signature using the certificate embedded in the image
and refuses to write an edited image by default.  A signed stock image is always
kept by the repository, because a modified ``imagefv`` is normally rejected by
the bootloader.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import lzma
import shutil
import struct
import sys
from pathlib import Path

try:
    from PIL import Image

    HAVE_PIL = True
except ImportError:  # Pillow is optional; plain 24-bit BMP editing still works
    HAVE_PIL = False


ELF_MAGIC = b"\x7fELF"
FV_SIGNATURE = b"_FVH"
LZMA_GUID = bytes.fromhex("98584eee143959429d6edc7bd79403cf")
HASH_SEGMENT_TYPE = 2
LOAD_SEGMENT_TYPE = 1
PT_LOAD = 1
FFS_GUID_ZERO = b"\xff" * 16

FFS_FILE_TYPE_PADDING = 0xF0
SECTION_TYPE_GUID_DEFINED = 0x02
SECTION_TYPE_UI = 0x15
SECTION_TYPE_RAW = 0x19
SECTION_TYPE_FV = 0x17


class ImagefvError(Exception):
    """Raised when an image cannot be parsed or rebuilt safely."""


def align_up(value: int, alignment: int) -> int:
    return (value + alignment - 1) // alignment * alignment


def checksum8(data: bytes) -> int:
    """EDK2 CalculateCheckSum8."""
    value = 0x100
    for byte in data:
        value = (value - byte) & 0xFF
    return value


def checksum16(data: bytes) -> int:
    """EDK2 CalculateCheckSum16 (used by firmware volume headers)."""
    if len(data) & 1:
        data += b"\x00"
    value = 0x10000
    for (word,) in struct.iter_unpack("<H", data):
        value = (value - word) & 0xFFFF
    return value


def ffs_header_checksum(header: bytes) -> int:
    """Return the header half of an FFS file checksum."""
    h = bytearray(header[:24])
    h[16:18] = b"\x00\x00"
    h[23] = 0
    return checksum8(bytes(h))


def sha_for_entry_size(size: int) -> str:
    return {32: "sha256", 48: "sha384", 64: "sha512"}.get(size, "sha384")


def _der_parse(data: bytes, offset: int = 0) -> tuple[int, bytes, int]:
    """Return (tag, content, end_offset) for one DER TLV."""
    if offset + 2 > len(data):
        raise ImagefvError("truncated DER value")
    tag = data[offset]
    length = data[offset + 1]
    position = offset + 2
    if length & 0x80:
        count = length & 0x7F
        if count == 0 or position + count > len(data):
            raise ImagefvError("invalid DER length")
        length = int.from_bytes(data[position : position + count], "big")
        position += count
    end = position + length
    if end > len(data):
        raise ImagefvError("DER value extends past its container")
    return tag, data[position:end], end


def _der_children(content: bytes):
    position = 0
    while position < len(content):
        tag, value, position = _der_parse(content, position)
        yield tag, value


class RsaPublicKey:
    def __init__(self, modulus: int, exponent: int):
        self.modulus = modulus
        self.exponent = exponent

    @classmethod
    def from_certificate(cls, certificate: bytes) -> "RsaPublicKey":
        """Extract the RSA public key from the first DER certificate."""
        tag, cert, _ = _der_parse(certificate, 0)
        if tag != 0x30:
            raise ImagefvError("certificate is not a DER sequence")
        tbs_tag, tbs, _ = _der_parse(cert, 0)
        if tbs_tag != 0x30:
            raise ImagefvError("certificate body is not a DER sequence")
        for tag, value in _der_children(tbs):
            if tag != 0x30:
                continue
            children = list(_der_children(value))
            if len(children) < 2 or children[0][0] != 0x30 or children[1][0] != 0x03:
                continue
            oid_tag, oid, _ = _der_parse(children[0][1], 0)
            if oid_tag != 0x06 or oid != b"\x2a\x86\x48\x86\xf7\x0d\x01\x01\x01":
                continue
            bit_string = children[1][1]
            if not bit_string or bit_string[0] != 0:
                raise ImagefvError("unsupported RSA public-key bit string")
            key_tag, key, _ = _der_parse(bit_string, 1)
            if key_tag != 0x30:
                raise ImagefvError("RSA public key is not a DER sequence")
            values = list(_der_children(key))
            if len(values) < 2 or values[0][0] != 0x02 or values[1][0] != 0x02:
                raise ImagefvError("invalid RSA public key")
            modulus = int.from_bytes(values[0][1], "big")
            exponent = int.from_bytes(values[1][1], "big")
            return cls(modulus, exponent)
        raise ImagefvError("certificate does not contain an RSA public key")


def _mgf1(seed: bytes, length: int) -> bytes:
    output = bytearray()
    counter = 0
    while len(output) < length:
        output += hashlib.sha256(seed + struct.pack(">I", counter)).digest()
        counter += 1
    return bytes(output[:length])


def rsa_pss_sha256_verify(
    public_key: RsaPublicKey, message: bytes, signature: bytes
) -> bool:
    """Verify an RSA-PSS/SHA-256 signature (salt length = digest length)."""
    hash_size = hashlib.sha256().digest_size
    salt_size = hash_size
    modulus_bits = public_key.modulus.bit_length()
    em_bits = modulus_bits - 1
    em_length = (em_bits + 7) // 8
    if len(signature) != (modulus_bits + 7) // 8:
        return False
    value = int.from_bytes(signature, "big")
    if value >= public_key.modulus:
        return False
    encoded = pow(value, public_key.exponent, public_key.modulus).to_bytes(
        em_length, "big"
    )
    if encoded[-1] != 0xBC:
        return False
    db_length = em_length - hash_size - 1
    masked_db = encoded[:db_length]
    h = encoded[db_length : db_length + hash_size]
    unused_bits = 8 * em_length - em_bits
    if unused_bits and masked_db[0] >> (8 - unused_bits):
        return False
    db = bytes(a ^ b for a, b in zip(masked_db, _mgf1(h, db_length)))
    if unused_bits:
        db = bytes([db[0] & (0xFF >> unused_bits)]) + db[1:]
    padding_length = em_length - hash_size - salt_size - 2
    if padding_length < 0:
        return False
    if any(db[index] != 0 for index in range(padding_length)):
        return False
    if db[padding_length] != 0x01:
        return False
    salt = db[padding_length + 1 :]
    if len(salt) != salt_size:
        return False
    message_hash = hashlib.sha256(message).digest()
    expected = hashlib.sha256(b"\x00" * 8 + message_hash + salt).digest()
    return h == expected


class ProgramHeader:
    def __init__(self, data: bytes, offset: int, is_64: bool):
        self.is_64 = is_64
        if is_64:
            (
                self.type,
                self.flags,
                self.offset,
                self.vaddr,
                self.paddr,
                self.filesz,
                self.memsz,
                self.align,
            ) = struct.unpack_from("<IIQQQQQQ", data, offset)
        else:
            (
                self.type,
                self.offset,
                self.vaddr,
                self.paddr,
                self.filesz,
                self.memsz,
                self.flags,
                self.align,
            ) = struct.unpack_from("<IIIIIIII", data, offset)

    @property
    def os_type(self) -> int:
        return (self.flags & 0x07000000) >> 24


class ElfImage:
    def __init__(self, data: bytes):
        if data[:4] != ELF_MAGIC:
            raise ImagefvError("not an ELF image")
        self.data = data
        self.is_64 = data[4] == 2
        if self.is_64:
            fmt = "<16sHHIQQQIHHHHHH"
        else:
            fmt = "<16sHHIIIIIHHHHHH"
        fields = struct.unpack_from(fmt, data, 0)
        (
            _ident,
            self.e_type,
            self.e_machine,
            self.e_version,
            self.e_entry,
            self.e_phoff,
            self.e_shoff,
            self.e_flags,
            self.e_ehsize,
            self.e_phentsize,
            self.e_phnum,
            self.e_shentsize,
            self.e_shnum,
            self.e_shstrndx,
        ) = fields
        self.phdrs = [
            ProgramHeader(data, self.e_phoff + i * self.e_phentsize, self.is_64)
            for i in range(self.e_phnum)
        ]
        self.hash_phdr = next(
            (p for p in self.phdrs if p.os_type == HASH_SEGMENT_TYPE), None
        )
        self.load_phdr = next(
            (
                p
                for p in self.phdrs
                if p.type == PT_LOAD
                and FV_SIGNATURE in data[p.offset : p.offset + p.filesz]
            ),
            None,
        )
        if self.load_phdr is None:
            raise ImagefvError("no PT_LOAD firmware-volume segment found")

    @property
    def phdr_table_size(self) -> int:
        return self.e_phnum * self.e_phentsize


class HashSegment:
    """Qualcomm MBN hash-table segment (the part that authenticates the ELF)."""

    def __init__(self, elf: ElfImage):
        phdr = elf.hash_phdr
        if phdr is None:
            raise ImagefvError("image is not Qualcomm-signed (no hash segment)")
        self.phdr = phdr
        self.segment = elf.data[phdr.offset : phdr.offset + phdr.filesz]
        if len(self.segment) < 48:
            raise ImagefvError("hash segment is too small")
        self.version = struct.unpack_from("<I", self.segment, 4)[0]
        self.signature_sizes = []
        if self.version == 5:
            (
                _res,
                _ver,
                qss,
                qcs,
                _image_size,
                self.hash_table_size,
                _r4,
                oss,
                _r5,
                ocs,
            ) = struct.unpack_from("<10I", self.segment, 0)
            self.hash_table_offset = 40
            self.signature_sizes = [qss, qcs, oss, ocs]
        elif self.version == 6:
            (
                _res,
                _ver,
                qss,
                qcs,
                _image_size,
                self.hash_table_size,
                _r4,
                oss,
                _r5,
                ocs,
                qms,
                oms,
            ) = struct.unpack_from("<12I", self.segment, 0)
            self.hash_table_offset = 48 + qms + oms
            self.signature_sizes = [qss, qcs, oss, ocs]
        elif self.version == 7:
            (
                _res,
                _ver,
                cms,
                qms,
                oms,
                self.hash_table_size,
                qss,
                qcs,
                oss,
                ocs,
            ) = struct.unpack_from("<10I", self.segment, 0)
            self.hash_table_offset = 40 + cms + qms + oms
            self.signature_sizes = [qss, qcs, oss, ocs]
        else:
            raise ImagefvError(
                f"unsupported Qualcomm hash segment version {self.version}"
            )

        self.hash_table_end = self.hash_table_offset + self.hash_table_size
        if self.hash_table_end > len(self.segment):
            raise ImagefvError("hash table extends past the hash segment")
        self.entry_count = elf.e_phnum
        if self.entry_count and self.hash_table_size % self.entry_count == 0:
            self.entry_size = self.hash_table_size // self.entry_count
        elif self.hash_table_size % 48 == 0:
            self.entry_size = 48
        elif self.hash_table_size % 32 == 0:
            self.entry_size = 32
        else:
            raise ImagefvError("cannot determine hash table entry size")
        if self.entry_size not in (32, 48, 64):
            raise ImagefvError(f"unsupported hash entry size {self.entry_size}")
        self.hash_name = sha_for_entry_size(self.entry_size)

    @property
    def hash_table(self) -> bytes:
        return self.segment[self.hash_table_offset : self.hash_table_end]

    def expected_hashes(self, full_image: bytes) -> bytes:
        entries = []
        for phdr in ElfImage(full_image).phdrs:
            if phdr.os_type == HASH_SEGMENT_TYPE:
                entries.append(b"\x00" * self.entry_size)
            else:
                body = full_image[phdr.offset : phdr.offset + phdr.filesz]
                entries.append(hashlib.new(self.hash_name, body).digest())
        return b"".join(entries)

    def matches(self, full_image: bytes) -> bool:
        return self.hash_table == self.expected_hashes(full_image)

    def update(self, full_image: bytes) -> bool:
        expected = self.expected_hashes(full_image)
        old = self.hash_table
        self.segment = (
            self.segment[: self.hash_table_offset]
            + expected
            + self.segment[self.hash_table_end :]
        )
        return old != expected

    def is_signed(self) -> bool:
        return any(self.signature_sizes)

    def oem_signature_and_certificates(self) -> tuple[bytes, bytes] | tuple[None, None]:
        """Return the OEM signature and certificate chain, if present."""
        qss, qcs, oss, ocs = self.signature_sizes
        if not oss or not ocs:
            return None, None
        signature_offset = self.hash_table_end + qss + qcs
        certificate_offset = signature_offset + oss
        signature = self.segment[signature_offset : signature_offset + oss]
        certificates = self.segment[certificate_offset : certificate_offset + ocs]
        if len(signature) != oss or len(certificates) != ocs:
            return None, None
        return signature, certificates

    def oem_signature_valid(self) -> bool | None:
        """Verify the OEM RSA-PSS signature using the embedded certificate.

        Returns ``None`` when the image has no OEM signature. Verification uses
        only the certificate stored in the image; the trust chain is not checked.
        """
        signature, certificates = self.oem_signature_and_certificates()
        if signature is None or certificates is None:
            return None
        try:
            public_key = RsaPublicKey.from_certificate(certificates)
        except ImagefvError:
            return False
        signed = self.segment[: self.hash_table_end]
        if rsa_pss_sha256_verify(public_key, signed, signature):
            return True
        # Some images sign only the hash table rather than the header + table.
        return rsa_pss_sha256_verify(public_key, self.hash_table, signature)


class Section:
    def __init__(self, raw: bytes, offset: int):
        self.raw = raw
        self.offset = offset
        size = int.from_bytes(raw[offset : offset + 3], "little")
        self.large = size == 0xFFFFFF
        self.header_size = 8 if self.large else 4
        if self.large:
            size = struct.unpack_from("<I", raw, offset + 4)[0]
        self.size = size
        self.type = raw[offset + 3]
        if size < self.header_size or offset + size > len(raw):
            raise ImagefvError(f"invalid section at 0x{offset:x}")
        self.preamble = b""
        self.data_offset = offset + self.header_size
        if self.type == SECTION_TYPE_GUID_DEFINED:
            if self.header_size + 20 > size:
                raise ImagefvError(f"short GUID section at 0x{offset:x}")
            data_offset = struct.unpack_from("<H", raw, offset + self.header_size + 16)[0]
            if data_offset < self.header_size or data_offset > size:
                raise ImagefvError(f"invalid GUID section data offset at 0x{offset:x}")
            self.preamble = raw[
                offset + self.header_size : offset + data_offset
            ]
            self.data_offset = offset + data_offset
            self.guid = raw[offset + self.header_size : offset + self.header_size + 16]
        else:
            self.guid = b""

    @property
    def data(self) -> bytes:
        return self.raw[self.data_offset : self.offset + self.size]

    def rebuilt(self, new_data: bytes) -> bytes:
        payload = self.preamble + new_data
        size = self.header_size + len(payload)
        if size >= 0xFFFFFF:
            header = b"\xff\xff\xff" + bytes([self.type]) + struct.pack("<I", size)
        else:
            header = size.to_bytes(4, "little")[:3] + bytes([self.type])
        return header + payload


class FfsFile:
    def __init__(self, raw: bytes, offset: int):
        self.raw = raw
        self.offset = offset
        header = raw[offset : offset + 24]
        if len(header) < 24 or header[:16] == FFS_GUID_ZERO:
            raise ImagefvError(f"invalid FFS file at 0x{offset:x}")
        self.guid = header[:16]
        self.checksum = struct.unpack_from("<H", header, 16)[0]
        self.type = header[18]
        self.attributes = header[19]
        self.size = int.from_bytes(header[20:23], "little")
        self.state = header[23]
        if self.size < 24 or offset + self.size > len(raw):
            raise ImagefvError(f"invalid FFS file size at 0x{offset:x}")
        self.sections = []
        position = offset + 24
        end = offset + self.size
        while position + 4 <= end:
            section = Section(raw, position)
            self.sections.append(section)
            position = align_up(position + section.size, 4)
        self.name = ""
        for section in self.sections:
            if section.type == SECTION_TYPE_UI:
                try:
                    self.name = section.data.decode("utf-16le").split("\x00")[0]
                except UnicodeDecodeError:
                    pass
                break

    @property
    def data(self) -> bytes:
        return self.raw[self.offset : self.offset + self.size]

    def rebuild(self, replacements: dict[int, bytes] | None = None) -> bytes:
        replacements = replacements or {}
        body = bytearray()
        for index, section in enumerate(self.sections):
            new_data = replacements.get(index, section.data)
            body += section.rebuilt(new_data)
            if index + 1 < len(self.sections):
                body += b"\x00" * (align_up(len(body), 4) - len(body))
        size = 24 + len(body)
        header_data = (
            self.guid
            + b"\x00\x00"
            + bytes([self.type, self.attributes])
            + size.to_bytes(4, "little")[:3]
            + b"\x00"
        )
        header = bytearray(header_data)
        # 0xAA means "file data checksum is disabled"; only compute the data
        # checksum when the FFS_ATTRIB_CHECKSUM bit is set.
        data_checksum = checksum8(bytes(body)) if self.attributes & 0x40 else 0xAA
        header[16:18] = struct.pack(
            "<H", ffs_header_checksum(header_data) | (data_checksum << 8)
        )
        header[23] = self.state
        return bytes(header) + bytes(body)

    def header_valid(self) -> bool:
        header = bytearray(self.raw[self.offset : self.offset + 24])
        stored = self.checksum
        low = stored & 0xFF
        high = stored >> 8
        expected_low = ffs_header_checksum(bytes(header))
        if high == 0xAA:
            expected_high = 0xAA
        elif self.attributes & 0x40:
            expected_high = checksum8(self.data[24:])
        else:
            expected_high = 0xAA
        return low == expected_low and high == expected_high


class FirmwareVolume:
    def __init__(self, raw: bytes, offset: int = 0):
        self.raw = raw
        self.offset = offset
        if raw[offset + 40 : offset + 44] != FV_SIGNATURE:
            raise ImagefvError(f"no firmware volume at 0x{offset:x}")
        self.length = struct.unpack_from("<Q", raw, offset + 32)[0]
        (
            self.attributes,
            self.header_length,
            self.checksum,
            self.ext_header_offset,
            _reserved,
            self.revision,
        ) = struct.unpack_from("<IHHHBB", raw, offset + 44)
        if self.length < 0x48 or offset + self.length > len(raw):
            raise ImagefvError(f"invalid firmware volume length at 0x{offset:x}")
        self.block_map_offset = offset + 0x38
        self.block_map = []
        position = self.block_map_offset
        while position + 8 <= offset + self.header_length:
            blocks, length = struct.unpack_from("<II", raw, position)
            if blocks == 0 and length == 0:
                break
            self.block_map.append((blocks, length))
            position += 8
        if self.ext_header_offset:
            ext = offset + self.ext_header_offset
            if ext + 20 > offset + self.length:
                raise ImagefvError("invalid firmware volume extension header")
            ext_size = struct.unpack_from("<I", raw, ext + 16)[0]
            self.files_start = align_up(ext + ext_size, 8)
        else:
            self.files_start = align_up(offset + self.header_length, 8)
        self.files = []
        position = self.files_start
        end = offset + self.length
        while position + 24 <= end:
            header = raw[position : position + 24]
            if header == b"\xff" * 24 or header[:16] == FFS_GUID_ZERO:
                break
            file = FfsFile(raw, position)
            self.files.append(file)
            position = align_up(file.offset + file.size, 8)

    def header_valid(self) -> bool:
        header = self.raw[self.offset : self.offset + self.header_length]
        # The checksum covers the header including the block map.
        return checksum16(bytes(header)) == 0

    def rebuild_files(self, replacements: dict[str, dict[int, bytes]]) -> bytes:
        """Return a new FV with individual FFS files' section data replaced."""
        out = bytearray(self.raw[self.offset : self.offset + self.length])
        files_start = self.files_start - self.offset
        out[files_start:] = b"\xff" * (len(out) - files_start)
        position = files_start
        for file in self.files:
            replacement = replacements.get(file.name)
            if replacement is not None:
                file_data = file.rebuild(replacement)
            else:
                file_data = file.data
            if position + len(file_data) > len(out):
                raise ImagefvError(
                    "modified files do not fit in the firmware volume; "
                    "use replacement images with the original dimensions"
                )
            out[position : position + len(file_data)] = file_data
            position = align_up(position + len(file_data), 8)
        if position > len(out):
            raise ImagefvError("modified files overrun the firmware volume")
        return bytes(out)


class SplashImage:
    """The complete three-layer imagefv structure."""

    def __init__(self, data: bytes):
        self.data = data
        self.elf = ElfImage(data)
        self.hash = HashSegment(self.elf)
        self.outer_offset = self.elf.load_phdr.offset
        self.outer = FirmwareVolume(data, self.outer_offset)

        self.lzma_file = None
        self.lzma_section = None
        self.lzma_index = None
        for file in self.outer.files:
            for index, section in enumerate(file.sections):
                if (
                    section.type == SECTION_TYPE_GUID_DEFINED
                    and section.guid == LZMA_GUID
                ):
                    self.lzma_file = file
                    self.lzma_section = section
                    self.lzma_index = index
                    break
            if self.lzma_section is not None:
                break
        if self.lzma_section is None:
            raise ImagefvError("no LZMA-compressed firmware volume found")

        try:
            self.inner_stream = lzma.decompress(
                self.lzma_section.data, format=lzma.FORMAT_ALONE
            )
        except lzma.LZMAError as exc:
            raise ImagefvError(f"cannot decompress inner firmware volume: {exc}") from exc

        # The decompressed stream is one or more UEFI sections; the splash FV
        # lives in an EFI_SECTION_FIRMWARE_VOLUME_IMAGE (type 0x17) section.
        position = 0
        self.inner_section_offset = None
        while position + 4 <= len(self.inner_stream):
            size = int.from_bytes(self.inner_stream[position : position + 3], "little")
            section_type = self.inner_stream[position + 3]
            header_size = 4
            if size == 0xFFFFFF:
                size = struct.unpack_from("<I", self.inner_stream, position + 4)[0]
                header_size = 8
            if size < header_size or position + size > len(self.inner_stream):
                break
            if section_type == SECTION_TYPE_FV:
                self.inner_section_offset = position
                self.inner_fv_offset = position + header_size
                self.inner_section_size = size
                self.inner_section_header_size = header_size
                break
            position = align_up(position + size, 4)
        if self.inner_section_offset is None:
            raise ImagefvError("inner stream does not contain a firmware volume")

        self.inner = FirmwareVolume(self.inner_stream, self.inner_fv_offset)

    def image_names(self) -> list[str]:
        return [file.name for file in self.inner.files if file.name]

    def extract(self, output_dir: Path, png: bool = False) -> None:
        output_dir.mkdir(parents=True, exist_ok=True)
        manifest = []
        for file in self.inner.files:
            if not file.name:
                continue
            raw_section = next(
                (s for s in file.sections if s.type == SECTION_TYPE_RAW), None
            )
            if raw_section is None:
                continue
            data = raw_section.data
            target = output_dir / file.name
            if png and HAVE_PIL and file.name.lower().endswith(".bmp"):
                target = output_dir / (Path(file.name).stem + ".png")
                try:
                    from io import BytesIO

                    Image.open(BytesIO(data)).save(target, "PNG")
                except Exception as exc:  # pragma: no cover - depends on Pillow
                    raise ImagefvError(f"cannot convert {file.name}: {exc}") from exc
            else:
                target.write_bytes(data)
            manifest.append(
                {
                    "name": file.name,
                    "file": target.name,
                    "section_size": raw_section.size,
                    "data_size": len(data),
                    "sha256": hashlib.sha256(data).hexdigest(),
                }
            )
        (output_dir / "manifest.json").write_text(
            json.dumps(manifest, indent=2) + "\n", encoding="utf-8"
        )

    def _normalise_replacement(self, name: str, path: Path) -> bytes:
        target = next((f for f in self.inner.files if f.name == name), None)
        if target is None:
            raise ImagefvError(f"unknown image name: {name}")
        section = next(
            (s for s in target.sections if s.type == SECTION_TYPE_RAW), None
        )
        if section is None:
            raise ImagefvError(f"{name} has no raw image section")
        original = section.data
        if len(original) < 54 or original[:2] != b"BM":
            raise ImagefvError(f"{name} is not a BMP image")
        src = path.read_bytes()
        if src[:8] == b"\x89PNG\r\n\x1a\n":
            if not HAVE_PIL:
                raise ImagefvError(
                    "PNG input requires Pillow (pip install pillow), or supply a BMP"
                )
            from io import BytesIO

            image = Image.open(BytesIO(src)).convert("RGB")
            out = BytesIO()
            image.save(out, "BMP")
            src = out.getvalue()
        if src[:2] != b"BM":
            raise ImagefvError(f"{path} is not a BMP or PNG image")
        if len(src) != len(original):
            raise ImagefvError(
                f"{name}: replacement is {len(src)} bytes but the slot is "
                f"{len(original)} bytes; use exactly the same dimensions "
                f"(and 24-bit BMP) as the extracted image"
            )
        # Keep the original BMP header and only replace the pixel data. This
        # preserves any device-specific fields in the header.
        header_size = struct.unpack_from("<I", original, 10)[0]
        src_header_size = struct.unpack_from("<I", src, 10)[0]
        if header_size > len(original) or src_header_size > len(src):
            raise ImagefvError(f"{name}: invalid BMP pixel offset")
        old_w, old_h, old_bpp, old_comp = struct.unpack_from("<iiHH", original, 18)
        new_w, new_h, new_bpp, new_comp = struct.unpack_from("<iiHH", src, 18)
        if (old_w, old_h, old_bpp, old_comp) != (
            new_w,
            new_h,
            new_bpp,
            new_comp,
        ):
            raise ImagefvError(
                f"{name}: image must stay {old_w}x{old_h}, {old_bpp}-bit, "
                f"uncompressed (got {new_w}x{new_h}, {new_bpp}-bit, "
                f"compression={new_comp})"
            )
        if len(src[src_header_size:]) != len(original[header_size:]):
            raise ImagefvError(f"{name}: replacement pixel data is not the same size")
        return original[:header_size] + src[src_header_size:]

    def repack(self, replacements: dict[str, Path], update_hashes: bool = True) -> bytes:
        normalised = {
            name: self._normalise_replacement(name, path)
            for name, path in replacements.items()
        }
        replacement_by_file = {}
        for file in self.inner.files:
            if file.name not in normalised:
                continue
            for index, section in enumerate(file.sections):
                if section.type == SECTION_TYPE_RAW:
                    replacement_by_file[file.name] = {index: normalised[file.name]}
                    break

        new_inner = self.inner.rebuild_files(replacement_by_file)
        if new_inner == self.inner_stream[self.inner_fv_offset :]:
            # Nothing actually changed: keep the original signed image intact.
            return self.data

        # Refresh the LZMA header's uncompressed-size field as well as the
        # stream itself. Match the original properties and dictionary size.
        props = self.lzma_section.data[:5]
        filters = lzma._decode_filter_properties(lzma.FILTER_LZMA1, props)
        compressed = lzma.compress(
            self.inner_stream[: self.inner_fv_offset] + new_inner,
            format=lzma.FORMAT_ALONE,
            filters=[filters],
        )
        compressed = (
            compressed[:5]
            + struct.pack("<Q", len(self.inner_stream))
            + compressed[13:]
        )

        new_outer = bytearray(self.data[self.outer_offset : self.outer_offset + self.outer.length])
        files_start = self.outer.files_start - self.outer_offset
        new_outer[files_start:] = b"\xff" * (len(new_outer) - files_start)
        position = files_start
        for file in self.outer.files:
            if file is self.lzma_file:
                replacements_for_file = {
                    self.lzma_index: compressed,
                }
                file_data = file.rebuild(replacements_for_file)
            else:
                file_data = file.data
            if position + len(file_data) > len(new_outer):
                raise ImagefvError(
                    "repacked outer firmware volume is too large for the partition"
                )
            new_outer[position : position + len(file_data)] = file_data
            position = align_up(position + len(file_data), 8)

        result = bytearray(self.data)
        result[
            self.outer_offset : self.outer_offset + self.outer.length
        ] = new_outer

        if update_hashes:
            expected = self.hash.expected_hashes(bytes(result))
            updated_segment = bytearray(self.hash.segment)
            updated_segment[
                self.hash.hash_table_offset : self.hash.hash_table_end
            ] = expected
            result[
                self.elf.hash_phdr.offset : self.elf.hash_phdr.offset
                + self.elf.hash_phdr.filesz
            ] = updated_segment

        return bytes(result)

    def report(self) -> dict:
        raw_hashes = self.hash.expected_hashes(self.data)
        return {
            "elf": {
                "phnum": self.elf.e_phnum,
                "hash_segment_version": self.hash.version,
                "hash": self.hash.hash_name,
                "signed": self.hash.is_signed(),
                "oem_signature_present": self.hash.oem_signature_and_certificates()[0]
                is not None,
                "oem_signature_valid": self.hash.oem_signature_valid(),
            },
            "outer_fv": {
                "length": self.outer.length,
                "files": len(self.outer.files),
                "header_checksum_ok": self.outer.header_valid(),
            },
            "inner_fv": {
                "length": self.inner.length,
                "files": len(self.inner.files),
                "header_checksum_ok": self.inner.header_valid(),
                "names": self.image_names(),
            },
            "hash_table_matches_segments": self.hash.hash_table == raw_hashes,
        }


def load_image(path: Path) -> SplashImage:
    return SplashImage(path.read_bytes())


def cmd_info(args: argparse.Namespace) -> int:
    image = load_image(Path(args.image))
    report = image.report()
    print(json.dumps(report, indent=2))
    if not report["hash_table_matches_segments"]:
        print(
            "WARNING: the Qualcomm hash table does not match the ELF segments; "
            "this image will be rejected by a locked bootloader.",
            file=sys.stderr,
        )
    if report["elf"]["oem_signature_present"] and not report["elf"][
        "oem_signature_valid"
    ]:
        print(
            "WARNING: the OEM signature is invalid; this modified image will be "
            "rejected by the bootloader unless it is unlocked/verification is skipped.",
            file=sys.stderr,
        )
    return 0


def cmd_extract(args: argparse.Namespace) -> int:
    image = load_image(Path(args.image))
    image.extract(Path(args.output), png=args.png)
    print(f"extracted {len(image.image_names())} images to {args.output}")
    return 0


def cmd_repack(args: argparse.Namespace) -> int:
    image = load_image(Path(args.image))
    replacements = {}
    for item in args.replace or []:
        if "=" not in item:
            raise ImagefvError(
                f"--replace expects NAME=PATH, got {item!r} (use NAME.bmp=PATH)"
            )
        name, path = item.split("=", 1)
        if not name.lower().endswith(".bmp"):
            name += ".bmp"
        replacements[name] = Path(path)
    if not replacements:
        Path(args.output).write_bytes(image.data)
        print("no replacements requested; copied input unchanged")
        return 0
    result = image.repack(replacements, update_hashes=not args.keep_hash_table)

    check = SplashImage(result)
    if not check.hash.matches(result) and not args.keep_hash_table:
        raise ImagefvError("internal error: rebuilt hash table does not validate")
    if result == image.data:
        Path(args.output).write_bytes(result)
        print(f"wrote {args.output} ({len(result)} bytes)")
        print("payload identical to input; original signature preserved")
        return 0

    original_valid = image.hash.oem_signature_valid()
    new_valid = check.hash.oem_signature_valid()
    if (
        not args.keep_hash_table
        and original_valid
        and not new_valid
        and not args.allow_unsigned
    ):
        raise ImagefvError(
            "refusing to write an unsigned imagefv: the Qualcomm OEM signature "
            "covers the hash table and cannot be recreated without Xiaomi's "
            "private key, so the bootloader will reject this edit. Pass "
            "--allow-unsigned only if you understand the risk or your bootloader "
            "skips imagefv verification."
        )

    Path(args.output).write_bytes(result)
    print(f"wrote {args.output} ({len(result)} bytes)")
    print("structure: OK")
    print(
        "hash table: refreshed"
        if not args.keep_hash_table
        else "hash table: kept (will not match edited data)"
    )
    if new_valid:
        print("OEM signature: OK")
    else:
        print(
            "WARNING: the OEM signature is invalid. Edited imagefv images are "
            "normally rejected by the bootloader; keep the stock image for recovery."
        )
    return 0


def cmd_verify(args: argparse.Namespace) -> int:
    data = Path(args.image).read_bytes()
    image = SplashImage(data)
    failures = []
    if not image.hash.matches(data):
        failures.append("Qualcomm hash table does not match the ELF segments")
    if not image.outer.header_valid():
        failures.append("outer firmware volume header checksum is invalid")
    if not image.inner.header_valid():
        failures.append("inner firmware volume header checksum is invalid")
    for fv_name, fv in (("outer", image.outer), ("inner", image.inner)):
        for file in fv.files:
            if not file.header_valid():
                failures.append(
                    f"{fv_name} FFS file {file.name or file.guid.hex()} header checksum is invalid"
                )
    oem_valid = image.hash.oem_signature_valid()
    if oem_valid is False:
        failures.append(
            "OEM signature is invalid (the image was modified after signing)"
        )
    if failures:
        for failure in failures:
            print(f"FAIL: {failure}")
        return 1
    print("UEFI structure: OK")
    print("Qualcomm hash table: OK")
    if oem_valid is True:
        print("OEM signature: OK (verified with the embedded certificate)")
    elif oem_valid is None:
        print("OEM signature: absent")
    return 0


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(
        description="Unpack, edit, repack and validate Xiaomi/Qualcomm imagefv images."
    )
    sub = parser.add_subparsers(dest="command", required=True)

    info = sub.add_parser("info", help="show image structure")
    info.add_argument("image")
    info.set_defaults(func=cmd_info)

    extract = sub.add_parser("extract", help="extract embedded images")
    extract.add_argument("image")
    extract.add_argument("-o", "--output", default="extracted_imagefv")
    extract.add_argument("--png", action="store_true", help="convert BMPs to PNG")
    extract.set_defaults(func=cmd_extract)

    repack = sub.add_parser("repack", help="replace images and rebuild the image")
    repack.add_argument("image")
    repack.add_argument("-o", "--output", required=True)
    repack.add_argument(
        "--replace",
        action="append",
        metavar="NAME=PATH",
        help="replace image NAME (for example logo_m_unlock=logo.png)",
    )
    repack.add_argument(
        "--keep-hash-table",
        action="store_true",
        help="do not refresh the Qualcomm hash table (only useful for inspection)",
    )
    repack.add_argument(
        "--allow-unsigned",
        action="store_true",
        help=(
            "write an edited image even though the OEM signature becomes invalid "
            "(normally rejected by the bootloader)"
        ),
    )
    repack.set_defaults(func=cmd_repack)

    verify = sub.add_parser("verify", help="validate checksums and the hash table")
    verify.add_argument("image")
    verify.set_defaults(func=cmd_verify)

    args = parser.parse_args(argv)
    try:
        return args.func(args)
    except (ImagefvError, OSError, ValueError) as exc:
        print(f"error: {exc}", file=sys.stderr)
        return 2


if __name__ == "__main__":
    raise SystemExit(main())
