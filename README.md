# HyperOS (Android 13) → PixelOS (Android 16) haptic behavior port

This project ports the **haptic/vibration behavior of Xiaomi HyperOS on
Android 13** onto an **AOSP/PixelOS Android 16** build by patching the supplied
`framework.jar` and `services.jar`. The A16 native vibrator HAL and the
session-based playback stack are kept intact, so the device stays bootable; only
the policy layers that decide *which effect*, *with which attributes* and *at
which intensity* are changed.

```
source_for_project_android_13/   supplied HyperOS A13 jars (reference)
target_of_project_android_16/    supplied PixelOS A16 jars (patched in place)
  backup/                        pristine copies of the supplied A16 jars
docs/                            inventory, architecture, implementation, install, limitations
install/                         Magisk module builder + adb install/rollback scripts
work/                            decompiled trees, patcher, rebuilt dex, verification
dist/pixelos-a13-haptics.zip     ready-to-flash Magisk/KernelSU module
```

---

## 1. What was changed

11 smali methods across 4 classes. Every patched method is marked `# A13-PORT`.

| Jar | Class | Method | A13 behavior restored |
|---|---|---|---|
| `framework.jar` | `android.os.VibrationEffect` | `scale(FF)F` | legacy gamma-0.65 amplitude curve (drops the A16 Scale-V2 flag branch) |
| `services.jar` | `HapticFeedbackVibrationProvider` | `getVibrationForHapticFeedback(I)` | `KEYBOARD_PRESS(0x3) → get(0)`, `KEYBOARD_RELEASE(0x7) → get(2,false)` |
| | | `getVibration(II)` | bypass `HapticFeedbackCustomization` overrides |
| | | `getVibrationForInputDevice(II)` | same bypass for input devices |
| | | `getVibrationAttributes(IIII)` | A13 constant → usage mapping (physical emulation / hardware feedback / touch) |
| | `VibrationScaler` | `scale(VibrationEffect,I)` | A13 order: effect strength → resolve amplitude → scale, no adaptive scale |
| | | `getScaleFactor(IZ)F` | A13 lookup, no `0.5` fallback, no config-array remap |
| | | `scaleLevelToScaleFactor(I)F` | fixed `0.6 / 0.8 / 1.0 / 1.2 / 1.4` table |
| | | `getAdaptiveHapticsScale(I)F` | neutral `1.0f` (adaptive haptics is A16-only) |
| | `VibrationSettings` | `getDefaultIntensity(I)I` | alias `USAGE_IME_FEEDBACK(0x52)` / `USAGE_GESTURE_INPUT(0x62)` → `USAGE_TOUCH(0x12)` |
| | | `getCurrentIntensity(I)I` | same aliasing |

Consequences:

* UI clicks, long-press, gestures and keyboard taps go through the A13 effect
  mapping again (SystemUI, Launcher and third-party apps get this for free via
  `View#performHapticFeedback`).
* Intensity follows the A13 five-level table instead of A16's `1.4^level`
  (which produced `0.51 / 0.71 / 1.0 / 1.4 / 1.96`).
* Keyboard/gesture feedback uses the touch intensity, like A13, instead of the
  A16 `keyboard_vibration_*` / `gesture_input_vibration_intensity` keys.
* A16 adaptive haptics no longer modifies amplitudes.

The A16-only feedback constants (`0x12…0x1b`, `0x2714/0x2715`) keep their A16
effects so SystemUI/Launcher scrolling does not go silent. See
`docs/05-limitations.md` for why and how to make it strictly A13.

---

## 2. Artifacts

| File | SHA-256 |
|---|---|
| `target_of_project_android_16/framework.jar` | `c63aa7771b2dc9185e5d7929cf31baa0e2906ab954e7f5f3121b25814985b754` |
| `target_of_project_android_16/services.jar` | `a0c3bf1a2495ce8db8999ec58a0aed1b50c182ed9f17daeaeb12df7fc132087b` |
| `dist/pixelos-a13-haptics.zip` | `60896a41060304155523ad967e13a5cf048d9eb41d8d4e9d7d835bf0755d07f1` |

Replaced dex entries:

| Entry | Dex version | SHA-256 |
|---|---|---|
| `framework.jar!classes3.dex` | `039` | `650f79b97d500c65082834fe88cac629338fb7182aa86c8e80b6febfc8e61950` |
| `services.jar!classes.dex` | `039` | `a4b2047ad3aff36dbedfe0cb33c90c4be5d6b110972eacff4d3167db10fc0eb9` |

Both dex entries stay `STORED` and 4-byte aligned (`zipalign -c 4` passes).

---

## 3. Install

