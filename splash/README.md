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
- Local copy: [`../images/imagefv.img`](../images/imagefv.img)
- SHA-256: `3c5e740cb576db7c1dbc20bd391f0622055e398740b008bcb31569e25af77fed`

The local `imagefv.img` is byte-for-byte identical to the official ROM's
`imagefv.elf`, so the assets below are from the official firmware.

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
| `logo_m_unlock.png` | 300×2400 | 22,244 |
| `logo_mi.png` | 300×1400 | 19,445 |
| `logo_p_unlock.png` | 300×2250 | 22,576 |
| `logo_poco.png` | 300×1250 | 19,858 |
| `logo_r_unlock.png` | 300×2250 | 17,313 |
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

`imagefv` is verified by the bootloader (it contains CoT certificates), so
modifying or reflashing it can hard-brick the device. These files are provided
for inspection/extraction only.
