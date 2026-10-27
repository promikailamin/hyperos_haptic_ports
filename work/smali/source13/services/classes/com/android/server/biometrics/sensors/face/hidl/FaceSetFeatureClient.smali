.class public Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "FaceSetFeatureClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/HalClientMonitor<",
        "Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceSetFeatureClient"


# instance fields
.field private final mEnabled:Z

.field private final mFaceId:I

.field private final mFeature:I

.field private final mHardwareAuthToken:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;IZ[BI)V
    .registers 27
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "listener"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .param p5, "userId"    # I
    .param p6, "owner"    # Ljava/lang/String;
    .param p7, "sensorId"    # I
    .param p8, "logger"    # Lcom/android/server/biometrics/log/BiometricLogger;
    .param p9, "biometricContext"    # Lcom/android/server/biometrics/log/BiometricContext;
    .param p10, "feature"    # I
    .param p11, "enabled"    # Z
    .param p12, "hardwareAuthToken"    # [B
    .param p13, "faceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;",
            ">;",
            "Landroid/os/IBinder;",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "IZ[BI)V"
        }
    .end annotation

    .line 55
    .local p2, "lazyDaemon":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;>;"
    move-object v11, p0

    move-object/from16 v12, p12

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 57
    move/from16 v0, p10

    iput v0, v11, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mFeature:I

    .line 58
    move/from16 v1, p11

    iput-boolean v1, v11, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mEnabled:Z

    .line 59
    move/from16 v2, p13

    iput v2, v11, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mFaceId:I

    .line 61
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v11, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mHardwareAuthToken:Ljava/util/ArrayList;

    .line 62
    array-length v3, v12

    const/4 v4, 0x0

    :goto_2d
    if-ge v4, v3, :cond_3d

    aget-byte v5, v12, v4

    .line 63
    .local v5, "b":B
    iget-object v6, v11, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mHardwareAuthToken:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 65
    :cond_3d
    return-void
.end method


# virtual methods
.method public getProtoEnum()I
    .registers 2

    .line 98
    const/16 v0, 0x8

    return v0
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 78
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->startHalOperation()V

    .line 81
    return-void
.end method

.method protected startHalOperation()V
    .registers 7

    .line 86
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mFeature:I

    iget-boolean v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mEnabled:Z

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mHardwareAuthToken:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mFaceId:I

    .line 87
    invoke-interface {v1, v2, v3, v4, v5}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->setFeature(IZLjava/util/ArrayList;I)I

    move-result v1

    .line 88
    .local v1, "result":I
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v1, :cond_1c

    move v4, v3

    goto :goto_1d

    :cond_1c
    move v4, v0

    :goto_1d
    iget v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mFeature:I

    invoke-virtual {v2, v4, v5}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onFeatureSet(ZI)V

    .line 89
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v2, p0, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_27} :catch_28

    .line 93
    .end local v1    # "result":I
    goto :goto_54

    .line 90
    :catch_28
    move-exception v1

    .line 91
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to set feature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mFeature:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FaceSetFeatureClient"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v2, p0, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 94
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_54
    return-void
.end method

.method public unableToStart()V
    .registers 4

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;->mFeature:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onFeatureSet(ZI)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 73
    goto :goto_13

    .line 71
    :catch_b
    move-exception v0

    .line 72
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FaceSetFeatureClient"

    const-string v2, "Unable to send error"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method
