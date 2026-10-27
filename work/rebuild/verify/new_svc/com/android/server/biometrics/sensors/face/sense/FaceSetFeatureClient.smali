.class public Lcom/android/server/biometrics/sensors/face/sense/FaceSetFeatureClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "FaceSetFeatureClient.java"


# instance fields
.field public final mEnabled:Z

.field public final mFaceId:I

.field public final mFeature:I

.field public final mHardwareAuthToken:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;IZ[BI)V
    .registers 26

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

    .line 52
    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Z)V

    move/from16 p1, p10

    .line 54
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/sense/FaceSetFeatureClient;->mFeature:I

    move/from16 p1, p11

    .line 55
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/sense/FaceSetFeatureClient;->mEnabled:Z

    move/from16 p1, p13

    .line 56
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/sense/FaceSetFeatureClient;->mFaceId:I

    .line 58
    invoke-virtual/range {p12 .. p12}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/FaceSetFeatureClient;->mHardwareAuthToken:[B

    return-void
.end method


# virtual methods
.method public getProtoEnum()I
    .registers 1

    .line 0
    const/16 p0, 0x8

    return p0
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 2

    .line 72
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/sense/FaceSetFeatureClient;->startHalOperation()V

    return-void
.end method

.method public startHalOperation()V
    .registers 6

    .line 80
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/aospa/biometrics/face/ISenseService;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/sense/FaceSetFeatureClient;->mFeature:I

    iget-boolean v2, p0, Lcom/android/server/biometrics/sensors/face/sense/FaceSetFeatureClient;->mEnabled:Z

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/sense/FaceSetFeatureClient;->mHardwareAuthToken:[B

    iget v4, p0, Lcom/android/server/biometrics/sensors/face/sense/FaceSetFeatureClient;->mFaceId:I

    invoke-interface {v0, v1, v2, v3, v4}, Lvendor/aospa/biometrics/face/ISenseService;->setFeature(IZ[BI)V

    .line 81
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/sense/FaceSetFeatureClient;->mFeature:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onFeatureSet(ZI)V

    .line 82
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception v0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to set feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/sense/FaceSetFeatureClient;->mFeature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/biometrics/sensors/face/sense/FaceSetFeatureClient;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FaceSetFeatureClient"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public unableToStart()V
    .registers 3

    .line 64
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/sense/FaceSetFeatureClient;->mFeature:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onFeatureSet(ZI)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p0

    .line 66
    const-string v0, "FaceSetFeatureClient"

    const-string v1, "Unable to send error"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
