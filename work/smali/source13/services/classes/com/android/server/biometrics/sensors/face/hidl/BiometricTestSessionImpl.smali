.class public Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;
.super Landroid/hardware/biometrics/ITestSession$Stub;
.source "BiometricTestSessionImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BiometricTestSessionImpl"


# instance fields
.field private final mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

.field private final mContext:Landroid/content/Context;

.field private final mEnrollmentIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFace10:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

.field private final mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

.field private final mRandom:Ljava/util/Random;

.field private final mReceiver:Landroid/hardware/face/IFaceServiceReceiver;

.field private final mSensorId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;)Landroid/hardware/biometrics/ITestSessionCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

    return-object p0
.end method

.method constructor <init>(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;Lcom/android/server/biometrics/sensors/face/hidl/Face10;Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sensorId"    # I
    .param p3, "callback"    # Landroid/hardware/biometrics/ITestSessionCallback;
    .param p4, "face10"    # Lcom/android/server/biometrics/sensors/face/hidl/Face10;
    .param p5, "halResultController"    # Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    .line 120
    invoke-direct {p0}, Landroid/hardware/biometrics/ITestSession$Stub;-><init>()V

    .line 56
    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl$1;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 121
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    .line 122
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mSensorId:I

    .line 123
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

    .line 124
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mFace10:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    .line 125
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    .line 126
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    .line 127
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    .line 128
    return-void
.end method


# virtual methods
.method public acceptAuthentication(I)V
    .registers 11
    .param p1, "userId"    # I

    .line 162
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 165
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mSensorId:I

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    .line 166
    invoke-virtual {v0, v1, p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 167
    .local v0, "faces":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/Face;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 168
    const-string v1, "BiometricTestSessionImpl"

    const-string v2, "No faces, returning"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void

    .line 171
    :cond_21
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/Face;

    invoke-virtual {v2}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v2

    .line 172
    .local v2, "fid":I
    new-instance v8, Ljava/util/ArrayList;

    const/16 v3, 0x45

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 173
    .local v8, "hat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    const-wide/16 v4, 0x0

    move v6, v2

    move v7, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->onAuthenticated(JIILjava/util/ArrayList;)V

    .line 174
    return-void
.end method

.method public cleanupInternalState(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 199
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mFace10:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mSensorId:I

    new-instance v2, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl$2;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl$2;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 221
    return-void
.end method

.method public finishEnroll(I)V
    .registers 9
    .param p1, "userId"    # I

    .line 148
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    .line 151
    .local v0, "nextRandomId":I
    :goto_d
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 152
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v0

    goto :goto_d

    .line 155
    :cond_20
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    move v4, v0

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->onEnrollResult(JIII)V

    .line 158
    return-void
.end method

.method public notifyAcquired(II)V
    .registers 11
    .param p1, "userId"    # I
    .param p2, "acquireInfo"    # I

    .line 185
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 187
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    const-wide/16 v3, 0x0

    const/4 v7, 0x0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->onAcquired(JIII)V

    .line 188
    return-void
.end method

.method public notifyError(II)V
    .registers 11
    .param p1, "userId"    # I
    .param p2, "errorCode"    # I

    .line 192
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    const-wide/16 v3, 0x0

    const/4 v7, 0x0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->onError(JIII)V

    .line 195
    return-void
.end method

.method public rejectAuthentication(I)V
    .registers 10
    .param p1, "userId"    # I

    .line 178
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->onAuthenticated(JIILjava/util/ArrayList;)V

    .line 181
    return-void
.end method

.method public setTestHalEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 132
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mFace10:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->setTestHalEnabled(Z)V

    .line 135
    return-void
.end method

.method public startEnroll(I)V
    .registers 14
    .param p1, "userId"    # I

    .line 139
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mFace10:Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mSensorId:I

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    const/16 v0, 0x45

    new-array v5, v0, [B

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    .line 142
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x0

    new-array v9, v0, [I

    .line 141
    const/4 v10, 0x0

    const/4 v11, 0x0

    move v6, p1

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleEnroll(ILandroid/os/IBinder;[BILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;Z)J

    .line 144
    return-void
.end method
