# Port implementation (A13 behavior on A16)

This is the exact set of changes that was applied. The full, re-runnable
implementation is `work/patcher/patch_haptics.py`; repackaging is
`work/packaging/package_jars.py`.

---

## 0. Pipeline

```
source jars ──► baksmali 3.0.10 ──► work/smali/source13/    (reference only)
target jars ──► baksmali 3.0.10 ──► work/smali/target16/    (patched tree)
                                         │
                                         ├─ python3 work/patcher/patch_haptics.py
                                         │
                                         ├─ smali a -a 29  → dex version 039
                                         │      framework/classes3 → classes3.dex
                                         │      services/classes   → classes.dex
                                         │
                                         ├─ python3 work/packaging/package_jars.py
                                         │      backup/ + replace entry + zipalign 4 + verify
                                         └─► target_of_project_android_16/{framework,services}.jar
```

`-a 29` is not a downgrade: it makes smali emit **dex version 039**, which is
what both supplied target dex files use. Assembling with the default (`-a 15`)
produces `040/041` headers and fails on hidden-API flags.

Every patched method carries a `# A13-PORT` comment. Re-running the patcher is
safe: a method whose body already matches is reported as
`= already patched` and left alone.

---

## 1. `framework.jar` → `classes3.dex`

### 1.1 `android.os.VibrationEffect.scale(FF)F`

**File:** `work/smali/target16/framework/classes3/android/os/VibrationEffect.smali`

A16 implements two curves and picks one with an aconfig flag:

```
hapticsScaleV2Enabled() == true   →  linear/rational curve
hapticsScaleV2Enabled() == false  →  A13 legacy curve (gamma 0.65 + sigmoid above 1.0)
```

The method was replaced with the **unconditional A13 implementation**, copied
verbatim from `source13` (same instructions, same `MathUtils` calls):

```smali
const v0, 0x3fc4ec4f                     # gamma = 0.65f
invoke-static {p1, v0}, Landroid/util/MathUtils;->pow(FF)F
...
cmpg-float v2, p1, 1.0f
if-gtz v2, :cond_10                      # scaleFactor <= 1.0 -> intensity * scale
...
# scaleFactor > 1.0: extraScale = scaleFactor^(4-scaleFactor)
#                    sigmoid-shaped compensation, clamped to [0, 1]
```

**Why:** this is the amplitude curve every A13 app/UI/notification effect went
through. The A16 "V2" curve changes perceived strength, especially above 1.0.

**Risk:** low. The replacement is the ROM's own code, uses only existing
`MathUtils` helpers, and is a `static` pure function.

---

## 2. `services.jar` → `classes.dex`

### 2.1 `HapticFeedbackVibrationProvider.getVibrationForHapticFeedback(I)`

**File:** `.../services/classes/com/android/server/vibrator/HapticFeedbackVibrationProvider.smali`

A16 packs constants `0x3 … 0x9` into one `packed-switch`. Only two slots
differ from A13, so only those two slots were changed:

| Constant | A16 (stock) | A13 (ported) |
|---:|---|---|
| `0x3` `KEYBOARD_PRESS`/`KEYBOARD_TAP` | `getKeyboardVibration(3)` | `VibrationEffect.get(0)` |
| `0x7` `KEYBOARD_RELEASE` | `getKeyboardVibration(7)` | `VibrationEffect.get(2, false)` |

```smali
:pswitch_data_60
# A13-PORT A13: KEYBOARD_PRESS(0x3) -> get(0), KEYBOARD_RELEASE(0x7) -> get(2, false)
.packed-switch 0x3
    :pswitch_54     # 0x3 -> get(0)
    :pswitch_4a     # 0x4 -> get(0x15)
    :pswitch_54     # 0x5 -> get(0)
    :pswitch_45     # 0x6 -> get(2)
    :pswitch_40     # 0x7 -> get(2, false)
    :pswitch_40     # 0x8 -> get(2, false)
    :pswitch_4a     # 0x9 -> get(0x15)
.end packed-switch
```

The rest of the mapping was already identical to A13 (`0x0 → get(5)`,
`0x1/0x3 → get(0)`, `0x4 → get(0x15)`, `0x5 → get(0)`, `0x6 → get(2)`,
`0x8 → get(2,false)`, `0x9 → get(0x15)`, `0xa/0xb → get(2,false)`,
`0xc → get(0)`, `0xd → get(2)`, `0xe → get(5)`, `0xf/0x10 → get(0)`,
`0x11 → get(1)`, `0x2711 → safe-mode waveform`, `0x2712 → assistant primitives`,
`0x2713 → get(5)`).

