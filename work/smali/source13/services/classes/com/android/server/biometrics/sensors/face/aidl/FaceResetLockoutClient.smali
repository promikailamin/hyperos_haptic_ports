.class public Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "FaceResetLockoutClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ErrorConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/HalClientMonitor<",
        "Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;",
        ">;",
        "Lcom/android/server/biometrics/sensors/ErrorConsumer;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceResetLockoutClient"


# instance fields
.field private final mHardwareAuthToken:Landroid/hardware/keymaster/HardwareAuthToken;

.field private final mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

.field private final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;[BLcom/android/server/biometrics/sensors/LockoutCache;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;)V
    .registers 23
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "userId"    # I
    .param p4, "owner"    # Ljava/lang/String;
    .param p5, "sensorId"    # I
    .param p6, "logger"    # Lcom/android/server/biometrics/log/BiometricLogger;
    .param p7, "biometricContext"    # Lcom/android/server/biometrics/log/BiometricContext;
    .param p8, "hardwareAuthToken"    # [B
    .param p9, "lockoutTracker"    # Lcom/android/server/biometrics/sensors/LockoutCache;
    .param p10, "lockoutResetDispatcher"    # Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;",
            ">;I",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "[B",
            "Lcom/android/server/biometrics/sensors/LockoutCache;",
            "Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;",
            ")V"
        }
    .end annotation

    .line 57
    .local p2, "lazyDaemon":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;>;"
    move-object v11, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 59
    invoke-static/range {p8 .. p8}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;

    move-result-object v0

    iput-object v0, v11, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;->mHardwareAuthToken:Landroid/hardware/keymaster/HardwareAuthToken;

    .line 60
    move-object/from16 v0, p9

    iput-object v0, v11, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    .line 61
    move-object/from16 v1, p10

    iput-object v1, v11, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 62
    return-void
.end method

.method static resetLocalLockoutStateToNone(IILcom/android/server/biometrics/sensors/LockoutCache;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;)V
    .registers 5
    .param p0, "sensorId"    # I
    .param p1, "userId"    # I
    .param p2, "lockoutTracker"    # Lcom/android/server/biometrics/sensors/LockoutCache;
    .param p3, "lockoutResetDispatcher"    # Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/android/server/biometrics/sensors/LockoutCache;->setLockoutModeForUser(II)V

    .line 107
    invoke-virtual {p3, p0}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->notifyLockoutResetCallbacks(I)V

    .line 108
    return-void
.end method


# virtual methods
.method public getProtoEnum()I
    .registers 2

    .line 112
    const/16 v0, 0xc

    return v0
.end method

.method public getTargetUserId()I
    .registers 2

    .line 124
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;->mTargetUserId:I

    return v0
.end method

.method public interruptsPrecedingClients()Z
    .registers 2

    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public onError(II)V
    .registers 5
    .param p1, "errorCode"    # I
    .param p2, "vendorCode"    # I

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error during resetLockout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceResetLockoutClient"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 119
    return-void
.end method

.method onLockoutCleared()V
    .registers 5

    .line 86
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;->getSensorId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;->getTargetUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;->resetLocalLockoutStateToNone(IILcom/android/server/biometrics/sensors/LockoutCache;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;)V

    .line 88
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 89
    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 71
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;->startHalOperation()V

    .line 73
    return-void
.end method

.method protected startHalOperation()V
    .registers 4

    .line 78
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;->mHardwareAuthToken:Landroid/hardware/keymaster/HardwareAuthToken;

    invoke-interface {v0, v1}, Landroid/hardware/biometrics/face/ISession;->resetLockout(Landroid/hardware/keymaster/HardwareAuthToken;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 82
    goto :goto_1e

    .line 79
    :catch_10
    move-exception v0

    .line 80
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FaceResetLockoutClient"

    const-string v2, "Unable to reset lockout"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 83
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1e
    return-void
.end method

.method public unableToStart()V
    .registers 1

    .line 67
    return-void
.end method
