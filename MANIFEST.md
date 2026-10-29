# Extracted ROM images — Xiaomi Redmi Note 11E Pro / Note 11 Pro 5G / POCO X4 Pro 5G (veux)

Source ROM: [xiaomi.eu_VEUX_OS1.0.10.0.TKCCNXM_13.zip](https://sourceforge.net/projects/xiaomi-eu-multilang-miui-roms/files/xiaomi.eu/HyperOS-STABLE-RELEASES/HyperOS1.0/xiaomi.eu_VEUX_OS1.0.10.0.TKCCNXM_13.zip/download)

- Build: HyperOS OS1.0.10.0 (xiaomi.eu, based on China stable TKCCNXM), Android 13
- ZIP MD5: `d151950ba961ab2999a9146b723f732c` (verified after download)
- Extracted from the fastboot payload: 35 partition images in `images/`

## Delivery layout

- `images/` in this repo holds every image that fits under GitHub's 100 MB per-file limit (18 files).
- The larger images — `boot.img` (128 MB), `core_nhlos.img` (132 MB), `modem.img` (192 MB), `vendor_boot.img` (96 MB) and the 14 `super.img.N` sparse chunks (~512 MB each) — are attached as release assets:
  https://github.com/promikailamin/hyperos_haptic_ports/releases/tag/xemu-veux-os1.0.10.0-images

## Splash / fastboot assets

On veux the splash logo, fastboot screen, bootloader-unlock warnings, charging
symbols and thermal warnings are embedded in the `imagefv` UEFI firmware volume
(the `images/imagefv.img` file here). They have been extracted and converted to
PNG in [`splash/`](splash/). See [`splash/README.md`](splash/README.md) for the
full listing, extraction method and checksums.

`images/imagefv.img` has been repacked with a custom `logo_m_unlock` supplied
in [issue #17](https://github.com/promikailamin/hyperos_haptic_ports/issues/17).
The repacked file has SHA-256
`ba58536ad4629575f1c68c2f26e9f328e9d0f70fa48aabd33d07a27558187a65`; the original
stock image (SHA-256
`3c5e740cb576db7c1dbc20bd391f0622055e398740b008bcb31569e25af77fed`) is still
available in the `xemu-veux-os1.0.10.0-images` release. All other embedded
graphics are unchanged. See the
[custom logo section](splash/README.md#custom-logo_m_unlock-replacement) for
details.

## Reassembling super.img

The dynamic `super.img` is distributed as 14 ordered sparse chunks. Concatenate them in order:

```bash
cat super.img.0 super.img.1 super.img.2 super.img.3 super.img.4 super.img.5 \
    super.img.6 super.img.7 super.img.8 super.img.9 super.img.10 super.img.11 \
    super.img.12 super.img.13 > super.img
```

Checksums for every image: see [`SHA256SUMS.txt`](SHA256SUMS.txt).
