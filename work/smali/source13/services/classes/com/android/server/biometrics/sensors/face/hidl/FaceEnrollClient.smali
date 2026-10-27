.class public Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;
.super Lcom/android/server/biometrics/sensors/EnrollClient;
.source "FaceEnrollClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/EnrollClient<",
        "Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceEnrollClient"


# instance fields
.field private final mDisabledFeatures:[I

.field private final mEnrollIgnoreList:[I

.field private final mEnrollIgnoreListVendor:[I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;JLcom/android/server/biometrics/sensors/BiometricUtils;[IILandroid/view/Surface;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V
    .registers 33
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "listener"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .param p5, "userId"    # I
    .param p6, "hardwareAuthToken"    # [B
    .param p7, "owner"    # Ljava/lang/String;
    .param p8, "requestId"    # J
    .param p11, "disabledFeatures"    # [I
    .param p12, "timeoutSec"    # I
    .param p13, "previewSurface"    # Landroid/view/Surface;
    .param p14, "sensorId"    # I
    .param p15, "logger"    # Lcom/android/server/biometrics/log/BiometricLogger;
    .param p16, "biometricContext"    # Lcom/android/server/biometrics/log/BiometricContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;",
            ">;",
            "Landroid/os/IBinder;",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "I[B",
            "Ljava/lang/String;",
            "J",
            "Lcom/android/server/biometrics/sensors/BiometricUtils<",
            "Landroid/hardware/face/Face;",
            ">;[II",
            "Landroid/view/Surface;",
            "I",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            ")V"
        }
    .end annotation

    .line 65
    .local p2, "lazyDaemon":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;>;"
    .local p10, "utils":Lcom/android/server/biometrics/sensors/BiometricUtils;, "Lcom/android/server/biometrics/sensors/BiometricUtils<Landroid/hardware/face/Face;>;"
    move-object/from16 v14, p0

    move-object/from16 v15, p11

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p10

    move/from16 v9, p12

    move/from16 v10, p14

    move-object/from16 v12, p15

    move-object/from16 v13, p16

    invoke-direct/range {v0 .. v13}, Lcom/android/server/biometrics/sensors/EnrollClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;IIZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 67
    move-wide/from16 v0, p8

    invoke-virtual {v14, v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->setRequestId(J)V

    .line 68
    array-length v2, v15

    invoke-static {v15, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, v14, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->mDisabledFeatures:[I

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 70
    const v3, 0x107006a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, v14, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->mEnrollIgnoreList:[I

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 72
    const v3, 0x107006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, v14, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->mEnrollIgnoreListVendor:[I

    .line 73
    return-void
.end method


# virtual methods
.method protected hasReachedEnrollmentLimit()Z
    .registers 5

    .line 84
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 86
    .local v0, "limit":I
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->getTargetUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/server/biometrics/sensors/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    .line 87
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 88
    .local v1, "enrolled":I
    if-lt v1, v0, :cond_41

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many faces registered, user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->getTargetUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FaceEnrollClient"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v2, 0x1

    return v2

    .line 92
    :cond_41
    const/4 v2, 0x0

    return v2
.end method

.method public onAcquired(II)V
    .registers 4
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 98
    const/16 v0, 0x16

    if-ne p1, v0, :cond_d

    .line 99
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->mEnrollIgnoreListVendor:[I

    invoke-static {v0, p2}, Lcom/android/server/biometrics/Utils;->listContains([II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .local v0, "shouldSend":Z
    goto :goto_15

    .line 101
    .end local v0    # "shouldSend":Z
    :cond_d
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->mEnrollIgnoreList:[I

    invoke-static {v0, p1}, Lcom/android/server/biometrics/Utils;->listContains([II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 103
    .restart local v0    # "shouldSend":Z
    :goto_15
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->onAcquiredInternal(IIZ)V

    .line 104
    return-void
.end method

.method protected startHalOperation()V
    .registers 9

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v0, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->mHardwareAuthToken:[B

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_18

    aget-byte v5, v1, v4

    .line 110
    .local v5, "b":B
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 112
    :cond_18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v1, "disabledFeatures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->mDisabledFeatures:[I

    array-length v4, v2

    move v5, v3

    :goto_21
    if-ge v5, v4, :cond_2f

    aget v6, v2, v5

    .line 114
    .local v6, "disabledFeature":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v6    # "disabledFeature":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 119
    :cond_2f
    const/4 v2, 0x2

    :try_start_30
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/FaceServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/face/FaceServiceStub;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/biometrics/sensors/face/FaceServiceStub;->setPreviewNotifyCallback()Z

    move-result v4

    if-nez v4, :cond_41

    .line 120
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/FaceServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/face/FaceServiceStub;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/biometrics/sensors/face/FaceServiceStub;->stopGetFrame()V

    .line 123
    :cond_41
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    iget v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->mTimeoutSec:I

    invoke-interface {v4, v0, v5, v1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->enroll(Ljava/util/ArrayList;ILjava/util/ArrayList;)I

    move-result v4

    .line 125
    .local v4, "status":I
    if-eqz v4, :cond_57

    .line 126
    invoke-virtual {p0, v2, v3}, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->onError(II)V

    .line 127
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v5, p0, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_57} :catch_58

    .line 133
    .end local v4    # "status":I
    :cond_57
    goto :goto_68

    .line 129
    :catch_58
    move-exception v4

    .line 130
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "FaceEnrollClient"

    const-string v6, "Remote exception when requesting enroll"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    invoke-virtual {p0, v2, v3}, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->onError(II)V

    .line 132
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v2, p0, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 134
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_68
    return-void
.end method

.method protected stopHalOperation()V
    .registers 4

    .line 139
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    invoke-interface {v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->cancel()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 144
    goto :goto_1c

    .line 140
    :catch_a
    move-exception v0

    .line 141
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FaceEnrollClient"

    const-string v2, "Remote exception when requesting cancel"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->onError(II)V

    .line 143
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 145
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method

.method protected wrapCallbackForStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .registers 7
    .param p1, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 78
    new-instance v0, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 79
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/biometrics/log/BiometricLogger;->createALSCallback(Z)Lcom/android/server/biometrics/log/CallbackWithProbe;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    aput-object p1, v1, v3

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 78
    return-object v0
.end method
