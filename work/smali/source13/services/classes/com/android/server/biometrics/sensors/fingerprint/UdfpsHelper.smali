.class public Lcom/android/server/biometrics/sensors/fingerprint/UdfpsHelper;
.super Ljava/lang/Object;
.source "UdfpsHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UdfpsHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValidAcquisitionMessage(Landroid/content/Context;II)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 68
    invoke-static {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static onFingerDown(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;IIFF)V
    .registers 9
    .param p0, "daemon"    # Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "minor"    # F
    .param p4, "major"    # F

    .line 35
    nop

    .line 36
    invoke-static {p0}, Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;

    move-result-object v0

    .line 38
    .local v0, "extension":Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;
    const-string v1, "UdfpsHelper"

    if-nez v0, :cond_10

    .line 39
    const-string/jumbo v2, "onFingerDown | failed to cast the HIDL to V2_3"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void

    .line 44
    :cond_10
    :try_start_10
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;->onFingerDown(IIFF)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    .line 47
    goto :goto_1b

    .line 45
    :catch_14
    move-exception v2

    .line 46
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "onFingerDown | RemoteException: "

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void
.end method

.method public static onFingerUp(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;)V
    .registers 5
    .param p0, "daemon"    # Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 51
    nop

    .line 52
    invoke-static {p0}, Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;

    move-result-object v0

    .line 54
    .local v0, "extension":Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;
    const-string v1, "UdfpsHelper"

    if-nez v0, :cond_10

    .line 55
    const-string/jumbo v2, "onFingerUp | failed to cast the HIDL to V2_3"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void

    .line 60
    :cond_10
    :try_start_10
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_3/IBiometricsFingerprint;->onFingerUp()V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    .line 63
    goto :goto_1b

    .line 61
    :catch_14
    move-exception v2

    .line 62
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "onFingerUp | RemoteException: "

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void
.end method
