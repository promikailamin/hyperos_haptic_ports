.class public Lcom/android/server/biometrics/sensors/face/aidl/FaceGenerateChallengeClient;
.super Lcom/android/server/biometrics/sensors/GenerateChallengeClient;
.source "FaceGenerateChallengeClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/GenerateChallengeClient<",
        "Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceGenerateChallengeClient"


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
            "Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;",
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

    .line 44
    .local p2, "lazyDaemon":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;>;"
    invoke-direct/range {p0 .. p9}, Lcom/android/server/biometrics/sensors/GenerateChallengeClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getTargetUserId()I
    .registers 2

    .line 77
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceGenerateChallengeClient;->mTargetUserId:I

    return v0
.end method

.method onChallengeGenerated(IIJ)V
    .registers 10
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "challenge"    # J

    .line 60
    const-string v0, "FaceGenerateChallengeClient"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceGenerateChallengeClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v2

    .line 61
    .local v2, "listener":Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    if-nez v2, :cond_14

    .line 62
    const-string v3, "Listener is null in onChallengeGenerated"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceGenerateChallengeClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v3, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 64
    return-void

    .line 66
    :cond_14
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onChallengeGenerated(IIJ)V

    .line 67
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceGenerateChallengeClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v4, 0x1

    invoke-interface {v3, p0, v4}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1d} :catch_1e

    .line 71
    .end local v2    # "listener":Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    goto :goto_29

    .line 68
    :catch_1e
    move-exception v2

    .line 69
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Unable to send challenge"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceGenerateChallengeClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 72
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_29
    return-void
.end method

.method protected startHalOperation()V
    .registers 4

    .line 51
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceGenerateChallengeClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/biometrics/face/ISession;->generateChallenge()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 55
    goto :goto_1c

    .line 52
    :catch_e
    move-exception v0

    .line 53
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FaceGenerateChallengeClient"

    const-string v2, "Unable to generateChallenge"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceGenerateChallengeClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 56
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method
