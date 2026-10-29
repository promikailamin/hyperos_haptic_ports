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

# Check UEFI checksums, the Qualcomm hash table and the OEM signature
python3 tools/imagefv_tool.py verify imagefv_custom.img
```

`--replace` can be repeated. Names are the extracted BMP names, for example
`logo_mi.bmp`, `logo_fastboot.bmp`, `logo_m_unlock.bmp` or
`battery_symbol_Soc10.bmp`. A replacement must keep the original dimensions and
must be an uncompressed 24-bit BMP; PNG files are converted automatically when
Pillow is installed. Transparent pixels are flattened onto black. The tool keeps
the original BMP header and only replaces the pixel data.

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
2. FFS file size and header checksum.
3. Inner firmware volume free space.
4. LZMA1 stream (original properties/dictionary size, explicit uncompressed
   size in the LZMA-Alone header).
5. Outer GUIDed section size and FFS header checksum.
6. Outer firmware volume free space.
7. Qualcomm SHA-256/SHA-384 hash table entries for the ELF header and each
   program-header segment.

If the replacement is byte-identical to the original, the input is copied
unchanged so its original signature is preserved.

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
| `images/imagefv.img` | `ba58536ad4629575f1c68c2f26e9f328e9d0f70fa48aabd33d07a27558187a65` | Issue #21 logo; OEM signature preserved, hash table stale (experimental). |
| `images/imagefv_rehashed.img` | `189e8c7abc6e6411e792312266b3e461fb7895bec232d0c49ab845d19495a718` | Issue #21 logo; hash table rebuilt, OEM signature invalid. |

Both custom builds change only `logo_m_unlock.bmp`; all other embedded graphics
are byte-identical to stock.

## Tests

```bash
python3 -m unittest discover -s tests -v
```
