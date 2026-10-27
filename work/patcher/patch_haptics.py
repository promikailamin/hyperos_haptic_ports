#!/usr/bin/env python3
"""
Xiaomi HyperOS Android 13 -> PixelOS Android 16 haptic behavior port.

This script rewrites a small, well-defined set of smali methods in the
decompiled Android 16 target tree so that the A16 vibrator stack reproduces
the A13 (HyperOS) haptic behavior:

  framework/classes3:
    * android/os/VibrationEffect.scale(FF)F   -> A13 legacy gamma scaling
                                                 (drops the Scale-V2 formula)

  services/classes:
    * HapticFeedbackVibrationProvider.getVibrationForHapticFeedback(I)
          -> A13 effect mapping for KEYBOARD_PRESS (0x3) and
             KEYBOARD_RELEASE (0x7)
    * HapticFeedbackVibrationProvider.getVibration(II)
          -> drop HapticFeedbackCustomization overrides (A13 has no such layer)
    * HapticFeedbackVibrationProvider.getVibrationForInputDevice(II)
          -> same, drop customization overrides
    * HapticFeedbackVibrationProvider.getVibrationAttributes(IIII)
          -> A13 usage/attribute mapping (physical emulation / hardware
             feedback / touch); keyboard constants use USAGE_TOUCH like A13
    * VibrationScaler.scale(VibrationEffect,I)
          -> A13 order: effect strength -> resolve -> scale, no adaptive scale
    * VibrationScaler.getScaleFactor(IZ)
          -> A13 5-level amplitude table, ignores A16 VibrationConfig arrays
    * VibrationScaler.scaleLevelToScaleFactor(I)
          -> A13 constants 0.6 / 0.8 / 1.0 / 1.2 / 1.4
    * VibrationScaler.getAdaptiveHapticsScale(I)
          -> neutral 1.0f (adaptive haptics is an A16-only feature)
    * VibrationSettings.getDefaultIntensity(I)
    * VibrationSettings.getCurrentIntensity(I)
          -> alias A16-only USAGE_IME_FEEDBACK (0x52) and
             USAGE_GESTURE_INPUT (0x62) to USAGE_TOUCH (0x12), matching A13
             where keyboard/gesture feedback used the touch intensity.

Every rewritten method carries a "# A13-PORT" marker so the script can be
re-run safely (it is a no-op for methods that are already patched).
"""

from __future__ import annotations

import pathlib
import sys

ROOT = pathlib.Path(__file__).resolve().parent.parent / "smali" / "target16"

FW_VIBRATION_EFFECT = ROOT / "framework/classes3/android/os/VibrationEffect.smali"
SVC_PROVIDER = ROOT / "services/classes/com/android/server/vibrator/HapticFeedbackVibrationProvider.smali"
SVC_SCALER = ROOT / "services/classes/com/android/server/vibrator/VibrationScaler.smali"
SVC_SETTINGS = ROOT / "services/classes/com/android/server/vibrator/VibrationSettings.smali"

MARKER = "# A13-PORT"

PROVIDER = "Lcom/android/server/vibrator/HapticFeedbackVibrationProvider;"
SCALER = "Lcom/android/server/vibrator/VibrationScaler;"
SETTINGS = "Lcom/android/server/vibrator/VibrationSettings;"


# ---------------------------------------------------------------------------
# smali helpers
# ---------------------------------------------------------------------------

def replace_method(path: pathlib.Path, signature: str, new_body: str) -> bool:
    """Replace the smali method whose first line contains *signature*.

    Returns True when the file changed, False when the method was already
    patched (marker present) or not found.
    """
    lines = path.read_text().splitlines(keepends=True)

    start = None
    for i, line in enumerate(lines):
        if line.startswith(".method ") and signature in line:
            start = i
            break
    if start is None:
        raise SystemExit(f"ERROR: method not found in {path}:\n  {signature}")

    end = None
    for j in range(start + 1, len(lines)):
        if lines[j].rstrip("\n") == ".end method":
            end = j
            break
    if end is None:
        raise SystemExit(f"ERROR: unbalanced method in {path}: {signature}")

    current = "".join(lines[start:end + 1]).strip()
    if current == (new_body.strip()):
        print(f"  = already patched: {signature}")
        return False

    lines[start:end + 1] = [new_body if new_body.endswith("\n") else new_body + "\n"]
    path.write_text("".join(lines))
    print(f"  + patched: {signature}")
    return True


def replace_once(path: pathlib.Path, old: str, new: str) -> bool:
    text = path.read_text()
    count = text.count(old)
    if count == 0:
        if MARKER in new and new in text:
            print(f"  = already patched block in {path.name}")
            return False
        raise SystemExit(f"ERROR: block not found in {path}:\n{old}")
    if count > 1:
        raise SystemExit(f"ERROR: block appears {count} times in {path}:\n{old}")
    path.write_text(text.replace(old, new))
    print(f"  + patched block in {path.name}")
    return True


