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

# Replace one or more images, then rebuild all layers + the hash table
python3 tools/imagefv_tool.py repack images/imagefv.img \
    -o imagefv_custom.img \
    --replace logo_m_unlock=extracted/logo_m_unlock.bmp

# Check UEFI checksums and the Qualcomm hash table
python3 tools/imagefv_tool.py verify imagefv_custom.img
```

`--replace` can be repeated. Names are the extracted BMP names, for example
`logo_mi.bmp`, `logo_fastboot.bmp`, `logo_m_unlock.bmp` or
`battery_symbol_Soc10.bmp`. A replacement must keep the original dimensions and
must be an uncompressed 24-bit BMP; PNG files are converted automatically when
Pillow is installed. The tool keeps the original BMP header and only replaces
the pixel data.

`--keep-hash-table` is available for inspection only. It leaves the Qualcomm
hash table untouched, so the image will not match its own segment hashes.

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

The Qualcomm hash segment also contains an OEM RSA signature. The private key is
not available, so the tool cannot re-sign an edited image. It refreshes the
hash table (so the structure is self-consistent), but the OEM signature becomes
invalid. Bootloaders that verify `imagefv` will reject the result.

Keep the stock `images/imagefv.img` for recovery. The stock file is the
OEM-signed image with SHA-256
`3c5e740cb576db7c1dbc20bd391f0622055e398740b008bcb31569e25af77fed`.

## Tests

```bash
python3 -m unittest discover -s tests -v
```
