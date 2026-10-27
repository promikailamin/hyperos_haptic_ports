.class public Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;
.super Lcom/android/server/biometrics/sensors/GenerateChallengeClient;
.source "FaceGenerateChallengeClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/GenerateChallengeClient<",
        "Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;",
        ">;"
    }
.end annotation


# static fields
.field static final CHALLENGE_TIMEOUT_SEC:I = 0x258

.field private static final EMPTY_CALLBACK:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

.field private static final TAG:Ljava/lang/String; = "FaceGenerateChallengeClient"


# instance fields
.field private mChallengeResult:Ljava/lang/Long;

.field private final mCreatedAt:J

.field private mWaiting:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/face/IFaceServiceReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient$1;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient$1;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->EMPTY_CALLBACK:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;J)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "listener"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .param p5, "userId"    # I
    .param p6, "owner"    # Ljava/lang/String;
    .param p7, "sensorId"    # I
    .param p8, "logger"    # Lcom/android/server/biometrics/log/BiometricLogger;
    .param p9, "biometricContext"    # Lcom/android/server/biometrics/log/BiometricContext;
    .param p10, "now"    # J
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
            "J)V"
        }
    .end annotation

    .line 58
    .local p2, "lazyDaemon":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;>;"
    invoke-direct/range {p0 .. p9}, Lcom/android/server/biometrics/sensors/GenerateChallengeClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 60
    iput-wide p10, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->mCreatedAt:J

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->mWaiting:Ljava/util/List;

    .line 62
    return-void
.end method

.method private sendChallengeResult(Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 9
    .param p1, "receiver"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .param p2, "ownerCallback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 104
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->mChallengeResult:Ljava/lang/Long;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    const-string/jumbo v3, "result not available"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 106
    :try_start_f
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->getSensorId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->getTargetUserId()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->mChallengeResult:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v0, v3, v4, v5}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onChallengeGenerated(IIJ)V

    .line 107
    invoke-interface {p2, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_23} :catch_24

    .line 111
    goto :goto_2f

    .line 108
    :catch_24
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FaceGenerateChallengeClient"

    const-string v3, "Remote exception"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    invoke-interface {p2, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 112
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2f
    return-void
.end method


# virtual methods
.method public getCreatedAt()J
    .registers 3

    .line 85
    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->mCreatedAt:J

    return-wide v0
.end method

.method public reuseResult(Landroid/hardware/face/IFaceServiceReceiver;)V
    .registers 4
    .param p1, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;

    .line 95
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->mWaiting:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 96
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 98
    :cond_8
    new-instance v0, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    sget-object v1, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->EMPTY_CALLBACK:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-direct {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->sendChallengeResult(Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 100
    :goto_12
    return-void
.end method

.method protected startHalOperation()V
    .registers 6

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->mChallengeResult:Ljava/lang/Long;

    .line 68
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    const/16 v2, 0x258

    invoke-interface {v1, v2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->generateChallenge(I)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object v1

    iget-wide v1, v1, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->mChallengeResult:Ljava/lang/Long;

    .line 71
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-direct {p0, v1, v2}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->sendChallengeResult(Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 72
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->mWaiting:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/IFaceServiceReceiver;

    .line 73
    .local v2, "receiver":Landroid/hardware/face/IFaceServiceReceiver;
    new-instance v3, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-direct {v3, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    sget-object v4, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->EMPTY_CALLBACK:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-direct {p0, v3, v4}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->sendChallengeResult(Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3c} :catch_3f
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3d

    .line 74
    .end local v2    # "receiver":Landroid/hardware/face/IFaceServiceReceiver;
    goto :goto_26

    .line 79
    :catchall_3d
    move-exception v1

    goto :goto_51

    .line 75
    :catch_3f
    move-exception v1

    .line 76
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_40
    const-string v2, "FaceGenerateChallengeClient"

    const-string v3, "generateChallenge failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    :try_end_4d
    .catchall {:try_start_40 .. :try_end_4d} :catchall_3d

    .line 79
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4d
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->mWaiting:Ljava/util/List;

    .line 80
    nop

    .line 81
    return-void

    .line 79
    :goto_51
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->mWaiting:Ljava/util/List;

    .line 80
    throw v1
.end method
