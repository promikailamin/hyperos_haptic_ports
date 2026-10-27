.class public interface abstract Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;
.super Ljava/lang/Object;
.source "PowerFingerPrintServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub$ChangeListener;
    }
.end annotation


# static fields
.field public static final FINGERPRINT_CMD_LOCKOUT_MODE:I = 0xc

.field public static final POWERFP_DISABLE_NAVIGATION:I = 0x0

.field public static final POWERFP_ENABLE_LOCK_KEY:I = 0x1

.field public static final POWERFP_ENABLE_NAVIGATION:I = 0x2


# direct methods
.method public static getInstance()Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;
    .registers 1

    .line 14
    const-class v0, Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;

    return-object v0
.end method


# virtual methods
.method public abstract NotifyLockOutState(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BaseClientMonitor;II)V
.end method

.method public getDealOnChange()Z
    .registers 2

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public getDoubleTapSideFpOption(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p1, "mContext"    # Landroid/content/Context;

    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterceptPowerKeyAuthOrEnroll()Z
    .registers 2

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public getInterceptPowerKeyTimeByFinger()J
    .registers 3

    .line 30
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getIsPowerKeyDown()Z
    .registers 2

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public getIsPowerfp()Z
    .registers 2

    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public getIsSupportFpTap()Z
    .registers 2

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public abstract registerDoubleTapSideFpOptionObserver(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
.end method

.method public abstract setChangeListener(Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub$ChangeListener;)V
.end method

.method public abstract setDealOnChange(Z)V
.end method

.method public abstract setInterceptPowerKeyAuthOrEnroll(Z)V
.end method

.method public abstract setInterceptPowerKeyTimeByFinger(J)V
.end method

.method public abstract setIsPowerKeyDown(Z)V
.end method
