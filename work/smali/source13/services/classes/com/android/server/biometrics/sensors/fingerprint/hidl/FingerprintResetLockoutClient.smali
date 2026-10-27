.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintResetLockoutClient;
.super Lcom/android/server/biometrics/sensors/BaseClientMonitor;
.source "FingerprintResetLockoutClient.java"


# instance fields
.field final mLockoutTracker:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;)V
    .registers 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "owner"    # Ljava/lang/String;
    .param p4, "sensorId"    # I
    .param p5, "logger"    # Lcom/android/server/biometrics/log/BiometricLogger;
    .param p6, "biometricContext"    # Lcom/android/server/biometrics/log/BiometricContext;
    .param p7, "lockoutTracker"    # Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    .line 40
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    move v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 42
    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintResetLockoutClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    .line 43
    return-void
.end method


# virtual methods
.method public getProtoEnum()I
    .registers 2

    .line 59
    const/16 v0, 0xc

    return v0
.end method

.method public interruptsPrecedingClients()Z
    .registers 2

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 5
    .param p1, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 47
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 48
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintResetLockoutClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    .line 49
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintResetLockoutClient;->getTargetUserId()I

    move-result v1

    .line 48
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->resetFailedAttemptsForUser(ZI)V

    .line 50
    invoke-interface {p1, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 51
    return-void
.end method
