# Limitations and what was intentionally not ported

The port is a **targeted behavior port**: it changes the policy layers above the
vibrator HAL. Some HyperOS behavior cannot be reproduced from the supplied
artifacts, and some A16-only features were deliberately kept. This document is
the honest boundary of the result.

---

## 1. The supplied `framework.jar` has no Android resources

`framework.jar` contains only:

```
res/android.mime.types
res/debian.mime.types
res/vendor.mime.types
```

There is **no `resources.arsc`, no `res/values`, no drawable/xml resources**.
Xiaomi's vibration waveforms and default patterns are stored as resources
(`config_defaultVibrationPattern`, PWLE pattern arrays,
`config_safeModeEnabledVibePattern`, `config_vibrationScaleLevels`, …), so their
exact samples cannot be recovered from the jars.

Consequences:

* **Predefined effects are used as-is.** The A13 code itself maps haptic
  constants to `VibrationEffect.get(n)` predefined IDs (click, double-click,
  tick, …); those IDs are stable public constants, so this part is exact.
* **Custom waveforms cannot be copied.** Where A13 pulled a `long[]`/`float[]`
  pattern from a resource, the target keeps its own resource value. The only
  waveform embedded in the A13 code itself (the `0x2712` assistant-button
  primitive composition `4 @ 0.25 + 7 @ 1.0, delay 50 ms`) *was* ported, because
  it is constructed in code.
* **Notification vibration patterns remain PixelOS patterns.** Notification
  vibration goes through `VibratorHelper.createDefaultVibration()` /
  `createFallbackVibration()`, which read `config_defaultVibrationPattern` /
  `config_defaultPwlePattern` from the *target* ROM. The A13 logic is the same
  in both versions; only the resource bytes differ, and the A13 bytes are not
  available.

If you can supply HyperOS `framework-res.apk` (or the original
`framework.jar` with its resource table), those patterns can be extracted and
added as an overlay.

---

## 2. MIUI/HyperOS stubs have no implementation in the supplied jars

These classes are interfaces or thin wrappers whose implementation is loaded
from HyperOS framework extensions:

| Class | Hook | Missing implementation |
|---|---|---|
| `android.os.VibratorStub` | `obtainStepSegment`, `overlayByMiui`, `getMiuiVibratorInfo` | `com.miui.base.MiuiStubUtil` |
| `android.os.VibrationEffectStub` | `get(path, context)`, `getMiuiVibrationEffect` | same |
| `android.os.CombinedVibrationStub` | `createDynamicEffect`, `createMiuiCombinedVibration` | same |
| `android.util.HapticFeedbackUtilStub` | `performHapticFeedback`, `isSupportLinearMotorVibrate` | same |
| `com.android.server.vibrator.VibratorManagerServiceStub` | `init`, `shouldIgnoredVibration`, `shouldIgnoreForDynamicEffect`, `startVibrationLockedInjector`, `weakenVibrationIfNecessary`, `playDynamicEffectIfItIs`, `cancelDynamicEffectIfItIs`, `calculateVibrateForMiui` | `MiuiStubUtil.getImpl(...)` |
| `com.android.server.policy.PhoneWindowManagerStub` | `convertToMiuiHapticFeedback(int)` | `PhoneWindowManagerServiceStub` |

The default stub bodies return `null`/`false`/the input unchanged. Therefore:

* **MIUI "dynamic effects"** (raw actuator / per-device tuning) are not ported.
* **MIUI per-app effect overrides** (`calculateVibrateForMiui`) are not ported.
* `CLOCK_TICK` and `TEXT_HANDLE_MOVE` use the A13 **fallback** effect
  (`VibrationEffect.get(0x15)`), which is exactly what A13 does when
  `convertToMiuiHapticFeedback()` returns `null` — i.e. the behavior of the
  supplied jars, but possibly not the behavior of a retail HyperOS phone whose
  extension module provides a non-null effect.
* `Vibration.Status.IGNORED_RINGTONE_OR_NOTIFY_MIUI` has no analogue in A16 and
  was not added; the A16 equivalent (`IGNORED_FOR_SETTINGS` /
  `IGNORED_RINGTONE_OR_NOTIFY`) covers the same code paths.

A full fidelity port would need the HyperOS extension jars
(`miui-framework.jar` / `services-miui.jar` / `MiuiStubUtil` implementation),
which were not supplied.

---

## 3. HAL generation was not transplanted

| | A13 | A16 |
|---|---|---|
| HAL | HIDL `android.hardware.vibrator@1.0 … 1.3` stubs present, plus AIDL effect types | AIDL `android.hardware.vibrator` with `IVibrationSession`, PWLE v2, `VendorEffect` |
| Service glue | `VibratorController` + `VibrationStepConductor` | `HalVibrator`, `HalVibratorManager`, `HalVibration`, `VibrationSession`, `VendorVibrationSession` |

Replacing the HAL glue or the HAL interfaces would require matching the actual
vibrator firmware on the target device; a mismatch means no vibration or a
boot failure. It was left untouched. The A16 stack still drives the same
effects, just through the A16 session-based HAL.

