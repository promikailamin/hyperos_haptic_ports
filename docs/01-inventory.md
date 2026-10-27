# Haptic / vibration inventory

Generated from the baksmali output of the supplied jars (`work/inventory.json`). Every class whose name contains `vibrat`, `haptic` (case-insensitive) is listed, plus every class that references such a class.

## Counts

| Metric | Android 13 (HyperOS source) | Android 16 (PixelOS target) |
|---|---:|---:|
| Classes in supplied jars | 40,426 | 52,985 |
| Haptic/vibration classes | 237 | 434 |
| Classes that reference haptic APIs | 198 | 300 |

## Android 13 (HyperOS) haptic classes

### `android.hardware.input` (4)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.hardware.input.InputDeviceVibrator` | input-device vibration | 11 | 6 |
| `android.hardware.input.InputDeviceVibrator$OnVibratorStateChangedListenerDelegate` | input-device vibration | 3 | 3 |
| `android.hardware.input.InputDeviceVibrator$OnVibratorStateChangedListenerDelegate$$ExternalSyntheticLambda0` | input-device vibration | 2 | 2 |
| `android.hardware.input.InputDeviceVibratorManager` | input-device vibration | 11 | 6 |

### `android.hardware.vibrator (HAL)` (58)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.hardware.vibrator.ActivePwle` | AIDL vibrator HAL | 6 | 6 |
| `android.hardware.vibrator.ActivePwle$1` | AIDL vibrator HAL | 5 | 0 |
| `android.hardware.vibrator.Braking` | AIDL vibrator HAL | 0 | 2 |
| `android.hardware.vibrator.BrakingPwle` | AIDL vibrator HAL | 6 | 3 |
| `android.hardware.vibrator.BrakingPwle$1` | AIDL vibrator HAL | 5 | 0 |
| `android.hardware.vibrator.CompositeEffect` | AIDL vibrator HAL | 6 | 4 |
| `android.hardware.vibrator.CompositeEffect$1` | AIDL vibrator HAL | 5 | 0 |
| `android.hardware.vibrator.CompositePrimitive` | AIDL vibrator HAL | 0 | 9 |
| `android.hardware.vibrator.Effect` | AIDL vibrator HAL | 0 | 22 |
| `android.hardware.vibrator.EffectStrength` | AIDL vibrator HAL | 0 | 3 |
| `android.hardware.vibrator.IVibrator` | AIDL vibrator HAL | 27 | 14 |
| `android.hardware.vibrator.IVibrator$Default` | AIDL vibrator HAL | 28 | 0 |
| `android.hardware.vibrator.IVibrator$Stub` | AIDL vibrator HAL | 4 | 26 |
| `android.hardware.vibrator.IVibrator$Stub$Proxy` | AIDL vibrator HAL | 29 | 3 |
| `android.hardware.vibrator.IVibratorCallback` | AIDL vibrator HAL | 4 | 3 |
| `android.hardware.vibrator.IVibratorCallback$Default` | AIDL vibrator HAL | 5 | 0 |
| `android.hardware.vibrator.IVibratorCallback$Stub` | AIDL vibrator HAL | 4 | 3 |
| `android.hardware.vibrator.IVibratorCallback$Stub$Proxy` | AIDL vibrator HAL | 6 | 3 |
| `android.hardware.vibrator.IVibratorManager` | AIDL vibrator HAL | 9 | 11 |
| `android.hardware.vibrator.IVibratorManager$Default` | AIDL vibrator HAL | 10 | 0 |
| `android.hardware.vibrator.IVibratorManager$Stub` | AIDL vibrator HAL | 4 | 8 |
| `android.hardware.vibrator.IVibratorManager$Stub$Proxy` | AIDL vibrator HAL | 11 | 3 |
| `android.hardware.vibrator.PrimitivePwle` | AIDL vibrator HAL | 20 | 5 |
| `android.hardware.vibrator.PrimitivePwle$1` | AIDL vibrator HAL | 5 | 0 |
| `android.hardware.vibrator.PrimitivePwle$Tag` | AIDL vibrator HAL | 0 | 2 |
| `android.hardware.vibrator.PrimitivePwle-IA` | AIDL vibrator HAL | 0 | 0 |
| `android.hardware.vibrator.V1_0.Effect` | HIDL vibrator HAL (A13) | 3 | 2 |
| `android.hardware.vibrator.V1_0.EffectStrength` | HIDL vibrator HAL (A13) | 3 | 3 |
| `android.hardware.vibrator.V1_0.IVibrator` | HIDL vibrator HAL (A13) | 22 | 1 |
| `android.hardware.vibrator.V1_0.IVibrator$Proxy` | HIDL vibrator HAL (A13) | 20 | 1 |
| `android.hardware.vibrator.V1_0.IVibrator$Stub` | HIDL vibrator HAL (A13) | 16 | 0 |
| `android.hardware.vibrator.V1_0.IVibrator$Stub$1` | HIDL vibrator HAL (A13) | 2 | 2 |
| `android.hardware.vibrator.V1_0.IVibrator$performCallback` | HIDL vibrator HAL (A13) | 1 | 0 |
| `android.hardware.vibrator.V1_0.Status` | HIDL vibrator HAL (A13) | 3 | 4 |
| `android.hardware.vibrator.V1_1.Effect_1_1` | HIDL vibrator HAL (A13) | 3 | 3 |
| `android.hardware.vibrator.V1_1.IVibrator` | HIDL vibrator HAL (A13) | 18 | 1 |
| `android.hardware.vibrator.V1_1.IVibrator$Proxy` | HIDL vibrator HAL (A13) | 21 | 1 |
| `android.hardware.vibrator.V1_1.IVibrator$Stub` | HIDL vibrator HAL (A13) | 16 | 0 |
| `android.hardware.vibrator.V1_1.IVibrator$Stub$1` | HIDL vibrator HAL (A13) | 2 | 2 |
| `android.hardware.vibrator.V1_1.IVibrator$Stub$2` | HIDL vibrator HAL (A13) | 2 | 2 |
| `android.hardware.vibrator.V1_1.IVibrator$perform_1_1Callback` | HIDL vibrator HAL (A13) | 1 | 0 |
| `android.hardware.vibrator.V1_2.Effect` | HIDL vibrator HAL (A13) | 3 | 21 |
| `android.hardware.vibrator.V1_2.IVibrator` | HIDL vibrator HAL (A13) | 18 | 1 |
| `android.hardware.vibrator.V1_2.IVibrator$Proxy` | HIDL vibrator HAL (A13) | 22 | 1 |
| `android.hardware.vibrator.V1_2.IVibrator$Stub` | HIDL vibrator HAL (A13) | 16 | 0 |
| `android.hardware.vibrator.V1_2.IVibrator$Stub$1` | HIDL vibrator HAL (A13) | 2 | 2 |
| `android.hardware.vibrator.V1_2.IVibrator$Stub$2` | HIDL vibrator HAL (A13) | 2 | 2 |
| `android.hardware.vibrator.V1_2.IVibrator$Stub$3` | HIDL vibrator HAL (A13) | 2 | 2 |
| `android.hardware.vibrator.V1_2.IVibrator$perform_1_2Callback` | HIDL vibrator HAL (A13) | 1 | 0 |
| `android.hardware.vibrator.V1_3.Effect` | HIDL vibrator HAL (A13) | 3 | 22 |
| `android.hardware.vibrator.V1_3.IVibrator` | HIDL vibrator HAL (A13) | 20 | 1 |
| `android.hardware.vibrator.V1_3.IVibrator$Proxy` | HIDL vibrator HAL (A13) | 25 | 1 |
| `android.hardware.vibrator.V1_3.IVibrator$Stub` | HIDL vibrator HAL (A13) | 16 | 0 |
| `android.hardware.vibrator.V1_3.IVibrator$Stub$1` | HIDL vibrator HAL (A13) | 2 | 2 |
| `android.hardware.vibrator.V1_3.IVibrator$Stub$2` | HIDL vibrator HAL (A13) | 2 | 2 |
| `android.hardware.vibrator.V1_3.IVibrator$Stub$3` | HIDL vibrator HAL (A13) | 2 | 2 |
| `android.hardware.vibrator.V1_3.IVibrator$Stub$4` | HIDL vibrator HAL (A13) | 2 | 2 |
| `android.hardware.vibrator.V1_3.IVibrator$perform_1_3Callback` | HIDL vibrator HAL (A13) | 1 | 0 |

### `android.media.AudioVibratorInfo` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.media.AudioVibratorInfo` | supporting | 5 | 5 |

### `android.media.AudioVibratorInfo$1` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.media.AudioVibratorInfo$1` | supporting | 5 | 0 |

### `android.media.audiofx` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.media.audiofx.HapticGenerator` | supporting | 6 | 2 |

### `android.os.CombinedVibration` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.CombinedVibration` | framework vibrator API | 10 | 4 |

### `android.os.CombinedVibration$1` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.CombinedVibration$1` | framework vibrator API | 5 | 0 |

### `android.os.CombinedVibration$Mono` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.CombinedVibration$Mono` | framework vibrator API | 13 | 2 |

### `android.os.CombinedVibration$Mono$1` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.CombinedVibration$Mono$1` | framework vibrator API | 5 | 0 |

### `android.os.CombinedVibration$ParallelCombination` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.CombinedVibration$ParallelCombination` | framework vibrator API | 3 | 1 |

### `android.os.CombinedVibration$Sequential` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.CombinedVibration$Sequential` | framework vibrator API | 14 | 4 |

### `android.os.CombinedVibration$Sequential$1` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.CombinedVibration$Sequential$1` | framework vibrator API | 5 | 0 |

### `android.os.CombinedVibration$SequentialCombination` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.CombinedVibration$SequentialCombination` | framework vibrator API | 6 | 2 |

### `android.os.CombinedVibration$Stereo` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.CombinedVibration$Stereo` | framework vibrator API | 13 | 2 |

### `android.os.CombinedVibration$Stereo$1` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.CombinedVibration$Stereo$1` | framework vibrator API | 5 | 0 |

### `android.os.CombinedVibrationStub` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.CombinedVibrationStub` | MIUI extension stub | 2 | 1 |

### `android.os.ExternalVibration` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.ExternalVibration` | framework vibrator API | 19 | 7 |

### `android.os.ExternalVibration$1` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.ExternalVibration$1` | framework vibrator API | 5 | 0 |

### `android.os.ExternalVibration-IA` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.ExternalVibration-IA` | framework vibrator API | 0 | 0 |

### `android.os.IExternalVibrationController` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.IExternalVibrationController` | framework vibrator API | 2 | 1 |

### `android.os.IExternalVibrationController$Default` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.IExternalVibrationController$Default` | framework vibrator API | 4 | 0 |

### `android.os.IExternalVibrationController$Stub` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.IExternalVibrationController$Stub` | MIUI extension stub | 7 | 2 |

### `android.os.IExternalVibrationController$Stub$Proxy` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.IExternalVibrationController$Stub$Proxy` | MIUI extension stub | 5 | 1 |

### `android.os.IExternalVibratorService` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.IExternalVibratorService` | framework vibrator API | 2 | 7 |

### `android.os.IExternalVibratorService$Default` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.IExternalVibratorService$Default` | framework vibrator API | 4 | 0 |

### `android.os.IExternalVibratorService$Stub` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.IExternalVibratorService$Stub` | MIUI extension stub | 7 | 2 |

### `android.os.IExternalVibratorService$Stub$Proxy` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.IExternalVibratorService$Stub$Proxy` | MIUI extension stub | 5 | 1 |

### `android.os.IVibratorManagerService` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.IVibratorManagerService` | framework vibrator API | 8 | 1 |

### `android.os.IVibratorManagerService$Default` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.IVibratorManagerService$Default` | framework vibrator API | 10 | 0 |

### `android.os.IVibratorManagerService$Stub` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.IVibratorManagerService$Stub` | MIUI extension stub | 7 | 8 |

### `android.os.IVibratorManagerService$Stub$Proxy` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.IVibratorManagerService$Stub$Proxy` | MIUI extension stub | 11 | 1 |

### `android.os.IVibratorStateListener` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.IVibratorStateListener` | framework vibrator API | 1 | 1 |

### `android.os.IVibratorStateListener$Default` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.IVibratorStateListener$Default` | framework vibrator API | 3 | 0 |

### `android.os.IVibratorStateListener$Stub` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.IVibratorStateListener$Stub` | MIUI extension stub | 7 | 1 |

### `android.os.IVibratorStateListener$Stub$Proxy` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.IVibratorStateListener$Stub$Proxy` | MIUI extension stub | 4 | 1 |

### `android.os.NullVibrator` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.NullVibrator` | framework vibrator API | 9 | 1 |

### `android.os.SystemVibrator` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.SystemVibrator` | framework vibrator API | 13 | 7 |

### `android.os.SystemVibrator$AllVibratorsStateListener` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.SystemVibrator$AllVibratorsStateListener` | framework vibrator API | 6 | 6 |

### `android.os.SystemVibrator$AllVibratorsStateListener$$ExternalSyntheticLambda0` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.SystemVibrator$AllVibratorsStateListener$$ExternalSyntheticLambda0` | framework vibrator API | 2 | 3 |

### `android.os.SystemVibrator$MultiVibratorInfo` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.SystemVibrator$MultiVibratorInfo` | framework vibrator API | 10 | 1 |

### `android.os.SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda0` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda0` | framework vibrator API | 2 | 0 |

### `android.os.SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda1` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda1` | framework vibrator API | 2 | 0 |

### `android.os.SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda2` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda2` | framework vibrator API | 2 | 0 |

### `android.os.SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda3` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda3` | framework vibrator API | 2 | 0 |

### `android.os.SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda4` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda4` | framework vibrator API | 2 | 0 |

### `android.os.SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda5` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda5` | framework vibrator API | 2 | 0 |

### `android.os.SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda6` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda6` | framework vibrator API | 2 | 0 |

### `android.os.SystemVibrator$NoVibratorInfo` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.SystemVibrator$NoVibratorInfo` | framework vibrator API | 1 | 0 |

### `android.os.SystemVibrator$SingleVibratorStateListener` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.SystemVibrator$SingleVibratorStateListener` | framework vibrator API | 2 | 2 |

### `android.os.SystemVibratorManager` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.SystemVibratorManager` | framework vibrator API | 13 | 8 |

### `android.os.SystemVibratorManager$OnVibratorStateChangedListenerDelegate` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.SystemVibratorManager$OnVibratorStateChangedListenerDelegate` | framework vibrator API | 3 | 2 |

### `android.os.SystemVibratorManager$OnVibratorStateChangedListenerDelegate$$ExternalSyntheticLambda0` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.SystemVibratorManager$OnVibratorStateChangedListenerDelegate$$ExternalSyntheticLambda0` | framework vibrator API | 2 | 2 |

### `android.os.SystemVibratorManager$SingleVibrator` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.SystemVibratorManager$SingleVibrator` | framework vibrator API | 12 | 2 |

### `android.os.VibrationAttributes` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationAttributes` | framework vibrator API | 21 | 25 |

### `android.os.VibrationAttributes$1` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationAttributes$1` | framework vibrator API | 5 | 0 |

### `android.os.VibrationAttributes$Builder` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationAttributes$Builder` | framework vibrator API | 9 | 3 |

### `android.os.VibrationAttributes$Flag` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationAttributes$Flag` | framework vibrator API | 0 | 0 |

### `android.os.VibrationAttributes$Usage` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationAttributes$Usage` | framework vibrator API | 0 | 0 |

### `android.os.VibrationAttributes$UsageClass` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationAttributes$UsageClass` | framework vibrator API | 0 | 0 |

### `android.os.VibrationAttributes-IA` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationAttributes-IA` | framework vibrator API | 0 | 0 |

### `android.os.VibrationEffect` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationEffect` | framework vibrator API | 23 | 17 |

### `android.os.VibrationEffect$1` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationEffect$1` | framework vibrator API | 5 | 0 |

### `android.os.VibrationEffect$AmplitudeVibrationParameter` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationEffect$AmplitudeVibrationParameter` | framework vibrator API | 1 | 1 |

### `android.os.VibrationEffect$Composed` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationEffect$Composed` | framework vibrator API | 20 | 3 |

### `android.os.VibrationEffect$Composed$1` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationEffect$Composed$1` | framework vibrator API | 5 | 0 |

### `android.os.VibrationEffect$Composition` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationEffect$Composition` | framework vibrator API | 11 | 11 |

### `android.os.VibrationEffect$Composition$PrimitiveType` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationEffect$Composition$PrimitiveType` | framework vibrator API | 0 | 0 |

### `android.os.VibrationEffect$Composition$UnreachableAfterRepeatingIndefinitelyException` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationEffect$Composition$UnreachableAfterRepeatingIndefinitelyException` | framework vibrator API | 1 | 0 |

### `android.os.VibrationEffect$EffectType` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationEffect$EffectType` | framework vibrator API | 0 | 0 |

### `android.os.VibrationEffect$FrequencyVibrationParameter` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationEffect$FrequencyVibrationParameter` | framework vibrator API | 1 | 1 |

### `android.os.VibrationEffect$VibrationParameter` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationEffect$VibrationParameter` | framework vibrator API | 3 | 0 |

### `android.os.VibrationEffect$WaveformBuilder` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationEffect$WaveformBuilder` | framework vibrator API | 9 | 4 |

### `android.os.VibrationEffectStub` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationEffectStub` | MIUI extension stub | 3 | 1 |

### `android.os.Vibrator` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.Vibrator` | framework vibrator API | 35 | 11 |