A16-only constants are **kept** (`0x12…0x1b`, `0x2714/0x2715`); A13 had no
behavior for them, and dropping them would silently remove A16 UI feedback.
This is documented in `05-limitations.md`.

### 2.2 `HapticFeedbackVibrationProvider.getVibration(II)`

A16 first asks `HapticFeedbackCustomization.getEffect(constant, usage)` and
uses any resource-provided override. A13 had no such layer, so the override was
removed:

```smali
invoke-virtual {p0, p1}, ...->isFeedbackConstantEnabled(I)Z
move-result v0
if-nez v0, :cond_a13_mapped
const/4 p0, 0x0
return-object p0

:cond_a13_mapped
invoke-virtual {p0, p1}, ...->getVibrationForHapticFeedback(I)Landroid/os/VibrationEffect;
move-result-object p0
return-object p0
```

`isFeedbackConstantEnabled()` is kept: it returns `false` for
`HapticFeedbackConstants.NO_HAPTICS (-1)` and for `TEXT_HANDLE_MOVE (9)` when
text-handle haptics are disabled — the same null behavior as A13.

### 2.3 `HapticFeedbackVibrationProvider.getVibrationForInputDevice(II)`

Same customization bypass for input-device haptics, so external keyboards and
controllers receive the A13 effect mapping.

### 2.4 `HapticFeedbackVibrationProvider.getVibrationAttributes(IIII)`

**Before (A16):** distinct branches for keyboard constants (`3`, `7`) using
`createKeyboardVibrationAttributes(deviceId)` (`USAGE_IME_FEEDBACK`), a
`0x12…0x14 → HARDWARE_FEEDBACK` switch, `0x2712…0x2715 → HARDWARE_FEEDBACK`,
`0xe/0xf → PHYSICAL_EMULATION`, default `TOUCH`.

**After (A13):** a direct port of `PhoneWindowManager.getVibrationAttributes()`:

```smali
sparse-switch p1, :sswitch_data_a13      # p2 (usage) == 0
...
:sswitch_data_a13
.sparse-switch
    0xe -> :sswitch_a13_physical
    0xf -> :sswitch_a13_physical
    0x12 -> :sswitch_a13_hardware
    0x13 -> :sswitch_a13_hardware
    0x14 -> :sswitch_a13_hardware
    0x2712 -> :sswitch_a13_hardware
    0x2713 -> :sswitch_a13_hardware
    0x2714 -> :sswitch_a13_hardware     # A16-only, kept
    0x2715 -> :sswitch_a13_hardware     # A16-only, kept
.end sparse-switch
```

Consequences:

* keyboard constants `3`/`7` now get `USAGE_TOUCH` (A13), not
  `USAGE_IME_FEEDBACK`;
* the caller-supplied `usage` (`p2 != 0`) path is preserved for the A16
  input-device API;
* flags are still applied through `getVibrationAttributesWithFlags(...)`,
  which keeps the A13 "always" flag (`0x2`) and the A13
  `shouldBypassInterruptionPolicy` behavior (bypass for `0x12`, `0x13`,
  `0x14`).

### 2.5 `VibrationScaler.scale(VibrationEffect, int)`

**Before (A16):**

```java
strength = getEffectStrength(usage);
scale    = getScaleFactor(usage, false);
adaptive = getAdaptiveHapticsScale(usage);
return effect.resolve(amplitude).applyEffectStrength(strength)
             .scale(scale).applyAdaptiveScale(adaptive);
```

**After (A13):**

```java
strength = getEffectStrength(usage);
scale    = getScaleFactor(usage, false);
return effect.applyEffectStrength(strength)
             .resolve(amplitude)
             .scale(scale);
```

The order (`applyEffectStrength` → `resolve` → `scale`) and the amplitude source
(`VibrationConfig.getDefaultVibrationAmplitude()`, i.e.
`config_defaultVibrationAmplitude`, same resource A13 used) now match A13, and
the A16-only adaptive multiplication is gone.

### 2.6 `VibrationScaler.getScaleFactor(int usage, boolean external)`

**Before (A16):** `getCurrentIntensity()` (or `0.5` when off) →
`getScaleLevel()` → `scaleLevelToScaleFactor()` → then remapped again by
`VibrationConfig.getVibrationScaleFactor()` /
`getExternalVibrationScaleFactor()` (resource arrays).

**After (A13):**

```smali
default = settings.getDefaultIntensity(usage);
current = settings.getCurrentIntensity(usage);
if (current == 0) current = default;      # A13 substitutes the default
level = current - default;                # clamped by scaleLevelToScaleFactor
return scaleLevelToScaleFactor(level);
```

