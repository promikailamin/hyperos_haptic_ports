# Device splash and fastboot assets (veux)

These are the bootlogo/splash, fastboot, bootloader-unlock, battery-charging and
thermal-warning graphics used by the Redmi Note 11E Pro / Note 11 Pro 5G /
POCO X4 Pro 5G (codename **veux**).

## Where they come from

Modern Qualcomm Xiaomi devices no longer use a dedicated `splash` or `logo`
partition. The images are embedded as BMP files inside the **`imagefv`**
partition, which is a UEFI firmware volume (the file is named `imagefv.elf` in
the official fastboot ROM and `imagefv.img` in this repository).

- ROM: `veux_global_images_OS1.0.12.0.TKCMIXM_20241205.0000.00_13.0_global_cda1240a45.tgz`
- Source image: `images/imagefv.elf` from that ROM
- Stock image: [`../images/imagefv_stock.img`](../images/imagefv_stock.img),
  OEM-signed (SHA-256
  `3c5e740cb576db7c1dbc20bd391f0622055e398740b008bcb31569e25af77fed`)
- Custom issue #21 Mi-only builds:
  [`../images/imagefv.img`](../images/imagefv.img) (OEM signature preserved,
  hash table stale) and
  [`../images/imagefv_rehashed.img`](../images/imagefv_rehashed.img) (hash table
  rebuilt, OEM signature invalid)
- Custom issue #23 Redmi/combined builds:
  [`../images/imagefv_mr_unlock.img`](../images/imagefv_mr_unlock.img) and
  [`../images/imagefv_r_unlock.img`](../images/imagefv_r_unlock.img) (OEM
  signature preserved, hash table stale), plus their
  `_rehashed` variants (hash table rebuilt, OEM signature invalid)
- Custom issue #25 all-logo builds:
  [`../images/imagefv_all_logo.img`](../images/imagefv_all_logo.img) (OEM
  signature preserved, hash table stale) and
  [`../images/imagefv_all_logo_rehashed.img`](../images/imagefv_all_logo_rehashed.img)
  (hash table rebuilt, OEM signature invalid)

The supplied `logo_m_unlock.png` (issue #21) is the same flattened 300×2400
image that was used for issue #19, so the black screen reported after the earlier
patch was not caused by the PNG/BMP conversion. However, that logo is 300×2400,
which is the **Mi** slot. A Redmi-branded veux device displays `logo_r_unlock`
(300×2250), so issues #19/#21 patched the wrong resource. Issue #23 adds
[`logo_r_unlock_custom.png`](logo_r_unlock_custom.png), the same logo
centre-cropped to 300×2250, and builds that patch the Redmi slot or both slots.
Issue #25 instead fits the artwork to **every** `logo_*.bmp` slot (brand,
fastboot, all unlock variants and the destroyed-system warning), so the build no
longer depends on guessing which slot the firmware renders.

`imagefv` is authenticated, so no custom build is guaranteed to render. A
bootloader that verifies both the OEM signature and the segment hashes will
reject all of them. If the displayed slot is unknown, try
`images/imagefv_all_logo.img` first (OEM signature preserved); use
`images/imagefv_all_logo_rehashed.img` only if the bootloader skips `imagefv`
verification. Keep the stock image for recovery.

## How the extraction was done