### `android.os.Vibrator$OnVibratorStateChangedListener` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.Vibrator$OnVibratorStateChangedListener` | framework vibrator API | 1 | 0 |

### `android.os.Vibrator$VibrationEffectSupport` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.Vibrator$VibrationEffectSupport` | framework vibrator API | 0 | 0 |

### `android.os.Vibrator$VibrationIntensity` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.Vibrator$VibrationIntensity` | framework vibrator API | 0 | 0 |

### `android.os.VibratorInfo` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibratorInfo` | framework vibrator API | 34 | 14 |

### `android.os.VibratorInfo$1` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibratorInfo$1` | framework vibrator API | 5 | 0 |

### `android.os.VibratorInfo$Builder` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibratorInfo$Builder` | framework vibrator API | 13 | 11 |

### `android.os.VibratorInfo$FrequencyProfile` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibratorInfo$FrequencyProfile` | framework vibrator API | 14 | 6 |

### `android.os.VibratorInfo$FrequencyProfile$1` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibratorInfo$FrequencyProfile$1` | framework vibrator API | 5 | 0 |

### `android.os.VibratorManager` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibratorManager` | framework vibrator API | 11 | 2 |

### `android.os.VibratorStub` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibratorStub` | MIUI extension stub | 6 | 1 |

### `android.os.vibrator` (12)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.vibrator.PrebakedSegment` | framework vibrator API | 23 | 4 |
| `android.os.vibrator.PrebakedSegment$1` | framework vibrator API | 5 | 0 |
| `android.os.vibrator.PrimitiveSegment` | framework vibrator API | 21 | 4 |
| `android.os.vibrator.PrimitiveSegment$1` | framework vibrator API | 5 | 0 |
| `android.os.vibrator.RampSegment` | framework vibrator API | 22 | 6 |
| `android.os.vibrator.RampSegment$1` | framework vibrator API | 5 | 0 |
| `android.os.vibrator.StepSegment` | framework vibrator API | 20 | 4 |
| `android.os.vibrator.StepSegment$1` | framework vibrator API | 5 | 0 |
| `android.os.vibrator.VibrationConfig` | framework vibrator API | 9 | 8 |
| `android.os.vibrator.VibrationEffectSegment` | framework vibrator API | 11 | 5 |
| `android.os.vibrator.VibrationEffectSegment$1` | framework vibrator API | 5 | 0 |
| `android.os.vibrator.VibratorFrequencyProfile` | framework vibrator API | 5 | 1 |

### `android.providers.settings` (2)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.providers.settings.SystemSettingsProto$HapticFeedback` | framework haptic UI API | 1 | 3 |
| `android.providers.settings.SystemSettingsProto$Vibrate` | supporting | 1 | 8 |

### `android.util.HapticFeedbackUtilStub` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.util.HapticFeedbackUtilStub` | MIUI extension stub | 3 | 0 |

### `android.util.HapticFeedbackUtilStub$SingletonHolder` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.util.HapticFeedbackUtilStub$SingletonHolder` | MIUI extension stub | 3 | 1 |

### `android.view.HapticFeedbackConstants` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.view.HapticFeedbackConstants` | framework haptic UI API | 1 | 26 |

### `com.android.server.input` (2)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `com.android.server.input.InputManagerService$VibrationInfo` | input-device vibration | 4 | 3 |
| `com.android.server.input.InputManagerService$VibratorToken` | input-device vibration | 2 | 5 |

### `com.android.server.notification` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `com.android.server.notification.VibratorHelper` | notification vibration | 10 | 8 |

### `com.android.server.vibrator` (73)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `com.android.server.vibrator.AbstractVibratorStep` | vibrator system service | 11 | 6 |
| `com.android.server.vibrator.ClippingAmplitudeAndFrequencyAdapter` | vibrator system service | 7 | 0 |
| `com.android.server.vibrator.CombinedVibrationEffectProto` | vibrator system service | 1 | 2 |
| `com.android.server.vibrator.CompleteEffectVibratorStep` | vibrator system service | 4 | 1 |
| `com.android.server.vibrator.ComposePrimitivesVibratorStep` | vibrator system service | 3 | 1 |
| `com.android.server.vibrator.ComposePwleVibratorStep` | vibrator system service | 4 | 1 |
| `com.android.server.vibrator.DeviceVibrationEffectAdapter` | vibrator system service | 3 | 1 |
| `com.android.server.vibrator.FinishSequentialEffectStep` | vibrator system service | 5 | 1 |
| `com.android.server.vibrator.InputDeviceDelegate` | vibrator system service | 10 | 7 |
| `com.android.server.vibrator.PerformPrebakedVibratorStep` | vibrator system service | 3 | 0 |
| `com.android.server.vibrator.PrebakedSegmentProto` | vibrator system service | 1 | 3 |
| `com.android.server.vibrator.PrimitiveSegmentProto` | vibrator system service | 1 | 3 |
| `com.android.server.vibrator.RampDownAdapter` | vibrator system service | 10 | 2 |
| `com.android.server.vibrator.RampOffVibratorStep` | vibrator system service | 4 | 2 |
| `com.android.server.vibrator.RampSegmentProto` | vibrator system service | 1 | 5 |
| `com.android.server.vibrator.RampToStepAdapter` | vibrator system service | 5 | 1 |
| `com.android.server.vibrator.SegmentProto` | vibrator system service | 1 | 4 |
| `com.android.server.vibrator.SetAmplitudeVibratorStep` | vibrator system service | 6 | 2 |
| `com.android.server.vibrator.StartSequentialEffectStep` | vibrator system service | 10 | 3 |
| `com.android.server.vibrator.StartSequentialEffectStep$DeviceEffectMap` | vibrator system service | 9 | 4 |
| `com.android.server.vibrator.Step` | vibrator system service | 11 | 2 |
| `com.android.server.vibrator.StepSegmentProto` | vibrator system service | 1 | 3 |
| `com.android.server.vibrator.StepToRampAdapter` | vibrator system service | 9 | 0 |
| `com.android.server.vibrator.SyncVibrationEffectProto` | vibrator system service | 1 | 2 |
| `com.android.server.vibrator.TurnOffVibratorStep` | vibrator system service | 5 | 0 |
| `com.android.server.vibrator.Vibration` | vibrator system service | 13 | 17 |
| `com.android.server.vibrator.Vibration$DebugInfo` | vibrator system service | 13 | 11 |
| `com.android.server.vibrator.Vibration$Status` | vibrator system service | 4 | 28 |
| `com.android.server.vibrator.VibrationAttributesProto` | vibrator system service | 1 | 3 |
| `com.android.server.vibrator.VibrationEffectAdapters` | vibrator system service | 2 | 0 |
| `com.android.server.vibrator.VibrationEffectAdapters$EffectAdapter` | vibrator system service | 1 | 0 |
| `com.android.server.vibrator.VibrationEffectAdapters$SegmentsAdapter` | vibrator system service | 1 | 0 |
| `com.android.server.vibrator.VibrationEffectProto` | vibrator system service | 1 | 2 |
| `com.android.server.vibrator.VibrationProto` | vibrator system service | 1 | 7 |
| `com.android.server.vibrator.VibrationScaler` | vibrator system service | 5 | 14 |
| `com.android.server.vibrator.VibrationScaler$ScaleLevel` | vibrator system service | 2 | 1 |
| `com.android.server.vibrator.VibrationSettings` | vibrator system service | 37 | 24 |
| `com.android.server.vibrator.VibrationSettings$1` | vibrator system service | 3 | 1 |
| `com.android.server.vibrator.VibrationSettings$OnVibratorSettingsChanged` | vibrator system service | 1 | 0 |
| `com.android.server.vibrator.VibrationSettings$SettingsBroadcastReceiver` | vibrator system service | 2 | 1 |
| `com.android.server.vibrator.VibrationSettings$SettingsContentObserver` | vibrator system service | 2 | 1 |
| `com.android.server.vibrator.VibrationSettings$UidObserver` | vibrator system service | 9 | 2 |
| `com.android.server.vibrator.VibrationStepConductor` | vibrator system service | 22 | 21 |
| `com.android.server.vibrator.VibrationThread` | vibrator system service | 10 | 8 |
| `com.android.server.vibrator.VibrationThread$VibratorManagerHooks` | vibrator system service | 7 | 0 |
| `com.android.server.vibrator.VibratorController` | vibrator system service | 25 | 9 |
| `com.android.server.vibrator.VibratorController$$ExternalSyntheticLambda0` | vibrator system service | 2 | 2 |
| `com.android.server.vibrator.VibratorController$NativeWrapper` | vibrator system service | 26 | 1 |
| `com.android.server.vibrator.VibratorController$OnVibrationCompleteListener` | vibrator system service | 1 | 0 |
| `com.android.server.vibrator.VibratorManagerService` | vibrator system service | 86 | 31 |
| `com.android.server.vibrator.VibratorManagerService$$ExternalSyntheticLambda0` | vibrator system service | 2 | 1 |
| `com.android.server.vibrator.VibratorManagerService$$ExternalSyntheticLambda1` | vibrator system service | 2 | 1 |
| `com.android.server.vibrator.VibratorManagerService$$ExternalSyntheticLambda2` | vibrator system service | 2 | 1 |
| `com.android.server.vibrator.VibratorManagerService$$ExternalSyntheticLambda3` | vibrator system service | 2 | 2 |
| `com.android.server.vibrator.VibratorManagerService$1` | vibrator system service | 2 | 1 |
| `com.android.server.vibrator.VibratorManagerService$2` | vibrator system service | 1 | 1 |
| `com.android.server.vibrator.VibratorManagerService$AlwaysOnVibration` | vibrator system service | 1 | 5 |
| `com.android.server.vibrator.VibratorManagerService$ExternalVibrationHolder` | vibrator system service | 5 | 8 |
| `com.android.server.vibrator.VibratorManagerService$ExternalVibrationHolder-IA` | vibrator system service | 0 | 0 |
| `com.android.server.vibrator.VibratorManagerService$ExternalVibratorService` | vibrator system service | 4 | 1 |
| `com.android.server.vibrator.VibratorManagerService$Injector` | vibrator system service | 6 | 0 |
| `com.android.server.vibrator.VibratorManagerService$Lifecycle` | vibrator system service | 3 | 1 |
| `com.android.server.vibrator.VibratorManagerService$NativeWrapper` | vibrator system service | 7 | 1 |
| `com.android.server.vibrator.VibratorManagerService$OnSyncedVibrationCompleteListener` | vibrator system service | 1 | 0 |
| `com.android.server.vibrator.VibratorManagerService$VibrationCompleteListener` | vibrator system service | 3 | 1 |
| `com.android.server.vibrator.VibratorManagerService$VibrationThreadCallbacks` | vibrator system service | 9 | 1 |
| `com.android.server.vibrator.VibratorManagerService$VibrationThreadCallbacks-IA` | vibrator system service | 0 | 0 |
| `com.android.server.vibrator.VibratorManagerService$VibratorManagerRecords` | vibrator system service | 6 | 3 |
| `com.android.server.vibrator.VibratorManagerService$VibratorManagerShellCommand` | vibrator system service | 16 | 3 |
| `com.android.server.vibrator.VibratorManagerService$VibratorManagerShellCommand$CommonOptions` | vibrator system service | 1 | 4 |
| `com.android.server.vibrator.VibratorManagerService$VibratorManagerShellCommand-IA` | vibrator system service | 0 | 0 |
| `com.android.server.vibrator.VibratorManagerServiceDumpProto` | vibrator system service | 1 | 24 |
| `com.android.server.vibrator.VibratorManagerServiceStub` | MIUI extension stub | 10 | 0 |

## Android 16 (PixelOS) haptic classes

### `android.frameworks.vibrator` (10)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.frameworks.vibrator.IVibratorControlService` | supporting | 8 | 1 |
| `android.frameworks.vibrator.IVibratorControlService$Stub` | MIUI extension stub | 6 | 0 |
| `android.frameworks.vibrator.IVibratorController` | supporting | 2 | 1 |
| `android.frameworks.vibrator.IVibratorController$Stub` | MIUI extension stub | 1 | 0 |
| `android.frameworks.vibrator.IVibratorController$Stub$Proxy` | MIUI extension stub | 3 | 3 |
| `android.frameworks.vibrator.ScaleParam` | supporting | 6 | 3 |
| `android.frameworks.vibrator.ScaleParam$1` | supporting | 5 | 0 |
| `android.frameworks.vibrator.VibrationParam` | supporting | 13 | 3 |
| `android.frameworks.vibrator.VibrationParam$1` | supporting | 5 | 0 |
| `android.frameworks.vibrator.VibrationParam-IA` | supporting | 0 | 0 |

### `android.hardware.input` (4)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.hardware.input.InputDeviceVibrator` | input-device vibration | 11 | 6 |
| `android.hardware.input.InputDeviceVibrator$OnVibratorStateChangedListenerDelegate` | input-device vibration | 4 | 2 |
| `android.hardware.input.InputDeviceVibrator$OnVibratorStateChangedListenerDelegate$$ExternalSyntheticLambda0` | input-device vibration | 2 | 2 |
| `android.hardware.input.InputDeviceVibratorManager` | input-device vibration | 11 | 6 |

### `android.hardware.vibrator (HAL)` (40)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.hardware.vibrator.ActivePwle` | AIDL vibrator HAL | 6 | 6 |
| `android.hardware.vibrator.ActivePwle$1` | AIDL vibrator HAL | 5 | 0 |
| `android.hardware.vibrator.Braking` | AIDL vibrator HAL | 0 | 2 |
| `android.hardware.vibrator.BrakingPwle` | AIDL vibrator HAL | 6 | 3 |
| `android.hardware.vibrator.BrakingPwle$1` | AIDL vibrator HAL | 5 | 0 |
| `android.hardware.vibrator.CompositeEffect` | AIDL vibrator HAL | 6 | 4 |
| `android.hardware.vibrator.CompositeEffect$1` | AIDL vibrator HAL | 5 | 0 |
| `android.hardware.vibrator.CompositePrimitive` | AIDL vibrator HAL | 0 | 9 |
| `android.hardware.vibrator.CompositePwleV2` | AIDL vibrator HAL | 7 | 2 |
| `android.hardware.vibrator.CompositePwleV2$1` | AIDL vibrator HAL | 5 | 0 |
| `android.hardware.vibrator.Effect` | AIDL vibrator HAL | 0 | 22 |
| `android.hardware.vibrator.EffectStrength` | AIDL vibrator HAL | 0 | 3 |
| `android.hardware.vibrator.FrequencyAccelerationMapEntry` | AIDL vibrator HAL | 6 | 3 |
| `android.hardware.vibrator.FrequencyAccelerationMapEntry$1` | AIDL vibrator HAL | 5 | 0 |
| `android.hardware.vibrator.IVibrationSession` | AIDL vibrator HAL | 5 | 3 |
| `android.hardware.vibrator.IVibrationSession$Default` | AIDL vibrator HAL | 6 | 0 |
| `android.hardware.vibrator.IVibrationSession$Stub` | AIDL vibrator HAL | 4 | 4 |
| `android.hardware.vibrator.IVibrationSession$Stub$Proxy` | AIDL vibrator HAL | 7 | 3 |
| `android.hardware.vibrator.IVibrator` | AIDL vibrator HAL | 33 | 16 |
| `android.hardware.vibrator.IVibrator$Default` | AIDL vibrator HAL | 34 | 0 |
| `android.hardware.vibrator.IVibrator$Stub` | AIDL vibrator HAL | 4 | 32 |
| `android.hardware.vibrator.IVibrator$Stub$Proxy` | AIDL vibrator HAL | 35 | 3 |
| `android.hardware.vibrator.IVibratorCallback` | AIDL vibrator HAL | 4 | 3 |
| `android.hardware.vibrator.IVibratorCallback$Default` | AIDL vibrator HAL | 5 | 0 |
| `android.hardware.vibrator.IVibratorCallback$Stub` | AIDL vibrator HAL | 4 | 3 |
| `android.hardware.vibrator.IVibratorCallback$Stub$Proxy` | AIDL vibrator HAL | 6 | 3 |
| `android.hardware.vibrator.IVibratorManager` | AIDL vibrator HAL | 11 | 12 |
| `android.hardware.vibrator.IVibratorManager$Default` | AIDL vibrator HAL | 12 | 0 |
| `android.hardware.vibrator.IVibratorManager$Stub` | AIDL vibrator HAL | 4 | 10 |
| `android.hardware.vibrator.IVibratorManager$Stub$Proxy` | AIDL vibrator HAL | 13 | 3 |
| `android.hardware.vibrator.PrimitivePwle` | AIDL vibrator HAL | 20 | 5 |
| `android.hardware.vibrator.PrimitivePwle$1` | AIDL vibrator HAL | 5 | 0 |
| `android.hardware.vibrator.PrimitivePwle$Tag` | AIDL vibrator HAL | 0 | 2 |
| `android.hardware.vibrator.PrimitivePwle-IA` | AIDL vibrator HAL | 0 | 0 |
| `android.hardware.vibrator.PwleV2Primitive` | AIDL vibrator HAL | 6 | 4 |
| `android.hardware.vibrator.PwleV2Primitive$1` | AIDL vibrator HAL | 5 | 0 |
| `android.hardware.vibrator.VendorEffect` | AIDL vibrator HAL | 7 | 5 |
| `android.hardware.vibrator.VendorEffect$1` | AIDL vibrator HAL | 5 | 0 |
| `android.hardware.vibrator.VibrationSessionConfig` | AIDL vibrator HAL | 7 | 2 |
| `android.hardware.vibrator.VibrationSessionConfig$1` | AIDL vibrator HAL | 5 | 0 |

