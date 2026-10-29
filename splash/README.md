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
- Stock image: [`../images/imagefv.img`](../images/imagefv.img), OEM-signed
  (SHA-256 `3c5e740cb576db7c1dbc20bd391f0622055e398740b008bcb31569e25af77fed`)
- Stock recovery copy: [`../images/imagefv_stock.img`](../images/imagefv_stock.img),
  byte-identical to `imagefv.img`

The checked-in `imagefv.img` is the stock image. The custom-logo build from
[issue #19](https://github.com/promikailamin/hyperos_haptic_ports/issues/19)
has been withdrawn: it rebuilt all UEFI layers and refreshed the Qualcomm hash
table, but it could not recreate Xiaomi's OEM signature. A bootloader that
verifies `imagefv` rejects it, and flashing it can leave the device unable to
boot. The custom `logo_m_unlock.png` is still available as an asset for anyone
who can re-sign the image.

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

# replace one image and rebuild every layer (only for inspection/unlocked devices)
python3 tools/imagefv_tool.py repack images/imagefv.img \
    -o imagefv_custom.img \
    --replace logo_m_unlock=extracted/logo_m_unlock.bmp \
    --allow-unsigned

# validate UEFI checksums, the hash table and the OEM signature
python3 tools/imagefv_tool.py verify imagefv_custom.img
```

Replacement images must have exactly the same dimensions and be 24-bit,
uncompressed BMP (PNG input is converted automatically when Pillow is
installed). The tool refuses replacements that would not fit the original slot.
`repack` also refuses to write an edited signed image unless `--allow-unsigned`
is given, because the result is rejected by the bootloader.

## Custom `logo_m_unlock` replacement

The 300×2400 logo supplied in issue #19 was flattened onto black for the
firmware's 24-bit BMP (the PNG has an alpha channel, the firmware does not).
The repack command was:

```bash
python3 tools/imagefv_tool.py repack images/imagefv_stock.img \
    -o imagefv_custom.img \
    --replace logo_m_unlock=splash/logo_m_unlock.png \
    --allow-unsigned
python3 tools/imagefv_tool.py verify imagefv_custom.img   # fails: OEM signature invalid
```

- Replacement logo: [`logo_m_unlock.png`](logo_m_unlock.png) (300×2400)
- Embedded BMP: `logo_m_unlock.bmp` (300×2400, 24-bit)
- The resulting custom image was **not** released or kept as `imagefv.img`
  because it cannot pass the bootloader's signature check.

## Repacking and signature warning

`imagefv` is not a plain UEFI container: it is a **Qualcomm signed ELF**. The
segment at file offset `0x1000` is an MBN version 6 hash segment containing

- SHA-384 hashes of the ELF header/program headers and of the firmware-volume
  segment,
- an OEM certificate chain and an RSA signature over the hash table and
  metadata.

The old issue #17 repack changed the firmware volume but left that hash table
untouched, so the image did not even match its own hashes. `tools/imagefv_tool.py`
now rebuilds the LZMA section, GUIDed section, FFS file, firmware volume and the
Qualcomm SHA-384 hash table correctly, and it verifies the embedded OEM
signature. However, the OEM RSA-PSS signature is made with Xiaomi's private key,
which is not available here. Refreshing the hash table changes the signed data,
so a repacked image is no longer OEM-signed and a bootloader that verifies
`imagefv` rejects it (this is why the issue #19 image did not work). There is no
software-only way around that without re-signing with the OEM key or using a
bootloader that skips `imagefv` verification.

If you need to recover a device after flashing a bad `imagefv`, flash the stock
`images/imagefv_stock.img` (or `images/imagefv.img`) from this repository/release,
or use EDL/Qualcomm recovery if the bootloader no longer starts.

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
segment), so modifying or reflashing it can hard-brick the device. The checked-in
`images/imagefv.img` and `images/imagefv_stock.img` are both the stock,
OEM-signed image. Do not flash an edited image unless you can re-sign it.
