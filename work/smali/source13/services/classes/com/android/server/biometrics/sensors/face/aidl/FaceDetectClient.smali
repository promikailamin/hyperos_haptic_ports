.class public Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;
.super Lcom/android/server/biometrics/sensors/AcquisitionClient;
.source "FaceDetectClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/DetectionConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/AcquisitionClient<",
        "Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;",
        ">;",
        "Lcom/android/server/biometrics/sensors/DetectionConsumer;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceDetectClient"


# instance fields
.field private mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

.field private final mIsStrongBiometric:Z

.field private mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Z)V
    .registers 29
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "requestId"    # J
    .param p6, "listener"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .param p7, "userId"    # I
    .param p8, "owner"    # Ljava/lang/String;
    .param p9, "sensorId"    # I
    .param p10, "logger"    # Lcom/android/server/biometrics/log/BiometricLogger;
    .param p11, "biometricContext"    # Lcom/android/server/biometrics/log/BiometricContext;
    .param p12, "isStrongBiometric"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;",
            ">;",
            "Landroid/os/IBinder;",
            "J",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "Z)V"
        }
    .end annotation

    .line 58
    .local p2, "lazyDaemon":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;>;"
    const-class v0, Landroid/hardware/SensorPrivacyManager;

    .line 60
    move-object/from16 v15, p1

    invoke-virtual {v15, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/hardware/SensorPrivacyManager;

    .line 58
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    invoke-direct/range {v1 .. v14}, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLandroid/hardware/SensorPrivacyManager;)V

    .line 61
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLandroid/hardware/SensorPrivacyManager;)V
    .registers 27
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "requestId"    # J
    .param p6, "listener"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .param p7, "userId"    # I
    .param p8, "owner"    # Ljava/lang/String;
    .param p9, "sensorId"    # I
    .param p10, "logger"    # Lcom/android/server/biometrics/log/BiometricLogger;
    .param p11, "biometricContext"    # Lcom/android/server/biometrics/log/BiometricContext;
    .param p12, "isStrongBiometric"    # Z
    .param p13, "sensorPrivacyManager"    # Landroid/hardware/SensorPrivacyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;",
            ">;",
            "Landroid/os/IBinder;",
            "J",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "Z",
            "Landroid/hardware/SensorPrivacyManager;",
            ")V"
        }
    .end annotation

    .line 70
    .local p2, "lazyDaemon":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;>;"
    move-object v12, p0

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v8, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/AcquisitionClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IIZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 72
    move-wide/from16 v0, p4

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->setRequestId(J)V

    .line 73
    move/from16 v2, p12

    iput-boolean v2, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mIsStrongBiometric:Z

    .line 74
    move-object/from16 v3, p13

    iput-object v3, v12, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 75
    return-void
.end method

.method private doDetectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 117
    .local v0, "session":Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->hasContextMethods()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 118
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->getOperationContext()Landroid/hardware/biometrics/common/OperationContext;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/hardware/biometrics/face/ISession;->detectInteractionWithContext(Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v1

    return-object v1

    .line 120
    :cond_19
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/biometrics/face/ISession;->detectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getProtoEnum()I
    .registers 2

    .line 139
    const/16 v0, 0xd

    return v0
.end method

.method public getTargetUserId()I
    .registers 2

    .line 150
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mTargetUserId:I

    return v0
.end method

.method public interruptsPrecedingClients()Z
    .registers 2

    .line 144
    const/4 v0, 0x1

    return v0
.end method

.method public onInteractionDetected()V
    .registers 5

    .line 126
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->vibrateSuccess()V

    .line 129
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->getSensorId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->getTargetUserId()I

    move-result v2

    iget-boolean v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mIsStrongBiometric:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onDetected(IIZ)V

    .line 130
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1a} :catch_1b

    .line 134
    goto :goto_29

    .line 131
    :catch_1b
    move-exception v0

    .line 132
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FaceDetectClient"

    const-string v2, "Remote exception when sending onDetected"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 135
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_29
    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 79
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->startHalOperation()V

    .line 81
    return-void
.end method

.method protected startHalOperation()V
    .registers 5

    .line 97
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    const/4 v2, 0x2

    .line 99
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 101
    invoke-virtual {p0, v3, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->onError(II)V

    .line 102
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 103
    return-void

    .line 107
    :cond_16
    :try_start_16
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->doDetectInteraction()Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1d

    .line 111
    goto :goto_2a

    .line 108
    :catch_1d
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FaceDetectClient"

    const-string v3, "Remote exception when requesting face detect"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v2, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 112
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2a
    return-void
.end method

.method protected stopHalOperation()V
    .registers 4

    .line 85
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    if-eqz v0, :cond_16

    .line 87
    :try_start_4
    invoke-interface {v0}, Landroid/hardware/biometrics/common/ICancellationSignal;->cancel()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 91
    goto :goto_16

    .line 88
    :catch_8
    move-exception v0

    .line 89
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FaceDetectClient"

    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 93
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    :goto_16
    return-void
.end method
