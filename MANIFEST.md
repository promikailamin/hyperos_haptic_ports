# Extracted ROM images — Xiaomi Redmi Note 11E Pro / Note 11 Pro 5G / POCO X4 Pro 5G (veux)

Source ROM: [xiaomi.eu_VEUX_OS1.0.10.0.TKCCNXM_13.zip](https://sourceforge.net/projects/xiaomi-eu-multilang-miui-roms/files/xiaomi.eu/HyperOS-STABLE-RELEASES/HyperOS1.0/xiaomi.eu_VEUX_OS1.0.10.0.TKCCNXM_13.zip/download)

- Build: HyperOS OS1.0.10.0 (xiaomi.eu, based on China stable TKCCNXM), Android 13
- ZIP MD5: `d151950ba961ab2999a9146b723f732c` (verified after download)
- Extracted from the fastboot payload: 35 partition images in `images/`

## Delivery layout

- `images/` in this repo holds every image that fits under GitHub's 100 MB per-file limit (19 files, including the stock `imagefv_stock.img` backup).
- The larger images — `boot.img` (128 MB), `core_nhlos.img` (132 MB), `modem.img` (192 MB), `vendor_boot.img` (96 MB) and the 14 `super.img.N` sparse chunks (~512 MB each) — are attached as release assets:
  https://github.com/promikailamin/hyperos_haptic_ports/releases/tag/xemu-veux-os1.0.10.0-images

## Splash / fastboot assets

On veux the splash logo, fastboot screen, bootloader-unlock warnings, charging
symbols and thermal warnings are embedded in the `imagefv` UEFI firmware volume
(the `images/imagefv.img` file here). They have been extracted and converted to
PNG in [`splash/`](splash/). See [`splash/README.md`](splash/README.md) for the
full listing, extraction method and checksums.

`images/imagefv.img` is the **stock, OEM-signed** image (SHA-256
`3c5e740cb576db7c1dbc20bd391f0622055e398740b008bcb31569e25af77fed`). It is
identical to `images/imagefv_stock.img`, which is kept as an explicit recovery
copy. The custom-logo build that was previously distributed here has been
withdrawn because it does not boot.

`imagefv` is a Qualcomm signed ELF. The SHA-384 hash table covers the ELF
header/program headers and every loaded segment (including the splash images),
and Xiaomi's RSA-PSS signature covers that hash table. Editing any splash image
therefore requires re-signing with Xiaomi's private key. The key is not
available, so an edited image is rejected by the bootloader even when all UEFI
checksums and the hash table are rebuilt correctly.

[`tools/imagefv_tool.py`](tools/imagefv_tool.py) can still unpack, inspect and
repackage the image, and it now verifies the embedded OEM signature. `repack`
refuses to write an edited image by default because the result cannot boot;
`--allow-unsigned` is available only for inspection or devices whose bootloader
skips `imagefv` verification. See
[`splash/README.md`](splash/README.md#repacking-and-signature-warning) and
[`tools/README.md`](tools/README.md) for details.

## Reassembling super.img

The dynamic `super.img` is distributed as 14 ordered sparse chunks. Concatenate them in order:

```bash
cat super.img.0 super.img.1 super.img.2 super.img.3 super.img.4 super.img.5 \
    super.img.6 super.img.7 super.img.8 super.img.9 super.img.10 super.img.11 \
    super.img.12 super.img.13 > super.img
```

Checksums for every image: see [`SHA256SUMS.txt`](SHA256SUMS.txt).
