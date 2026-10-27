.class public Lcom/android/server/biometrics/sensors/face/aidl/FaceStopUserClient;
.super Lcom/android/server/biometrics/sensors/StopUserClient;
.source "FaceStopUserClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/StopUserClient<",
        "Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceStopUserClient"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/StopUserClient$UserStoppedCallback;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "userId"    # I
    .param p5, "sensorId"    # I
    .param p6, "logger"    # Lcom/android/server/biometrics/log/BiometricLogger;
    .param p7, "biometricContext"    # Lcom/android/server/biometrics/log/BiometricContext;
    .param p8, "callback"    # Lcom/android/server/biometrics/sensors/StopUserClient$UserStoppedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;",
            ">;",
            "Landroid/os/IBinder;",
            "II",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "Lcom/android/server/biometrics/sensors/StopUserClient$UserStoppedCallback;",
            ")V"
        }
    .end annotation

    .line 40
    .local p2, "lazyDaemon":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;>;"
    invoke-direct/range {p0 .. p8}, Lcom/android/server/biometrics/sensors/StopUserClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/StopUserClient$UserStoppedCallback;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getTargetUserId()I
    .registers 2

    .line 66
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceStopUserClient;->mTargetUserId:I

    return v0
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 45
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/StopUserClient;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceStopUserClient;->startHalOperation()V

    .line 47
    return-void
.end method

.method protected startHalOperation()V
    .registers 4

    .line 52
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceStopUserClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/biometrics/face/ISession;->close()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 56
    goto :goto_1e

    .line 53
    :catch_e
    move-exception v0

    .line 54
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FaceStopUserClient"

    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceStopUserClient;->getCallback()Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 57
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1e
    return-void
.end method

.method public unableToStart()V
    .registers 1

    .line 61
    return-void
.end method
