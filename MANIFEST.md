# Extracted ROM images — Xiaomi Redmi Note 11E Pro / Note 11 Pro 5G / POCO X4 Pro 5G (veux)

Source ROM: [xiaomi.eu_VEUX_OS1.0.10.0.TKCCNXM_13.zip](https://sourceforge.net/projects/xiaomi-eu-multilang-miui-roms/files/xiaomi.eu/HyperOS-STABLE-RELEASES/HyperOS1.0/xiaomi.eu_VEUX_OS1.0.10.0.TKCCNXM_13.zip/download)

- Build: HyperOS OS1.0.10.0 (xiaomi.eu, based on China stable TKCCNXM), Android 13
- ZIP MD5: `d151950ba961ab2999a9146b723f732c` (verified after download)
- Extracted from the fastboot payload: 35 partition images in `images/`

## Delivery layout

- `images/` in this repo holds every image that fits under GitHub's 100 MB per-file limit (18 files).
- The larger images — `boot.img` (128 MB), `core_nhlos.img` (132 MB), `modem.img` (192 MB), `vendor_boot.img` (96 MB) and the 14 `super.img.N` sparse chunks (~512 MB each) — are attached as release assets:
  https://github.com/promikailamin/hyperos_haptic_ports/releases/tag/xemu-veux-os1.0.10.0-images

## Reassembling super.img

The dynamic `super.img` is distributed as 14 ordered sparse chunks. Concatenate them in order:

```bash
cat super.img.0 super.img.1 super.img.2 super.img.3 super.img.4 super.img.5 \
    super.img.6 super.img.7 super.img.8 super.img.9 super.img.10 super.img.11 \
    super.img.12 super.img.13 > super.img
```

Checksums for every image: see [`SHA256SUMS.txt`](SHA256SUMS.txt).
