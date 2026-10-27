.class public Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;
.super Lcom/android/server/biometrics/sensors/EnrollClient;
.source "FaceEnrollClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/EnrollClient<",
        "Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceEnrollClient"


# instance fields
.field private mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

.field private final mDebugConsent:Z

.field private final mDisabledFeatures:[I

.field private final mEnrollIgnoreList:[I

.field private final mEnrollIgnoreListVendor:[I

.field private mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

.field private final mMaxTemplatesPerUser:I

.field private mOsPreviewHandle:Landroid/os/NativeHandle;

.field private final mPreviewHandleDeleterCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

.field private final mPreviewSurface:Landroid/view/Surface;


# direct methods
.method static bridge synthetic -$$Nest$mreleaseSurfaceHandlesIfNeeded(Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->releaseSurfaceHandlesIfNeeded()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;JLcom/android/server/biometrics/sensors/BiometricUtils;[IILandroid/view/Surface;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;IZ)V
    .registers 34
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "listener"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .param p5, "userId"    # I
    .param p6, "hardwareAuthToken"    # [B
    .param p7, "opPackageName"    # Ljava/lang/String;
    .param p8, "requestId"    # J
    .param p11, "disabledFeatures"    # [I
    .param p12, "timeoutSec"    # I
    .param p13, "previewSurface"    # Landroid/view/Surface;
    .param p14, "sensorId"    # I
    .param p15, "logger"    # Lcom/android/server/biometrics/log/BiometricLogger;
    .param p16, "biometricContext"    # Lcom/android/server/biometrics/log/BiometricContext;
    .param p17, "maxTemplatesPerUser"    # I
    .param p18, "debugConsent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;",
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
            "IZ)V"
        }
    .end annotation

    .line 94
    .local p2, "lazyDaemon":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;>;"
    .local p10, "utils":Lcom/android/server/biometrics/sensors/BiometricUtils;, "Lcom/android/server/biometrics/sensors/BiometricUtils<Landroid/hardware/face/Face;>;"
    move-object v14, p0

    const/4 v11, 0x0

    move-object v0, p0

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

    .line 74
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;)V

    iput-object v0, v14, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mPreviewHandleDeleterCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 96
    move-wide/from16 v0, p8

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->setRequestId(J)V

    .line 97
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 98
    const v3, 0x107006a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, v14, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mEnrollIgnoreList:[I

    .line 99
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 100
    const v3, 0x107006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, v14, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mEnrollIgnoreListVendor:[I

    .line 101
    move/from16 v2, p17

    iput v2, v14, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mMaxTemplatesPerUser:I

    .line 102
    move/from16 v3, p18

    iput-boolean v3, v14, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mDebugConsent:Z

    .line 103
    move-object/from16 v4, p11

    iput-object v4, v14, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mDisabledFeatures:[I

    .line 104
    move-object/from16 v5, p13

    iput-object v5, v14, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mPreviewSurface:Landroid/view/Surface;

    .line 105
    return-void
.end method

.method private doEnroll([B)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 10
    .param p1, "features"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 197
    .local v0, "session":Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mHardwareAuthToken:[B

    .line 198
    invoke-static {v1}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;

    move-result-object v1

    .line 200
    .local v1, "hat":Landroid/hardware/keymaster/HardwareAuthToken;
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->hasContextMethods()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 201
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    move-result-object v2

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    .line 202
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->getOperationContext()Landroid/hardware/biometrics/common/OperationContext;

    move-result-object v7

    .line 201
    move-object v3, v1

    move-object v5, p1

    invoke-interface/range {v2 .. v7}, Landroid/hardware/biometrics/face/ISession;->enrollWithContext(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;Landroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v2

    return-object v2

    .line 204
    :cond_24
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    invoke-interface {v2, v1, v3, p1, v4}, Landroid/hardware/biometrics/face/ISession;->enroll(Landroid/hardware/keymaster/HardwareAuthToken;B[BLandroid/hardware/common/NativeHandle;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v2

    return-object v2
.end method

.method private obtainSurfaceHandlesIfNeeded()V
    .registers 4

    .line 223
    const-string v0, "FaceEnrollClient"

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v1, :cond_21

    .line 228
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/FaceService;->acquireSurfaceHandle(Landroid/view/Surface;)Landroid/os/NativeHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mOsPreviewHandle:Landroid/os/NativeHandle;

    .line 233
    :try_start_c
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlNativeHandleUtils;->dup(Landroid/os/NativeHandle;)Landroid/hardware/common/NativeHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    .line 234
    const-string v1, "Obtained handles for the preview surface."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_17} :catch_18

    .line 238
    goto :goto_21

    .line 235
    :catch_18
    move-exception v1

    .line 236
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    .line 237
    const-string v2, "Failed to dup mOsPreviewHandle"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    .end local v1    # "e":Ljava/io/IOException;
    :cond_21
    :goto_21
    return-void
.end method

.method private releaseSurfaceHandlesIfNeeded()V
    .registers 5

    .line 243
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mPreviewSurface:Landroid/view/Surface;

    const-string v1, "FaceEnrollClient"

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    if-nez v0, :cond_10

    .line 244
    const-string/jumbo v0, "mHwPreviewHandle is null even though mPreviewSurface is not null."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_10
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    .line 248
    :try_start_15
    const-string v0, "Closing mHwPreviewHandle"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlNativeHandleUtils;->close(Landroid/hardware/common/NativeHandle;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1f} :catch_20

    .line 252
    goto :goto_26

    .line 250
    :catch_20
    move-exception v0

    .line 251
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Failed to close mPreviewSurface"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    .end local v0    # "e":Ljava/io/IOException;
    :goto_26
    iput-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mHwPreviewHandle:Landroid/hardware/common/NativeHandle;

    .line 255
    :cond_28
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mOsPreviewHandle:Landroid/os/NativeHandle;

    if-eqz v0, :cond_38

    .line 256
    const-string v0, "Releasing mOsPreviewHandle"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mOsPreviewHandle:Landroid/os/NativeHandle;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceService;->releaseSurfaceHandle(Landroid/os/NativeHandle;)V

    .line 258
    iput-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mOsPreviewHandle:Landroid/os/NativeHandle;

    .line 260
    :cond_38
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v0, :cond_46

    .line 261
    const-string v0, "Releasing mPreviewSurface"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 271
    :cond_46
    return-void
.end method

.method private shouldSendAcquiredMessage(II)Z
    .registers 6
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 128
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x16

    if-ne p1, v2, :cond_11

    .line 129
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mEnrollIgnoreListVendor:[I

    invoke-static {v2, p2}, Lcom/android/server/biometrics/Utils;->listContains([II)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_1b

    :cond_f
    move v0, v1

    goto :goto_1b

    .line 130
    :cond_11
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mEnrollIgnoreList:[I

    invoke-static {v2, p1}, Lcom/android/server/biometrics/Utils;->listContains([II)Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_1b

    :cond_1a
    move v0, v1

    .line 128
    :goto_1b
    return v0
.end method


# virtual methods
.method public getTargetUserId()I
    .registers 2

    .line 276
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mTargetUserId:I

    return v0
.end method

.method protected hasReachedEnrollmentLimit()Z
    .registers 4

    .line 123
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->getSensorId()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 124
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->getTargetUserId()I

    move-result v2

    .line 123
    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mMaxTemplatesPerUser:I

    if-lt v0, v1, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 123
    :goto_1f
    return v0
.end method

.method public onAcquired(II)V
    .registers 4
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->shouldSendAcquiredMessage(II)Z

    move-result v0

    .line 136
    .local v0, "shouldSend":Z
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->onAcquiredInternal(IIZ)V

    .line 137
    return-void
.end method

.method public onEnrollmentFrame(Landroid/hardware/face/FaceEnrollFrame;)V
    .registers 9
    .param p1, "frame"    # Landroid/hardware/face/FaceEnrollFrame;

    .line 146
    invoke-virtual {p1}, Landroid/hardware/face/FaceEnrollFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/face/FaceDataFrame;->getAcquiredInfo()I

    move-result v0

    .line 147
    .local v0, "acquireInfo":I
    invoke-virtual {p1}, Landroid/hardware/face/FaceEnrollFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/face/FaceDataFrame;->getVendorCode()I

    move-result v1

    .line 148
    .local v1, "vendorCode":I
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->onAcquiredInternal(IIZ)V

    .line 150
    invoke-direct {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->shouldSendAcquiredMessage(II)Z

    move-result v3

    .line 151
    .local v3, "shouldSend":Z
    if-eqz v3, :cond_35

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v4

    if-eqz v4, :cond_35

    .line 153
    :try_start_20
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onEnrollmentFrame(Landroid/hardware/face/FaceEnrollFrame;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_28

    .line 157
    goto :goto_35

    .line 154
    :catch_28
    move-exception v4

    .line 155
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "FaceEnrollClient"

    const-string v6, "Failed to send enrollment frame"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v5, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 159
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_35
    :goto_35
    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 109
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/EnrollClient;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->cancelReEnrollNotification(Landroid/content/Context;)V

    .line 112
    return-void
.end method

.method protected startHalOperation()V
    .registers 11

    .line 163
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->obtainSurfaceHandlesIfNeeded()V

    .line 165
    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v2, "featureList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    iget-boolean v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mDebugConsent:Z

    if-eqz v3, :cond_15

    .line 167
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_15
    const/4 v3, 0x1

    .line 171
    .local v3, "shouldAddDiversePoses":Z
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mDisabledFeatures:[I

    array-length v5, v4

    move v6, v1

    :goto_1a
    const/4 v7, 0x1

    if-ge v6, v5, :cond_29

    aget v8, v4, v6

    .line 172
    .local v8, "disabledFeature":I
    invoke-static {v8}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->convertFrameworkToAidlFeature(I)B

    move-result v9

    if-ne v9, v7, :cond_26

    .line 174
    const/4 v3, 0x0

    .line 171
    .end local v8    # "disabledFeature":I
    :cond_26
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 178
    :cond_29
    if-eqz v3, :cond_32

    .line 179
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_32
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [B

    .line 183
    .local v4, "features":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_39
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4e

    .line 184
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v4, v5

    .line 183
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    .line 187
    .end local v5    # "i":I
    :cond_4e
    invoke-direct {p0, v4}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->doEnroll([B)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_54} :catch_55
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_54} :catch_55

    .line 192
    .end local v2    # "featureList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .end local v3    # "shouldAddDiversePoses":Z
    .end local v4    # "features":[B
    goto :goto_65

    .line 188
    :catch_55
    move-exception v2

    .line 189
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "FaceEnrollClient"

    const-string v4, "Exception when requesting enroll"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->onError(II)V

    .line 191
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 193
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_65
    return-void
.end method

.method protected stopHalOperation()V
    .registers 4

    .line 211
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    if-eqz v0, :cond_1a

    .line 213
    :try_start_4
    invoke-interface {v0}, Landroid/hardware/biometrics/common/ICancellationSignal;->cancel()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 218
    goto :goto_1a

    .line 214
    :catch_8
    move-exception v0

    .line 215
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FaceEnrollClient"

    const-string v2, "Remote exception when requesting cancel"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->onError(II)V

    .line 217
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 220
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a
    :goto_1a
    return-void
.end method

.method protected wrapCallbackForStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .registers 6
    .param p1, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 117
    new-instance v0, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->mPreviewHandleDeleterCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 118
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/biometrics/log/BiometricLogger;->createALSCallback(Z)Lcom/android/server/biometrics/log/CallbackWithProbe;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 117
    return-object v0
.end method