### `android.media.AudioVibratorInfo` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.media.AudioVibratorInfo` | supporting | 5 | 5 |

### `android.media.AudioVibratorInfo$1` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.media.AudioVibratorInfo$1` | supporting | 5 | 0 |

### `android.media.VibrationUtils` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.media.VibrationUtils` | supporting | 2 | 2 |

### `android.media.audiofx` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.media.audiofx.HapticGenerator` | supporting | 6 | 2 |

### `android.os.CombinedVibration` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.CombinedVibration` | framework vibrator API | 15 | 4 |

### `android.os.CombinedVibration$1` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.CombinedVibration$1` | framework vibrator API | 5 | 0 |

### `android.os.CombinedVibration$Mono` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.CombinedVibration$Mono` | framework vibrator API | 18 | 2 |

### `android.os.CombinedVibration$Mono$1` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.CombinedVibration$Mono$1` | framework vibrator API | 5 | 0 |

### `android.os.CombinedVibration$ParallelCombination` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.CombinedVibration$ParallelCombination` | framework vibrator API | 3 | 1 |

### `android.os.CombinedVibration$Sequential` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.CombinedVibration$Sequential` | framework vibrator API | 21 | 4 |

### `android.os.CombinedVibration$Sequential$$ExternalSyntheticLambda0` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.CombinedVibration$Sequential$$ExternalSyntheticLambda0` | framework vibrator API | 2 | 0 |

### `android.os.CombinedVibration$Sequential$$ExternalSyntheticLambda1` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.CombinedVibration$Sequential$$ExternalSyntheticLambda1` | framework vibrator API | 2 | 1 |

### `android.os.CombinedVibration$Sequential$1` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.CombinedVibration$Sequential$1` | framework vibrator API | 5 | 0 |

### `android.os.CombinedVibration$SequentialCombination` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.CombinedVibration$SequentialCombination` | framework vibrator API | 6 | 2 |

### `android.os.CombinedVibration$Stereo` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.CombinedVibration$Stereo` | framework vibrator API | 23 | 2 |

### `android.os.CombinedVibration$Stereo$$ExternalSyntheticLambda0` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.CombinedVibration$Stereo$$ExternalSyntheticLambda0` | framework vibrator API | 2 | 1 |

### `android.os.CombinedVibration$Stereo$$ExternalSyntheticLambda1` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.CombinedVibration$Stereo$$ExternalSyntheticLambda1` | framework vibrator API | 2 | 2 |

### `android.os.CombinedVibration$Stereo$1` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.CombinedVibration$Stereo$1` | framework vibrator API | 5 | 0 |

### `android.os.CombinedVibration$VibratorAdapter` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.CombinedVibration$VibratorAdapter` | framework vibrator API | 2 | 0 |

### `android.os.ExternalVibration` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.ExternalVibration` | framework vibrator API | 20 | 7 |

### `android.os.ExternalVibration$1` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.ExternalVibration$1` | framework vibrator API | 5 | 0 |

### `android.os.ExternalVibration-IA` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.ExternalVibration-IA` | framework vibrator API | 0 | 0 |

### `android.os.ExternalVibrationScale` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.ExternalVibrationScale` | framework vibrator API | 5 | 4 |

### `android.os.ExternalVibrationScale$1` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.ExternalVibrationScale$1` | framework vibrator API | 5 | 0 |

### `android.os.ExternalVibrationScale$ScaleLevel` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.ExternalVibrationScale$ScaleLevel` | framework vibrator API | 0 | 6 |

### `android.os.IExternalVibrationController` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.IExternalVibrationController` | framework vibrator API | 2 | 1 |

### `android.os.IExternalVibrationController$Default` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.IExternalVibrationController$Default` | framework vibrator API | 4 | 0 |

### `android.os.IExternalVibrationController$Stub` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.IExternalVibrationController$Stub` | MIUI extension stub | 7 | 2 |

### `android.os.IExternalVibrationController$Stub$Proxy` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.IExternalVibrationController$Stub$Proxy` | MIUI extension stub | 5 | 1 |

### `android.os.IExternalVibratorService` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.IExternalVibratorService` | framework vibrator API | 2 | 1 |

### `android.os.IExternalVibratorService$Default` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.IExternalVibratorService$Default` | framework vibrator API | 4 | 0 |

### `android.os.IExternalVibratorService$Stub` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.IExternalVibratorService$Stub` | MIUI extension stub | 7 | 2 |

### `android.os.IExternalVibratorService$Stub$Proxy` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.IExternalVibratorService$Stub$Proxy` | MIUI extension stub | 5 | 1 |

### `android.os.IVibratorManagerService` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.IVibratorManagerService` | framework vibrator API | 12 | 1 |

### `android.os.IVibratorManagerService$Default` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.IVibratorManagerService$Default` | framework vibrator API | 14 | 0 |

### `android.os.IVibratorManagerService$Stub` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.IVibratorManagerService$Stub` | MIUI extension stub | 13 | 14 |

### `android.os.IVibratorManagerService$Stub$Proxy` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.IVibratorManagerService$Stub$Proxy` | MIUI extension stub | 15 | 1 |

### `android.os.IVibratorStateListener` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.IVibratorStateListener` | framework vibrator API | 1 | 1 |

### `android.os.IVibratorStateListener$Default` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.IVibratorStateListener$Default` | framework vibrator API | 3 | 0 |

### `android.os.IVibratorStateListener$Stub` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.IVibratorStateListener$Stub` | MIUI extension stub | 7 | 1 |

### `android.os.IVibratorStateListener$Stub$Proxy` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.IVibratorStateListener$Stub$Proxy` | MIUI extension stub | 4 | 1 |

### `android.os.NullVibrator` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.NullVibrator` | framework vibrator API | 9 | 1 |

### `android.os.SystemVibrator` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.SystemVibrator` | framework vibrator API | 20 | 8 |

### `android.os.SystemVibrator$$ExternalSyntheticLambda0` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.SystemVibrator$$ExternalSyntheticLambda0` | framework vibrator API | 2 | 1 |

### `android.os.SystemVibrator$$ExternalSyntheticLambda1` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.SystemVibrator$$ExternalSyntheticLambda1` | framework vibrator API | 2 | 1 |

### `android.os.SystemVibrator$MultiVibratorStateListener` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.SystemVibrator$MultiVibratorStateListener` | framework vibrator API | 7 | 6 |

### `android.os.SystemVibrator$MultiVibratorStateListener$$ExternalSyntheticLambda0` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.SystemVibrator$MultiVibratorStateListener$$ExternalSyntheticLambda0` | framework vibrator API | 2 | 3 |

### `android.os.SystemVibrator$SingleVibratorStateListener` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.SystemVibrator$SingleVibratorStateListener` | framework vibrator API | 2 | 2 |

### `android.os.SystemVibratorManager` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.SystemVibratorManager` | framework vibrator API | 18 | 10 |

### `android.os.SystemVibratorManager$OnVibratorStateChangedListenerDelegate` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.SystemVibratorManager$OnVibratorStateChangedListenerDelegate` | framework vibrator API | 4 | 2 |

### `android.os.SystemVibratorManager$OnVibratorStateChangedListenerDelegate$$ExternalSyntheticLambda0` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.SystemVibratorManager$OnVibratorStateChangedListenerDelegate$$ExternalSyntheticLambda0` | framework vibrator API | 2 | 2 |

### `android.os.SystemVibratorManager$SingleVibrator` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.SystemVibratorManager$SingleVibrator` | framework vibrator API | 15 | 3 |

### `android.os.SystemVibratorManager$VendorVibrationSessionCallbackDelegate` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.SystemVibratorManager$VendorVibrationSessionCallbackDelegate` | framework vibrator API | 10 | 2 |

### `android.os.SystemVibratorManager$VendorVibrationSessionCallbackDelegate$$ExternalSyntheticLambda0` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.SystemVibratorManager$VendorVibrationSessionCallbackDelegate$$ExternalSyntheticLambda0` | framework vibrator API | 2 | 1 |

### `android.os.SystemVibratorManager$VendorVibrationSessionCallbackDelegate$$ExternalSyntheticLambda1` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.SystemVibratorManager$VendorVibrationSessionCallbackDelegate$$ExternalSyntheticLambda1` | framework vibrator API | 2 | 2 |

### `android.os.SystemVibratorManager$VendorVibrationSessionCallbackDelegate$$ExternalSyntheticLambda2` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.SystemVibratorManager$VendorVibrationSessionCallbackDelegate$$ExternalSyntheticLambda2` | framework vibrator API | 2 | 2 |

### `android.os.VibrationAttributes` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationAttributes` | framework vibrator API | 22 | 28 |

### `android.os.VibrationAttributes$1` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationAttributes$1` | framework vibrator API | 5 | 0 |

### `android.os.VibrationAttributes$Builder` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationAttributes$Builder` | framework vibrator API | 9 | 3 |

### `android.os.VibrationAttributes$Flag` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationAttributes$Flag` | framework vibrator API | 0 | 0 |

### `android.os.VibrationAttributes$Usage` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationAttributes$Usage` | framework vibrator API | 0 | 0 |

### `android.os.VibrationAttributes$UsageClass` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationAttributes$UsageClass` | framework vibrator API | 0 | 0 |

### `android.os.VibrationAttributes-IA` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationAttributes-IA` | framework vibrator API | 0 | 0 |

### `android.os.VibrationEffect` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationEffect` | framework vibrator API | 35 | 19 |

### `android.os.VibrationEffect$1` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationEffect$1` | framework vibrator API | 5 | 0 |

### `android.os.VibrationEffect$AmplitudeVibrationParameter` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationEffect$AmplitudeVibrationParameter` | framework vibrator API | 1 | 1 |

### `android.os.VibrationEffect$BasicEnvelopeBuilder` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationEffect$BasicEnvelopeBuilder` | framework vibrator API | 4 | 3 |

### `android.os.VibrationEffect$Composed` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationEffect$Composed` | framework vibrator API | 34 | 3 |

### `android.os.VibrationEffect$Composed$$ExternalSyntheticLambda0` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationEffect$Composed$$ExternalSyntheticLambda0` | framework vibrator API | 2 | 0 |

### `android.os.VibrationEffect$Composed$$ExternalSyntheticLambda1` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationEffect$Composed$$ExternalSyntheticLambda1` | framework vibrator API | 2 | 0 |

### `android.os.VibrationEffect$Composed$$ExternalSyntheticLambda2` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationEffect$Composed$$ExternalSyntheticLambda2` | framework vibrator API | 2 | 1 |

### `android.os.VibrationEffect$Composed$$ExternalSyntheticLambda3` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationEffect$Composed$$ExternalSyntheticLambda3` | framework vibrator API | 2 | 0 |

### `android.os.VibrationEffect$Composed$$ExternalSyntheticLambda4` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationEffect$Composed$$ExternalSyntheticLambda4` | framework vibrator API | 2 | 0 |

### `android.os.VibrationEffect$Composed$$ExternalSyntheticLambda5` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationEffect$Composed$$ExternalSyntheticLambda5` | framework vibrator API | 2 | 0 |

### `android.os.VibrationEffect$Composed$1` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationEffect$Composed$1` | framework vibrator API | 5 | 0 |

### `android.os.VibrationEffect$Composition` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationEffect$Composition` | framework vibrator API | 13 | 13 |

### `android.os.VibrationEffect$Composition$DelayType` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationEffect$Composition$DelayType` | framework vibrator API | 0 | 0 |

### `android.os.VibrationEffect$Composition$PrimitiveType` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationEffect$Composition$PrimitiveType` | framework vibrator API | 0 | 0 |

### `android.os.VibrationEffect$Composition$UnreachableAfterRepeatingIndefinitelyException` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationEffect$Composition$UnreachableAfterRepeatingIndefinitelyException` | framework vibrator API | 1 | 0 |

### `android.os.VibrationEffect$EffectType` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationEffect$EffectType` | framework vibrator API | 0 | 0 |

### `android.os.VibrationEffect$FrequencyVibrationParameter` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationEffect$FrequencyVibrationParameter` | framework vibrator API | 1 | 1 |

### `android.os.VibrationEffect$Transformation` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationEffect$Transformation` | framework vibrator API | 1 | 0 |

### `android.os.VibrationEffect$VendorEffect` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationEffect$VendorEffect` | framework vibrator API | 30 | 7 |

### `android.os.VibrationEffect$VendorEffect$1` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationEffect$VendorEffect$1` | framework vibrator API | 5 | 0 |

### `android.os.VibrationEffect$VibrationParameter` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationEffect$VibrationParameter` | framework vibrator API | 3 | 0 |

### `android.os.VibrationEffect$WaveformBuilder` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationEffect$WaveformBuilder` | framework vibrator API | 9 | 4 |

### `android.os.VibrationEffect$WaveformEnvelopeBuilder` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibrationEffect$WaveformEnvelopeBuilder` | framework vibrator API | 4 | 3 |

### `android.os.Vibrator` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.Vibrator` | framework vibrator API | 46 | 13 |

### `android.os.Vibrator$$ExternalSyntheticLambda0` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.Vibrator$$ExternalSyntheticLambda0` | framework vibrator API | 2 | 1 |

### `android.os.Vibrator$OnVibratorStateChangedListener` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.Vibrator$OnVibratorStateChangedListener` | framework vibrator API | 1 | 0 |

### `android.os.Vibrator$VibrationEffectSupport` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.Vibrator$VibrationEffectSupport` | framework vibrator API | 0 | 0 |

### `android.os.Vibrator$VibrationIntensity` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.Vibrator$VibrationIntensity` | framework vibrator API | 0 | 0 |

### `android.os.VibratorInfo` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibratorInfo` | framework vibrator API | 44 | 18 |

### `android.os.VibratorInfo$1` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibratorInfo$1` | framework vibrator API | 5 | 0 |

### `android.os.VibratorInfo$Builder` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibratorInfo$Builder` | framework vibrator API | 17 | 15 |

### `android.os.VibratorInfo$FrequencyProfile` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibratorInfo$FrequencyProfile` | framework vibrator API | 17 | 7 |

### `android.os.VibratorInfo$FrequencyProfile$1` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibratorInfo$FrequencyProfile$1` | framework vibrator API | 5 | 0 |

### `android.os.VibratorInfo$FrequencyProfileLegacy` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibratorInfo$FrequencyProfileLegacy` | framework vibrator API | 14 | 6 |

### `android.os.VibratorInfo$FrequencyProfileLegacy$1` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibratorInfo$FrequencyProfileLegacy$1` | framework vibrator API | 5 | 0 |

### `android.os.VibratorManager` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.VibratorManager` | framework vibrator API | 15 | 2 |