# ---------------------------------------------------------------------------
# 1. android.os.VibrationEffect.scale(float, float)
#    Verbatim A13 (HyperOS) implementation; A16 wraps the same legacy formula
#    in a "hapticsScaleV2Enabled" flag that changes the >1.0 curve.
# ---------------------------------------------------------------------------

VE_SCALE = f""".method public static blacklist scale(FF)F
    .registers 13
    .param p0, "intensity"    # F
    .param p1, "scaleFactor"    # F

    {MARKER} legacy A13 (HyperOS) amplitude scaling

    const v0, 0x3fc4ec4f

    invoke-static {{p1, v0}}, Landroid/util/MathUtils;->pow(FF)F

    move-result v0

    .local v0, "scale":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_10

    mul-float v1, p0, v0

    return v1

    :cond_10
    const/high16 v2, 0x40800000    # 4.0f

    sub-float/2addr v2, p1

    invoke-static {{p1, v2}}, Landroid/util/MathUtils;->pow(FF)F

    move-result v2

    .local v2, "extraScale":F
    mul-float v3, p0, v0

    mul-float/2addr v3, v2

    .local v3, "x":F
    mul-float v4, v0, v2

    .local v4, "maxX":F
    invoke-static {{v3}}, Landroid/util/MathUtils;->exp(F)F

    move-result v5

    .local v5, "expX":F
    invoke-static {{v4}}, Landroid/util/MathUtils;->exp(F)F

    move-result v6

    .local v6, "expMaxX":F
    add-float v7, v6, v1

    sub-float v8, v6, v1

    div-float/2addr v7, v8

    .local v7, "a":F
    sub-float v8, v5, v1

    add-float v9, v5, v1

    div-float/2addr v8, v9

    .local v8, "fx":F
    mul-float v9, v7, v8

    const/4 v10, 0x0

    invoke-static {{v9, v10, v1}}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    return v1
.end method
"""


# ---------------------------------------------------------------------------
# 2. HapticFeedbackVibrationProvider
# ---------------------------------------------------------------------------

# 2a. A13 effect mapping for the two constants that differ between A13 and A16.
#     A16 packs 0x3..0x9 into one switch; only the 0x3 and 0x7 slots change.
OLD_PROVIDER_SWITCH = """    :pswitch_data_60
    .packed-switch 0x3
        :pswitch_4f
        :pswitch_4a
        :pswitch_54
        :pswitch_45
        :pswitch_4f
        :pswitch_40
        :pswitch_4a
    .end packed-switch"""

NEW_PROVIDER_SWITCH = f"""    :pswitch_data_60
    {MARKER} A13: KEYBOARD_PRESS(0x3) -> get(0), KEYBOARD_RELEASE(0x7) -> get(2, false)
    .packed-switch 0x3
        :pswitch_54
        :pswitch_4a
        :pswitch_54
        :pswitch_45
        :pswitch_40
        :pswitch_40
        :pswitch_4a
    .end packed-switch"""

PROVIDER_GET_VIBRATION = f""".method public getVibration(II)Landroid/os/VibrationEffect;
    .registers 4

    {MARKER} A13 has no HapticFeedbackCustomization layer: always use the
    {MARKER} A13 effect mapping and ignore resource/config overrides.
    invoke-virtual {{p0, p1}}, {PROVIDER}->isFeedbackConstantEnabled(I)Z

    move-result v0

    if-nez v0, :cond_a13_mapped

    const/4 p0, 0x0

    return-object p0

    :cond_a13_mapped
    invoke-virtual {{p0, p1}}, {PROVIDER}->getVibrationForHapticFeedback(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method
"""

