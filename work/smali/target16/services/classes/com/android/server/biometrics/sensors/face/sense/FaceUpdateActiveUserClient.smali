.class public Lcom/android/server/biometrics/sensors/face/sense/FaceUpdateActiveUserClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "FaceUpdateActiveUserClient.java"


# instance fields
.field public final mAuthenticatorIds:Ljava/util/Map;

.field public final mHasEnrolledBiometrics:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLjava/util/Map;)V
    .registers 22

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 50
    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Z)V

    move/from16 p1, p8

    .line 53
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/sense/FaceUpdateActiveUserClient;->mHasEnrolledBiometrics:Z

    move-object/from16 p1, p9

    .line 54
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/FaceUpdateActiveUserClient;->mAuthenticatorIds:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getProtoEnum()I
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 2

    .line 59
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/sense/FaceUpdateActiveUserClient;->startHalOperation()V

    return-void
.end method

.method public startHalOperation()V
    .registers 6

    .line 71
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/aospa/biometrics/face/ISenseService;

    .line 72
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/sense/FaceUpdateActiveUserClient;->mAuthenticatorIds:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 73
    iget-boolean v3, p0, Lcom/android/server/biometrics/sensors/face/sense/FaceUpdateActiveUserClient;->mHasEnrolledBiometrics:Z

    if-eqz v3, :cond_1c

    invoke-interface {v0}, Lvendor/aospa/biometrics/face/ISenseService;->getAuthenticatorId()I

    move-result v0

    int-to-long v3, v0

    goto :goto_1e

    :catch_1a
    move-exception v0

    goto :goto_2c

    :cond_1c
    const-wide/16 v3, 0x0

    :goto_1e
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 72
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2b} :catch_1a

    return-void

    .line 76
    :goto_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to setActiveUser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceUpdateActiveUserClient"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public unableToStart()V
    .registers 1

    .line 0
    return-void
.end method
