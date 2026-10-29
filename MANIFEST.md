# Extracted ROM images — Xiaomi Redmi Note 11E Pro / Note 11 Pro 5G / POCO X4 Pro 5G (veux)

Source ROM: [xiaomi.eu_VEUX_OS1.0.10.0.TKCCNXM_13.zip](https://sourceforge.net/projects/xiaomi-eu-multilang-miui-roms/files/xiaomi.eu/HyperOS-STABLE-RELEASES/HyperOS1.0/xiaomi.eu_VEUX_OS1.0.10.0.TKCCNXM_13.zip/download)

- Build: HyperOS OS1.0.10.0 (xiaomi.eu, based on China stable TKCCNXM), Android 13
- ZIP MD5: `d151950ba961ab2999a9146b723f732c` (verified after download)
- Extracted from the fastboot payload: 35 partition images in `images/`

## Delivery layout

- `images/` in this repo holds every image that fits under GitHub's 100 MB per-file limit (20 files, including the stock `imagefv_stock.img` backup and the two issue #21 `imagefv` builds).
- The larger images — `boot.img` (128 MB), `core_nhlos.img` (132 MB), `modem.img` (192 MB), `vendor_boot.img` (96 MB) and the 14 `super.img.N` sparse chunks (~512 MB each) — are attached as release assets:
  https://github.com/promikailamin/hyperos_haptic_ports/releases/tag/xemu-veux-os1.0.10.0-images

## Splash / fastboot assets

On veux the splash logo, fastboot screen, bootloader-unlock warnings, charging
symbols and thermal warnings are embedded in the `imagefv` UEFI firmware volume.
They have been extracted and converted to PNG in [`splash/`](splash/). See
[`splash/README.md`](splash/README.md) for the full listing, extraction method
and checksums.

The custom `logo_m_unlock` supplied in issue #21 has been patched into two
different `imagefv` builds:

| File | SHA-256 | Notes |
| --- | --- | --- |
| `images/imagefv_stock.img` | `3c5e740cb576db7c1dbc20bd391f0622055e398740b008bcb31569e25af77fed` | Stock OEM-signed recovery image. Unchanged. |
| `images/imagefv.img` | `ba58536ad4629575f1c68c2f26e9f328e9d0f70fa48aabd33d07a27558187a65` | Issue #21 logo. The payload is edited but the Qualcomm hash table/OEM signature is left untouched, so the OEM signature is still valid while the segment hashes are stale. Try this first. |
| `images/imagefv_rehashed.img` | `189e8c7abc6e6411e792312266b3e461fb7895bec232d0c49ab845d19495a718` | Issue #21 logo with the Qualcomm hash table rebuilt. The UEFI structure and hashes are self-consistent, but the OEM signature is invalid. |

Only `logo_m_unlock.bmp` differs from stock in either build; all 16 other
embedded graphics are byte-identical to the stock image. The supplied logo is
identical to the one used for issue #19, so the earlier black screen was not
caused by the PNG/BMP conversion or by corrupt UEFI containers.

`imagefv` is a Qualcomm signed ELF. The SHA-384 hash table covers the ELF
header/program headers and every loaded segment (including the splash images),
and Xiaomi's RSA-PSS signature covers that hash table. Fully valid custom
graphics therefore require re-signing with Xiaomi's private key, which is not
available. A bootloader that verifies both the OEM signature and the segment
hashes will not render either custom build. If the bootloader only checks the
OEM signature, the signature-preserving `images/imagefv.img` has the best chance
of working; if it skips `imagefv` verification, use the rehashed build.

[`tools/imagefv_tool.py`](tools/imagefv_tool.py) can unpack, inspect and
repackage the image, and it verifies the embedded OEM signature. `repack`
refuses to write a rehashed image by default because its signature becomes
invalid; `--allow-unsigned` is required for that build.
`--preserve-oem-signature` (alias `--keep-hash-table`) creates the experimental
signature-preserving build. See
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