### `android.os.vibrator` (59)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.os.vibrator.BasicPwleSegment` | framework vibrator API | 25 | 6 |
| `android.os.vibrator.BasicPwleSegment$1` | framework vibrator API | 5 | 0 |
| `android.os.vibrator.HapticFeedbackRequest` | framework vibrator API | 10 | 3 |
| `android.os.vibrator.HapticFeedbackRequest$Builder` | framework vibrator API | 5 | 3 |
| `android.os.vibrator.HapticFeedbackRequest-IA` | framework vibrator API | 0 | 0 |
| `android.os.vibrator.IVibrationSession` | framework vibrator API | 3 | 7 |
| `android.os.vibrator.IVibrationSession$Default` | framework vibrator API | 5 | 0 |
| `android.os.vibrator.IVibrationSession$Stub` | MIUI extension stub | 7 | 3 |
| `android.os.vibrator.IVibrationSession$Stub$Proxy` | MIUI extension stub | 6 | 1 |
| `android.os.vibrator.IVibrationSessionCallback` | framework vibrator API | 3 | 1 |
| `android.os.vibrator.IVibrationSessionCallback$Default` | framework vibrator API | 5 | 0 |
| `android.os.vibrator.IVibrationSessionCallback$Stub` | MIUI extension stub | 7 | 3 |
| `android.os.vibrator.IVibrationSessionCallback$Stub$Proxy` | MIUI extension stub | 6 | 1 |
| `android.os.vibrator.MultiVibratorInfo` | framework vibrator API | 12 | 2 |
| `android.os.vibrator.MultiVibratorInfo$$ExternalSyntheticLambda0` | framework vibrator API | 2 | 0 |
| `android.os.vibrator.MultiVibratorInfo$$ExternalSyntheticLambda1` | framework vibrator API | 2 | 0 |
| `android.os.vibrator.MultiVibratorInfo$$ExternalSyntheticLambda2` | framework vibrator API | 2 | 0 |
| `android.os.vibrator.MultiVibratorInfo$$ExternalSyntheticLambda3` | framework vibrator API | 2 | 0 |
| `android.os.vibrator.MultiVibratorInfo$$ExternalSyntheticLambda4` | framework vibrator API | 2 | 0 |
| `android.os.vibrator.MultiVibratorInfo$$ExternalSyntheticLambda5` | framework vibrator API | 2 | 0 |
| `android.os.vibrator.MultiVibratorInfo$$ExternalSyntheticLambda6` | framework vibrator API | 2 | 0 |
| `android.os.vibrator.MultiVibratorInfo$$ExternalSyntheticLambda7` | framework vibrator API | 2 | 0 |
| `android.os.vibrator.MultiVibratorInfo$$ExternalSyntheticLambda8` | framework vibrator API | 2 | 0 |
| `android.os.vibrator.MultiVibratorInfo$$ExternalSyntheticLambda9` | framework vibrator API | 2 | 0 |
| `android.os.vibrator.PrebakedSegment` | framework vibrator API | 27 | 6 |
| `android.os.vibrator.PrebakedSegment$1` | framework vibrator API | 5 | 0 |
| `android.os.vibrator.PrimitiveSegment` | framework vibrator API | 29 | 8 |
| `android.os.vibrator.PrimitiveSegment$1` | framework vibrator API | 5 | 0 |
| `android.os.vibrator.PwlePoint` | framework vibrator API | 7 | 3 |
| `android.os.vibrator.PwleSegment` | framework vibrator API | 25 | 6 |
| `android.os.vibrator.PwleSegment$1` | framework vibrator API | 5 | 0 |
| `android.os.vibrator.RampSegment` | framework vibrator API | 25 | 6 |
| `android.os.vibrator.RampSegment$1` | framework vibrator API | 5 | 0 |
| `android.os.vibrator.StepSegment` | framework vibrator API | 23 | 4 |
| `android.os.vibrator.StepSegment$1` | framework vibrator API | 5 | 0 |
| `android.os.vibrator.VendorVibrationSession` | framework vibrator API | 5 | 8 |
| `android.os.vibrator.VendorVibrationSession$Callback` | framework vibrator API | 3 | 0 |
| `android.os.vibrator.VendorVibrationSession$Status` | framework vibrator API | 0 | 0 |
| `android.os.vibrator.VibrationConfig` | framework vibrator API | 35 | 20 |
| `android.os.vibrator.VibrationConfig$Builder` | framework vibrator API | 38 | 18 |
| `android.os.vibrator.VibrationEffectSegment` | framework vibrator API | 16 | 7 |
| `android.os.vibrator.VibrationEffectSegment$1` | framework vibrator API | 5 | 0 |
| `android.os.vibrator.VibratorEnvelopeEffectInfo` | framework vibrator API | 12 | 4 |
| `android.os.vibrator.VibratorEnvelopeEffectInfo$1` | framework vibrator API | 5 | 0 |
| `android.os.vibrator.VibratorFrequencyProfile` | framework vibrator API | 8 | 2 |
| `android.os.vibrator.VibratorFrequencyProfileLegacy` | framework vibrator API | 5 | 1 |
| `android.os.vibrator.VibratorInfoFactory` | framework vibrator API | 2 | 0 |
| `android.os.vibrator.persistence.ParsedVibration` | framework vibrator API | 7 | 1 |
| `android.os.vibrator.persistence.VibrationXmlParser` | framework vibrator API | 15 | 2 |
| `android.os.vibrator.persistence.VibrationXmlParser$$ExternalSyntheticLambda0` | framework vibrator API | 2 | 0 |
| `android.os.vibrator.persistence.VibrationXmlParser$$ExternalSyntheticLambda1` | framework vibrator API | 2 | 0 |
| `android.os.vibrator.persistence.VibrationXmlParser$ElementParser` | framework vibrator API | 1 | 0 |
| `android.os.vibrator.persistence.VibrationXmlParser$Flags` | framework vibrator API | 0 | 0 |
| `android.os.vibrator.persistence.VibrationXmlParser$ParseFailedException` | framework vibrator API | 6 | 0 |
| `android.os.vibrator.persistence.VibrationXmlParser-IA` | framework vibrator API | 0 | 0 |
| `android.os.vibrator.persistence.VibrationXmlSerializer` | framework vibrator API | 5 | 4 |
| `android.os.vibrator.persistence.VibrationXmlSerializer$Flags` | framework vibrator API | 0 | 0 |
| `android.os.vibrator.persistence.VibrationXmlSerializer$SerializationFailedException` | framework vibrator API | 2 | 0 |
| `android.os.vibrator.persistence.VibrationXmlSerializer-IA` | framework vibrator API | 0 | 0 |

### `android.providers.settings` (2)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.providers.settings.SystemSettingsProto$HapticFeedback` | framework haptic UI API | 1 | 2 |
| `android.providers.settings.SystemSettingsProto$Vibrate` | supporting | 1 | 7 |

### `android.view.HapticFeedbackConstants` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.view.HapticFeedbackConstants` | framework haptic UI API | 1 | 36 |

### `android.view.HapticFeedbackConstants$FeedbackConstant` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.view.HapticFeedbackConstants$FeedbackConstant` | framework haptic UI API | 0 | 0 |

### `android.view.HapticFeedbackConstants$Flags` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.view.HapticFeedbackConstants$Flags` | framework haptic UI API | 0 | 0 |

### `android.view.HapticFeedbackConstants$PrivateFlags` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.view.HapticFeedbackConstants$PrivateFlags` | framework haptic UI API | 0 | 0 |

### `android.view.HapticScrollFeedbackProvider` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `android.view.HapticScrollFeedbackProvider` | framework haptic UI API | 7 | 13 |

### `com.android.internal` (69)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `com.android.internal.hidden_from_bootclasspath.android.os.vibrator.CustomFeatureFlags` | supporting | 18 | 2 |
| `com.android.internal.hidden_from_bootclasspath.android.os.vibrator.CustomFeatureFlags$$ExternalSyntheticLambda0` | supporting | 2 | 0 |
| `com.android.internal.hidden_from_bootclasspath.android.os.vibrator.CustomFeatureFlags$$ExternalSyntheticLambda1` | supporting | 2 | 0 |
| `com.android.internal.hidden_from_bootclasspath.android.os.vibrator.CustomFeatureFlags$$ExternalSyntheticLambda10` | supporting | 2 | 0 |
| `com.android.internal.hidden_from_bootclasspath.android.os.vibrator.CustomFeatureFlags$$ExternalSyntheticLambda11` | supporting | 2 | 0 |
| `com.android.internal.hidden_from_bootclasspath.android.os.vibrator.CustomFeatureFlags$$ExternalSyntheticLambda12` | supporting | 2 | 0 |
| `com.android.internal.hidden_from_bootclasspath.android.os.vibrator.CustomFeatureFlags$$ExternalSyntheticLambda2` | supporting | 2 | 0 |
| `com.android.internal.hidden_from_bootclasspath.android.os.vibrator.CustomFeatureFlags$$ExternalSyntheticLambda3` | supporting | 2 | 0 |
| `com.android.internal.hidden_from_bootclasspath.android.os.vibrator.CustomFeatureFlags$$ExternalSyntheticLambda4` | supporting | 2 | 0 |
| `com.android.internal.hidden_from_bootclasspath.android.os.vibrator.CustomFeatureFlags$$ExternalSyntheticLambda5` | supporting | 2 | 0 |
| `com.android.internal.hidden_from_bootclasspath.android.os.vibrator.CustomFeatureFlags$$ExternalSyntheticLambda6` | supporting | 2 | 0 |
| `com.android.internal.hidden_from_bootclasspath.android.os.vibrator.CustomFeatureFlags$$ExternalSyntheticLambda7` | supporting | 2 | 0 |
| `com.android.internal.hidden_from_bootclasspath.android.os.vibrator.CustomFeatureFlags$$ExternalSyntheticLambda8` | supporting | 2 | 0 |
| `com.android.internal.hidden_from_bootclasspath.android.os.vibrator.CustomFeatureFlags$$ExternalSyntheticLambda9` | supporting | 2 | 0 |
| `com.android.internal.hidden_from_bootclasspath.android.os.vibrator.FakeFeatureFlagsImpl` | supporting | 5 | 3 |
| `com.android.internal.hidden_from_bootclasspath.android.os.vibrator.FeatureFlags` | supporting | 13 | 0 |
| `com.android.internal.hidden_from_bootclasspath.android.os.vibrator.FeatureFlagsImpl` | supporting | 14 | 0 |
| `com.android.internal.hidden_from_bootclasspath.android.os.vibrator.Flags` | supporting | 15 | 14 |
| `com.android.internal.util.VibrationStatsWriter` | supporting | 7 | 8 |
| `com.android.internal.util.VibrationStatsWriter$VibrationPatternEventType` | supporting | 0 | 0 |
| `com.android.internal.vibrator.persistence.LegacyVibrationEffectXmlSerializer` | supporting | 11 | 0 |
| `com.android.internal.vibrator.persistence.SerializedAmplitudeStepWaveform` | supporting | 6 | 3 |
| `com.android.internal.vibrator.persistence.SerializedAmplitudeStepWaveform$Builder` | supporting | 5 | 3 |
| `com.android.internal.vibrator.persistence.SerializedAmplitudeStepWaveform$Parser` | supporting | 4 | 0 |
| `com.android.internal.vibrator.persistence.SerializedAmplitudeStepWaveform$Parser$$ExternalSyntheticLambda0` | supporting | 2 | 1 |
| `com.android.internal.vibrator.persistence.SerializedAmplitudeStepWaveform-IA` | supporting | 0 | 0 |
| `com.android.internal.vibrator.persistence.SerializedBasicEnvelopeEffect` | supporting | 4 | 2 |
| `com.android.internal.vibrator.persistence.SerializedBasicEnvelopeEffect$BasicControlPoint` | supporting | 5 | 3 |
| `com.android.internal.vibrator.persistence.SerializedBasicEnvelopeEffect$Builder` | supporting | 5 | 2 |
| `com.android.internal.vibrator.persistence.SerializedBasicEnvelopeEffect$Parser` | supporting | 3 | 0 |
| `com.android.internal.vibrator.persistence.SerializedComposedEffect` | supporting | 7 | 1 |
| `com.android.internal.vibrator.persistence.SerializedComposedEffect$SerializedSegment` | supporting | 2 | 0 |
| `com.android.internal.vibrator.persistence.SerializedCompositionPrimitive` | supporting | 4 | 4 |
| `com.android.internal.vibrator.persistence.SerializedCompositionPrimitive$Parser` | supporting | 4 | 0 |
| `com.android.internal.vibrator.persistence.SerializedPredefinedEffect` | supporting | 4 | 2 |
| `com.android.internal.vibrator.persistence.SerializedPredefinedEffect$Parser` | supporting | 2 | 0 |
| `com.android.internal.vibrator.persistence.SerializedRepeatingEffect` | supporting | 4 | 2 |
| `com.android.internal.vibrator.persistence.SerializedRepeatingEffect$Builder` | supporting | 5 | 2 |
| `com.android.internal.vibrator.persistence.SerializedRepeatingEffect$Parser` | supporting | 5 | 0 |
| `com.android.internal.vibrator.persistence.SerializedVendorEffect` | supporting | 6 | 1 |
| `com.android.internal.vibrator.persistence.SerializedVendorEffect$Parser` | supporting | 2 | 0 |
| `com.android.internal.vibrator.persistence.SerializedWaveformEffectEntries` | supporting | 5 | 2 |
| `com.android.internal.vibrator.persistence.SerializedWaveformEffectEntries$Builder` | supporting | 4 | 2 |
| `com.android.internal.vibrator.persistence.SerializedWaveformEffectEntries$Parser` | supporting | 2 | 0 |
| `com.android.internal.vibrator.persistence.SerializedWaveformEffectEntries$Parser$$ExternalSyntheticLambda0` | supporting | 2 | 1 |
| `com.android.internal.vibrator.persistence.SerializedWaveformEffectEntries-IA` | supporting | 0 | 0 |
| `com.android.internal.vibrator.persistence.SerializedWaveformEnvelopeEffect` | supporting | 4 | 2 |
| `com.android.internal.vibrator.persistence.SerializedWaveformEnvelopeEffect$Builder` | supporting | 5 | 2 |
| `com.android.internal.vibrator.persistence.SerializedWaveformEnvelopeEffect$Parser` | supporting | 3 | 0 |
| `com.android.internal.vibrator.persistence.SerializedWaveformEnvelopeEffect$WaveformControlPoint` | supporting | 5 | 3 |
| `com.android.internal.vibrator.persistence.VibrationEffectSerializer` | supporting | 18 | 1 |
| `com.android.internal.vibrator.persistence.VibrationEffectSerializer$$ExternalSyntheticLambda0` | supporting | 2 | 1 |
| `com.android.internal.vibrator.persistence.VibrationEffectSerializer$$ExternalSyntheticLambda1` | supporting | 2 | 1 |
| `com.android.internal.vibrator.persistence.VibrationEffectXmlParser` | supporting | 3 | 0 |
| `com.android.internal.vibrator.persistence.XmlConstants` | supporting | 2 | 28 |
| `com.android.internal.vibrator.persistence.XmlConstants$Flags` | supporting | 0 | 0 |
| `com.android.internal.vibrator.persistence.XmlConstants$PredefinedEffectName` | supporting | 9 | 25 |
| `com.android.internal.vibrator.persistence.XmlConstants$PrimitiveDelayType` | supporting | 9 | 4 |
| `com.android.internal.vibrator.persistence.XmlConstants$PrimitiveEffectName` | supporting | 9 | 10 |
| `com.android.internal.vibrator.persistence.XmlParserException` | supporting | 4 | 0 |
| `com.android.internal.vibrator.persistence.XmlReader` | supporting | 19 | 0 |
| `com.android.internal.vibrator.persistence.XmlSerializedVibration` | supporting | 3 | 0 |
| `com.android.internal.vibrator.persistence.XmlSerializerException` | supporting | 1 | 0 |
| `com.android.internal.vibrator.persistence.XmlValidator` | supporting | 7 | 0 |
| `com.android.internal.widget.LockPatternView$ExternalHapticsPlayer` | supporting | 1 | 0 |
| `com.android.internal.widget.remotecompose.core.CoreDocument$HapticEngine` | supporting | 1 | 0 |
| `com.android.internal.widget.remotecompose.core.operations.HapticFeedback` | framework haptic UI API | 13 | 3 |
| `com.android.internal.widget.remotecompose.player.platform.HapticSupport` | supporting | 4 | 1 |
| `com.android.internal.widget.remotecompose.player.platform.HapticSupport$1` | supporting | 2 | 1 |

### `com.android.server.accessibility` (3)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `com.android.server.accessibility.magnification.FullScreenMagnificationVibrationHelper` | supporting | 5 | 4 |
| `com.android.server.accessibility.magnification.FullScreenMagnificationVibrationHelper$$ExternalSyntheticLambda0` | supporting | 2 | 1 |
| `com.android.server.accessibility.magnification.FullScreenMagnificationVibrationHelper$VibrationEffectSupportedProvider` | supporting | 1 | 0 |

### `com.android.server.input` (2)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `com.android.server.input.InputManagerService$VibrationInfo` | input-device vibration | 4 | 3 |
| `com.android.server.input.InputManagerService$VibratorToken` | input-device vibration | 2 | 5 |

### `com.android.server.notification` (1)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `com.android.server.notification.VibratorHelper` | notification vibration | 12 | 8 |

### `com.android.server.vibrator` (139)