PROVIDER_GET_VIBRATION_ATTRS = f""".method public getVibrationAttributes(IIII)Landroid/os/VibrationAttributes;
    .registers 5

    {MARKER} Port of PhoneWindowManager.getVibrationAttributes() from A13.
    if-eqz p2, :cond_a13_switch

    invoke-static {{p2}}, Landroid/os/VibrationAttributes;->createForUsage(I)Landroid/os/VibrationAttributes;

    move-result-object p2

    invoke-virtual {{p0, p2, p1, p3}}, {PROVIDER}->getVibrationAttributesWithFlags(Landroid/os/VibrationAttributes;II)Landroid/os/VibrationAttributes;

    move-result-object p0

    return-object p0

    :cond_a13_switch
    sparse-switch p1, :sswitch_data_a13

    sget-object p2, {PROVIDER}->TOUCH_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    goto :goto_a13_apply

    :sswitch_a13_physical
    sget-object p2, {PROVIDER}->PHYSICAL_EMULATION_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    goto :goto_a13_apply

    :sswitch_a13_hardware
    sget-object p2, {PROVIDER}->HARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    :goto_a13_apply
    invoke-virtual {{p0, p2, p1, p3}}, {PROVIDER}->getVibrationAttributesWithFlags(Landroid/os/VibrationAttributes;II)Landroid/os/VibrationAttributes;

    move-result-object p0

    return-object p0

    :sswitch_data_a13
    {MARKER} 0x2714/0x2715 are A16-only biometric constants; keep the A16
    {MARKER} hardware-feedback classification for them.
    .sparse-switch
        0xe -> :sswitch_a13_physical
        0xf -> :sswitch_a13_physical
        0x12 -> :sswitch_a13_hardware
        0x13 -> :sswitch_a13_hardware
        0x14 -> :sswitch_a13_hardware
        0x2712 -> :sswitch_a13_hardware
        0x2713 -> :sswitch_a13_hardware
        0x2714 -> :sswitch_a13_hardware
        0x2715 -> :sswitch_a13_hardware
    .end sparse-switch
.end method
"""

PROVIDER_GET_VIBRATION_INPUT = f""".method public getVibrationForInputDevice(II)Landroid/os/VibrationEffect;
    .registers 4

    {MARKER} A13: input-device haptics use the same effect mapping, no
    {MARKER} HapticFeedbackCustomization overrides.
    invoke-virtual {{p0, p1}}, {PROVIDER}->isFeedbackConstantEnabled(I)Z

    move-result v0

    if-nez v0, :cond_a13_mapped

    const/4 p0, 0x0

    return-object p0

    :cond_a13_mapped
    invoke-virtual {{p0, p1}}, {PROVIDER}->getVibrationForHapticFeedback(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method
"""


# ---------------------------------------------------------------------------
# 3. VibrationScaler
# ---------------------------------------------------------------------------

SCALER_SCALE = f""".method public scale(Landroid/os/VibrationEffect;I)Landroid/os/VibrationEffect;
    .registers 6

    {MARKER} A13 order: effect strength -> resolve amplitude -> amplitude scale.
    invoke-virtual {{p0, p2}}, {SCALER}->getEffectStrength(I)I

    move-result v0

    const/4 v1, 0x0
    invoke-virtual {{p0, p2, v1}}, {SCALER}->getScaleFactor(IZ)F

    move-result v1

    iget-object v2, p0, {SCALER}->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {{v2}}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationAmplitude()I

    move-result v2

    invoke-virtual {{p1, v0}}, Landroid/os/VibrationEffect;->applyEffectStrength(I)Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-virtual {{p1, v2}}, Landroid/os/VibrationEffect;->resolve(I)Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-virtual {{p1, v1}}, Landroid/os/VibrationEffect;->scale(F)Landroid/os/VibrationEffect;

    move-result-object p1

    return-object p1
.end method
"""

SCALER_GET_SCALE_FACTOR = f""".method public getScaleFactor(IZ)F
    .registers 5

    {MARKER} A13 5-level table, applied directly (A16 routes the factor through
    {MARKER} VibrationConfig arrays/curves which do not exist on A13).
    iget-object v0, p0, {SCALER}->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {{v0, p1}}, {SETTINGS}->getDefaultIntensity(I)I

    move-result v0

    iget-object v1, p0, {SCALER}->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {{v1, p1}}, {SETTINGS}->getCurrentIntensity(I)I

    move-result v1

    if-nez v1, :cond_a13_level

    move v1, v0

    :cond_a13_level
    sub-int/2addr v1, v0

    invoke-virtual {{p0, v1}}, {SCALER}->scaleLevelToScaleFactor(I)F

    move-result p0

    return p0
.end method
"""

SCALER_LEVEL_TO_FACTOR = f""".method public final scaleLevelToScaleFactor(I)F
    .registers 7

    {MARKER} A13 VibrationScaler constants.
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, -0x2

    if-lt p1, v1, :cond_a13_log

    const/4 v1, 0x2

    if-gt p1, v1, :cond_a13_log

    packed-switch p1, :pswitch_data_a13

    return v0

    :pswitch_data_a13
    .packed-switch -0x2
        :pswitch_very_low
        :pswitch_low
        :pswitch_none
        :pswitch_high
        :pswitch_very_high
    .end packed-switch

    :pswitch_very_low
    const v0, 0x3f19999a    # 0.6f

    return v0

    :pswitch_low
    const v0, 0x3f4ccccd    # 0.8f

    return v0

    :pswitch_none
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :pswitch_high
    const v0, 0x3f99999a    # 1.2f

    return v0

    :pswitch_very_high
    const v0, 0x3fb33333    # 1.4f

    return v0

    :cond_a13_log
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .local v2, "locale":Ljava/util/Locale;
    invoke-static {{p1}}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {{v3}}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Invalid scale level %d, using 1.0"

    invoke-static {{v2, v4, v3}}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "VibrationScaler"

    invoke-static {{v3, v2}}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
"""

