.class public Lcom/android/server/biometrics/sensors/face/hidl/FaceUpdateActiveUserClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "FaceUpdateActiveUserClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/HalClientMonitor<",
        "Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;",
        ">;"
    }
.end annotation


# static fields
.field private static final FACE_DATA_DIR:Ljava/lang/String; = "facedata"

.field private static final TAG:Ljava/lang/String; = "FaceUpdateActiveUserClient"


# instance fields
.field private final mAuthenticatorIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mHasEnrolledBiometrics:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLjava/util/Map;)V
    .registers 22
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "userId"    # I
    .param p4, "owner"    # Ljava/lang/String;
    .param p5, "sensorId"    # I
    .param p6, "logger"    # Lcom/android/server/biometrics/log/BiometricLogger;
    .param p7, "biometricContext"    # Lcom/android/server/biometrics/log/BiometricContext;
    .param p8, "hasEnrolledBiometrics"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;",
            ">;I",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 48
    .local p2, "lazyDaemon":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;>;"
    .local p9, "authenticatorIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
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

    .line 50
    move/from16 v0, p8

    iput-boolean v0, v11, Lcom/android/server/biometrics/sensors/face/hidl/FaceUpdateActiveUserClient;->mHasEnrolledBiometrics:Z

    .line 51
    move-object/from16 v1, p9

    iput-object v1, v11, Lcom/android/server/biometrics/sensors/face/hidl/FaceUpdateActiveUserClient;->mAuthenticatorIds:Ljava/util/Map;

    .line 52
    return-void
.end method


# virtual methods
.method public getProtoEnum()I
    .registers 2

    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 56
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceUpdateActiveUserClient;->startHalOperation()V

    .line 58
    return-void
.end method

.method protected startHalOperation()V
    .registers 9

    .line 67
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceUpdateActiveUserClient;->getTargetUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/Environment;->getDataVendorDeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "facedata"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 69
    .local v0, "storePath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "FaceUpdateActiveUserClient"

    if-nez v1, :cond_24

    .line 70
    const-string/jumbo v1, "vold has not created the directory?"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceUpdateActiveUserClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 72
    return-void

    .line 76
    :cond_24
    :try_start_24
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceUpdateActiveUserClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 77
    .local v1, "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceUpdateActiveUserClient;->getTargetUserId()I

    move-result v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->setActiveUser(ILjava/lang/String;)I

    .line 78
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceUpdateActiveUserClient;->mAuthenticatorIds:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceUpdateActiveUserClient;->getTargetUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 79
    iget-boolean v6, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceUpdateActiveUserClient;->mHasEnrolledBiometrics:Z

    if-eqz v6, :cond_4a

    invoke-interface {v1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->getAuthenticatorId()Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object v6

    iget-wide v6, v6, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    goto :goto_4c

    :cond_4a
    const-wide/16 v6, 0x0

    :goto_4c
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 78
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceUpdateActiveUserClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v5, 0x1

    invoke-interface {v4, p0, v5}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_59} :catch_5a

    .line 84
    .end local v1    # "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    goto :goto_76

    .line 81
    :catch_5a
    move-exception v1

    .line 82
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to setActiveUser: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceUpdateActiveUserClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v3, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 85
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_76
    return-void
.end method

.method public unableToStart()V
    .registers 1

    .line 63
    return-void
.end method
