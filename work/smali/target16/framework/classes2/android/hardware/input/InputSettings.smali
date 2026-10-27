.class public Landroid/hardware/input/InputSettings;
.super Ljava/lang/Object;
.source "InputSettings.java"


# static fields
.field public static final blacklist DEFAULT_BOUNCE_KEYS_THRESHOLD_MILLIS:I = 0x1f4

.field public static final blacklist DEFAULT_MAXIMUM_OBSCURING_OPACITY_FOR_TOUCH:F = 0.8f

.field public static final blacklist DEFAULT_MOUSE_KEYS_ACCELERATION:F = 0.2f

.field public static final blacklist DEFAULT_MOUSE_KEYS_MAX_SPEED:I = 0x5

.field public static final blacklist DEFAULT_MOUSE_SCROLLING_SPEED:I = 0x0

.field public static final blacklist DEFAULT_POINTER_SPEED:I = 0x0

.field public static final blacklist DEFAULT_SLOW_KEYS_THRESHOLD_MILLIS:I = 0x1f4

.field public static final blacklist DEFAULT_STYLUS_POINTER_ICON_ENABLED:I = 0x1

.field public static final blacklist MAX_ACCESSIBILITY_BOUNCE_KEYS_THRESHOLD_MILLIS:I = 0x1388

.field public static final blacklist MAX_ACCESSIBILITY_SLOW_KEYS_THRESHOLD_MILLIS:I = 0x1388

.field public static final blacklist MAX_KEY_REPEAT_DELAY_MILLIS:I = 0x7d0

.field public static final blacklist MAX_KEY_REPEAT_TIMEOUT_MILLIS:I = 0x7d0

.field public static final blacklist MAX_MOUSE_SCROLLING_SPEED:I = 0x7

.field public static final blacklist MAX_POINTER_SPEED:I = 0x7

.field public static final blacklist MIN_KEY_REPEAT_DELAY_MILLIS:I = 0x14

.field public static final blacklist MIN_KEY_REPEAT_TIMEOUT_MILLIS:I = 0x96

.field public static final blacklist MIN_MOUSE_SCROLLING_SPEED:I = -0x7

.field public static final blacklist MIN_POINTER_SPEED:I = -0x7


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    return-void
.end method

.method public static blacklist getAccessibilityBounceKeysThreshold(Landroid/content/Context;)I
    .registers 4

    .line 937
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, -0x2

    const-string v2, "accessibility_bounce_keys"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static blacklist getAccessibilityMouseKeysAcceleration(Landroid/content/Context;)F
    .registers 4

    .line 1123
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const v0, 0x3e4ccccd    # 0.2f

    const/4 v1, -0x2

    const-string v2, "accessibility_mouse_keys_acceleration"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p0

    return p0
.end method

