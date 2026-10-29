# imagefv tool

`imagefv_tool.py` unpacks, edits, repacks and validates the Xiaomi/Qualcomm
`imagefv` partition used by veux and other UEFI Xiaomi devices.

## Requirements

- Python 3.8+
- Pillow (optional, only for PNG input/output)

No UEFITool, imagefv-extractor or other native tools are required.

## Commands

```bash
# Inspect the ELF, hash table and nested UEFI volumes
python3 tools/imagefv_tool.py info images/imagefv.img

# Extract the embedded BMPs (add --png to convert with Pillow)
python3 tools/imagefv_tool.py extract images/imagefv.img -o extracted

# Replace one or more images and rebuild the hash table.
# --allow-unsigned is required because the OEM signature cannot be recreated.
python3 tools/imagefv_tool.py repack images/imagefv_stock.img \
    -o imagefv_custom.img \
    --replace logo_m_unlock=extracted/logo_m_unlock.bmp \
    --allow-unsigned

# Experimental: edit the payload but leave the OEM signature/hash table alone
python3 tools/imagefv_tool.py repack images/imagefv_stock.img \
    -o imagefv_signature.img \
    --replace logo_m_unlock=extracted/logo_m_unlock.bmp \
    --preserve-oem-signature

# Replace every logo_*.bmp splash slot with one image (it is scaled/cropped to
# each slot's original dimensions; battery/thermal symbols are not touched).
python3 tools/imagefv_tool.py repack images/imagefv_stock.img \
    -o imagefv_all_logo.img \
    --replace-logo splash/logo_m_unlock.png \
    --preserve-oem-signature

# Check UEFI checksums, the Qualcomm hash table and the OEM signature
python3 tools/imagefv_tool.py verify imagefv_custom.img
```

`--replace` can be repeated. Names are the extracted BMP names, for example
`logo_mi.bmp`, `logo_fastboot.bmp`, `logo_m_unlock.bmp` or
`battery_symbol_Soc10.bmp`. `--replace-logo PATH` is a shortcut that fits one
PNG/BMP to every `logo_*.bmp` resource (brand, fastboot, unlock and
destroyed-screen slots) using a centre-crop, so the displayed slot no longer has
to be guessed. A replacement must keep the original dimensions,
bit depth and compression mode; stock resources include 4-bit and 24-bit
uncompressed BMPs. PNG files are converted to 24-bit BMP automatically when
Pillow is installed (they can therefore only replace 24-bit resources).
Transparent pixels are flattened onto black. The tool keeps the original BMP
header, palette and device-specific trailing bytes, and replaces only the exact
pixel-data range.

`--preserve-oem-signature` (alias `--keep-hash-table`) edits the payload but
leaves the Qualcomm hash table untouched. The OEM signature therefore remains
valid, but the segment hashes no longer match. This is experimental and only
works on a bootloader that verifies the signature without rechecking the segment
hashes.

`repack` refuses to write a rehashed image of a correctly signed input unless
`--allow-unsigned` is supplied. The OEM RSA-PSS signature covers the hash table
and cannot be regenerated without Xiaomi's private key, so the output will be
rejected by a bootloader that verifies `imagefv`. `verify` checks that signature
against the certificate embedded in the image and exits non-zero when it has
been invalidated.

## What gets rebuilt

1. Raw BMP section inside the inner FFS file.
2. FFS file size, data checksum and header checksum.
3. Inner firmware volume free space (only when a file size changes).
4. LZMA1 stream (original properties/dictionary size, explicit uncompressed
   size in the LZMA-Alone header).
5. Outer GUIDed section size and FFS header checksum.
6. Outer firmware volume free space.
7. Qualcomm SHA-256/SHA-384 hash table entries for the ELF header and each
   program-header segment.

The decompressed LZMA payload is reconstructed as:

```python
new_stream = (
    inner_stream[:inner_fv_offset]
    + new_inner
    + inner_stream[inner_fv_offset + inner.length:]
)
```

Only the exact inner firmware-volume range is replaced; any sections or padding
before/after it are preserved. The LZMA-Alone header is updated to
`len(new_stream)`, not the old stream length. If the replacement produces a
byte-identical stream, the input is returned unchanged so its original signature
is preserved.

## Validation and safety

