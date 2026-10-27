.class public Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "FaceGetFeatureClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/HalClientMonitor<",
        "Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceGetFeatureClient"


# instance fields
.field private final mFaceId:I

.field private final mFeature:I

.field private mValue:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;II)V
    .registers 24
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "listener"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .param p5, "userId"    # I
    .param p6, "owner"    # Ljava/lang/String;
    .param p7, "sensorId"    # I
    .param p8, "logger"    # Lcom/android/server/biometrics/log/BiometricLogger;
    .param p9, "biometricContext"    # Lcom/android/server/biometrics/log/BiometricContext;
    .param p10, "feature"    # I
    .param p11, "faceId"    # I
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
            "II)V"
        }
    .end annotation

    .line 55
    .local p2, "lazyDaemon":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;>;"
    move-object v11, p0

    const/4 v7, 0x0

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

    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 57
    move/from16 v0, p10

    iput v0, v11, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->mFeature:I

    .line 58
    move/from16 v1, p11

    iput v1, v11, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->mFaceId:I

    .line 59
    return-void
.end method


# virtual methods
.method public getProtoEnum()I
    .registers 2

    .line 104
    const/16 v0, 0x9

    return v0
.end method

.method getValue()Z
    .registers 2

    .line 99
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->mValue:Z

    return v0
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 74
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->startHalOperation()V

    .line 76
    return-void
.end method

.method protected startHalOperation()V
    .registers 8

    .line 81
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->mFeature:I

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->mFaceId:I

    invoke-interface {v1, v2, v3}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->getFeature(II)Landroid/hardware/biometrics/face/V1_0/OptionalBool;

    move-result-object v1

    .line 82
    .local v1, "result":Landroid/hardware/biometrics/face/V1_0/OptionalBool;
    const/4 v2, 0x1

    new-array v3, v2, [I

    .line 83
    .local v3, "features":[I
    new-array v4, v2, [Z

    .line 84
    .local v4, "featureState":[Z
    iget v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->mFeature:I

    aput v5, v3, v0

    .line 85
    iget-boolean v5, v1, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->value:Z

    aput-boolean v5, v4, v0

    .line 86
    iget-boolean v5, v1, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->value:Z

    iput-boolean v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->mValue:Z

    .line 88
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v5

    if-eqz v5, :cond_34

    .line 89
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v5

    iget v6, v1, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->status:I

    if-nez v6, :cond_30

    move v6, v2

    goto :goto_31

    :cond_30
    move v6, v0

    :goto_31
    invoke-virtual {v5, v6, v3, v4}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onFeatureGet(Z[I[Z)V

    .line 91
    :cond_34
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v5, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_39} :catch_3a

    .line 95
    .end local v1    # "result":Landroid/hardware/biometrics/face/V1_0/OptionalBool;
    .end local v3    # "features":[I
    .end local v4    # "featureState":[Z
    goto :goto_47

    .line 92
    :catch_3a
    move-exception v1

    .line 93
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "FaceGetFeatureClient"

    const-string v3, "Unable to getFeature"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v2, p0, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 96
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_47
    return-void
.end method

.method public unableToStart()V
    .registers 5

    .line 64
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 65
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onFeatureGet(Z[I[Z)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    .line 69
    :cond_12
    goto :goto_1b

    .line 67
    :catch_13
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FaceGetFeatureClient"

    const-string v2, "Unable to send error"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void
.end method