> ⚠️ These jars are tied to the exact PixelOS build they were decompiled from.
> Do not flash them on a different build id. Read
> `docs/04-install-rollback.md` first.

### Magisk / KernelSU (recommended)

```bash
adb push dist/pixelos-a13-haptics.zip /sdcard/Download/
# then: Magisk app → Modules → Install from storage
adb reboot
```

Or from a shell:

```bash
adb shell su -c 'magisk --install-module /sdcard/Download/pixelos-a13-haptics.zip'
adb reboot
```

The module overlays `/system/framework/{framework,services}.jar` and deletes
stale ART artifacts so the new dex is recompiled.

### Manual (rooted, writable `/system`)

```bash
./install/apply-adb.sh            # optional: ./install/apply-adb.sh <serial>
adb reboot
```

The script backs up the current jars to `/data/local/tmp/haptics-stock/`,
installs the patched ones, fixes SELinux contexts, and clears
`/data/dalvik-cache/*/system@framework@*`, `…services@*` plus the
`/system/framework/oat/*/framework|services.{odex,vdex}` files.

**First boot is slower** while ART recompiles the boot classpath.

### Rollback

```bash
./install/rollback-adb.sh
adb reboot
```

Or from recovery: remove/disable `/data/adb/modules/pixelos_a13_haptics/`, clear
the dalvik-cache entries above, reboot.

---

## 4. Verification performed

* Both dex files assemble cleanly with `smali a -a 29` (dex `039`, matching the
  originals) — `-a 35` would emit `041` and the default `-a 15` rejects hidden
  API flags.
* Re-baksmali of the rebuilt dex: **8,563** framework classes and **7,031**
  services classes — identical to the originals.
* Services diff: only the 3 intended files differ.
* Framework diff: only `VibrationEffect.smali` differs semantically; 12 other
  files differ only by smali round-trip normalisation (added `whitelist` flag,
  dropped `= false` / `= 0x0` static initialisers, same runtime values).
* `zipfile.testzip()` and `unzip -t` clean on both jars and the module zip.
* `zipalign -c 4` passes; dex entries byte-identical to the rebuilt files.
* Patcher is idempotent: a second run reports `0 smali method(s) modified`.

**Not tested on hardware** — no PixelOS device/emulator was available. The
verification is structural, not runtime.

---

## 5. Limitations (summary)

* The supplied A13 `framework.jar` has no `resources.arsc`, so HyperOS waveform
  / pattern resources cannot be copied; PixelOS keeps its own notification
  patterns.
* MIUI/HyperOS stub implementations (`MiuiStubUtil`, `VibratorStub`,
  `VibrationEffectStub`, `VibrationManagerServiceStub`, …) are absent, so MIUI
  "dynamic effects", per-app overrides and the non-null `CLOCK_TICK` /
  `TEXT_HANDLE_MOVE` conversions are not portable. Those two fall back to
  `get(0x15)`, which is what the supplied A13 code does.
* The A16 vibrator HAL, PWLE v2 and vendor effects are untouched.
* A16-only features are bypassed/neutralised rather than removed.

Full details: `docs/05-limitations.md`.

---

## 6. Reproducing the build

```bash
python3 work/patcher/patch_haptics.py            # idempotent smali patcher

java -Xmx6g -jar tools_for_project/smali-3.0.10-fat-release.jar a -a 29 \
    work/smali/target16/framework/classes3 \
    -o work/rebuild/patched/framework-classes3.dex

java -Xmx6g -jar tools_for_project/smali-3.0.10-fat-release.jar a -a 29 \
    work/smali/target16/services/classes \
    -o work/rebuild/patched/services-classes.dex

python3 work/packaging/package_jars.py           # backup + replace + zipalign + verify
./install/build-magisk-module.sh                 # -> dist/pixelos-a13-haptics.zip
```

Originals are preserved in `target_of_project_android_16/backup/` on the first
packaging run.

---

## 7. Documentation

| Document | Contents |
|---|---|
| [`docs/01-inventory.md`](docs/01-inventory.md) | Every haptic/vibration class and consumer in both jars (generated, 2,594 lines) |
| [`docs/02-architecture-and-differences.md`](docs/02-architecture-and-differences.md) | Full A13 vs A16 stack, mapping tables, settings keys, consumer matrix |
| [`docs/03-port-implementation.md`](docs/03-port-implementation.md) | Exact smali patches, before/after, verification, re-apply commands |
| [`docs/04-install-rollback.md`](docs/04-install-rollback.md) | Flash, verify, rollback, OTA and uninstall procedures |
| [`docs/05-limitations.md`](docs/05-limitations.md) | Non-portable items, fidelity table, operational caveats |
