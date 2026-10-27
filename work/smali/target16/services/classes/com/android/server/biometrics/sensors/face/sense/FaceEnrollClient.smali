.class public Lcom/android/server/biometrics/sensors/face/sense/FaceEnrollClient;
.super Lcom/android/server/biometrics/sensors/EnrollClient;
.source "FaceEnrollClient.java"


# instance fields
.field public final mDisabledFeatures:[I

.field public final mEnrollIgnoreList:[I

.field public final mEnrollIgnoreListVendor:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;JLcom/android/server/biometrics/sensors/BiometricUtils;[IILandroid/view/Surface;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;I)V
    .registers 34

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

    move/from16 v14, p17

    .line 63
    invoke-direct/range {v0 .. v14}, Lcom/android/server/biometrics/sensors/EnrollClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;IIZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;I)V

    move-wide/from16 v1, p8

    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->setRequestId(J)V

    .line 66
    array-length v1, v15

    invoke-static {v15, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/biometrics/sensors/face/sense/FaceEnrollClient;->mDisabledFeatures:[I

    .line 67
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070082

    .line 68
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/biometrics/sensors/face/sense/FaceEnrollClient;->mEnrollIgnoreList:[I

    .line 69
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070085

    .line 70
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/biometrics/sensors/face/sense/FaceEnrollClient;->mEnrollIgnoreListVendor:[I

    return-void
.end method


# virtual methods
.method public hasReachedEnrollmentLimit()Z
    .registers 5

    .line 82
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 84
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/server/biometrics/sensors/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    .line 85
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v0, :cond_3f

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many faces registered, user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FaceEnrollClient"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_3f
    const/4 p0, 0x0

    return p0
.end method

.method public onAcquired(II)V
    .registers 4

    const/16 v0, 0x16

    if-ne p1, v0, :cond_d

    .line 97
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/sense/FaceEnrollClient;->mEnrollIgnoreListVendor:[I

    invoke-static {v0, p2}, Lcom/android/server/biometrics/Utils;->listContains([II)Z

    move-result v0

    :goto_a
    xor-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 99
    :cond_d
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/sense/FaceEnrollClient;->mEnrollIgnoreList:[I

    invoke-static {v0, p1}, Lcom/android/server/biometrics/Utils;->listContains([II)Z

    move-result v0

    goto :goto_a

    .line 101
    :goto_14
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquiredInternal(IIZ)V

    return-void
.end method

.method public startHalOperation()V
    .registers 8

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mHardwareAuthToken:[B

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_18

    aget-byte v5, v1, v4

    .line 108
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 110
    :cond_18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/sense/FaceEnrollClient;->mDisabledFeatures:[I

    array-length v4, v2

    move v5, v3

    :goto_21
    if-ge v5, v4, :cond_2f

    aget v6, v2, v5

    .line 112
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 116
    :cond_2f
    :try_start_2f
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/aospa/biometrics/face/ISenseService;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/sense/SenseUtils;->toByteArray(Ljava/util/ArrayList;)[B

    move-result-object v0

    iget v4, p0, Lcom/android/server/biometrics/sensors/EnrollClient;->mTimeoutSec:I

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/sense/SenseUtils;->toIntArray(Ljava/util/ArrayList;)[I

    move-result-object v1

    invoke-interface {v2, v0, v4, v1}, Lvendor/aospa/biometrics/face/ISenseService;->enroll([BI[I)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_42} :catch_43

    return-void

    :catch_43
    move-exception v0

    .line 118
    const-string v1, "FaceEnrollClient"

    const-string v2, "Remote exception when requesting enroll"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x2

    .line 119
    invoke-virtual {p0, v0, v3}, Lcom/android/server/biometrics/sensors/EnrollClient;->onError(II)V

    .line 120
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public stopHalOperation()V
    .registers 4

    .line 127
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/aospa/biometrics/face/ISenseService;

    invoke-interface {v0}, Lvendor/aospa/biometrics/face/ISenseService;->cancel()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception v0

    .line 129
    const-string v1, "FaceEnrollClient"

    const-string v2, "Remote exception when requesting cancel"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 130
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/EnrollClient;->onError(II)V

    .line 131
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public wrapCallbackForStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .registers 4

    .line 76
    new-instance v0, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    .line 77
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/log/BiometricLogger;->getAmbientLightProbe(Z)Lcom/android/server/biometrics/log/CallbackWithProbe;

    move-result-object p0

    filled-new-array {p0, p1}, [Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-object v0
.end method