| Class | Kind | Methods | Fields |
|---|---|---:|---:|
| `com.android.server.vibrator.AbstractComposedVibratorStep` | vibrator system service | 6 | 2 |
| `com.android.server.vibrator.AbstractVibratorStep` | vibrator system service | 9 | 4 |
| `com.android.server.vibrator.BasicToPwleSegmentAdapter` | vibrator system service | 16 | 3 |
| `com.android.server.vibrator.BasicToPwleSegmentAdapter$$ExternalSyntheticLambda0` | vibrator system service | 2 | 0 |
| `com.android.server.vibrator.ClippingAmplitudeAndFrequencyAdapter` | vibrator system service | 5 | 0 |
| `com.android.server.vibrator.CombinedVibrationEffectProto` | vibrator system service | 1 | 2 |
| `com.android.server.vibrator.CompleteEffectVibratorStep` | vibrator system service | 4 | 1 |
| `com.android.server.vibrator.ComposePrimitivesVibratorStep` | vibrator system service | 3 | 0 |
| `com.android.server.vibrator.ComposePwleV2VibratorStep` | vibrator system service | 4 | 0 |
| `com.android.server.vibrator.ComposePwleVibratorStep` | vibrator system service | 4 | 0 |
| `com.android.server.vibrator.DeviceAdapter` | vibrator system service | 4 | 4 |
| `com.android.server.vibrator.ExternalVibrationSession` | vibrator system service | 21 | 4 |
| `com.android.server.vibrator.ExternalVibrationSession$VibratorManagerHooks` | vibrator system service | 1 | 0 |
| `com.android.server.vibrator.FinishSequentialEffectStep` | vibrator system service | 5 | 1 |
| `com.android.server.vibrator.GroupedAggregatedLogRecords` | vibrator system service | 6 | 3 |
| `com.android.server.vibrator.GroupedAggregatedLogRecords$AggregatedLogRecord` | vibrator system service | 6 | 3 |
| `com.android.server.vibrator.GroupedAggregatedLogRecords$SingleLogRecord` | vibrator system service | 5 | 0 |
| `com.android.server.vibrator.HalVibration` | vibrator system service | 12 | 7 |
| `com.android.server.vibrator.HalVibration$$ExternalSyntheticLambda0` | vibrator system service | 2 | 1 |
| `com.android.server.vibrator.HalVibrator` | vibrator system service | 18 | 0 |
| `com.android.server.vibrator.HalVibrator$Callbacks` | vibrator system service | 1 | 0 |
| `com.android.server.vibrator.HalVibrator$State` | vibrator system service | 5 | 4 |
| `com.android.server.vibrator.HalVibratorManager` | vibrator system service | 12 | 0 |
| `com.android.server.vibrator.HalVibratorManager$Callbacks` | vibrator system service | 2 | 0 |
| `com.android.server.vibrator.HapticFeedbackCustomization` | vibrator system service | 9 | 4 |
| `com.android.server.vibrator.HapticFeedbackVibrationProvider` | vibrator system service | 16 | 10 |
| `com.android.server.vibrator.InputDeviceDelegate` | vibrator system service | 9 | 6 |
| `com.android.server.vibrator.PerformPrebakedVibratorStep` | vibrator system service | 3 | 0 |
| `com.android.server.vibrator.PerformVendorEffectVibratorStep` | vibrator system service | 2 | 1 |
| `com.android.server.vibrator.PrebakedFallbackAdapter` | vibrator system service | 2 | 1 |
| `com.android.server.vibrator.PrebakedSegmentProto` | vibrator system service | 1 | 3 |
| `com.android.server.vibrator.PrebakedSegmentsValidator` | vibrator system service | 2 | 0 |
| `com.android.server.vibrator.PrimitiveDelayAdapter` | vibrator system service | 5 | 0 |
| `com.android.server.vibrator.PrimitiveSegmentProto` | vibrator system service | 1 | 3 |
| `com.android.server.vibrator.PrimitiveSegmentsValidator` | vibrator system service | 2 | 0 |
| `com.android.server.vibrator.PwleSegmentsValidator` | vibrator system service | 2 | 0 |
| `com.android.server.vibrator.RampDownAdapter` | vibrator system service | 9 | 2 |
| `com.android.server.vibrator.RampOffVibratorStep` | vibrator system service | 4 | 2 |
| `com.android.server.vibrator.RampSegmentProto` | vibrator system service | 1 | 5 |
| `com.android.server.vibrator.RampToStepAdapter` | vibrator system service | 4 | 1 |
| `com.android.server.vibrator.SegmentProto` | vibrator system service | 1 | 4 |
| `com.android.server.vibrator.SetAmplitudeVibratorStep` | vibrator system service | 5 | 0 |
| `com.android.server.vibrator.SingleVibrationSession` | vibrator system service | 18 | 5 |
| `com.android.server.vibrator.SplitPwleSegmentsAdapter` | vibrator system service | 3 | 0 |
| `com.android.server.vibrator.SplitSegmentsAdapter` | vibrator system service | 4 | 0 |
| `com.android.server.vibrator.StartSequentialEffectStep` | vibrator system service | 10 | 3 |
| `com.android.server.vibrator.StartSequentialEffectStep$DeviceEffectMap` | vibrator system service | 9 | 3 |
| `com.android.server.vibrator.Step` | vibrator system service | 11 | 2 |
| `com.android.server.vibrator.StepSegmentProto` | vibrator system service | 1 | 3 |
| `com.android.server.vibrator.StepToRampAdapter` | vibrator system service | 5 | 0 |
| `com.android.server.vibrator.SyncVibrationEffectProto` | vibrator system service | 1 | 2 |
| `com.android.server.vibrator.TurnOffVibratorStep` | vibrator system service | 5 | 1 |
| `com.android.server.vibrator.VendorVibrationSession` | vibrator system service | 41 | 20 |
| `com.android.server.vibrator.VendorVibrationSession$$ExternalSyntheticLambda0` | vibrator system service | 2 | 2 |
| `com.android.server.vibrator.VendorVibrationSession$$ExternalSyntheticLambda1` | vibrator system service | 2 | 1 |
| `com.android.server.vibrator.VendorVibrationSession$$ExternalSyntheticLambda2` | vibrator system service | 2 | 2 |
| `com.android.server.vibrator.VendorVibrationSession$1` | vibrator system service | 1 | 1 |
| `com.android.server.vibrator.VendorVibrationSession$DebugInfoImpl` | vibrator system service | 10 | 9 |
| `com.android.server.vibrator.VendorVibrationSession$VendorCallbackWrapper` | vibrator system service | 14 | 5 |
| `com.android.server.vibrator.VendorVibrationSession$VendorCallbackWrapper$$ExternalSyntheticLambda0` | vibrator system service | 2 | 2 |
| `com.android.server.vibrator.VendorVibrationSession$VendorCallbackWrapper$$ExternalSyntheticLambda1` | vibrator system service | 2 | 2 |
| `com.android.server.vibrator.VendorVibrationSession$VendorCallbackWrapper$$ExternalSyntheticLambda2` | vibrator system service | 2 | 1 |
| `com.android.server.vibrator.VendorVibrationSession$VibratorManagerHooks` | vibrator system service | 3 | 0 |
| `com.android.server.vibrator.Vibration` | vibrator system service | 5 | 5 |
| `com.android.server.vibrator.Vibration$DebugInfoImpl` | vibrator system service | 19 | 13 |
| `com.android.server.vibrator.Vibration$EndInfo` | vibrator system service | 5 | 2 |
| `com.android.server.vibrator.VibrationAttributesProto` | vibrator system service | 1 | 4 |
| `com.android.server.vibrator.VibrationEffectProto` | vibrator system service | 1 | 2 |
| `com.android.server.vibrator.VibrationParamProto` | vibrator system service | 1 | 3 |
| `com.android.server.vibrator.VibrationProto` | vibrator system service | 1 | 39 |
| `com.android.server.vibrator.VibrationScaleParamProto` | vibrator system service | 1 | 2 |
| `com.android.server.vibrator.VibrationScaler` | vibrator system service | 17 | 3 |
| `com.android.server.vibrator.VibrationSegmentsAdapter` | vibrator system service | 1 | 0 |
| `com.android.server.vibrator.VibrationSegmentsValidator` | vibrator system service | 1 | 0 |
| `com.android.server.vibrator.VibrationSession` | vibrator system service | 16 | 1 |
| `com.android.server.vibrator.VibrationSession$CallerInfo` | vibrator system service | 4 | 5 |
| `com.android.server.vibrator.VibrationSession$DebugInfo` | vibrator system service | 10 | 2 |
| `com.android.server.vibrator.VibrationSession$Status` | vibrator system service | 6 | 34 |
| `com.android.server.vibrator.VibrationSettings` | vibrator system service | 47 | 25 |
| `com.android.server.vibrator.VibrationSettings$BatteryBroadcastReceiver` | vibrator system service | 2 | 1 |
| `com.android.server.vibrator.VibrationSettings$OnVibratorSettingsChanged` | vibrator system service | 1 | 0 |
| `com.android.server.vibrator.VibrationSettings$RingerModeBroadcastReceiver` | vibrator system service | 2 | 1 |
| `com.android.server.vibrator.VibrationSettings$SettingsContentObserver` | vibrator system service | 2 | 1 |
| `com.android.server.vibrator.VibrationSettings$VibrationLowPowerModeListener` | vibrator system service | 3 | 1 |
| `com.android.server.vibrator.VibrationSettings$VibrationUidObserver` | vibrator system service | 5 | 1 |
| `com.android.server.vibrator.VibrationSettings$VibrationUserSwitchObserver` | vibrator system service | 3 | 1 |
| `com.android.server.vibrator.VibrationStats` | vibrator system service | 46 | 24 |
| `com.android.server.vibrator.VibrationStats$StatsInfo` | vibrator system service | 5 | 28 |
| `com.android.server.vibrator.VibrationStepConductor` | vibrator system service | 26 | 23 |
| `com.android.server.vibrator.VibrationThread` | vibrator system service | 10 | 7 |
| `com.android.server.vibrator.VibrationThread$VibratorManagerHooks` | vibrator system service | 6 | 0 |
| `com.android.server.vibrator.VibratorControlService` | vibrator system service | 25 | 8 |
| `com.android.server.vibrator.VibratorControlService$VibrationParamRequest` | vibrator system service | 2 | 5 |
| `com.android.server.vibrator.VibratorControlService$VibrationParamsRecords` | vibrator system service | 3 | 0 |
| `com.android.server.vibrator.VibratorControlService$VibrationParamsRecords$Operation` | vibrator system service | 5 | 4 |
| `com.android.server.vibrator.VibratorControlService$VibrationScaleParamRecord` | vibrator system service | 7 | 4 |
| `com.android.server.vibrator.VibratorController` | vibrator system service | 27 | 7 |
| `com.android.server.vibrator.VibratorController$$ExternalSyntheticLambda0` | vibrator system service | 2 | 2 |
| `com.android.server.vibrator.VibratorController$NativeWrapper` | vibrator system service | 28 | 1 |
| `com.android.server.vibrator.VibratorControllerHolder` | vibrator system service | 5 | 1 |
| `com.android.server.vibrator.VibratorDebugUtils` | vibrator system service | 1 | 0 |
| `com.android.server.vibrator.VibratorFrameworkStatsLogger` | vibrator system service | 23 | 12 |
| `com.android.server.vibrator.VibratorFrameworkStatsLogger$$ExternalSyntheticLambda0` | vibrator system service | 2 | 1 |
| `com.android.server.vibrator.VibratorFrameworkStatsLogger$$ExternalSyntheticLambda1` | vibrator system service | 2 | 2 |
| `com.android.server.vibrator.VibratorFrameworkStatsLogger$$ExternalSyntheticLambda2` | vibrator system service | 2 | 1 |
| `com.android.server.vibrator.VibratorManagerService` | vibrator system service | 133 | 37 |
| `com.android.server.vibrator.VibratorManagerService$$ExternalSyntheticLambda0` | vibrator system service | 2 | 1 |
| `com.android.server.vibrator.VibratorManagerService$$ExternalSyntheticLambda1` | vibrator system service | 2 | 1 |
| `com.android.server.vibrator.VibratorManagerService$$ExternalSyntheticLambda2` | vibrator system service | 2 | 1 |
| `com.android.server.vibrator.VibratorManagerService$$ExternalSyntheticLambda3` | vibrator system service | 2 | 0 |
| `com.android.server.vibrator.VibratorManagerService$$ExternalSyntheticLambda4` | vibrator system service | 2 | 1 |
| `com.android.server.vibrator.VibratorManagerService$1` | vibrator system service | 4 | 1 |
| `com.android.server.vibrator.VibratorManagerService$1$$ExternalSyntheticLambda0` | vibrator system service | 2 | 1 |
| `com.android.server.vibrator.VibratorManagerService$1$$ExternalSyntheticLambda1` | vibrator system service | 2 | 1 |
| `com.android.server.vibrator.VibratorManagerService$2` | vibrator system service | 3 | 1 |
| `com.android.server.vibrator.VibratorManagerService$2$$ExternalSyntheticLambda0` | vibrator system service | 2 | 1 |
| `com.android.server.vibrator.VibratorManagerService$3` | vibrator system service | 1 | 1 |
| `com.android.server.vibrator.VibratorManagerService$AlwaysOnVibration` | vibrator system service | 1 | 3 |
| `com.android.server.vibrator.VibratorManagerService$ExternalVibrationCallbacks` | vibrator system service | 3 | 1 |
| `com.android.server.vibrator.VibratorManagerService$ExternalVibratorService` | vibrator system service | 4 | 1 |
| `com.android.server.vibrator.VibratorManagerService$HalListener` | vibrator system service | 4 | 1 |
| `com.android.server.vibrator.VibratorManagerService$Injector` | vibrator system service | 9 | 0 |
| `com.android.server.vibrator.VibratorManagerService$Lifecycle` | vibrator system service | 3 | 1 |
| `com.android.server.vibrator.VibratorManagerService$NativeHalVibratorManager` | vibrator system service | 13 | 4 |
| `com.android.server.vibrator.VibratorManagerService$NativeWrapper` | vibrator system service | 11 | 1 |
| `com.android.server.vibrator.VibratorManagerService$VendorVibrationSessionCallbacks` | vibrator system service | 5 | 1 |
| `com.android.server.vibrator.VibratorManagerService$VibrationRecord` | vibrator system service | 6 | 1 |
| `com.android.server.vibrator.VibratorManagerService$VibrationRecords` | vibrator system service | 3 | 0 |
| `com.android.server.vibrator.VibratorManagerService$VibrationThreadCallbacks` | vibrator system service | 8 | 1 |
| `com.android.server.vibrator.VibratorManagerService$VibratorManagerRecords` | vibrator system service | 4 | 2 |
| `com.android.server.vibrator.VibratorManagerService$VibratorManagerShellCommand` | vibrator system service | 23 | 2 |
| `com.android.server.vibrator.VibratorManagerService$VibratorManagerShellCommand$AdvancedEnveloperBuilderWrapper` | vibrator system service | 6 | 1 |
| `com.android.server.vibrator.VibratorManagerService$VibratorManagerShellCommand$BasicEnveloperBuilderWrapper` | vibrator system service | 6 | 1 |
| `com.android.server.vibrator.VibratorManagerService$VibratorManagerShellCommand$CommonOptions` | vibrator system service | 3 | 6 |
| `com.android.server.vibrator.VibratorManagerService$VibratorManagerShellCommand$EnvelopeBuilder` | vibrator system service | 4 | 0 |
| `com.android.server.vibrator.VibratorManagerService$VibratorManagerShellCommand$ShellVibrationSessionCallback` | vibrator system service | 8 | 6 |
| `com.android.server.vibrator.VibratorManagerService$VibratorManagerShellCommand$ShellVibrationSessionCallback$$ExternalSyntheticLambda0` | vibrator system service | 2 | 2 |
| `com.android.server.vibrator.VibratorManagerService-IA` | vibrator system service | 0 | 0 |
| `com.android.server.vibrator.VibratorManagerServiceDumpProto` | vibrator system service | 1 | 23 |

## Classes present only in Android 13

These are MIUI/HyperOS extensions or pre-AIDL HAL interfaces. They are **not** portable to Android 16 as-is (see `05-limitations.md`).

| Class | Kind |
|---|---|
| `android.hardware.vibrator.V1_0.Effect` | HIDL vibrator HAL (A13) |
| `android.hardware.vibrator.V1_0.EffectStrength` | HIDL vibrator HAL (A13) |
| `android.hardware.vibrator.V1_0.IVibrator` | HIDL vibrator HAL (A13) |
| `android.hardware.vibrator.V1_0.IVibrator$Proxy` | HIDL vibrator HAL (A13) |
| `android.hardware.vibrator.V1_0.IVibrator$Stub` | HIDL vibrator HAL (A13) |
| `android.hardware.vibrator.V1_0.IVibrator$Stub$1` | HIDL vibrator HAL (A13) |
| `android.hardware.vibrator.V1_0.IVibrator$performCallback` | HIDL vibrator HAL (A13) |
| `android.hardware.vibrator.V1_0.Status` | HIDL vibrator HAL (A13) |
| `android.hardware.vibrator.V1_1.Effect_1_1` | HIDL vibrator HAL (A13) |
| `android.hardware.vibrator.V1_1.IVibrator` | HIDL vibrator HAL (A13) |
| `android.hardware.vibrator.V1_1.IVibrator$Proxy` | HIDL vibrator HAL (A13) |
| `android.hardware.vibrator.V1_1.IVibrator$Stub` | HIDL vibrator HAL (A13) |
| `android.hardware.vibrator.V1_1.IVibrator$Stub$1` | HIDL vibrator HAL (A13) |
| `android.hardware.vibrator.V1_1.IVibrator$Stub$2` | HIDL vibrator HAL (A13) |
| `android.hardware.vibrator.V1_1.IVibrator$perform_1_1Callback` | HIDL vibrator HAL (A13) |
| `android.hardware.vibrator.V1_2.Effect` | HIDL vibrator HAL (A13) |
| `android.hardware.vibrator.V1_2.IVibrator` | HIDL vibrator HAL (A13) |
| `android.hardware.vibrator.V1_2.IVibrator$Proxy` | HIDL vibrator HAL (A13) |
| `android.hardware.vibrator.V1_2.IVibrator$Stub` | HIDL vibrator HAL (A13) |
| `android.hardware.vibrator.V1_2.IVibrator$Stub$1` | HIDL vibrator HAL (A13) |
| `android.hardware.vibrator.V1_2.IVibrator$Stub$2` | HIDL vibrator HAL (A13) |
| `android.hardware.vibrator.V1_2.IVibrator$Stub$3` | HIDL vibrator HAL (A13) |
| `android.hardware.vibrator.V1_2.IVibrator$perform_1_2Callback` | HIDL vibrator HAL (A13) |
| `android.hardware.vibrator.V1_3.Effect` | HIDL vibrator HAL (A13) |
| `android.hardware.vibrator.V1_3.IVibrator` | HIDL vibrator HAL (A13) |
| `android.hardware.vibrator.V1_3.IVibrator$Proxy` | HIDL vibrator HAL (A13) |
| `android.hardware.vibrator.V1_3.IVibrator$Stub` | HIDL vibrator HAL (A13) |
| `android.hardware.vibrator.V1_3.IVibrator$Stub$1` | HIDL vibrator HAL (A13) |
| `android.hardware.vibrator.V1_3.IVibrator$Stub$2` | HIDL vibrator HAL (A13) |
| `android.hardware.vibrator.V1_3.IVibrator$Stub$3` | HIDL vibrator HAL (A13) |
| `android.hardware.vibrator.V1_3.IVibrator$Stub$4` | HIDL vibrator HAL (A13) |
| `android.hardware.vibrator.V1_3.IVibrator$perform_1_3Callback` | HIDL vibrator HAL (A13) |
| `android.os.CombinedVibrationStub` | MIUI extension stub |
| `android.os.SystemVibrator$AllVibratorsStateListener` | framework vibrator API |
| `android.os.SystemVibrator$AllVibratorsStateListener$$ExternalSyntheticLambda0` | framework vibrator API |
| `android.os.SystemVibrator$MultiVibratorInfo` | framework vibrator API |
| `android.os.SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda0` | framework vibrator API |
| `android.os.SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda1` | framework vibrator API |
| `android.os.SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda2` | framework vibrator API |
| `android.os.SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda3` | framework vibrator API |
| `android.os.SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda4` | framework vibrator API |
| `android.os.SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda5` | framework vibrator API |
| `android.os.SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda6` | framework vibrator API |
| `android.os.SystemVibrator$NoVibratorInfo` | framework vibrator API |
| `android.os.VibrationEffectStub` | MIUI extension stub |
| `android.os.VibratorStub` | MIUI extension stub |
| `android.util.HapticFeedbackUtilStub` | MIUI extension stub |
| `android.util.HapticFeedbackUtilStub$SingletonHolder` | MIUI extension stub |
| `com.android.server.vibrator.DeviceVibrationEffectAdapter` | vibrator system service |
| `com.android.server.vibrator.Vibration$DebugInfo` | vibrator system service |
| `com.android.server.vibrator.Vibration$Status` | vibrator system service |
| `com.android.server.vibrator.VibrationEffectAdapters` | vibrator system service |
| `com.android.server.vibrator.VibrationEffectAdapters$EffectAdapter` | vibrator system service |
| `com.android.server.vibrator.VibrationEffectAdapters$SegmentsAdapter` | vibrator system service |
| `com.android.server.vibrator.VibrationScaler$ScaleLevel` | vibrator system service |
| `com.android.server.vibrator.VibrationSettings$1` | vibrator system service |
| `com.android.server.vibrator.VibrationSettings$SettingsBroadcastReceiver` | vibrator system service |
| `com.android.server.vibrator.VibrationSettings$UidObserver` | vibrator system service |
| `com.android.server.vibrator.VibratorController$OnVibrationCompleteListener` | vibrator system service |
| `com.android.server.vibrator.VibratorManagerService$ExternalVibrationHolder` | vibrator system service |
| `com.android.server.vibrator.VibratorManagerService$ExternalVibrationHolder-IA` | vibrator system service |
| `com.android.server.vibrator.VibratorManagerService$OnSyncedVibrationCompleteListener` | vibrator system service |
| `com.android.server.vibrator.VibratorManagerService$VibrationCompleteListener` | vibrator system service |
| `com.android.server.vibrator.VibratorManagerService$VibrationThreadCallbacks-IA` | vibrator system service |
| `com.android.server.vibrator.VibratorManagerService$VibratorManagerShellCommand-IA` | vibrator system service |
| `com.android.server.vibrator.VibratorManagerServiceStub` | MIUI extension stub |

