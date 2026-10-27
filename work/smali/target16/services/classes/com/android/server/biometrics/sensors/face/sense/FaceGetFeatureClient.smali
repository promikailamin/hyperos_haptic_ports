.class public Lcom/android/server/biometrics/sensors/face/sense/FaceGetFeatureClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "FaceGetFeatureClient.java"


# instance fields
.field public final mFaceId:I

.field public final mFeature:I

.field public mValue:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;II)V
    .registers 24

    const/4 v7, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 51
    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Z)V

    move/from16 p1, p10

    .line 53
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/sense/FaceGetFeatureClient;->mFeature:I

    move/from16 p1, p11

    .line 54
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/sense/FaceGetFeatureClient;->mFaceId:I

    return-void
.end method


# virtual methods
.method public getProtoEnum()I
    .registers 1

    .line 0
    const/16 p0, 0x9

    return p0
.end method

.method public getValue()Z
    .registers 1

    .line 94
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/face/sense/FaceGetFeatureClient;->mValue:Z

    return p0
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 2

    .line 70
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/sense/FaceGetFeatureClient;->startHalOperation()V

    return-void
.end method

.method public startHalOperation()V
    .registers 7

    const/4 v0, 0x0

    .line 77
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/aospa/biometrics/face/ISenseService;

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/sense/FaceGetFeatureClient;->mFeature:I

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/sense/FaceGetFeatureClient;->mFaceId:I

    invoke-interface {v1, v2, v3}, Lvendor/aospa/biometrics/face/ISenseService;->getFeature(II)Z

    move-result v1

    .line 79
    iget v2, p0, Lcom/android/server/biometrics/sensors/face/sense/FaceGetFeatureClient;->mFeature:I

    filled-new-array {v2}, [I

    move-result-object v2

    const/4 v3, 0x1

    .line 80
    new-array v4, v3, [Z

    aput-boolean v1, v4, v0

    .line 81
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/face/sense/FaceGetFeatureClient;->mValue:Z

    .line 83
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v5

    if-eqz v5, :cond_2c

    .line 84
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v4}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onFeatureGet(Z[I[Z)V

    goto :goto_2c

    :catch_2a
    move-exception v1

    goto :goto_32

    .line 86
    :cond_2c
    :goto_2c
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v1, p0, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_31} :catch_2a

    return-void

    .line 88
    :goto_32
    const-string v2, "FaceGetFeatureClient"

    const-string v3, "Unable to getFeature"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v1, p0, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public unableToStart()V
    .registers 4

    .line 60
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 61
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [I

    new-array v2, v0, [Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onFeatureGet(Z[I[Z)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    :cond_12
    return-void

    :catch_13
    move-exception p0

    .line 64
    const-string v0, "FaceGetFeatureClient"

    const-string v1, "Unable to send error"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