The BMPs were extracted with
[chkndrp/imagefv-extractor](https://github.com/chkndrp/imagefv-extractor) and
then converted to PNG with Pillow:

```bash
pip install imagefv_extractor pillow
python -m imagefv_extractor images/imagefv.img -o extracted_images
python - <<'PY'
from pathlib import Path
from PIL import Image

for src in Path("extracted_images").glob("*.bmp"):
    Image.open(src).save(Path("splash") / (src.stem + ".png"), "PNG", optimize=True)
PY
```

The repository also includes [`../tools/imagefv_tool.py`](../tools/imagefv_tool.py),
a dependency-free (except optional Pillow for PNG input/output) unpack/edit/repack
tool that understands all of the nested layers:

```bash
# show the ELF, UEFI firmware volumes, images and hash-table status
python3 tools/imagefv_tool.py info images/imagefv_stock.img

# extract the 17 BMPs
python3 tools/imagefv_tool.py extract images/imagefv_stock.img -o extracted

# replace one image and rebuild every layer + hash table (unsigned)
python3 tools/imagefv_tool.py repack images/imagefv_stock.img \
    -o imagefv_custom.img \
    --replace logo_m_unlock=extracted/logo_m_unlock.bmp \
    --allow-unsigned

# experimental: keep the OEM signature but leave the segment hashes stale
python3 tools/imagefv_tool.py repack images/imagefv_stock.img \
    -o imagefv_signature.img \
    --replace logo_m_unlock=extracted/logo_m_unlock.bmp \
    --preserve-oem-signature

# validate UEFI checksums, the hash table and the OEM signature
python3 tools/imagefv_tool.py verify imagefv_custom.img
```

Replacement images must have exactly the same dimensions, bit depth and
uncompressed BMP format as the slot (PNG input is converted to 24-bit BMP when
Pillow is installed; transparent pixels are flattened onto black). The tool
validates BMP headers, row stride and pixel-data bounds, preserves the original
header/palette/trailing bytes, and refuses replacements that would not fit the
original slot. `repack` also refuses to write a rehashed signed image unless
`--allow-unsigned` is given, because the result no longer has a valid OEM
signature.

## Custom unlock logo replacement

The 300×2400 logo supplied in issues #19/#21 was flattened onto black for the
firmware's 24-bit BMP (the PNG has an alpha channel, the firmware does not).
That resolution matches the Mi slot (`logo_m_unlock`). For the Redmi slot
(`logo_r_unlock`, 300×2250), the same logo was centre-cropped to
[`logo_r_unlock_custom.png`](logo_r_unlock_custom.png) without resampling.

Issue #21 Mi-only builds:

```bash
python3 tools/imagefv_tool.py repack images/imagefv_stock.img \
    -o images/imagefv.img \
    --replace logo_m_unlock=splash/logo_m_unlock.png \
    --preserve-oem-signature

python3 tools/imagefv_tool.py repack images/imagefv_stock.img \
    -o images/imagefv_rehashed.img \
    --replace logo_m_unlock=splash/logo_m_unlock.png \
    --allow-unsigned
```

Issue #23 Redmi-only and combined builds:

```bash
# Redmi slot, OEM signature preserved
python3 tools/imagefv_tool.py repack images/imagefv_stock.img \
    -o images/imagefv_r_unlock.img \
    --replace logo_r_unlock=splash/logo_r_unlock_custom.png \
    --preserve-oem-signature

# Redmi slot, rebuilt hash table
python3 tools/imagefv_tool.py repack images/imagefv_stock.img \
    -o images/imagefv_r_unlock_rehashed.img \
    --replace logo_r_unlock=splash/logo_r_unlock_custom.png \
    --allow-unsigned

# both Mi and Redmi slots, OEM signature preserved
python3 tools/imagefv_tool.py repack images/imagefv_stock.img \
    -o images/imagefv_mr_unlock.img \
    --replace logo_m_unlock=splash/logo_m_unlock.png \
    --replace logo_r_unlock=splash/logo_r_unlock_custom.png \
    --preserve-oem-signature

# both slots, rebuilt hash table
python3 tools/imagefv_tool.py repack images/imagefv_stock.img \
    -o images/imagefv_mr_unlock_rehashed.img \
    --replace logo_m_unlock=splash/logo_m_unlock.png \
    --replace logo_r_unlock=splash/logo_r_unlock_custom.png \
    --allow-unsigned
```

Issue #25 all-logo builds:

```bash
# every logo slot, OEM signature preserved
python3 tools/imagefv_tool.py repack images/imagefv_stock.img \
    -o images/imagefv_all_logo.img \
    --replace-logo splash/logo_m_unlock.png \
    --preserve-oem-signature

# every logo slot, rebuilt hash table
python3 tools/imagefv_tool.py repack images/imagefv_stock.img \
    -o images/imagefv_all_logo_rehashed.img \
    --replace-logo splash/logo_m_unlock.png \
    --allow-unsigned
```

- Mi replacement logo: [`logo_m_unlock.png`](logo_m_unlock.png) (300×2400)
- Redmi replacement logo: [`logo_r_unlock_custom.png`](logo_r_unlock_custom.png)
  (300×2250)
- Embedded BMPs: `logo_m_unlock.bmp` (300×2400, 24-bit),
  `logo_r_unlock.bmp` (300×2250, 24-bit)
- `images/imagefv_mr_unlock.img` SHA-256:
  `c36ce21e1232bb5b17249d8ed72e56acf8f298fc728c83a069f82127b37bc892`
- `images/imagefv_mr_unlock_rehashed.img` SHA-256:
  `422d0620b1a4e0818d6a1b0bd111a7975b731203853909147292afd3e8f9d976`
- `images/imagefv_r_unlock.img` SHA-256:
  `1debe8cf2c1c281f43649c2288b560142e82a02a965574bb7f3e68a8dee07086`
- `images/imagefv_r_unlock_rehashed.img` SHA-256:
  `e76fb0d0202b00c34bde1a7a10e7e3bcdd1c7fa2ec84555510b8758ddbb299a9`
- `images/imagefv.img` SHA-256:
  `ba58536ad4629575f1c68c2f26e9f328e9d0f70fa48aabd33d07a27558187a65`
- `images/imagefv_rehashed.img` SHA-256:
  `189e8c7abc6e6411e792312266b3e461fb7895bec232d0c49ab845d19495a718`
- `images/imagefv_all_logo.img` SHA-256:
  `a4369a99093596d84f8679cc46be4af759609e369b65449fdc149e513c614ece`
- `images/imagefv_all_logo_rehashed.img` SHA-256:
  `3e8875c8e5e560c31f226bed00852b55bc1bdf15083f7daf34ecfe15df4d0bd2`
- `images/imagefv_stock.img` remains the stock OEM-signed recovery image.

## Repacking and signature warning

`imagefv` is not a plain UEFI container: it is a **Qualcomm signed ELF**. The
segment at file offset `0x1000` is an MBN version 6 hash segment containing:

- SHA-384 hashes of the ELF header/program headers and of the firmware-volume
  segment,
- an OEM certificate chain and an RSA signature over the hash table and
  metadata.

`tools/imagefv_tool.py` rebuilds the LZMA section, GUIDed section, FFS file,
firmware volume and the Qualcomm SHA-384 hash table correctly, and verifies the
embedded OEM signature. However, the OEM RSA-PSS signature is made with Xiaomi's
private key, which is not available here. Refreshing the hash table changes the
signed data, so a rehashed image is no longer OEM-signed. Keeping the hash table
untouched preserves the signature but leaves the segment hashes stale. Either
way, a bootloader that verifies both will not render the custom graphics. There
is no software-only way around that without re-signing with the OEM key or using
a bootloader that skips `imagefv` verification.

If you need to recover a device after flashing a bad `imagefv`, flash the stock
`images/imagefv_stock.img` from this repository/release, or use EDL/Qualcomm
recovery if the bootloader no longer starts.

## Assets

| PNG | Resolution | Size (bytes) |
| --- | --- | ---: |
| `battery_symbol_DebugBoot.png` | 606×270 | 1,696 |
| `battery_symbol_DebugStay.png` | 584×270 | 1,848 |
| `battery_symbol_LowBattery.png` | 178×350 | 1,513 |
| `battery_symbol_LowBatteryCharging.png` | 178×350 | 2,522 |
| `battery_symbol_NoBattery.png` | 551×318 | 1,928 |
| `battery_symbol_Nocharger.png` | 606×270 | 1,528 |
| `battery_symbol_Soc10.png` | 545×237 | 476 |
| `logo_destory.png` | 1080×2400 | 19,908 |
| `logo_fastboot.png` | 1080×2400 | 16,256 |
| `logo_m_unlock.png` | 300×2400 | 16,619 |
| `logo_mi.png` | 300×1400 | 19,445 |
| `logo_p_unlock.png` | 300×2250 | 22,576 |
| `logo_poco.png` | 300×1250 | 19,858 |
| `logo_r_unlock.png` | 300×2250 | 17,313 |
| `logo_r_unlock_custom.png` | 300×2250 | 16,488 |
| `logo_redmi.png` | 300×1250 | 15,500 |
| `tsens_thermal_err_symbol.png` | 551×318 | 421 |
| `tsens_thermal_symbol.png` | 551×318 | 421 |

What the graphics are used for:

- `logo_mi`, `logo_redmi`, `logo_poco` — brand splash shown while booting.
- `logo_fastboot` — screen shown in fastboot/bootloader mode.
- `logo_destory` — "system destroyed"/corrupted-system warning.
- `logo_m_unlock`, `logo_p_unlock`, `logo_r_unlock` — bootloader-unlock
  warnings. The `m`/`p`/`r` variants are the MI, POCO and Redmi branding.
- `battery_symbol_*` — charging screen states (low battery, no charger,
  debug boot, etc.).
- `tsens_thermal_*` — thermal warning symbols.

Checksums for all PNGs are in [`SHA256SUMS.txt`](SHA256SUMS.txt).

## Reflashing note

`imagefv` is verified by the bootloader (it contains an OEM-signed Qualcomm hash
segment), so modifying or reflashing it can hard-brick the device. Keep
`images/imagefv_stock.img` (stock, OEM-signed) available for recovery. The issue
#21, #23 and #25 builds are custom and experimental; flash them only if you can
recover with the stock image or EDL. On a Redmi device the unlock resource is
`logo_r_unlock`, but if the exact displayed slot is unknown start with
`images/imagefv_all_logo.img`, which patches every logo slot (or
`images/imagefv_mr_unlock.img` for the unlock screen only). If those still
produce a black splash, flash `images/imagefv_stock.img` and provide the exact
stock `imagefv` from the installed ROM, because a firmware-version mismatch can
also break rendering.
