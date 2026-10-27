.class public abstract synthetic Lcom/android/server/wm/DeviceStateAutoRotateSettingController$$ExternalSyntheticTypeSwitchClass2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static synthetic switchDispatch(Ljava/lang/Object;I)I
    .registers 4

    .line 0
    const/4 v0, 0x4

    invoke-static {p1, v0}, Ljava/util/Objects;->checkIndex(II)I

    if-nez p0, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_11

    if-eq p1, v1, :cond_17

    if-eq p1, v0, :cond_1c

    goto :goto_21

    :cond_11
    instance-of p1, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$UpdateAccelerometerRotationSetting;

    if-eqz p1, :cond_17

    const/4 p0, 0x0

    return p0

    :cond_17
    instance-of p1, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$UpdateDeviceStateAutoRotateSetting;

    if-eqz p1, :cond_1c

    return v1

    :cond_1c
    instance-of p0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event$UpdateDevicePosture;

    if-eqz p0, :cond_21

    return v0

    :cond_21
    :goto_21
    const/4 p0, -0x2

    return p0
.end method