`verify` checks the ELF/program-header bounds, firmware-volume and FFS header
checksums, section/file container bounds, 4/8-byte alignment, the LZMA header and
stream length, the complete inner-stream reconstruction, every BMP header/pixel
layout, and the Qualcomm hash table. It exits non-zero for any structural failure
or an invalid OEM signature. The OEM signature is reported separately from the
hash table, and certificate-chain trust is never claimed: a valid signature only
shows that the signed data matches the certificate embedded in the image.

`repack` validates the rebuilt image before writing, refuses to overwrite the
input path (including hard links), and refuses to write an edited signed image
unless `--allow-unsigned` is supplied. Even when validation passes, the tool
prints that structural validity is not proof that the bootloader will accept the
image.

## Important limitation

The Qualcomm hash segment also contains an OEM RSA-PSS signature over the hash
table and metadata. The private key is not available, so the tool cannot re-sign
an edited image. It refreshes the hash table (so the structure is
self-consistent), but the OEM signature becomes invalid. Bootloaders that verify
both the signature and the segment hashes will reject the result. This is why an
edited `imagefv` cannot be made to show custom graphics by software alone on
such a bootloader.

Checked-in imagefv files:

| File | SHA-256 | State |
| --- | --- | --- |
| `images/imagefv_stock.img` | `3c5e740cb576db7c1dbc20bd391f0622055e398740b008bcb31569e25af77fed` | Stock OEM-signed recovery image. |
| `images/imagefv_mr_unlock.img` | `c36ce21e1232bb5b17249d8ed72e56acf8f298fc728c83a069f82127b37bc892` | Issue #23 Mi+Redmi logo; OEM signature preserved, hash table stale (experimental). |
| `images/imagefv_mr_unlock_rehashed.img` | `422d0620b1a4e0818d6a1b0bd111a7975b731203853909147292afd3e8f9d976` | Issue #23 Mi+Redmi logo; hash table rebuilt, OEM signature invalid. |
| `images/imagefv_r_unlock.img` | `1debe8cf2c1c281f43649c2288b560142e82a02a965574bb7f3e68a8dee07086` | Issue #23 Redmi logo; OEM signature preserved, hash table stale (experimental). |
| `images/imagefv_r_unlock_rehashed.img` | `e76fb0d0202b00c34bde1a7a10e7e3bcdd1c7fa2ec84555510b8758ddbb299a9` | Issue #23 Redmi logo; hash table rebuilt, OEM signature invalid. |
| `images/imagefv.img` | `ba58536ad4629575f1c68c2f26e9f328e9d0f70fa48aabd33d07a27558187a65` | Issue #21 Mi logo; OEM signature preserved, hash table stale (experimental). |
| `images/imagefv_rehashed.img` | `189e8c7abc6e6411e792312266b3e461fb7895bec232d0c49ab845d19495a718` | Issue #21 Mi logo; hash table rebuilt, OEM signature invalid. |
| `images/imagefv_all_logo.img` | `a4369a99093596d84f8679cc46be4af759609e369b65449fdc149e513c614ece` | Issue #25 all-logo build; OEM signature preserved, hash table stale (experimental). |
| `images/imagefv_all_logo_rehashed.img` | `3e8875c8e5e560c31f226bed00852b55bc1bdf15083f7daf34ecfe15df4d0bd2` | Issue #25 all-logo build; hash table rebuilt, OEM signature invalid. |

The issue #23 builds change `logo_r_unlock.bmp` (Redmi slot) and, for the
`mr` builds, also `logo_m_unlock.bmp` (Mi slot); all other embedded graphics are
byte-identical to stock. A Redmi-branded veux device renders `logo_r_unlock`, so
the earlier Mi-only builds could not change its unlock warning. The issue #25
`*_all_logo` builds instead change every `logo_*.bmp` resource, so they also
cover the normal brand splash, fastboot screen and destroyed-system warning.

## Tests

```bash
python3 -m unittest discover -s tests -v
```

The suite covers the stock image, the checked-in custom builds (including the
issue #25 all-logo builds), a full extract-all/BMP-replace/no-change round trip
(byte-for-byte), identical-pixel replacement, `--replace-logo` fitting, trailing
LZMA-stream preservation, modified-BMP dimension/format checks, LZMA header
length, hash/OEM-signature separation, and output-safety refusals.