## Classes present only in Android 16

These are part of the rewritten A16 vibrator stack (AIDL HAL v3, vendor vibration sessions, PWLE v2, new public feedback constants). They were kept intact by the port.

| Package group | New classes |
|---|---:|
| `android.frameworks.vibrator` | 10 |
| `android.hardware.vibrator (HAL)` | 14 |
| `android.media.VibrationUtils` | 1 |
| `android.os.CombinedVibration$Sequential$$ExternalSyntheticLambda0` | 1 |
| `android.os.CombinedVibration$Sequential$$ExternalSyntheticLambda1` | 1 |
| `android.os.CombinedVibration$Stereo$$ExternalSyntheticLambda0` | 1 |
| `android.os.CombinedVibration$Stereo$$ExternalSyntheticLambda1` | 1 |
| `android.os.CombinedVibration$VibratorAdapter` | 1 |
| `android.os.ExternalVibrationScale` | 1 |
| `android.os.ExternalVibrationScale$1` | 1 |
| `android.os.ExternalVibrationScale$ScaleLevel` | 1 |
| `android.os.SystemVibrator$$ExternalSyntheticLambda0` | 1 |
| `android.os.SystemVibrator$$ExternalSyntheticLambda1` | 1 |
| `android.os.SystemVibrator$MultiVibratorStateListener` | 1 |
| `android.os.SystemVibrator$MultiVibratorStateListener$$ExternalSyntheticLambda0` | 1 |
| `android.os.SystemVibratorManager$VendorVibrationSessionCallbackDelegate` | 1 |
| `android.os.SystemVibratorManager$VendorVibrationSessionCallbackDelegate$$ExternalSyntheticLambda0` | 1 |
| `android.os.SystemVibratorManager$VendorVibrationSessionCallbackDelegate$$ExternalSyntheticLambda1` | 1 |
| `android.os.SystemVibratorManager$VendorVibrationSessionCallbackDelegate$$ExternalSyntheticLambda2` | 1 |
| `android.os.VibrationEffect$BasicEnvelopeBuilder` | 1 |
| `android.os.VibrationEffect$Composed$$ExternalSyntheticLambda0` | 1 |
| `android.os.VibrationEffect$Composed$$ExternalSyntheticLambda1` | 1 |
| `android.os.VibrationEffect$Composed$$ExternalSyntheticLambda2` | 1 |
| `android.os.VibrationEffect$Composed$$ExternalSyntheticLambda3` | 1 |
| `android.os.VibrationEffect$Composed$$ExternalSyntheticLambda4` | 1 |
| `android.os.VibrationEffect$Composed$$ExternalSyntheticLambda5` | 1 |
| `android.os.VibrationEffect$Composition$DelayType` | 1 |
| `android.os.VibrationEffect$Transformation` | 1 |
| `android.os.VibrationEffect$VendorEffect` | 1 |
| `android.os.VibrationEffect$VendorEffect$1` | 1 |
| `android.os.VibrationEffect$WaveformEnvelopeBuilder` | 1 |
| `android.os.Vibrator$$ExternalSyntheticLambda0` | 1 |
| `android.os.VibratorInfo$FrequencyProfileLegacy` | 1 |
| `android.os.VibratorInfo$FrequencyProfileLegacy$1` | 1 |
| `android.os.vibrator` | 47 |
| `android.view.HapticFeedbackConstants$FeedbackConstant` | 1 |
| `android.view.HapticFeedbackConstants$Flags` | 1 |
| `android.view.HapticFeedbackConstants$PrivateFlags` | 1 |
| `android.view.HapticScrollFeedbackProvider` | 1 |
| `com.android.internal` | 69 |
| `com.android.server.accessibility` | 3 |
| `com.android.server.vibrator` | 84 |

## Haptic API consumers

Consumers are classes inside the supplied jars that invoke a haptic/vibration API. SystemUI, Launcher, Settings and third-party apps are **not** inside `framework.jar`/`services.jar`; they use the public API surface listed in `02-architecture-and-differences.md`.

### android13 (198 consumers)

| Package group | Consumers |
|---|---:|
| `android.hardware.vibrator (HAL)` | 38 |
| `com.android.server.vibrator` | 36 |
| `android.hardware.input` | 9 |
| `android.os.vibrator` | 8 |
| `com.android.server.notification` | 6 |
| `com.android.server.policy` | 3 |
| `com.android.internal` | 2 |
| `com.android.server.input` | 2 |
| `com.android.server.power` | 2 |
| `android.app.SystemServiceRegistry` | 1 |
| `android.app.SystemServiceRegistry$55` | 1 |
| `android.app.SystemServiceRegistry$56` | 1 |
| `android.media.AudioSystem` | 1 |
| `android.media.AudioVibratorInfo` | 1 |
| `android.media.AudioVibratorInfo$1` | 1 |
| `android.media.Ringtone` | 1 |
| `android.media.audiofx` | 1 |
| `android.os.CombinedVibration` | 1 |
| `android.os.CombinedVibration$1` | 1 |
| `android.os.CombinedVibration$Mono` | 1 |
| `android.os.CombinedVibration$Mono$1` | 1 |
| `android.os.CombinedVibration$ParallelCombination` | 1 |
| `android.os.CombinedVibration$Sequential` | 1 |
| `android.os.CombinedVibration$Sequential$1` | 1 |
| `android.os.CombinedVibration$SequentialCombination` | 1 |
| `android.os.CombinedVibration$Stereo` | 1 |
| `android.os.CombinedVibration$Stereo$1` | 1 |
| `android.os.CombinedVibrationStub` | 1 |
| `android.os.ExternalVibration` | 1 |
| `android.os.ExternalVibration$1` | 1 |
| `android.os.ExternalVibration-IA` | 1 |
| `android.os.IExternalVibrationController` | 1 |
| `android.os.IExternalVibrationController$Default` | 1 |
| `android.os.IExternalVibrationController$Stub` | 1 |
| `android.os.IExternalVibrationController$Stub$Proxy` | 1 |
| `android.os.IExternalVibratorService` | 1 |
| `android.os.IExternalVibratorService$Default` | 1 |
| `android.os.IExternalVibratorService$Stub` | 1 |
| `android.os.IExternalVibratorService$Stub$Proxy` | 1 |
| `android.os.IVibratorManagerService` | 1 |
| `android.os.IVibratorManagerService$Default` | 1 |
| `android.os.IVibratorManagerService$Stub` | 1 |
| `android.os.IVibratorManagerService$Stub$Proxy` | 1 |
| `android.os.IVibratorStateListener` | 1 |
| `android.os.IVibratorStateListener$Default` | 1 |
| `android.os.IVibratorStateListener$Stub` | 1 |
| `android.os.IVibratorStateListener$Stub$Proxy` | 1 |
| `android.os.NullVibrator` | 1 |
| `android.os.SystemVibrator` | 1 |
| `android.os.SystemVibrator$AllVibratorsStateListener` | 1 |
| `android.os.SystemVibrator$AllVibratorsStateListener$$ExternalSyntheticLambda0` | 1 |
| `android.os.SystemVibrator$MultiVibratorInfo` | 1 |
| `android.os.SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda0` | 1 |
| `android.os.SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda1` | 1 |
| `android.os.SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda2` | 1 |
| `android.os.SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda3` | 1 |
| `android.os.SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda4` | 1 |
| `android.os.SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda5` | 1 |
| `android.os.SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda6` | 1 |
| `android.os.SystemVibrator$NoVibratorInfo` | 1 |
| `android.os.SystemVibrator$SingleVibratorStateListener` | 1 |
| `android.os.SystemVibratorManager` | 1 |
| `android.os.SystemVibratorManager$OnVibratorStateChangedListenerDelegate` | 1 |
| `android.os.SystemVibratorManager$OnVibratorStateChangedListenerDelegate$$ExternalSyntheticLambda0` | 1 |
| `android.os.SystemVibratorManager$SingleVibrator` | 1 |
| `android.os.VibrationAttributes` | 1 |
| `android.os.VibrationAttributes$1` | 1 |
| `android.os.VibrationAttributes$Builder` | 1 |
| `android.os.VibrationAttributes$Flag` | 1 |
| `android.os.VibrationAttributes$Usage` | 1 |
| `android.os.VibrationAttributes$UsageClass` | 1 |
| `android.os.VibrationAttributes-IA` | 1 |
| `android.os.VibrationEffect` | 1 |
| `android.os.VibrationEffect$1` | 1 |
| `android.os.VibrationEffect$AmplitudeVibrationParameter` | 1 |
| `android.os.VibrationEffect$Composed` | 1 |
| `android.os.VibrationEffect$Composed$1` | 1 |
| `android.os.VibrationEffect$Composition` | 1 |
| `android.os.VibrationEffect$Composition$PrimitiveType` | 1 |
| `android.os.VibrationEffect$Composition$UnreachableAfterRepeatingIndefinitelyException` | 1 |
| `android.os.VibrationEffect$EffectType` | 1 |
| `android.os.VibrationEffect$FrequencyVibrationParameter` | 1 |
| `android.os.VibrationEffect$VibrationParameter` | 1 |
| `android.os.VibrationEffect$WaveformBuilder` | 1 |
| `android.os.VibrationEffectStub` | 1 |
| `android.os.Vibrator` | 1 |
| `android.os.Vibrator$OnVibratorStateChangedListener` | 1 |
| `android.os.Vibrator$VibrationEffectSupport` | 1 |
| `android.os.Vibrator$VibrationIntensity` | 1 |
| `android.os.VibratorInfo` | 1 |
| `android.os.VibratorInfo$1` | 1 |
| `android.os.VibratorInfo$Builder` | 1 |
| `android.os.VibratorInfo$FrequencyProfile` | 1 |
| `android.os.VibratorInfo$FrequencyProfile$1` | 1 |
| `android.os.VibratorManager` | 1 |
| `android.os.VibratorStub` | 1 |
| `android.view.HapticFeedbackConstants` | 1 |
| `android.view.InputDevice` | 1 |
| `com.android.server.GestureLauncherService` | 1 |
| `com.android.server.audio` | 1 |
| `com.android.server.biometrics` | 1 |

### android16 (300 consumers)

| Package group | Consumers |
|---|---:|
| `com.android.server.vibrator` | 66 |
| `android.os.vibrator` | 52 |
| `android.hardware.vibrator (HAL)` | 18 |
| `com.android.internal` | 18 |
| `android.hardware.input` | 10 |
| `com.android.server.notification` | 6 |
| `com.android.server.power` | 3 |
| `com.android.server.accessibility` | 2 |
| `com.android.server.input` | 2 |
| `com.android.server.policy` | 2 |
| `android.app.NotificationChannel` | 1 |
| `android.app.SystemServiceRegistry` | 1 |
| `android.app.SystemServiceRegistry$57` | 1 |
| `android.app.SystemServiceRegistry$58` | 1 |
| `android.frameworks.vibrator` | 1 |
| `android.media.AudioSystem` | 1 |
| `android.media.AudioVibratorInfo` | 1 |
| `android.media.AudioVibratorInfo$1` | 1 |
| `android.media.Ringtone` | 1 |
| `android.media.Utils` | 1 |
| `android.media.VibrationUtils` | 1 |
| `android.media.audiofx` | 1 |
| `android.os.CombinedVibration` | 1 |
| `android.os.CombinedVibration$1` | 1 |
| `android.os.CombinedVibration$Mono` | 1 |
| `android.os.CombinedVibration$Mono$1` | 1 |
| `android.os.CombinedVibration$ParallelCombination` | 1 |
| `android.os.CombinedVibration$Sequential` | 1 |
| `android.os.CombinedVibration$Sequential$$ExternalSyntheticLambda0` | 1 |
| `android.os.CombinedVibration$Sequential$$ExternalSyntheticLambda1` | 1 |
| `android.os.CombinedVibration$Sequential$1` | 1 |
| `android.os.CombinedVibration$SequentialCombination` | 1 |
| `android.os.CombinedVibration$Stereo` | 1 |
| `android.os.CombinedVibration$Stereo$$ExternalSyntheticLambda0` | 1 |
| `android.os.CombinedVibration$Stereo$$ExternalSyntheticLambda1` | 1 |
| `android.os.CombinedVibration$Stereo$1` | 1 |
| `android.os.CombinedVibration$VibratorAdapter` | 1 |
| `android.os.ExternalVibration` | 1 |
| `android.os.ExternalVibration$1` | 1 |
| `android.os.ExternalVibration-IA` | 1 |
| `android.os.ExternalVibrationScale` | 1 |
| `android.os.ExternalVibrationScale$1` | 1 |
| `android.os.ExternalVibrationScale$ScaleLevel` | 1 |
| `android.os.IExternalVibrationController` | 1 |
| `android.os.IExternalVibrationController$Default` | 1 |
| `android.os.IExternalVibrationController$Stub` | 1 |
| `android.os.IExternalVibrationController$Stub$Proxy` | 1 |
| `android.os.IExternalVibratorService` | 1 |
| `android.os.IExternalVibratorService$Default` | 1 |
| `android.os.IExternalVibratorService$Stub` | 1 |
| `android.os.IExternalVibratorService$Stub$Proxy` | 1 |
| `android.os.IVibratorManagerService` | 1 |
| `android.os.IVibratorManagerService$Default` | 1 |
| `android.os.IVibratorManagerService$Stub` | 1 |
| `android.os.IVibratorManagerService$Stub$Proxy` | 1 |
| `android.os.IVibratorStateListener` | 1 |
| `android.os.IVibratorStateListener$Default` | 1 |
| `android.os.IVibratorStateListener$Stub` | 1 |
| `android.os.IVibratorStateListener$Stub$Proxy` | 1 |
| `android.os.NullVibrator` | 1 |
| `android.os.SystemVibrator` | 1 |
| `android.os.SystemVibrator$$ExternalSyntheticLambda0` | 1 |
| `android.os.SystemVibrator$$ExternalSyntheticLambda1` | 1 |
| `android.os.SystemVibrator$MultiVibratorStateListener` | 1 |
| `android.os.SystemVibrator$MultiVibratorStateListener$$ExternalSyntheticLambda0` | 1 |
| `android.os.SystemVibrator$SingleVibratorStateListener` | 1 |
| `android.os.SystemVibratorManager` | 1 |
| `android.os.SystemVibratorManager$OnVibratorStateChangedListenerDelegate` | 1 |
| `android.os.SystemVibratorManager$OnVibratorStateChangedListenerDelegate$$ExternalSyntheticLambda0` | 1 |
| `android.os.SystemVibratorManager$SingleVibrator` | 1 |
| `android.os.SystemVibratorManager$VendorVibrationSessionCallbackDelegate` | 1 |
| `android.os.SystemVibratorManager$VendorVibrationSessionCallbackDelegate$$ExternalSyntheticLambda0` | 1 |
| `android.os.SystemVibratorManager$VendorVibrationSessionCallbackDelegate$$ExternalSyntheticLambda1` | 1 |
| `android.os.SystemVibratorManager$VendorVibrationSessionCallbackDelegate$$ExternalSyntheticLambda2` | 1 |
| `android.os.VibrationAttributes` | 1 |
| `android.os.VibrationAttributes$1` | 1 |
| `android.os.VibrationAttributes$Builder` | 1 |
| `android.os.VibrationAttributes$Flag` | 1 |
| `android.os.VibrationAttributes$Usage` | 1 |
| `android.os.VibrationAttributes$UsageClass` | 1 |
| `android.os.VibrationAttributes-IA` | 1 |
| `android.os.VibrationEffect` | 1 |
| `android.os.VibrationEffect$1` | 1 |
| `android.os.VibrationEffect$AmplitudeVibrationParameter` | 1 |
| `android.os.VibrationEffect$BasicEnvelopeBuilder` | 1 |
| `android.os.VibrationEffect$Composed` | 1 |
| `android.os.VibrationEffect$Composed$$ExternalSyntheticLambda0` | 1 |
| `android.os.VibrationEffect$Composed$$ExternalSyntheticLambda1` | 1 |
| `android.os.VibrationEffect$Composed$$ExternalSyntheticLambda2` | 1 |
| `android.os.VibrationEffect$Composed$$ExternalSyntheticLambda3` | 1 |
| `android.os.VibrationEffect$Composed$$ExternalSyntheticLambda4` | 1 |
| `android.os.VibrationEffect$Composed$$ExternalSyntheticLambda5` | 1 |
| `android.os.VibrationEffect$Composed$1` | 1 |
| `android.os.VibrationEffect$Composition` | 1 |
| `android.os.VibrationEffect$Composition$DelayType` | 1 |
| `android.os.VibrationEffect$Composition$PrimitiveType` | 1 |
| `android.os.VibrationEffect$Composition$UnreachableAfterRepeatingIndefinitelyException` | 1 |
| `android.os.VibrationEffect$EffectType` | 1 |
| `android.os.VibrationEffect$FrequencyVibrationParameter` | 1 |
| `android.os.VibrationEffect$Transformation` | 1 |
| `android.os.VibrationEffect$VendorEffect` | 1 |
| `android.os.VibrationEffect$VendorEffect$1` | 1 |
| `android.os.VibrationEffect$VibrationParameter` | 1 |
| `android.os.VibrationEffect$WaveformBuilder` | 1 |
| `android.os.VibrationEffect$WaveformEnvelopeBuilder` | 1 |
| `android.os.Vibrator` | 1 |
| `android.os.Vibrator$$ExternalSyntheticLambda0` | 1 |
| `android.os.Vibrator$OnVibratorStateChangedListener` | 1 |
| `android.os.Vibrator$VibrationEffectSupport` | 1 |
| `android.os.Vibrator$VibrationIntensity` | 1 |
| `android.os.VibratorInfo` | 1 |
| `android.os.VibratorInfo$1` | 1 |
| `android.os.VibratorInfo$Builder` | 1 |
| `android.os.VibratorInfo$FrequencyProfile` | 1 |
| `android.os.VibratorInfo$FrequencyProfile$1` | 1 |
| `android.os.VibratorInfo$FrequencyProfileLegacy` | 1 |
| `android.os.VibratorInfo$FrequencyProfileLegacy$1` | 1 |
| `android.os.VibratorManager` | 1 |
| `android.view.HapticFeedbackConstants` | 1 |
| `android.view.HapticFeedbackConstants$FeedbackConstant` | 1 |
| `android.view.HapticFeedbackConstants$Flags` | 1 |
| `android.view.HapticFeedbackConstants$PrivateFlags` | 1 |
| `android.view.HapticScrollFeedbackProvider` | 1 |
| `android.view.InputDevice` | 1 |
| `android.view.ScrollFeedbackProvider` | 1 |
| `android.view.View` | 1 |
| `android.view.ViewRootImpl` | 1 |
| `android.widget.AbsListView` | 1 |
| `android.widget.ScrollView` | 1 |
| `com.android.server.audio` | 1 |
| `com.android.server.biometrics` | 1 |