.method public static blacklist getAccessibilityMouseKeysMaxSpeed(Landroid/content/Context;)I
    .registers 4

    .line 1161
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x5

    const/4 v1, -0x2

    const-string v2, "accessibility_mouse_keys_max_speed"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static blacklist getAccessibilitySlowKeysThreshold(Landroid/content/Context;)I
    .registers 4

    .line 998
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, -0x2

    const-string v2, "accessibility_slow_keys"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static blacklist getMaximumObscuringOpacityForTouch(Landroid/content/Context;)F
    .registers 3

    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "maximum_obscuring_opacity_for_touch"

    const v1, 0x3f4ccccd    # 0.8f

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static blacklist getMouseScrollingSpeed(Landroid/content/Context;)I
    .registers 4

    .line 754
    invoke-static {}, Landroid/hardware/input/InputSettings;->isMouseScrollingAccelerationFeatureFlagEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 755
    return v1

    .line 758
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "mouse_scrolling_speed"

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static blacklist getPointerSpeed(Landroid/content/Context;)I
    .registers 3

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "pointer_speed"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static blacklist getRepeatKeysDelay(Landroid/content/Context;)I
    .registers 4

    .line 1317
    invoke-static {}, Landroid/hardware/input/InputSettings;->isRepeatKeysFeatureFlagEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1318
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result p0

    return p0

    .line 1320
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 1321
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v0

    .line 1320
    const-string v1, "key_repeat_delay"

    const/4 v2, -0x2

    invoke-static {p0, v1, v0, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static blacklist getRepeatKeysTimeout(Landroid/content/Context;)I
    .registers 4

    .line 1287
    invoke-static {}, Landroid/hardware/input/InputSettings;->isRepeatKeysFeatureFlagEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1288
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result p0

    return p0

    .line 1290
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 1291
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v0

    .line 1290
    const-string v1, "key_repeat_timeout"

    const/4 v2, -0x2

    invoke-static {p0, v1, v0, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static blacklist getTouchpadPointerSpeed(Landroid/content/Context;)I
    .registers 4

    .line 298
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, -0x2

    const-string v2, "touchpad_pointer_speed"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static blacklist isAccessibilityBounceKeysEnabled(Landroid/content/Context;)Z
    .registers 1

    .line 921
    invoke-static {p0}, Landroid/hardware/input/InputSettings;->getAccessibilityBounceKeysThreshold(Landroid/content/Context;)I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static blacklist isAccessibilityMouseKeysEnabled(Landroid/content/Context;)Z
    .registers 4

    .line 1085
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string v1, "accessibility_mouse_keys_enabled"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_f

    const/4 v2, 0x1

    :cond_f
    return v2
.end method

.method public static blacklist isAccessibilitySlowKeysEnabled(Landroid/content/Context;)Z
    .registers 1

    .line 982
    invoke-static {p0}, Landroid/hardware/input/InputSettings;->getAccessibilitySlowKeysThreshold(Landroid/content/Context;)I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static blacklist isAccessibilityStickyKeysEnabled(Landroid/content/Context;)Z
    .registers 4

    .line 1046
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string v1, "accessibility_sticky_keys"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_f

    const/4 v2, 0x1

    :cond_f
    return v2
.end method

.method public static blacklist isCustomizableInputGesturesFeatureFlagEnabled()Z
    .registers 1

    .line 1435
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->enableCustomizableInputGestures()Z

    move-result v0

    return v0
.end method

.method public static blacklist isMousePointerAccelerationEnabled(Landroid/content/Context;)Z
    .registers 4

    .line 877
    invoke-static {}, Landroid/hardware/input/InputSettings;->isPointerAccelerationFeatureFlagEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 878
    return v1

    .line 881
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "mouse_pointer_acceleration_enabled"

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method public static blacklist isMouseReverseVerticalScrollingEnabled(Landroid/content/Context;)Z
    .registers 4

    .line 799
    invoke-static {}, Landroid/hardware/input/InputSettings;->isMouseReverseVerticalScrollingFeatureFlagEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 800
    return v1

    .line 803
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "mouse_reverse_vertical_scrolling"

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public static blacklist isMouseReverseVerticalScrollingFeatureFlagEnabled()Z
    .registers 1

    .line 467
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->mouseReverseVerticalScrolling()Z

    move-result v0

    return v0
.end method

.method public static blacklist isMouseScrollingAccelerationEnabled(Landroid/content/Context;)Z
    .registers 4

    .line 713
    invoke-static {}, Landroid/hardware/input/InputSettings;->isMouseScrollingAccelerationFeatureFlagEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 714
    return v1

    .line 717
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "mouse_scrolling_acceleration"

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method public static blacklist isMouseScrollingAccelerationFeatureFlagEnabled()Z
    .registers 1

    .line 459
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->mouseScrollingAcceleration()Z

    move-result v0

    return v0
.end method

.method public static blacklist isMouseSwapPrimaryButtonEnabled(Landroid/content/Context;)Z
    .registers 4

    .line 839
    invoke-static {}, Landroid/hardware/input/InputSettings;->isMouseSwapPrimaryButtonFeatureFlagEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 840
    return v1

    .line 843
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "mouse_swap_primary_button"

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public static blacklist isMouseSwapPrimaryButtonFeatureFlagEnabled()Z
    .registers 1

    .line 475
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->mouseSwapPrimaryButton()Z

    move-result v0

    return v0
.end method

.method public static blacklist isPointerAccelerationFeatureFlagEnabled()Z
    .registers 1

    .line 484
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->pointerAcceleration()Z

    move-result v0

    return v0
.end method

.method public static blacklist isPrimaryKeysForMouseKeysEnabled(Landroid/content/Context;)Z
    .registers 4

    .line 1200
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string v1, "accessibility_mouse_keys_use_primary_keys"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    return v2
.end method

.method public static blacklist isRepeatKeysEnabled(Landroid/content/Context;)Z
    .registers 4

    .line 1258
    invoke-static {}, Landroid/hardware/input/InputSettings;->isRepeatKeysFeatureFlagEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 1259
    return v1

    .line 1261
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_repeat_enabled"

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method public static blacklist isRepeatKeysFeatureFlagEnabled()Z
    .registers 1

    .line 1238
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;->keyboardRepeatKeys()Z

    move-result v0

    return v0
.end method

.method public static blacklist isStylusEverUsed(Landroid/content/Context;)Z
    .registers 3

    .line 270
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "stylus_ever_used"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_f

    move v1, v0

    :cond_f
    return v1
.end method

.method public static blacklist isStylusPointerIconEnabled(Landroid/content/Context;)Z
    .registers 2

    .line 701
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/hardware/input/InputSettings;->isStylusPointerIconEnabled(Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method public static blacklist isStylusPointerIconEnabled(Landroid/content/Context;Z)Z
    .registers 6

    .line 676
    invoke-static {}, Landroid/sysprop/InputProperties;->force_enable_stylus_pointer_icon()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    .line 678
    return v2

    .line 680
    :cond_17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x11101a5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_25

    .line 683
    return v1

    .line 685
    :cond_25
    const-string v0, "stylus_pointer_icon_enabled"

    if-eqz p1, :cond_36

    .line 686
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, -0x3

    invoke-static {p0, v0, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_35

    move v1, v2

    :cond_35
    return v1

    .line 690
    :cond_36
    invoke-static {v0, v2}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_3d

    move v1, v2

    :cond_3d
    return v1
.end method

.method public static blacklist isTouchpadAccelerationEnabled(Landroid/content/Context;)Z
    .registers 4

    .line 398
    invoke-static {}, Landroid/hardware/input/InputSettings;->isPointerAccelerationFeatureFlagEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 399
    return v1

    .line 402
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "touchpad_acceleration_enabled"

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method public static blacklist isTouchpadDisableFeatureFlagEnabled()Z
    .registers 1

    .line 441
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->touchpadDisable()Z

    move-result v0

    return v0
.end method

.method public static blacklist isTouchpadSystemGestureDisableFeatureFlagEnabled()Z
    .registers 1

    .line 432
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->touchpadSystemGestureDisable()Z

    move-result v0

    return v0
.end method

.method public static blacklist isTouchpadVisualizerFeatureFlagEnabled()Z
    .registers 1

    .line 450
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->touchpadVisualizer()Z

    move-result v0

    return v0
.end method

.method public static blacklist setAccessibilityBounceKeysThreshold(Landroid/content/Context;I)V
    .registers 4

    .line 959
    if-ltz p1, :cond_11

    const/16 v0, 0x1388

    if-gt p1, v0, :cond_11

    .line 965
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accessibility_bounce_keys"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 968
    return-void

    .line 961
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Provided Bounce keys threshold should be in range [0, 5000]"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist setAccessibilityMouseKeysAcceleration(Landroid/content/Context;F)V
    .registers 4

    .line 1143
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accessibility_mouse_keys_acceleration"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$Secure;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 1146
    return-void
.end method

.method public static blacklist setAccessibilityMouseKeysEnabled(Landroid/content/Context;Z)V
    .registers 4

    .line 1105
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 1106
    nop

    .line 1105
    const-string v0, "accessibility_mouse_keys_enabled"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1108
    return-void
.end method

.method public static blacklist setAccessibilityMouseKeysMaxSpeed(Landroid/content/Context;I)V
    .registers 4

    .line 1181
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accessibility_mouse_keys_max_speed"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1184
    return-void
.end method

.method public static blacklist setAccessibilitySlowKeysThreshold(Landroid/content/Context;I)V
    .registers 4

    .line 1020
    if-ltz p1, :cond_11

    const/16 v0, 0x1388

    if-gt p1, v0, :cond_11

    .line 1026
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accessibility_slow_keys"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1029
    return-void

    .line 1022
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Provided Slow keys threshold should be in range [0, 5000]"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist setAccessibilityStickyKeysEnabled(Landroid/content/Context;Z)V
    .registers 4

    .line 1067
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 1068
    nop

    .line 1067
    const-string v0, "accessibility_sticky_keys"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1070
    return-void
.end method

.method public static blacklist setMaximumObscuringOpacityForTouch(Landroid/content/Context;F)V
    .registers 3

    .line 257
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_15

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_15

    .line 261
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "maximum_obscuring_opacity_for_touch"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 263
    return-void

    .line 258
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Maximum obscuring opacity for touch should be >= 0 and <= 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist setMouseAccelerationEnabled(Landroid/content/Context;Z)V
    .registers 4

    .line 901
    invoke-static {}, Landroid/hardware/input/InputSettings;->isPointerAccelerationFeatureFlagEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 902
    return-void

    .line 904
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 905
    nop

    .line 904
    const-string v0, "mouse_pointer_acceleration_enabled"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 907
    return-void
.end method

.method public static blacklist setMouseReverseVerticalScrolling(Landroid/content/Context;Z)V
    .registers 4

    .line 819
    invoke-static {}, Landroid/hardware/input/InputSettings;->isMouseReverseVerticalScrollingFeatureFlagEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 820
    return-void

    .line 823
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 824
    nop

    .line 823
    const-string v0, "mouse_reverse_vertical_scrolling"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 826
    return-void
.end method

.method public static blacklist setMouseScrollingAcceleration(Landroid/content/Context;Z)V
    .registers 4

    .line 732
    invoke-static {}, Landroid/hardware/input/InputSettings;->isMouseScrollingAccelerationFeatureFlagEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 733
    return-void

    .line 736
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 737
    nop

    .line 736
    const-string v0, "mouse_scrolling_acceleration"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 739
    return-void
.end method

.method public static blacklist setMouseScrollingSpeed(Landroid/content/Context;I)V
    .registers 4

    .line 777
    invoke-static {p0}, Landroid/hardware/input/InputSettings;->isMouseScrollingAccelerationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 778
    return-void

    .line 781
    :cond_7
    const/4 v0, -0x7

    if-lt p1, v0, :cond_18

    const/4 v0, 0x7

    if-gt p1, v0, :cond_18

    .line 785
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "mouse_scrolling_speed"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 787
    return-void

    .line 782
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "speed out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist setMouseSwapPrimaryButton(Landroid/content/Context;Z)V
    .registers 4

    .line 860
    invoke-static {}, Landroid/hardware/input/InputSettings;->isMouseSwapPrimaryButtonFeatureFlagEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 861
    return-void

    .line 864
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 865
    nop

    .line 864
    const-string v0, "mouse_swap_primary_button"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 867
    return-void
.end method

.method public static blacklist setPointerSpeed(Landroid/content/Context;I)V
    .registers 3

    .line 199
    const/4 v0, -0x7

    if-lt p1, v0, :cond_10

    const/4 v0, 0x7

    if-gt p1, v0, :cond_10

    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "pointer_speed"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 205
    return-void

    .line 200
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "speed out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist setPrimaryKeysForMouseKeysEnabled(Landroid/content/Context;Z)V
    .registers 4

    .line 1220
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 1222
    nop

    .line 1220
    const-string v0, "accessibility_mouse_keys_use_primary_keys"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1223
    return-void
.end method

.method public static blacklist setRepeatKeysDelay(Landroid/content/Context;I)V
    .registers 4

    .line 1408
    invoke-static {}, Landroid/hardware/input/InputSettings;->isRepeatKeysFeatureFlagEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1409
    invoke-static {p0}, Landroid/hardware/input/InputSettings;->isRepeatKeysEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1410
    return-void

    .line 1412
    :cond_d
    const/16 v0, 0x14

    if-lt p1, v0, :cond_20

    const/16 v0, 0x7d0

    if-gt p1, v0, :cond_20

    .line 1419
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_repeat_delay"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1422
    return-void

    .line 1414
    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Provided repeat keys delay should be in range (20,2000)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist setRepeatKeysEnabled(Landroid/content/Context;Z)V
    .registers 4

    .line 1342
    invoke-static {}, Landroid/hardware/input/InputSettings;->isRepeatKeysFeatureFlagEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1343
    return-void

    .line 1345
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 1346
    nop

    .line 1345
    const-string v0, "key_repeat_enabled"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1347
    return-void
.end method

.method public static blacklist setRepeatKeysTimeout(Landroid/content/Context;I)V
    .registers 4

    .line 1371
    invoke-static {}, Landroid/hardware/input/InputSettings;->isRepeatKeysFeatureFlagEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1372
    invoke-static {p0}, Landroid/hardware/input/InputSettings;->isRepeatKeysEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1373
    return-void

    .line 1375
    :cond_d
    const/16 v0, 0x96

    if-lt p1, v0, :cond_20

    const/16 v0, 0x7d0

    if-gt p1, v0, :cond_20

    .line 1382
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_repeat_timeout"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1385
    return-void

    .line 1377
    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Provided repeat keys timeout should be in range (150,2000)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist setStylusEverUsed(Landroid/content/Context;Z)V
    .registers 3

    .line 281
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 282
    nop

    .line 281
    const-string v0, "stylus_ever_used"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 283
    return-void
.end method

.method public static blacklist setTouchpadAccelerationEnabled(Landroid/content/Context;Z)V
    .registers 4

    .line 418
    invoke-static {}, Landroid/hardware/input/InputSettings;->isPointerAccelerationFeatureFlagEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 419
    return-void

    .line 421
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 422
    nop

    .line 421
    const-string v0, "touchpad_acceleration_enabled"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 424
    return-void
.end method

.method public static blacklist setTouchpadNaturalScrolling(Landroid/content/Context;Z)V
    .registers 4

    .line 353
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 354
    nop

    .line 353
    const-string v0, "touchpad_natural_scrolling"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 356
    return-void
.end method

.method public static blacklist setTouchpadPointerSpeed(Landroid/content/Context;I)V
    .registers 4

    .line 316
    const/4 v0, -0x7

    if-lt p1, v0, :cond_11

    const/4 v0, 0x7

    if-gt p1, v0, :cond_11

    .line 320
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "touchpad_pointer_speed"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 322
    return-void

    .line 317
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "speed out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist setTouchpadRightClickZone(Landroid/content/Context;Z)V
    .registers 4

    .line 579
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 580
    nop

    .line 579
    const-string v0, "touchpad_right_click_zone"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 582
    return-void
.end method

.method public static blacklist setTouchpadSystemGesturesEnabled(Landroid/content/Context;Z)V
    .registers 4

    .line 629
    invoke-static {}, Landroid/hardware/input/InputSettings;->isTouchpadSystemGestureDisableFeatureFlagEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 630
    return-void

    .line 632
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 633
    nop

    .line 632
    const-string v0, "touchpad_system_gestures"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 634
    return-void
.end method

.method public static blacklist setTouchpadTapDragging(Landroid/content/Context;Z)V
    .registers 4

    .line 547
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 548
    nop

    .line 547
    const-string v0, "touchpad_tap_dragging"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 550
    return-void
.end method

.method public static blacklist setTouchpadTapToClick(Landroid/content/Context;Z)V
    .registers 4

    .line 385
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 386
    nop

    .line 385
    const-string v0, "touchpad_tap_to_click"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 388
    return-void
.end method

.method public static blacklist setTouchpadVisualizer(Landroid/content/Context;Z)V
    .registers 4

    .line 513
    invoke-static {}, Landroid/hardware/input/InputSettings;->isTouchpadVisualizerFeatureFlagEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 514
    return-void

    .line 516
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 517
    nop

    .line 516
    const-string v0, "touchpad_visualizer"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 518
    return-void
.end method

.method public static blacklist setTouchpadsEnabled(Landroid/content/Context;Z)V
    .registers 4

    .line 662
    invoke-static {}, Landroid/hardware/input/InputSettings;->isTouchpadDisableFeatureFlagEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 663
    return-void

    .line 665
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 666
    nop

    .line 665
    const-string v0, "touchpad_enabled"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 667
    return-void
.end method

.method public static blacklist useTouchpadNaturalScrolling(Landroid/content/Context;)Z
    .registers 4

    .line 336
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string v1, "touchpad_natural_scrolling"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    return v2
.end method

.method public static blacklist useTouchpadRightClickZone(Landroid/content/Context;)Z
    .registers 4

    .line 563
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string v1, "touchpad_right_click_zone"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_10

    move v2, v0

    :cond_10
    return v2
.end method

.method public static blacklist useTouchpadSystemGestures(Landroid/content/Context;)Z
    .registers 4

    .line 612
    invoke-static {}, Landroid/hardware/input/InputSettings;->isTouchpadSystemGestureDisableFeatureFlagEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 613
    return v1

    .line 615
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "touchpad_system_gestures"

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method public static blacklist useTouchpadTapDragging(Landroid/content/Context;)Z
    .registers 4

    .line 531
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string v1, "touchpad_tap_dragging"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_10

    move v2, v0

    :cond_10
    return v2
.end method

.method public static blacklist useTouchpadTapToClick(Landroid/content/Context;)Z
    .registers 4

    .line 369
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string v1, "touchpad_tap_to_click"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    return v2
.end method

.method public static blacklist useTouchpadThreeFingerTapShortcut(Landroid/content/Context;)Z
    .registers 4

    .line 596
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string v1, "touchpad_three_finger_tap_customization"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    .line 599
    if-eqz p0, :cond_f

    const/4 v2, 0x1

    :cond_f
    return v2
.end method

.method public static blacklist useTouchpadVisualizer(Landroid/content/Context;)Z
    .registers 4

    .line 496
    invoke-static {}, Landroid/hardware/input/InputSettings;->isTouchpadVisualizerFeatureFlagEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 497
    return v1

    .line 499
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "touchpad_visualizer"

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_17

    move v1, v0

    :cond_17
    return v1
.end method

.method public static blacklist useTouchpads(Landroid/content/Context;)Z
    .registers 4

    .line 645
    invoke-static {}, Landroid/hardware/input/InputSettings;->isTouchpadDisableFeatureFlagEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 646
    return v1

    .line 648
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "touchpad_enabled"

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method
