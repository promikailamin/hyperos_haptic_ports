# Haptic architecture: Android 13 HyperOS vs Android 16 PixelOS

This document explains how haptics work in both supplied ROMs, where they
differ, and which parts of the A13 behavior can be reproduced on A16.

All references are to the decompiled smali trees:

* `work/smali/source13/` — Xiaomi HyperOS, Android 13 (`framework.jar`, `services.jar`)
* `work/smali/target16/` — PixelOS/AOSP, Android 16 (`framework.jar`, `services.jar`)

---

## 1. Stack overview (both versions)

```
 app / SystemUI / Launcher / IME
        │  android.view.View#performHapticFeedback(...)
        │  android.os.Vibrator#vibrate(VibrationEffect[, VibrationAttributes])
        │  android.os.VibrationEffect (one-shot / waveform / predefined / composition)
        ▼
 framework.jar  ── android.os.Vibrator / SystemVibrator / SystemVibratorManager
        │  binder: IVibratorManagerService
        ▼
 services.jar   ── com.android.server.vibrator.VibratorManagerService
        │           VibrationSettings  (settings + policy)
        │           VibrationScaler    (intensity -> effect strength + amplitude scale)
        │           VibrationStepConductor / *VibratorStep (effect -> HAL commands)
        ▼
 vibrator HAL   ── HIDL android.hardware.vibrator@1.x (A13) / AIDL
                   android.hardware.vibrator (A16, session-based v3)
        ▼
 kernel driver (timed output / haptics DRM)
```

The **HAL and the per-step playback engine are device/ROM specific** and were
deliberately left untouched. The port only changes the policy layers that sit
above the HAL: effect selection, attributes, intensity, scaling and settings.

---

## 2. Android 13 (Xiaomi HyperOS) haptics

### 2.1 Framework layer

| Component | Role |
|---|---|
| `android.os.VibrationEffect` | effect model (one-shot, waveform, predefined, composition, PWLE) |
| `android.os.Vibrator` | app-facing API; `vibrate()`, `performHapticFeedback()`, `areAllPrimitivesSupported()` |
| `android.os.SystemVibrator` / `SystemVibratorManager` | binder client for `IVibratorManagerService` |
| `android.view.HapticFeedbackConstants` | feedback constant namespace (`0x0 … 0x14`, MIUI `0x2711 … 0x2713`) |
| `android.view.View#performHapticFeedback` | checks the view/global haptic flag, forwards the constant to `ViewRootImpl` |
| `android.os.VibratorStub` | MIUI hook: converts an effect to a `StepSegment` before sending |
| `android.os.VibrationEffectStub` | MIUI hook: `get(path, context)` effect from a resource path |
| `android.os.CombinedVibrationStub` | MIUI hook: dynamic (raw actuator) effects |
| `android.util.HapticFeedbackUtilStub` | MIUI hook: `performHapticFeedback(context, …)`, linear-motor checks |

`VibratorStub.obtainStepSegment()` and the other stubs are resolved through
`com.miui.base.MiuiStubUtil`, i.e. their implementation lives in HyperOS
framework extensions that are **not present in the supplied jars** (see
`05-limitations.md`).

### 2.2 system_server layer

| Component | Role |
|---|---|
| `VibratorManagerService` | per-usage policy, permissions, external vibrations, HAL dispatch |
| `VibrationSettings` | settings keys, ringer/battery-saver policy, per-usage intensity cache |
| `VibrationScaler` | intensity → `EffectStrength` + fixed 5-level amplitude factor |
| `VibrationStepConductor`, `*VibratorStep` | split an effect into HAL steps |
| `VibratorController` | one HAL vibrator |
| `VibrationEffectAdapters` / `DeviceVibrationEffectAdapter` | per-device effect adaptation |
| `PhoneWindowManager` | maps `HapticFeedbackConstants` → `VibrationEffect` + `VibrationAttributes` |
| `VibratorManagerServiceStub` | MIUI hooks (`init`, `shouldIgnoredVibration`, `weakenVibrationIfNecessary`, dynamic effects, `cancelDynamicEffectIfItIs`, …) |

### 2.3 Haptic feedback mapping (the behavior to restore)

`PhoneWindowManager.getVibrationEffect(int)` (A13, `services/classes2`):