### Android 13 consumer classes

- `android.app.SystemServiceRegistry`
- `android.app.SystemServiceRegistry$55`
- `android.app.SystemServiceRegistry$56`
- `android.hardware.input.IInputManager`
- `android.hardware.input.IInputManager$Default`
- `android.hardware.input.IInputManager$Stub`
- `android.hardware.input.IInputManager$Stub$Proxy`
- `android.hardware.input.InputDeviceVibrator`
- `android.hardware.input.InputDeviceVibrator$OnVibratorStateChangedListenerDelegate`
- `android.hardware.input.InputDeviceVibrator$OnVibratorStateChangedListenerDelegate$$ExternalSyntheticLambda0`
- `android.hardware.input.InputDeviceVibratorManager`
- `android.hardware.input.InputManager`
- `android.hardware.vibrator.IVibrator`
- `android.hardware.vibrator.IVibrator$Default`
- `android.hardware.vibrator.IVibrator$Stub`
- `android.hardware.vibrator.IVibrator$Stub$Proxy`
- `android.hardware.vibrator.IVibratorCallback`
- `android.hardware.vibrator.IVibratorCallback$Default`
- `android.hardware.vibrator.IVibratorCallback$Stub`
- `android.hardware.vibrator.IVibratorCallback$Stub$Proxy`
- `android.hardware.vibrator.IVibratorManager`
- `android.hardware.vibrator.IVibratorManager$Default`
- `android.hardware.vibrator.IVibratorManager$Stub`
- `android.hardware.vibrator.IVibratorManager$Stub$Proxy`
- `android.hardware.vibrator.V1_0.IVibrator`
- `android.hardware.vibrator.V1_0.IVibrator$Proxy`
- `android.hardware.vibrator.V1_0.IVibrator$Stub`
- `android.hardware.vibrator.V1_0.IVibrator$Stub$1`
- `android.hardware.vibrator.V1_0.IVibrator$performCallback`
- `android.hardware.vibrator.V1_1.IVibrator`
- `android.hardware.vibrator.V1_1.IVibrator$Proxy`
- `android.hardware.vibrator.V1_1.IVibrator$Stub`
- `android.hardware.vibrator.V1_1.IVibrator$Stub$1`
- `android.hardware.vibrator.V1_1.IVibrator$Stub$2`
- `android.hardware.vibrator.V1_1.IVibrator$perform_1_1Callback`
- `android.hardware.vibrator.V1_2.IVibrator`
- `android.hardware.vibrator.V1_2.IVibrator$Proxy`
- `android.hardware.vibrator.V1_2.IVibrator$Stub`
- `android.hardware.vibrator.V1_2.IVibrator$Stub$1`
- `android.hardware.vibrator.V1_2.IVibrator$Stub$2`
- `android.hardware.vibrator.V1_2.IVibrator$Stub$3`
- `android.hardware.vibrator.V1_2.IVibrator$perform_1_2Callback`
- `android.hardware.vibrator.V1_3.IVibrator`
- `android.hardware.vibrator.V1_3.IVibrator$Proxy`
- `android.hardware.vibrator.V1_3.IVibrator$Stub`
- `android.hardware.vibrator.V1_3.IVibrator$Stub$1`
- `android.hardware.vibrator.V1_3.IVibrator$Stub$2`
- `android.hardware.vibrator.V1_3.IVibrator$Stub$3`
- `android.hardware.vibrator.V1_3.IVibrator$Stub$4`
- `android.hardware.vibrator.V1_3.IVibrator$perform_1_3Callback`
- `android.media.AudioSystem`
- `android.media.AudioVibratorInfo`
- `android.media.AudioVibratorInfo$1`
- `android.media.Ringtone`
- `android.media.audiofx.HapticGenerator`
- `android.os.CombinedVibration`
- `android.os.CombinedVibration$1`
- `android.os.CombinedVibration$Mono`
- `android.os.CombinedVibration$Mono$1`
- `android.os.CombinedVibration$ParallelCombination`
- `android.os.CombinedVibration$Sequential`
- `android.os.CombinedVibration$Sequential$1`
- `android.os.CombinedVibration$SequentialCombination`
- `android.os.CombinedVibration$Stereo`
- `android.os.CombinedVibration$Stereo$1`
- `android.os.CombinedVibrationStub`
- `android.os.ExternalVibration`
- `android.os.ExternalVibration$1`
- `android.os.ExternalVibration-IA`
- `android.os.IExternalVibrationController`
- `android.os.IExternalVibrationController$Default`
- `android.os.IExternalVibrationController$Stub`
- `android.os.IExternalVibrationController$Stub$Proxy`
- `android.os.IExternalVibratorService`
- `android.os.IExternalVibratorService$Default`
- `android.os.IExternalVibratorService$Stub`
- `android.os.IExternalVibratorService$Stub$Proxy`
- `android.os.IVibratorManagerService`
- `android.os.IVibratorManagerService$Default`
- `android.os.IVibratorManagerService$Stub`
- `android.os.IVibratorManagerService$Stub$Proxy`
- `android.os.IVibratorStateListener`
- `android.os.IVibratorStateListener$Default`
- `android.os.IVibratorStateListener$Stub`
- `android.os.IVibratorStateListener$Stub$Proxy`
- `android.os.NullVibrator`
- `android.os.SystemVibrator`
- `android.os.SystemVibrator$AllVibratorsStateListener`
- `android.os.SystemVibrator$AllVibratorsStateListener$$ExternalSyntheticLambda0`
- `android.os.SystemVibrator$MultiVibratorInfo`
- `android.os.SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda0`
- `android.os.SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda1`
- `android.os.SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda2`
- `android.os.SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda3`
- `android.os.SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda4`
- `android.os.SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda5`
- `android.os.SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda6`
- `android.os.SystemVibrator$NoVibratorInfo`
- `android.os.SystemVibrator$SingleVibratorStateListener`
- `android.os.SystemVibratorManager`
- `android.os.SystemVibratorManager$OnVibratorStateChangedListenerDelegate`
- `android.os.SystemVibratorManager$OnVibratorStateChangedListenerDelegate$$ExternalSyntheticLambda0`
- `android.os.SystemVibratorManager$SingleVibrator`
- `android.os.VibrationAttributes`
- `android.os.VibrationAttributes$1`
- `android.os.VibrationAttributes$Builder`
- `android.os.VibrationAttributes$Flag`
- `android.os.VibrationAttributes$Usage`
- `android.os.VibrationAttributes$UsageClass`
- `android.os.VibrationAttributes-IA`
- `android.os.VibrationEffect`
- `android.os.VibrationEffect$1`
- `android.os.VibrationEffect$AmplitudeVibrationParameter`
- `android.os.VibrationEffect$Composed`
- `android.os.VibrationEffect$Composed$1`
- `android.os.VibrationEffect$Composition`
- `android.os.VibrationEffect$Composition$PrimitiveType`
- `android.os.VibrationEffect$Composition$UnreachableAfterRepeatingIndefinitelyException`
- `android.os.VibrationEffect$EffectType`
- `android.os.VibrationEffect$FrequencyVibrationParameter`
- `android.os.VibrationEffect$VibrationParameter`
- `android.os.VibrationEffect$WaveformBuilder`
- `android.os.VibrationEffectStub`
- `android.os.Vibrator`
- `android.os.Vibrator$OnVibratorStateChangedListener`
- `android.os.Vibrator$VibrationEffectSupport`
- `android.os.Vibrator$VibrationIntensity`
- `android.os.VibratorInfo`
- `android.os.VibratorInfo$1`
- `android.os.VibratorInfo$Builder`
- `android.os.VibratorInfo$FrequencyProfile`
- `android.os.VibratorInfo$FrequencyProfile$1`
- `android.os.VibratorManager`
- `android.os.VibratorStub`
- `android.os.vibrator.PrebakedSegment`
- `android.os.vibrator.PrimitiveSegment`
- `android.os.vibrator.RampSegment`
- `android.os.vibrator.StepSegment`
- `android.os.vibrator.VibrationConfig`
- `android.os.vibrator.VibrationEffectSegment`
- `android.os.vibrator.VibrationEffectSegment$1`
- `android.os.vibrator.VibratorFrequencyProfile`
- `android.view.HapticFeedbackConstants`
- `android.view.InputDevice`
- `com.android.internal.accessibility.AccessibilityShortcutController`
- `com.android.internal.widget.SlidingTab`
- `com.android.server.GestureLauncherService`
- `com.android.server.audio.AudioService`
- `com.android.server.biometrics.sensors.AcquisitionClient`
- `com.android.server.input.InputManagerService`
- `com.android.server.input.InputManagerService$VibrationInfo`
- `com.android.server.notification.NotificationIntrusivenessExtractor`
- `com.android.server.notification.NotificationManagerService`
- `com.android.server.notification.NotificationManagerService$$ExternalSyntheticLambda3`
- `com.android.server.notification.NotificationManagerServiceStub`
- `com.android.server.notification.NotificationRecord`
- `com.android.server.notification.VibratorHelper`
- `com.android.server.policy.LegacyGlobalActions`
- `com.android.server.policy.PhoneWindowManager`
- `com.android.server.policy.PhoneWindowManagerStub`
- `com.android.server.power.Notifier`
- `com.android.server.power.ShutdownThread`
- `com.android.server.vibrator.AbstractVibratorStep`
- `com.android.server.vibrator.ClippingAmplitudeAndFrequencyAdapter`
- `com.android.server.vibrator.CompleteEffectVibratorStep`
- `com.android.server.vibrator.ComposePrimitivesVibratorStep`
- `com.android.server.vibrator.ComposePwleVibratorStep`
- `com.android.server.vibrator.DeviceVibrationEffectAdapter`
- `com.android.server.vibrator.InputDeviceDelegate`
- `com.android.server.vibrator.PerformPrebakedVibratorStep`
- `com.android.server.vibrator.RampDownAdapter`
- `com.android.server.vibrator.RampOffVibratorStep`
- `com.android.server.vibrator.RampToStepAdapter`
- `com.android.server.vibrator.SetAmplitudeVibratorStep`
- `com.android.server.vibrator.StartSequentialEffectStep`
- `com.android.server.vibrator.StartSequentialEffectStep$DeviceEffectMap`
- `com.android.server.vibrator.StepToRampAdapter`
- `com.android.server.vibrator.TurnOffVibratorStep`
- `com.android.server.vibrator.Vibration`
- `com.android.server.vibrator.Vibration$DebugInfo`
- `com.android.server.vibrator.VibrationEffectAdapters`
- `com.android.server.vibrator.VibrationEffectAdapters$EffectAdapter`
- `com.android.server.vibrator.VibrationEffectAdapters$SegmentsAdapter`
- `com.android.server.vibrator.VibrationScaler`
- `com.android.server.vibrator.VibrationSettings`
- `com.android.server.vibrator.VibrationStepConductor`
- `com.android.server.vibrator.VibratorController`
- `com.android.server.vibrator.VibratorController$$ExternalSyntheticLambda0`
- `com.android.server.vibrator.VibratorController$NativeWrapper`
- `com.android.server.vibrator.VibratorManagerService`
- `com.android.server.vibrator.VibratorManagerService$$ExternalSyntheticLambda2`
- `com.android.server.vibrator.VibratorManagerService$$ExternalSyntheticLambda3`
- `com.android.server.vibrator.VibratorManagerService$AlwaysOnVibration`
- `com.android.server.vibrator.VibratorManagerService$ExternalVibrationHolder`
- `com.android.server.vibrator.VibratorManagerService$ExternalVibratorService`
- `com.android.server.vibrator.VibratorManagerService$VibratorManagerRecords`
- `com.android.server.vibrator.VibratorManagerService$VibratorManagerShellCommand`
- `com.android.server.vibrator.VibratorManagerServiceStub`

### Android 16 consumer classes

