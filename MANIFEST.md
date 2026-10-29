# Extracted ROM images — Xiaomi Redmi Note 11E Pro / Note 11 Pro 5G / POCO X4 Pro 5G (veux)

Source ROM: [xiaomi.eu_VEUX_OS1.0.10.0.TKCCNXM_13.zip](https://sourceforge.net/projects/xiaomi-eu-multilang-miui-roms/files/xiaomi.eu/HyperOS-STABLE-RELEASES/HyperOS1.0/xiaomi.eu_VEUX_OS1.0.10.0.TKCCNXM_13.zip/download)

- Build: HyperOS OS1.0.10.0 (xiaomi.eu, based on China stable TKCCNXM), Android 13
- ZIP MD5: `d151950ba961ab2999a9146b723f732c` (verified after download)
- Extracted from the fastboot payload: 35 partition images in `images/`

## Delivery layout

- `images/` in this repo holds every image that fits under GitHub's 100 MB per-file limit (26 files, including the stock `imagefv_stock.img` backup and the issue #21/#23/#25 `imagefv` builds).
- The larger images — `boot.img` (128 MB), `core_nhlos.img` (132 MB), `modem.img` (192 MB), `vendor_boot.img` (96 MB) and the 14 `super.img.N` sparse chunks (~512 MB each) — are attached as release assets:
  https://github.com/promikailamin/hyperos_haptic_ports/releases/tag/xemu-veux-os1.0.10.0-images

## Splash / fastboot assets

On veux the splash logo, fastboot screen, bootloader-unlock warnings, charging
symbols and thermal warnings are embedded in the `imagefv` UEFI firmware volume.
They have been extracted and converted to PNG in [`splash/`](splash/). See
[`splash/README.md`](splash/README.md) for the full listing, extraction method
and checksums.

The custom logo supplied in issues #19/#21 is 300×2400, which matches the **Mi**
slot (`logo_m_unlock`). A Redmi-branded veux device renders `logo_r_unlock`
(300×2250), so the earlier builds patched the wrong resource. Issue #23 adds
Redmi and combined builds: `splash/logo_r_unlock_custom.png` is the supplied
logo centre-cropped from 300×2400 to the Redmi slot's 300×2250.

Issue #25 adds "all logo" builds. Instead of guessing which slot the firmware
renders, `--replace-logo` fits the supplied artwork to **every** `logo_*.bmp`
resource: the brand splash (`logo_mi`, `logo_redmi`, `logo_poco`), fastboot
screen, all three unlock warnings (`logo_m_unlock`, `logo_p_unlock`,
`logo_r_unlock`) and the destroyed-system warning. Battery and thermal symbols
are left untouched. The images are still scaled/cropped without changing any
resource dimensions.

| File | SHA-256 | Notes |
| --- | --- | --- |
| `images/imagefv_stock.img` | `3c5e740cb576db7c1dbc20bd391f0622055e398740b008bcb31569e25af77fed` | Stock OEM-signed recovery image. Unchanged. |
| `images/imagefv_mr_unlock.img` | `c36ce21e1232bb5b17249d8ed72e56acf8f298fc728c83a069f82127b37bc892` | Issue #23. Patches both `logo_m_unlock` and `logo_r_unlock`; OEM signature preserved, segment hashes stale. Best first try for a Redmi device. |
| `images/imagefv_mr_unlock_rehashed.img` | `422d0620b1a4e0818d6a1b0bd111a7975b731203853909147292afd3e8f9d976` | Issue #23 combined build with the Qualcomm hash table rebuilt; OEM signature invalid. |
| `images/imagefv_r_unlock.img` | `1debe8cf2c1c281f43649c2288b560142e82a02a965574bb7f3e68a8dee07086` | Issue #23. Patches only `logo_r_unlock`; OEM signature preserved, segment hashes stale. |
| `images/imagefv_r_unlock_rehashed.img` | `e76fb0d0202b00c34bde1a7a10e7e3bcdd1c7fa2ec84555510b8758ddbb299a9` | Issue #23 Redmi-only build with the Qualcomm hash table rebuilt; OEM signature invalid. |
| `images/imagefv.img` | `ba58536ad4629575f1c68c2f26e9f328e9d0f70fa48aabd33d07a27558187a65` | Issue #21 Mi-only logo; OEM signature preserved, segment hashes stale. |
| `images/imagefv_rehashed.img` | `189e8c7abc6e6411e792312266b3e461fb7895bec232d0c49ab845d19495a718` | Issue #21 Mi-only logo with the hash table rebuilt; OEM signature invalid. |
| `images/imagefv_all_logo.img` | `a4369a99093596d84f8679cc46be4af759609e369b65449fdc149e513c614ece` | Issue #25. Fits the custom logo to every logo slot; OEM signature preserved, segment hashes stale. Try first if the displayed slot is unknown. |
| `images/imagefv_all_logo_rehashed.img` | `3e8875c8e5e560c31f226bed00852b55bc1bdf15083f7daf34ecfe15df4d0bd2` | Issue #25 all-logo build with the Qualcomm hash table rebuilt; OEM signature invalid. |

The issue #23 builds are attached to the
[`imagefv-veux-logo-unlock-issue23`](https://github.com/promikailamin/hyperos_haptic_ports/releases/tag/imagefv-veux-logo-unlock-issue23)
release. Only the unlock logo resource(s) differ from stock in each build; all
other embedded graphics are byte-identical to the stock image. The supplied logo
is identical to the one used for issue #19, so the earlier black screen was not
caused by the PNG/BMP conversion or by corrupt UEFI containers.

`imagefv` is a Qualcomm signed ELF. The SHA-384 hash table covers the ELF
header/program headers and every loaded segment (including the splash images),
and Xiaomi's RSA-PSS signature covers that hash table. Fully valid custom
graphics therefore require re-signing with Xiaomi's private key, which is not
available. A bootloader that verifies both the OEM signature and the segment
hashes will not render any custom build. If the bootloader only checks the OEM
signature, use `images/imagefv_all_logo.img` (or `imagefv_mr_unlock.img` for the
unlock screen only); if it skips `imagefv` verification, use
`images/imagefv_all_logo_rehashed.img` (or `imagefv_mr_unlock_rehashed.img`). If
a Redmi device still shows a black screen after flashing these, flash
`images/imagefv_stock.img` to recover and provide the exact stock `imagefv` from
the installed ROM so it can be patched instead of the xiaomi.eu copy.

[`tools/imagefv_tool.py`](tools/imagefv_tool.py) can unpack, inspect and
repackage the image, and it verifies the embedded OEM signature. `repack`
refuses to write a rehashed image by default because its signature becomes
invalid; `--allow-unsigned` is required for that build.
`--preserve-oem-signature` (alias `--keep-hash-table`) creates the experimental
signature-preserving build, and `--replace-logo PATH` fits one image to every
logo slot. See
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