| Constant | Name | Effect |
|---:|---|---|
| `0x0` | `LONG_PRESS` | `VibrationEffect.get(5)` |
| `0x1` | `VIRTUAL_KEY` | `get(0)` |
| `0x3` | `KEYBOARD_PRESS` / `KEYBOARD_TAP` | `get(0)` |
| `0x4` | `CLOCK_TICK` | MIUI `convertToMiuiHapticFeedback(4)`, fallback `get(0x15)` |
| `0x5` | `CALENDAR_DATE` | `get(0)` |
| `0x6` | `CONTEXT_CLICK` | `get(2)` |
| `0x7` | `KEYBOARD_RELEASE` | `get(2, false)` |
| `0x8` | `VIRTUAL_KEY_RELEASE` | `get(2, false)` |
| `0x9` | `TEXT_HANDLE_MOVE` | `null` if text-handle haptics off, else `get(0x15)` |
| `0xa` | `ENTRY_BUMP` | `get(2, false)` |
| `0xb` | `DRAG_CROSSING` | `get(2, false)` |
| `0xc` | `GESTURE_START` | `get(0)` |
| `0xd` | `GESTURE_END` | `get(2)` |
| `0xe` | `EDGE_SQUEEZE` | `get(5)` |
| `0xf` | `EDGE_RELEASE` | `get(0)` |
| `0x10` | `CONFIRM` | `get(0)` |
| `0x11` | `REJECT` | `get(1)` |
| `0x12` | `ROTARY_SCROLL_TICK` | `null` (not in the A13 switch) |
| `0x13` | `ROTARY_SCROLL_ITEM_FOCUS` | `null` |
| `0x14` | `ROTARY_SCROLL_LIMIT` | `null` |
| `0x2711` | `SAFE_MODE_ENABLED` | waveform from `config_safeModeEnabledVibePattern` |
| `0x2712` | `ASSISTANT_BUTTON` | primitive 4 @ 0.25 + primitive 7 @ 1.0 (+50 ms), fallback `get(5)` |
| `0x2713` | `LONG_PRESS_POWER_BUTTON` | `get(5)` |

Anything else returns `null` → no vibration.

`PhoneWindowManager.getVibrationAttributes(int)` (A13):

| Constant | Attributes usage |
|---|---|
| `0xe`, `0xf` | `USAGE_PHYSICAL_EMULATION` (`0x22`) |
| `0x12`, `0x13`, `0x14` | `USAGE_HARDWARE_FEEDBACK` (`0x32`) |
| `0x2712`, `0x2713` | `USAGE_HARDWARE_FEEDBACK` |
| everything else | `USAGE_TOUCH` (`0x12`) |

When the caller sets the "always" flag, the A13 `FLAG_BYPASS_INTERRUPTION_POLICY`
(`0x2`) is OR-ed into the attributes. A13 also bypasses the interruption policy
for the three "feedback" usages (`shouldBypassInterruptionPolicy`).

### 2.4 Intensity and amplitude scaling

A13 `VibrationScaler` uses a **fixed five-level table** built in its constructor
(`0x10e005a` is `config_defaultVibrationAmplitude`):

| `currentIntensity - defaultIntensity` | amplitude factor |
|---:|---:|
| `-2` | `0.6` |
| `-1` | `0.8` |
| `0`  | `1.0` |
| `+1` | `1.2` |
| `+2` | `1.4` |

with intensity values `1 = LIGHT`, `2 = MEDIUM`, `3 = STRONG` mapped to
`EffectStrength` `0 = LIGHT`, `1 = MEDIUM`, `2 = STRONG`.

When the current intensity is `0` (vibration switched off for that usage),
`VibrationScaler.scale()` substitutes the **default intensity** before scaling.

Amplitude scaling itself is done by `android.os.VibrationEffect.scale(float, float)`
with a gamma of `0.65` (`0x3fc4ec4f`) and a non-linear curve for factors above
`1.0`:

```
scale   = scaleFactor ^ 0.65
if scaleFactor <= 1.0:  result = intensity * scale
else:                   result = constrain(sigmoid-ish curve of intensity*scale*extraScale)
```

### 2.5 Settings keys and policy

`VibrationSettings` (A13) reads these `Settings.System` keys:

| Key | Usage |
|---|---|
| `vibrate_on` | master vibration switch |
| `vibrate_input_devices` | forward haptics to input devices |
| `haptic_feedback_enabled` | observed (global UI haptic switch, enforced in `View`) |
| `alarm_vibration_intensity` | `USAGE_ALARM (0x11)` |
| `haptic_feedback_intensity` | `USAGE_TOUCH (0x12)` |
| `hardware_haptic_feedback_intensity` | `USAGE_HARDWARE_FEEDBACK (0x32)` **and** `USAGE_PHYSICAL_EMULATION (0x22)` |
| `media_vibration_intensity` | `USAGE_MEDIA (0x13)` **and** `USAGE_UNKNOWN (0x0)` |
| `notification_vibration_intensity` | `USAGE_NOTIFICATION (0x31)` |
| `ring_vibration_intensity` | `USAGE_RINGTONE (0x21)` |

`USAGE_ACCESSIBILITY (0x42)` and `USAGE_COMMUNICATION_REQUEST (0x41)` reuse the
"positive" haptic/notification intensities. The background-process allow-list,
battery-saver allow-list and screen-off allow-list are unchanged AOSP sets.

A13 has **no** `keyboard_vibration_enabled`, `keyboard_vibration_intensity` or
`gesture_input_vibration_intensity` keys. Keyboard and gesture haptics therefore
use the touch intensity (`haptic_feedback_intensity`).

### 2.6 MIUI extensions found in `services.jar`

| Class | Behavior |
|---|---|
| `VibratorManagerServiceStub` | `init`, `shouldIgnoreForDynamicEffect`, `shouldIgnoredVibration`, `startVibrationLockedInjector`, `weakenVibrationIfNecessary`, `playDynamicEffectIfItIs`, `cancelDynamicEffectIfItIs`, `calculateVibrateForMiui` |
| `Vibration$Status.IGNORED_RINGTONE_OR_NOTIFY_MIUI` | MIUI-specific ignore status |
| `PhoneWindowManagerStub.convertToMiuiHapticFeedback(int)` | MIUI effect conversion used for `CLOCK_TICK`/`TEXT_HANDLE_MOVE` |

---

## 3. Android 16 (PixelOS) haptics

### 3.1 Rewritten components

| A16 component | Replaces |
|---|---|
| `HalVibrator`, `HalVibratorManager`, `HalVibration` | `VibratorController` HAL glue |
| `VibrationSession`, `SingleVibrationSession`, `VendorVibrationSession` | parts of `VibratorManagerService`/`VibrationThread` |
| `VibratorControllerHolder` | per-vibrator controller map |
| `HapticFeedbackVibrationProvider` | the `PhoneWindowManager` effect mapping |
| `HapticFeedbackCustomization` | resource-driven effect overrides (new) |
| `HapticFeedbackRequest` | new public per-call request object |
| `ExternalVibrationScale`, `ScaleParam`, `VibrationParam` | external vibration scaling (new) |
| `BasicPwleSegment`, `CompositePwleV2`, `SplitPwleSegmentsAdapter` | PWLE v2 support (new) |
| `VibrationEffect$VendorEffect` | opaque vendor effects (new) |
| `VibratorControlService` | vendor/hal control service (new) |

The A13 `PhoneWindowManager` mapping no longer exists in A16; the equivalent
logic lives in `HapticFeedbackVibrationProvider`
(`services/classes/com/android/server/vibrator/`).

### 3.2 A16 defaults that differed from A13

| Area | A13 | A16 (stock) |
|---|---|---|
| Scale levels | fixed `0.6 / 0.8 / 1.0 / 1.2 / 1.4` | `gain ^ level` with gain `1.4` → `0.51 / 0.71 / 1.0 / 1.4 / 1.96` |
| External scale | fixed table | `config_vibrationScaleFactors` / `config_externalVibrationScaleFactors` arrays |
| Adaptive haptics | none | `getAdaptiveHapticsScale()` default `0.5` (device-tuned, updated at runtime) |
| `VibrationEffect.scale` | legacy gamma curve | `hapticsScaleV2Enabled` flag selects a linear/rational curve |
| Keyboard feedback | `USAGE_TOUCH`, `get(0)` / `get(2,false)` | `USAGE_IME_FEEDBACK (0x52)`, dedicated keyboard effect (`config_defaultKeyboardVibrationFixedAmplitude`) |
| Gesture feedback | `USAGE_TOUCH` | `USAGE_GESTURE_INPUT (0x62)` + `gesture_input_vibration_intensity` |
| Keyboard settings | none | `keyboard_vibration_enabled`, `keyboard_vibration_intensity` |
| Effect customization | none | `HapticFeedbackCustomization` resource overrides |
| New constants | — | `TOGGLE_ON/OFF` (`0x15/0x16`), `GESTURE_THRESHOLD_*` (`0x17/0x18`), `DRAG_START` (`0x19`), `SEGMENT_TICK/SEGMENT_FREQUENT_TICK` (`0x1a/0x1b`), `BIOMETRIC_CONFIRM/REJECT` (`0x2714/0x2715`) |