- `android.app.NotificationChannel`
- `android.app.SystemServiceRegistry`
- `android.app.SystemServiceRegistry$57`
- `android.app.SystemServiceRegistry$58`
- `android.frameworks.vibrator.VibrationParam`
- `android.hardware.input.IInputManager`
- `android.hardware.input.IInputManager$Default`
- `android.hardware.input.IInputManager$Stub`
- `android.hardware.input.IInputManager$Stub$Proxy`
- `android.hardware.input.InputDeviceVibrator`
- `android.hardware.input.InputDeviceVibrator$OnVibratorStateChangedListenerDelegate`
- `android.hardware.input.InputDeviceVibrator$OnVibratorStateChangedListenerDelegate$$ExternalSyntheticLambda0`
- `android.hardware.input.InputDeviceVibratorManager`
- `android.hardware.input.InputManager`
- `android.hardware.input.InputManagerGlobal`
- `android.hardware.vibrator.IVibrationSession`
- `android.hardware.vibrator.IVibrationSession$Default`
- `android.hardware.vibrator.IVibrationSession$Stub`
- `android.hardware.vibrator.IVibrationSession$Stub$Proxy`
- `android.hardware.vibrator.IVibrator`
- `android.hardware.vibrator.IVibrator$Default`
- `android.hardware.vibrator.IVibrator$Stub`
- `android.hardware.vibrator.IVibrator$Stub$Proxy`
- `android.hardware.vibrator.IVibratorCallback`
- `android.hardware.vibrator.IVibratorCallback$Default`
- `android.hardware.vibrator.IVibratorCallback$Stub`
- `android.hardware.vibrator.IVibratorCallback$Stub$Proxy`
- `android.hardware.vibrator.IVibratorManager`
- `android.hardware.vibrator.IVibratorManager$Default`
- `android.hardware.vibrator.IVibratorManager$Stub`
- `android.hardware.vibrator.IVibratorManager$Stub$Proxy`
- `android.hardware.vibrator.VibrationSessionConfig`
- `android.hardware.vibrator.VibrationSessionConfig$1`
- `android.media.AudioSystem`
- `android.media.AudioVibratorInfo`
- `android.media.AudioVibratorInfo$1`
- `android.media.Ringtone`
- `android.media.Utils`
- `android.media.VibrationUtils`
- `android.media.audiofx.HapticGenerator`
- `android.os.CombinedVibration`
- `android.os.CombinedVibration$1`
- `android.os.CombinedVibration$Mono`
- `android.os.CombinedVibration$Mono$1`
- `android.os.CombinedVibration$ParallelCombination`
- `android.os.CombinedVibration$Sequential`
- `android.os.CombinedVibration$Sequential$$ExternalSyntheticLambda0`
- `android.os.CombinedVibration$Sequential$$ExternalSyntheticLambda1`
- `android.os.CombinedVibration$Sequential$1`
- `android.os.CombinedVibration$SequentialCombination`
- `android.os.CombinedVibration$Stereo`
- `android.os.CombinedVibration$Stereo$$ExternalSyntheticLambda0`
- `android.os.CombinedVibration$Stereo$$ExternalSyntheticLambda1`
- `android.os.CombinedVibration$Stereo$1`
- `android.os.CombinedVibration$VibratorAdapter`
- `android.os.ExternalVibration`
- `android.os.ExternalVibration$1`
- `android.os.ExternalVibration-IA`
- `android.os.ExternalVibrationScale`
- `android.os.ExternalVibrationScale$1`
- `android.os.ExternalVibrationScale$ScaleLevel`
- `android.os.IExternalVibrationController`
- `android.os.IExternalVibrationController$Default`
- `android.os.IExternalVibrationController$Stub`
- `android.os.IExternalVibrationController$Stub$Proxy`
- `android.os.IExternalVibratorService`
- `android.os.IExternalVibratorService$Default`
- `android.os.IExternalVibratorService$Stub`
- `android.os.IExternalVibratorService$Stub$Proxy`
- `android.os.IVibratorManagerService`
- `android.os.IVibratorManagerService$Default`
- `android.os.IVibratorManagerService$Stub`
- `android.os.IVibratorManagerService$Stub$Proxy`
- `android.os.IVibratorStateListener`
- `android.os.IVibratorStateListener$Default`
- `android.os.IVibratorStateListener$Stub`
- `android.os.IVibratorStateListener$Stub$Proxy`
- `android.os.NullVibrator`
- `android.os.SystemVibrator`
- `android.os.SystemVibrator$$ExternalSyntheticLambda0`
- `android.os.SystemVibrator$$ExternalSyntheticLambda1`
- `android.os.SystemVibrator$MultiVibratorStateListener`
- `android.os.SystemVibrator$MultiVibratorStateListener$$ExternalSyntheticLambda0`
- `android.os.SystemVibrator$SingleVibratorStateListener`
- `android.os.SystemVibratorManager`
- `android.os.SystemVibratorManager$OnVibratorStateChangedListenerDelegate`
- `android.os.SystemVibratorManager$OnVibratorStateChangedListenerDelegate$$ExternalSyntheticLambda0`
- `android.os.SystemVibratorManager$SingleVibrator`
- `android.os.SystemVibratorManager$VendorVibrationSessionCallbackDelegate`
- `android.os.SystemVibratorManager$VendorVibrationSessionCallbackDelegate$$ExternalSyntheticLambda0`
- `android.os.SystemVibratorManager$VendorVibrationSessionCallbackDelegate$$ExternalSyntheticLambda1`
- `android.os.SystemVibratorManager$VendorVibrationSessionCallbackDelegate$$ExternalSyntheticLambda2`
- `android.os.VibrationAttributes`
- `android.os.VibrationAttributes$1`
- `android.os.VibrationAttributes$Builder`
- `android.os.VibrationAttributes$Flag`
- `android.os.VibrationAttributes$Usage`
- `android.os.VibrationAttributes$UsageClass`
- `android.os.VibrationAttributes-IA`
- `android.os.VibrationEffect`
- `android.os.VibrationEffect$1`
- `android.os.VibrationEffect$AmplitudeVibrationParameter`
- `android.os.VibrationEffect$BasicEnvelopeBuilder`
- `android.os.VibrationEffect$Composed`
- `android.os.VibrationEffect$Composed$$ExternalSyntheticLambda0`
- `android.os.VibrationEffect$Composed$$ExternalSyntheticLambda1`
- `android.os.VibrationEffect$Composed$$ExternalSyntheticLambda2`
- `android.os.VibrationEffect$Composed$$ExternalSyntheticLambda3`
- `android.os.VibrationEffect$Composed$$ExternalSyntheticLambda4`
- `android.os.VibrationEffect$Composed$$ExternalSyntheticLambda5`
- `android.os.VibrationEffect$Composed$1`
- `android.os.VibrationEffect$Composition`
- `android.os.VibrationEffect$Composition$DelayType`
- `android.os.VibrationEffect$Composition$PrimitiveType`
- `android.os.VibrationEffect$Composition$UnreachableAfterRepeatingIndefinitelyException`
- `android.os.VibrationEffect$EffectType`
- `android.os.VibrationEffect$FrequencyVibrationParameter`
- `android.os.VibrationEffect$Transformation`
- `android.os.VibrationEffect$VendorEffect`
- `android.os.VibrationEffect$VendorEffect$1`
- `android.os.VibrationEffect$VibrationParameter`
- `android.os.VibrationEffect$WaveformBuilder`
- `android.os.VibrationEffect$WaveformEnvelopeBuilder`
- `android.os.Vibrator`
- `android.os.Vibrator$$ExternalSyntheticLambda0`
- `android.os.Vibrator$OnVibratorStateChangedListener`
- `android.os.Vibrator$VibrationEffectSupport`
- `android.os.Vibrator$VibrationIntensity`
- `android.os.VibratorInfo`
- `android.os.VibratorInfo$1`
- `android.os.VibratorInfo$Builder`
- `android.os.VibratorInfo$FrequencyProfile`
- `android.os.VibratorInfo$FrequencyProfile$1`
- `android.os.VibratorInfo$FrequencyProfileLegacy`
- `android.os.VibratorInfo$FrequencyProfileLegacy$1`
- `android.os.VibratorManager`
- `android.os.vibrator.BasicPwleSegment`
- `android.os.vibrator.HapticFeedbackRequest`
- `android.os.vibrator.HapticFeedbackRequest$Builder`
- `android.os.vibrator.HapticFeedbackRequest-IA`
- `android.os.vibrator.IVibrationSession`
- `android.os.vibrator.IVibrationSession$Default`
- `android.os.vibrator.IVibrationSession$Stub`
- `android.os.vibrator.IVibrationSession$Stub$Proxy`
- `android.os.vibrator.IVibrationSessionCallback`
- `android.os.vibrator.IVibrationSessionCallback$Default`
- `android.os.vibrator.IVibrationSessionCallback$Stub`
- `android.os.vibrator.IVibrationSessionCallback$Stub$Proxy`
- `android.os.vibrator.MultiVibratorInfo`
- `android.os.vibrator.MultiVibratorInfo$$ExternalSyntheticLambda0`
- `android.os.vibrator.MultiVibratorInfo$$ExternalSyntheticLambda1`
- `android.os.vibrator.MultiVibratorInfo$$ExternalSyntheticLambda2`
- `android.os.vibrator.MultiVibratorInfo$$ExternalSyntheticLambda3`
- `android.os.vibrator.MultiVibratorInfo$$ExternalSyntheticLambda4`
- `android.os.vibrator.MultiVibratorInfo$$ExternalSyntheticLambda5`
- `android.os.vibrator.MultiVibratorInfo$$ExternalSyntheticLambda6`
- `android.os.vibrator.MultiVibratorInfo$$ExternalSyntheticLambda7`
- `android.os.vibrator.MultiVibratorInfo$$ExternalSyntheticLambda8`
- `android.os.vibrator.MultiVibratorInfo$$ExternalSyntheticLambda9`
- `android.os.vibrator.PrebakedSegment`
- `android.os.vibrator.PrimitiveSegment`
- `android.os.vibrator.PwleSegment`
- `android.os.vibrator.RampSegment`
- `android.os.vibrator.StepSegment`
- `android.os.vibrator.VendorVibrationSession`
- `android.os.vibrator.VendorVibrationSession$Callback`
- `android.os.vibrator.VendorVibrationSession$Status`
- `android.os.vibrator.VibrationConfig`
- `android.os.vibrator.VibrationConfig$Builder`
- `android.os.vibrator.VibrationEffectSegment`
- `android.os.vibrator.VibrationEffectSegment$1`
- `android.os.vibrator.VibratorEnvelopeEffectInfo`
- `android.os.vibrator.VibratorEnvelopeEffectInfo$1`
- `android.os.vibrator.VibratorFrequencyProfile`
- `android.os.vibrator.VibratorFrequencyProfileLegacy`
- `android.os.vibrator.VibratorInfoFactory`
- `android.os.vibrator.persistence.ParsedVibration`
- `android.os.vibrator.persistence.VibrationXmlParser`
- `android.os.vibrator.persistence.VibrationXmlParser$$ExternalSyntheticLambda0`
- `android.os.vibrator.persistence.VibrationXmlParser$$ExternalSyntheticLambda1`
- `android.os.vibrator.persistence.VibrationXmlParser$ElementParser`
- `android.os.vibrator.persistence.VibrationXmlParser$Flags`
- `android.os.vibrator.persistence.VibrationXmlParser$ParseFailedException`
- `android.os.vibrator.persistence.VibrationXmlParser-IA`
- `android.os.vibrator.persistence.VibrationXmlSerializer`
- `android.os.vibrator.persistence.VibrationXmlSerializer$Flags`
- `android.os.vibrator.persistence.VibrationXmlSerializer$SerializationFailedException`
- `android.os.vibrator.persistence.VibrationXmlSerializer-IA`
- `android.view.HapticFeedbackConstants`
- `android.view.HapticFeedbackConstants$FeedbackConstant`
- `android.view.HapticFeedbackConstants$Flags`
- `android.view.HapticFeedbackConstants$PrivateFlags`
- `android.view.HapticScrollFeedbackProvider`
- `android.view.InputDevice`
- `android.view.ScrollFeedbackProvider`
- `android.view.View`
- `android.view.ViewRootImpl`
- `android.widget.AbsListView`
- `android.widget.ScrollView`
- `com.android.internal.accessibility.AccessibilityShortcutController`
- `com.android.internal.app.PlatLogoActivity$RumblePack`
- `com.android.internal.vibrator.persistence.LegacyVibrationEffectXmlSerializer`
- `com.android.internal.vibrator.persistence.SerializedAmplitudeStepWaveform`
- `com.android.internal.vibrator.persistence.SerializedBasicEnvelopeEffect`
- `com.android.internal.vibrator.persistence.SerializedComposedEffect`
- `com.android.internal.vibrator.persistence.SerializedComposedEffect$SerializedSegment`
- `com.android.internal.vibrator.persistence.SerializedCompositionPrimitive`
- `com.android.internal.vibrator.persistence.SerializedPredefinedEffect`
- `com.android.internal.vibrator.persistence.SerializedRepeatingEffect`
- `com.android.internal.vibrator.persistence.SerializedVendorEffect`
- `com.android.internal.vibrator.persistence.SerializedWaveformEffectEntries`
- `com.android.internal.vibrator.persistence.SerializedWaveformEnvelopeEffect`
- `com.android.internal.vibrator.persistence.VibrationEffectSerializer`
- `com.android.internal.vibrator.persistence.VibrationEffectXmlParser`
- `com.android.internal.vibrator.persistence.XmlConstants$PredefinedEffectName`
- `com.android.internal.vibrator.persistence.XmlValidator`
- `com.android.internal.widget.SlidingTab`
- `com.android.server.accessibility.magnification.FullScreenMagnificationGestureHandler$PanningScalingState`
- `com.android.server.accessibility.magnification.FullScreenMagnificationVibrationHelper`
- `com.android.server.audio.AudioService`
- `com.android.server.biometrics.sensors.AcquisitionClient`
- `com.android.server.input.InputManagerService`
- `com.android.server.input.InputManagerService$VibrationInfo`
- `com.android.server.notification.NotificationAttentionHelper`
- `com.android.server.notification.NotificationAttentionHelper$$ExternalSyntheticLambda1`
- `com.android.server.notification.NotificationManagerService`
- `com.android.server.notification.NotificationRecord`
- `com.android.server.notification.PreferencesHelper`
- `com.android.server.notification.VibratorHelper`
- `com.android.server.policy.LegacyGlobalActions`
- `com.android.server.policy.PhoneWindowManager`
- `com.android.server.power.Notifier`
- `com.android.server.power.ShutdownThread`
- `com.android.server.power.ShutdownThread$Injector`
- `com.android.server.vibrator.AbstractComposedVibratorStep`
- `com.android.server.vibrator.AbstractVibratorStep`
- `com.android.server.vibrator.BasicToPwleSegmentAdapter`
- `com.android.server.vibrator.ClippingAmplitudeAndFrequencyAdapter`
- `com.android.server.vibrator.CompleteEffectVibratorStep`
- `com.android.server.vibrator.ComposePrimitivesVibratorStep`
- `com.android.server.vibrator.ComposePwleV2VibratorStep`
- `com.android.server.vibrator.ComposePwleVibratorStep`
- `com.android.server.vibrator.DeviceAdapter`
- `com.android.server.vibrator.ExternalVibrationSession`
- `com.android.server.vibrator.HalVibration`
- `com.android.server.vibrator.HalVibration$$ExternalSyntheticLambda0`
- `com.android.server.vibrator.HalVibrator`
- `com.android.server.vibrator.HapticFeedbackCustomization`
- `com.android.server.vibrator.HapticFeedbackVibrationProvider`
- `com.android.server.vibrator.InputDeviceDelegate`
- `com.android.server.vibrator.PerformPrebakedVibratorStep`
- `com.android.server.vibrator.PerformVendorEffectVibratorStep`
- `com.android.server.vibrator.PrebakedFallbackAdapter`
- `com.android.server.vibrator.PrebakedSegmentsValidator`
- `com.android.server.vibrator.PrimitiveDelayAdapter`
- `com.android.server.vibrator.PrimitiveSegmentsValidator`
- `com.android.server.vibrator.PwleSegmentsValidator`
- `com.android.server.vibrator.RampDownAdapter`
- `com.android.server.vibrator.RampToStepAdapter`
- `com.android.server.vibrator.SetAmplitudeVibratorStep`
- `com.android.server.vibrator.SingleVibrationSession`
- `com.android.server.vibrator.SplitPwleSegmentsAdapter`
- `com.android.server.vibrator.SplitSegmentsAdapter`
- `com.android.server.vibrator.StartSequentialEffectStep`
- `com.android.server.vibrator.StartSequentialEffectStep$DeviceEffectMap`
- `com.android.server.vibrator.StepToRampAdapter`
- `com.android.server.vibrator.VendorVibrationSession`
- `com.android.server.vibrator.VendorVibrationSession$DebugInfoImpl`
- `com.android.server.vibrator.VendorVibrationSession$VendorCallbackWrapper`
- `com.android.server.vibrator.VendorVibrationSession$VendorCallbackWrapper$$ExternalSyntheticLambda0`
- `com.android.server.vibrator.VendorVibrationSession$VibratorManagerHooks`
- `com.android.server.vibrator.Vibration$DebugInfoImpl`
- `com.android.server.vibrator.VibrationScaler`
- `com.android.server.vibrator.VibrationSegmentsAdapter`
- `com.android.server.vibrator.VibrationSegmentsValidator`
- `com.android.server.vibrator.VibrationSession$CallerInfo`
- `com.android.server.vibrator.VibrationSettings`
- `com.android.server.vibrator.VibrationStats`
- `com.android.server.vibrator.VibrationStats$StatsInfo`
- `com.android.server.vibrator.VibrationStepConductor`
- `com.android.server.vibrator.VibratorControlService$VibrationScaleParamRecord`
- `com.android.server.vibrator.VibratorController`
- `com.android.server.vibrator.VibratorController$$ExternalSyntheticLambda0`
- `com.android.server.vibrator.VibratorController$NativeWrapper`
- `com.android.server.vibrator.VibratorFrameworkStatsLogger`
- `com.android.server.vibrator.VibratorManagerService`
- `com.android.server.vibrator.VibratorManagerService$$ExternalSyntheticLambda0`
- `com.android.server.vibrator.VibratorManagerService$$ExternalSyntheticLambda2`
- `com.android.server.vibrator.VibratorManagerService$$ExternalSyntheticLambda3`
- `com.android.server.vibrator.VibratorManagerService$ExternalVibratorService`
- `com.android.server.vibrator.VibratorManagerService$Injector`
- `com.android.server.vibrator.VibratorManagerService$VendorVibrationSessionCallbacks`
- `com.android.server.vibrator.VibratorManagerService$VibrationRecord`
- `com.android.server.vibrator.VibratorManagerService$VibrationRecords`
- `com.android.server.vibrator.VibratorManagerService$VibratorManagerShellCommand`
- `com.android.server.vibrator.VibratorManagerService$VibratorManagerShellCommand$AdvancedEnveloperBuilderWrapper`
- `com.android.server.vibrator.VibratorManagerService$VibratorManagerShellCommand$BasicEnveloperBuilderWrapper`
- `com.android.server.vibrator.VibratorManagerService$VibratorManagerShellCommand$EnvelopeBuilder`
- `com.android.server.vibrator.VibratorManagerService$VibratorManagerShellCommand$ShellVibrationSessionCallback`
- `com.android.server.vibrator.VibratorManagerService$VibratorManagerShellCommand$ShellVibrationSessionCallback$$ExternalSyntheticLambda0`