SCALER_ADAPTIVE = f""".method public getAdaptiveHapticsScale(I)F
    .registers 2

    {MARKER} A13 has no adaptive haptics: always neutral.
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method
"""


# ---------------------------------------------------------------------------
# 4. VibrationSettings usage aliasing
# ---------------------------------------------------------------------------

SETTINGS_GET_DEFAULT = f""".method public getDefaultIntensity(I)I
    .registers 3

    {MARKER} A13 has no USAGE_IME_FEEDBACK(0x52)/USAGE_GESTURE_INPUT(0x62);
    {MARKER} keyboard and gesture feedback used USAGE_TOUCH(0x12) intensity.
    const/16 v0, 0x52

    if-eq p1, v0, :cond_a13_gesture

    const/16 p1, 0x12

    goto :goto_a13_lookup

    :cond_a13_gesture
    const/16 v0, 0x62

    if-eq p1, v0, :goto_a13_lookup

    const/16 p1, 0x12

    :goto_a13_lookup
    iget-object v0, p0, {SETTINGS}->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    invoke-virtual {{v0, p1}}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    move-result v0

    return v0
.end method
"""

SETTINGS_GET_CURRENT = f""".method public getCurrentIntensity(I)I
    .registers 4

    {MARKER} A13: USAGE_IME_FEEDBACK(0x52)/USAGE_GESTURE_INPUT(0x62) -> USAGE_TOUCH(0x12).
    const/16 v0, 0x52

    if-eq p1, v0, :cond_a13_gesture

    const/16 p1, 0x12

    goto :goto_a13_lookup

    :cond_a13_gesture
    const/16 v0, 0x62

    if-eq p1, v0, :goto_a13_lookup

    const/16 p1, 0x12

    :goto_a13_lookup
    invoke-virtual {{p0, p1}}, {SETTINGS}->getDefaultIntensity(I)I

    move-result v0

    iget-object v1, p0, {SETTINGS}->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_a13
    iget-object p0, p0, {SETTINGS}->mCurrentVibrationIntensities:Landroid/util/SparseIntArray;

    invoke-virtual {{p0, p1, v0}}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    monitor-exit v1

    return p0

    :catchall_a13
    move-exception p0

    monitor-exit v1
    :try_end_a13
    .catchall {{:try_start_a13 .. :try_end_a13}} :catchall_a13

    throw p0
.end method
"""


# ---------------------------------------------------------------------------
# main
# ---------------------------------------------------------------------------

def main() -> int:
    changed = 0
    print("[framework] android/os/VibrationEffect.smali")
    changed += replace_method(FW_VIBRATION_EFFECT, "scale(FF)F", VE_SCALE)

    print("[services] HapticFeedbackVibrationProvider.smali")
    changed += replace_once(SVC_PROVIDER, OLD_PROVIDER_SWITCH, NEW_PROVIDER_SWITCH)
    changed += replace_method(SVC_PROVIDER,
                              "getVibration(II)Landroid/os/VibrationEffect;",
                              PROVIDER_GET_VIBRATION)
    changed += replace_method(SVC_PROVIDER,
                              "getVibrationAttributes(IIII)Landroid/os/VibrationAttributes;",
                              PROVIDER_GET_VIBRATION_ATTRS)
    changed += replace_method(SVC_PROVIDER,
                              "getVibrationForInputDevice(II)Landroid/os/VibrationEffect;",
                              PROVIDER_GET_VIBRATION_INPUT)

    print("[services] VibrationScaler.smali")
    changed += replace_method(SVC_SCALER,
                              "scale(Landroid/os/VibrationEffect;I)Landroid/os/VibrationEffect;",
                              SCALER_SCALE)
    changed += replace_method(SVC_SCALER, "getScaleFactor(IZ)F", SCALER_GET_SCALE_FACTOR)
    changed += replace_method(SVC_SCALER, "scaleLevelToScaleFactor(I)F", SCALER_LEVEL_TO_FACTOR)
    changed += replace_method(SVC_SCALER, "getAdaptiveHapticsScale(I)F", SCALER_ADAPTIVE)

    print("[services] VibrationSettings.smali")
    changed += replace_method(SVC_SETTINGS, "getDefaultIntensity(I)I", SETTINGS_GET_DEFAULT)
    changed += replace_method(SVC_SETTINGS, "getCurrentIntensity(I)I", SETTINGS_GET_CURRENT)

    print(f"\n{changed} smali method(s) modified.")
    return 0


if __name__ == "__main__":
    sys.exit(main())
