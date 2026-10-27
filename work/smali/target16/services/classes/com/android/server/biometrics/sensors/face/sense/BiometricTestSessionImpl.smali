.class public Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl;
.super Landroid/hardware/biometrics/ITestSession$Stub;
.source "BiometricTestSessionImpl.java"


# instance fields
.field public final mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

.field public final mContext:Landroid/content/Context;

.field public final mHalResultController:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;

.field public final mRandom:Ljava/util/Random;

.field public final mReceiver:Landroid/hardware/face/IFaceServiceReceiver;

.field public final mSenseProvider:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

.field public final mSensorId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl;)Landroid/hardware/biometrics/ITestSessionCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl;->mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;)V
    .registers 7

    .line 125
    invoke-direct {p0}, Landroid/hardware/biometrics/ITestSession$Stub;-><init>()V

    .line 61
    new-instance v0, Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl$1;-><init>(Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl;->mReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 126
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    .line 127
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl;->mSensorId:I

    .line 128
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl;->mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

    .line 129
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl;->mSenseProvider:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    .line 130
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;

    .line 131
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public acceptAuthentication(I)V
    .registers 4

    .line 163
    invoke-super {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->acceptAuthentication_enforcePermission()V

    .line 166
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl;->mSensorId:I

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    .line 167
    invoke-virtual {v0, v1, p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 168
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 169
    const-string p0, "face/sense/BiometricTestSessionImpl"

    const-string p1, "No faces, returning"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1d
    const/4 v1, 0x0

    .line 172
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/Face;

    invoke-virtual {v0}, Landroid/hardware/face/Face;->getBiometricId()I

    const/4 v0, 0x1

    .line 173
    new-array v0, v0, [B

    aput-byte v1, v0, v1

    .line 174
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->onAuthenticated(II[B)V

    return-void
.end method

.method public cleanupInternalState(I)V
    .registers 5

    .line 204
    invoke-super {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->cleanupInternalState_enforcePermission()V

    .line 206
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl;->mSenseProvider:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl;->mSensorId:I

    new-instance v2, Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl$2;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl$2;-><init>(Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public finishEnroll(I)V
    .registers 4

    .line 155
    invoke-super {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->finishEnroll_enforcePermission()V

    .line 157
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->onEnrollResult(III)V

    return-void
.end method

.method public getSensorId()I
    .registers 1

    .line 231
    invoke-super {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->getSensorId_enforcePermission()V

    .line 232
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl;->mSensorId:I

    return p0
.end method

.method public notifyAcquired(II)V
    .registers 3

    .line 188
    invoke-super {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->notifyAcquired_enforcePermission()V

    .line 190
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->onAcquired(III)V

    return-void
.end method

.method public notifyError(II)V
    .registers 3

    .line 196
    invoke-super {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->notifyError_enforcePermission()V

    .line 198
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->onError(II)V

    return-void
.end method

.method public rejectAuthentication(I)V
    .registers 4

    .line 180
    invoke-super {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->rejectAuthentication_enforcePermission()V

    .line 182
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->onAuthenticated(II[B)V

    return-void
.end method

.method public setTestHalEnabled(Z)V
    .registers 2

    .line 137
    invoke-super {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->setTestHalEnabled_enforcePermission()V

    .line 139
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl;->mSenseProvider:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->setTestHalEnabled(Z)V

    return-void
.end method

.method public startEnroll(I)V
    .registers 13

    .line 145
    invoke-super {p0}, Landroid/hardware/biometrics/ITestSession$Stub;->startEnroll_enforcePermission()V

    .line 147
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl;->mSenseProvider:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl;->mSensorId:I

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    const/16 v3, 0x45

    new-array v3, v3, [B

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl;->mReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 p0, 0x0

    new-array v7, p0, [I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    move v4, p1

    .line 147
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->scheduleEnroll(ILandroid/os/IBinder;[BILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;ZLandroid/hardware/face/FaceEnrollOptions;)J

    return-void
.end method
