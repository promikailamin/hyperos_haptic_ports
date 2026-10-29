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
- Checked-in SHA-256: `3c5e740cb576db7c1dbc20bd391f0622055e398740b008bcb31569e25af77fed`
  (stock, OEM-signed)

The checked-in `imagefv.img` is the original signed image. A custom repack from
[issue #17](https://github.com/promikailamin/hyperos_haptic_ports/issues/17) was
removed because it was rejected by the bootloader and could brick the device.

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
python3 tools/imagefv_tool.py info images/imagefv.img

# extract the 17 BMPs
python3 tools/imagefv_tool.py extract images/imagefv.img -o extracted

# replace one image and rebuild every layer
python3 tools/imagefv_tool.py repack images/imagefv.img \
    -o imagefv_custom.img \
    --replace logo_m_unlock=extracted/logo_m_unlock.bmp

# validate UEFI checksums and the Qualcomm hash table
python3 tools/imagefv_tool.py verify imagefv_custom.img
```

Replacement images must have exactly the same dimensions and be 24-bit,
uncompressed BMP (PNG input is converted automatically when Pillow is
installed). The tool refuses replacements that would not fit the original slot.

## Repacking and signature warning

`imagefv` is not a plain UEFI container: it is a **Qualcomm signed ELF**. The
segment at file offset `0x1000` is an MBN version 6 hash segment containing

- SHA-384 hashes of the ELF header/program headers and of the firmware-volume
  segment,
- an OEM certificate chain and an RSA signature over the hash table and
  metadata.

The previous custom repack changed the firmware volume but left that hash table
untouched, so the image no longer matched its own hashes. That is why it failed
to boot (and why it could brick a device).

`tools/imagefv_tool.py` rebuilds the LZMA section, GUIDed section, FFS file,
firmware volume and the Qualcomm SHA-384 hash table correctly. However, the OEM
RSA signature is made with Xiaomi's private key, which is not available here.
Refreshing the hash table changes the signed data, so an edited image is no
longer OEM-signed and a locked bootloader will normally reject it. There is no
software-only way around that without re-signing with the OEM key or using a
bootloader that skips `imagefv` verification.

For that reason the stock `images/imagefv.img` is kept unchanged. If you need to
recover a device after flashing a bad `imagefv`, flash the stock image from this
repository/release, or use EDL/Qualcomm recovery if the bootloader no longer
starts.

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

`imagefv` is verified by the bootloader (it contains an OEM-signed Qualcomm hash
segment), so modifying or reflashing it can hard-brick the device. These files
are provided for inspection/extraction only; always keep a stock backup.