---

## 4. Consumers: who calls what

### 4.1 Inside the supplied jars

`01-inventory.md` lists every consumer class (198 in A13, 300 in A16) grouped by
package. The most important groups are:

| Area | A13 examples | A16 examples |
|---|---|---|
| Window/input policy | `PhoneWindowManager`, `Session`, `InputManagerService` | `PhoneWindowManager`, `InputManagerService`, `InputDeviceDelegate` |
| Notification | `VibratorHelper` | `VibratorHelper` |
| Accessibility / a11y services | `AccessibilityManagerService`, `TouchExplorer` | same + `VibratorControlService` |
| Settings / UI widgets | `AbsListView`, `TextView`, `Editor`, `TimePicker*`, `RadialTimePickerView` | same |
| system_server vibrator | `VibratorManagerService` | `VibratorManagerService`, `VibrationSession`, `HalVibrator` |

### 4.2 SystemUI, Launcher and third-party apps

These APKs are **not** part of `framework.jar`/`services.jar`, so they cannot be
patched here — and they do not need to be. They consume the public surface,
which now routes through the patched service code:

| API / key | Used for |
|---|---|
| `View#performHapticFeedback(int[, int])` | all in-app haptics (buttons, long-press, gestures, keyboards) |
| `HapticFeedbackConstants.*` | which feedback is requested |
| `Vibrator#vibrate(VibrationEffect)`, `vibrate(long)`, `vibrate(long[], int)` | custom effects (games, media apps) |
| `Vibrator#vibrate(VibrationEffect, VibrationAttributes)` | per-usage effects |
| `VibratorManager#getDefaultVibrator()`, `getVibratorIds()` | multi-vibrator devices |
| `VibrationEffect#createOneShot/createWaveform/createPredefined/get/startComposition` | effect construction (Launcher, SystemUI, IME) |
| `VibrationAttributes#createForUsage`, `Builder#setUsage/setFlags` | usage classification |
| `Settings.System.VIBRATE_ON`, `HAPTIC_FEEDBACK_ENABLED`, `VIBRATE_INPUT_DEVICES`, `*_VIBRATION_INTENSITY` | Settings app and SystemUI sliders |
| `Notification` vibration / channel vibration | notification vibration through `VibratorHelper` |

SystemUI/Launcher/IME haptics therefore inherit the A13 mapping, A13 intensity
table and A13 amplitude curve automatically, because they all end up in
`VibratorManagerService.performHapticFeedbackInternal()` →
`HapticFeedbackVibrationProvider` → `VibrationScaler`.

### 4.3 Input devices and notifications

| Path | Entry point | Ported behavior |
|---|---|---|
| Input-device haptics | `Vibrator.performHapticFeedbackForInputDevice` → `VibratorManagerService` → `HapticFeedbackVibrationProvider.getVibrationForInputDevice` | A13 effect + A13 attributes (uses the same mapping; keyboard constants use `USAGE_TOUCH`) |
| `vibrate_input_devices` policy | `VibrationSettings.shouldVibrateInputDevices()` | identical in A13/A16, untouched |
| Notification vibration | `VibratorHelper.createDefaultVibration()` / `createFallbackVibration()` | same structure in both versions; the actual waveform comes from resources that are absent from the supplied jars (see limitations) |

---

## 5. What this means for the port

1. The **effect mapping** and **attribute mapping** are pure policy and can be
   reproduced exactly — they were moved into
   `HapticFeedbackVibrationProvider` in A16.
2. The **intensity table** is also pure policy; A16 made it configurable and
   changed the defaults, so the A13 five-level table must be restored
   explicitly.
3. The **amplitude curve** lives in `android.os.VibrationEffect.scale(FF)F` and
   is selected by an A16 flag; the A13 implementation is still present in A16
   behind that flag and can be forced.
4. A16 added **adaptive haptics**, keyboard/gesture usages and effect
   customization. None of these existed in A13; they must be neutralised or
   aliased or the resulting feel will differ from A13.
5. The **HAL, PWLE/vendor effects and MIUI stubs** cannot be transplanted; they
   depend on HyperOS framework extensions and resources that are not in the
   supplied jars.
