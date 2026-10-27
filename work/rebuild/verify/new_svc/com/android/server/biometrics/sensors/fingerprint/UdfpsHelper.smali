.class public abstract Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;
.super Ljava/lang/Object;
.source "UdfpsHelper.java"


# direct methods
.method public static isValidAcquisitionMessage(Landroid/content/Context;II)Z
    .registers 3

    .line 68
    invoke-static {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static onFingerDown(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;IIFF)V
    .registers 6

    .line 36
    invoke-static {p0}, Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;

    move-result-object p0

    .line 38
    const-string v0, "UdfpsHelper"

    if-nez p0, :cond_f

    .line 39
    const-string/jumbo p0, "onFingerDown | failed to cast the HIDL to V2_3"

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 44
    :cond_f
    :try_start_f
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;->onFingerDown(IIFF)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p0

    .line 46
    const-string/jumbo p1, "onFingerDown | RemoteException: "

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static onFingerUp(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;)V
    .registers 3

    .line 52
    invoke-static {p0}, Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;

    move-result-object p0

    .line 54
    const-string v0, "UdfpsHelper"

    if-nez p0, :cond_f

    .line 55
    const-string/jumbo p0, "onFingerUp | failed to cast the HIDL to V2_3"

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 60
    :cond_f
    :try_start_f
    invoke-interface {p0}, Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;->onFingerUp()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p0

    .line 62
    const-string/jumbo v1, "onFingerUp | RemoteException: "

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
