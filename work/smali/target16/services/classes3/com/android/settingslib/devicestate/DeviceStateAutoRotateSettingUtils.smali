.class public abstract Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingUtils;
.super Ljava/lang/Object;
.source "DeviceStateAutoRotateSettingUtils.java"


# direct methods
.method public static synthetic $r8$lambda$BVt350O2ZelbFkjil6Q2tLD54dw(Landroid/hardware/devicestate/DeviceState;)Z
    .registers 2

    const/4 v0, 0x1

    .line 48
    invoke-virtual {p0, v0}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result p0

    return p0
.end method

.method public static hasFoldedState(Landroid/hardware/devicestate/DeviceStateManager;)Z
    .registers 2

    .line 47
    invoke-virtual {p0}, Landroid/hardware/devicestate/DeviceStateManager;->getSupportedDeviceStates()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 48
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static isAutoRotateSupported(Landroid/content/Context;)Z
    .registers 2

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110282

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isDeviceStateRotationLockEnabled(Landroid/content/Context;)Z
    .registers 5

    .line 32
    const-class v0, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 36
    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10700bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_28

    .line 38
    invoke-static {p0}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingUtils;->isAutoRotateSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_28

    invoke-static {v0}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingUtils;->hasFoldedState(Landroid/hardware/devicestate/DeviceStateManager;)Z

    move-result p0

    if-eqz p0, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    return v1
.end method