This also removes the A16 `0.5` fallback and the resource-array remap, which is
what makes the scale table below actually take effect.

### 2.7 `VibrationScaler.scaleLevelToScaleFactor(int)`

Replaced the `gain ^ level` calculation with the A13 constant table:

| level | factor |
|---:|---:|
| `-2` | `0.6f` (`0x3f19999a`) |
| `-1` | `0.8f` (`0x3f4ccccd`) |
| `0`  | `1.0f` (`0x3f800000`) |
| `+1` | `1.2f` (`0x3f99999a`) |
| `+2` | `1.4f` (`0x3fb33333`) |

Out-of-range levels return `1.0f` and log a `wtf` (previously they returned
`0.5f` and logged).

### 2.8 `VibrationScaler.getAdaptiveHapticsScale(int)`

```smali
const/high16 p0, 0x3f800000    # 1.0f
return p0
```

Adaptive haptics is an A16 feature (default `0.5`, device-tuned and updated at
runtime). Returning `1.0f` neutralises it everywhere it is used
(`VibrationScaler.scale`, `HalVibration.scaleEffects`,
`ExternalVibrationSession`).

### 2.9 `VibrationSettings.getDefaultIntensity(int)` / `getCurrentIntensity(int)`

A16 introduced two usages that do not exist in A13:

* `USAGE_IME_FEEDBACK = 0x52` (keyboard)
* `USAGE_GESTURE_INPUT = 0x62` (gesture)

A13 used `USAGE_TOUCH = 0x12` for both, so both methods alias them **before**
looking up defaults/current values:

```smali
const/16 v0, 0x52
if-eq p1, v0, :cond_a13_gesture
const/16 p1, 0x12
goto :goto_a13_lookup

:cond_a13_gesture
const/16 v0, 0x62
if-eq p1, v0, :goto_a13_lookup
const/16 p1, 0x12

:goto_a13_lookup
... original lookup with p1 ...
```

Effect: keyboard and gesture haptics use `haptic_feedback_intensity` and the
touch default intensity, exactly like A13. The A16 keys
`keyboard_vibration_enabled`, `keyboard_vibration_intensity` and
`gesture_input_vibration_intensity` are still written by `updateSettings()` but
are no longer read, which matches A13 (those keys did not exist).

---

## 3. Verification performed

| Check | Result |
|---|---|
| `smali a -a 29` on `framework/classes3` | success, dex header `039` |
| `smali a -a 29` on `services/classes` | success, dex header `039` |
| Re-baksmali rebuilt `framework/classes3.dex` | 8,563 classes — identical count to original |
| Re-baksmali rebuilt `services/classes.dex` | 7,031 classes — identical count to original |
| Rebuilt `services.dex` vs original (re-disassembled) | only the 3 patched files differ |
| Rebuilt `framework.dex` vs original (re-disassembled) | only `VibrationEffect.smali` differs semantically; 12 other files differ only by smali round-trip normalisation (added `whitelist` flag, dropped `= false`/`= 0x0` static initialisers, which keep the same runtime values) |
| `zipfile.testzip()` on both jars | no corrupt entries |
| Entry `classes3.dex` / `classes.dex` in the jars | byte-identical to the rebuilt dex (sha256 verified) |
| Dex entries remain `STORED` | yes |
| Dex entries 4-byte aligned | yes (`zipalign -c 4` passes) |
| Original jars preserved | `target_of_project_android_16/backup/` |

SHA-256 (first 16 hex chars) of the new dex entries:

* `framework.jar!classes3.dex` → `650f79b97d500c65…`
* `services.jar!classes.dex`  → `a4b2047ad3aff36d…`

---

## 4. Re-applying from scratch

```bash
cd /home/mikailamin/Projects/Haptics

# 1. (if needed) re-decompile
#    work/smali/target16 is already the decompiled target tree

# 2. patch smali (idempotent)
python3 work/patcher/patch_haptics.py

# 3. assemble the two affected dex files
java -Xmx6g -jar tools_for_project/smali-3.0.10-fat-release.jar a -a 29 \
    work/smali/target16/framework/classes3 \
    -o work/rebuild/patched/framework-classes3.dex

java -Xmx6g -jar tools_for_project/smali-3.0.10-fat-release.jar a -a 29 \
    work/smali/target16/services/classes \
    -o work/rebuild/patched/services-classes.dex

# 4. repackage + align + verify (originals are backed up on first run)
python3 work/packaging/package_jars.py
```
