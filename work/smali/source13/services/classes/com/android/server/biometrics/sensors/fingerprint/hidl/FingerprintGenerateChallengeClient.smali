.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintGenerateChallengeClient;
.super Lcom/android/server/biometrics/sensors/GenerateChallengeClient;
.source "FingerprintGenerateChallengeClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/GenerateChallengeClient<",
        "Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FingerprintGenerateChallengeClient"


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "listener"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .param p5, "userId"    # I
    .param p6, "owner"    # Ljava/lang/String;
    .param p7, "sensorId"    # I
    .param p8, "logger"    # Lcom/android/server/biometrics/log/BiometricLogger;
    .param p9, "biometricContext"    # Lcom/android/server/biometrics/log/BiometricContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;",
            ">;",
            "Landroid/os/IBinder;",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            ")V"
        }
    .end annotation

    .line 48
    .local p2, "lazyDaemon":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;>;"
    invoke-direct/range {p0 .. p9}, Lcom/android/server/biometrics/sensors/GenerateChallengeClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected startHalOperation()V
    .registers 8

    .line 55
    const-string v0, "FingerprintGenerateChallengeClient"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintGenerateChallengeClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    invoke-interface {v2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->preEnroll()J

    move-result-wide v2

    .line 57
    .local v2, "challenge":J
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintGenerateChallengeClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v4
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_11} :catch_41

    if-eqz v4, :cond_35

    .line 59
    :try_start_13
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintGenerateChallengeClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintGenerateChallengeClient;->getSensorId()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintGenerateChallengeClient;->getTargetUserId()I

    move-result v6

    invoke-virtual {v4, v5, v6, v2, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onChallengeGenerated(IIJ)V

    .line 60
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintGenerateChallengeClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v5, 0x1

    invoke-interface {v4, p0, v5}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_28} :catch_29

    .line 64
    :goto_28
    goto :goto_40

    .line 61
    :catch_29
    move-exception v4

    .line 62
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2a
    const-string v5, "Remote exception"

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintGenerateChallengeClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v5, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .end local v4    # "e":Landroid/os/RemoteException;
    goto :goto_28

    .line 66
    :cond_35
    const-string/jumbo v4, "listener lost!!"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintGenerateChallengeClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v4, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_40} :catch_41

    .line 73
    .end local v2    # "challenge":J
    :goto_40
    goto :goto_4d

    .line 70
    :catch_41
    move-exception v2

    .line 71
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "preEnroll failed"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintGenerateChallengeClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 74
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_4d
    return-void
.end method
