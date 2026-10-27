.class public interface abstract Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;
.super Ljava/lang/Object;
.source "WindowManagerPolicy.java"


# direct methods
.method public static cameraLensStateToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_13

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    .line 310
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 308
    :cond_d
    const-string p0, "CAMERA_LENS_COVERED"

    return-object p0

    .line 306
    :cond_10
    const-string p0, "CAMERA_LENS_UNCOVERED"

    return-object p0

    .line 304
    :cond_13
    const-string p0, "CAMERA_LENS_COVER_ABSENT"

    return-object p0
.end method

.method public static lidStateToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_13

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    .line 294
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 292
    :cond_d
    const-string p0, "LID_OPEN"

    return-object p0

    .line 290
    :cond_10
    const-string p0, "LID_CLOSED"

    return-object p0

    .line 288
    :cond_13
    const-string p0, "LID_ABSENT"

    return-object p0
.end method


# virtual methods
.method public abstract enableScreenIfNeeded()V
.end method

.method public abstract getCameraLensCoverState()I
.end method

.method public abstract getLidState()I
.end method

.method public abstract isCallerVirtualDeviceOwner(II)Z
.end method

.method public abstract isDisplayTrusted(I)Z
.end method

.method public abstract lockDeviceNow()V
.end method

.method public abstract moveDisplayToTopIfAllowed(I)V
.end method

.method public abstract notifyKeyguardTrustedChanged()V
.end method

.method public abstract onKeyguardShowingAndNotOccludedChanged()V
.end method

.method public abstract onPowerKeyDown(Z)V
.end method

.method public abstract onUserSwitched()V
.end method

.method public abstract reboot(Z)V
.end method

.method public abstract rebootSafeMode(Z)V
.end method

.method public abstract registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V
.end method

.method public abstract screenTurningOff(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
.end method

.method public abstract shutdown(Z)V
.end method

.method public abstract unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V
.end method

.method public abstract updateRotation(ZZ)V
.end method