---

## 4. A16-only features that were kept or neutralised

| Feature | Decision |
|---|---|
| `HapticFeedbackCustomization` (resource effect overrides) | **bypassed** in `getVibration()` and `getVibrationForInputDevice()` so A13's mapping always wins |
| Adaptive haptics (`getAdaptiveHapticsScale`, default `0.5`) | **neutralised** to `1.0f` |
| Scale-V2 amplitude curve | **replaced** by the A13 legacy curve |
| Keyboard fixed amplitude (`config_defaultKeyboardVibrationFixedAmplitude`) | **bypassed** (not reachable after the `0x3`/`0x7` remap) |
| `USAGE_IME_FEEDBACK (0x52)` and `USAGE_GESTURE_INPUT (0x62)` | **aliased** to `USAGE_TOUCH (0x12)` for intensity/default lookup |
| `keyboard_vibration_enabled`, `keyboard_vibration_intensity`, `gesture_input_vibration_intensity` | still read by `updateSettings()` but **no longer consulted**; the A13 `haptic_feedback_intensity` governs keyboard/gesture feedback instead |
| A16-only constants `0x12 … 0x1b` (`SCROLL_*`, `TOGGLE_*`, `GESTURE_THRESHOLD_*`, `DRAG_START`, `SEGMENT_*`) | **kept** with their A16 effects |
| A16-only constants `0x2714/0x2715` (`BIOMETRIC_CONFIRM/REJECT`) | **kept**, mapped to hardware-feedback attributes |
| `HapticFeedbackRequest` public API | **kept** (A16 API; routes through the same provider) |
| Vendor effects / PWLE v2 / `VibratorControlService` | **kept** |

### Why keep A16-only constants instead of returning `null`?

A13 has no behavior for constants that did not exist in Android 13. A13 *did*
have `SCROLL_TICK/ITEM_FOCUS/LIMIT` (`0x12–0x14`) but its
`PhoneWindowManager.getVibrationEffect()` did not map them (returns `null`), so
strict A13 parity would make A16 scrolling silent. That would look like a
regression on PixelOS, where SystemUI/Launcher use those constants. The port
therefore keeps the A16 mapping for constants that A13 does not define *and*
for `0x12–0x14`. If you want literal A13 parity, null those three cases in
`getVibrationForHapticFeedback` — it is a two-line change.

---

## 5. Exactness of the rest

| Behavior | Fidelity |
|---|---|
| Haptic constant → effect mapping (`0x0 … 0x11`, `0x2711 … 0x2713`) | **exact** (A13 code copied) |
| Haptic constant → attributes (`0xe/0xf`, `0x12–0x14`, `0x2712/0x2713`, default) | **exact** |
| `TEXT_HANDLE_MOVE` disabled → no vibration | **exact** (A13 `mHapticTextHandleEnabled` ≡ A16 `config_hapticTextHandleEnabled`, same resource `0x1110191`) |
| Intensity table `0.6/0.8/1.0/1.2/1.4` | **exact** |
| Intensity → `EffectStrength` (`1→LIGHT, 2→MEDIUM, 3→STRONG`) | **exact** |
| Fallback to default intensity when per-usage intensity is `0` | **exact** |
| Amplitude gamma curve (`scale^0.65`, non-linear above 1.0) | **exact** (A13 code copied) |
| Settings keys read/written | **exact** for the A13 key set; A16-only keys inert |
| Keyboard/gesture intensity | **A13-equivalent** (touch intensity) |
| `vibrate_on`, `vibrate_input_devices`, ringer/battery-saver policy | **unchanged** (identical in A13/A16) |
| Notification pattern samples | **not ported** (resources unavailable) |
| MIUI dynamic effects / per-app MIUI overrides | **not ported** (implementation unavailable) |
| Vibrator HAL / per-device effect adaptation | **not ported** (A16 native stack kept) |

---

## 6. Operational limitations

* **Build-specific.** The jars must come from the same PixelOS build as the
  device. A jar from a different build can break boot (hidden API tables,
  `boot.art`, service registration).
* **ART artifacts.** After replacing the jars you must clear
  `/data/dalvik-cache/*/system@framework@*`, `…services@*` and the
  `/system/framework/oat/*` framework/services entries, otherwise the stale
  compiled code keeps running.
* **First boot is slow.** ART recompiles the boot classpath; expect a longer
  boot animation and higher CPU/battery use for a few minutes.
* **Verified boot / OTA.** `/system` changes require a Magisk overlay or a
  verity-disabled build. An OTA restores the stock jars.
* **Not tested on hardware here.** The changes were verified structurally
  (reassembly, class counts, dex version, jar integrity, alignment) but not on
  a physical PixelOS device, because no device or emulator image of this ROM
  was available in this environment.
* **No boot image / vendor changes.** The port does not touch `boot.img`,
  `vendor`, or any native library, so kernel/HAL-side vibration tuning is
  unchanged.
