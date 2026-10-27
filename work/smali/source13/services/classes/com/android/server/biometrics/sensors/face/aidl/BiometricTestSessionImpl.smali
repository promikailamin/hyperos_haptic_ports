.class public Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;
.super Landroid/hardware/biometrics/ITestSession$Stub;
.source "BiometricTestSessionImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "face/aidl/BiometricTestSessionImpl"


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

.field private final mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

.field private final mRandom:Ljava/util/Random;

.field private final mReceiver:Landroid/hardware/face/IFaceServiceReceiver;

.field private final mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

.field private final mSensorId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;)Landroid/hardware/biometrics/ITestSessionCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

    return-object p0
.end method

.method constructor <init>(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;Lcom/android/server/biometrics/sensors/face/aidl/Sensor;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sensorId"    # I
    .param p3, "callback"    # Landroid/hardware/biometrics/ITestSessionCallback;
    .param p4, "provider"    # Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;
    .param p5, "sensor"    # Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 131
    invoke-direct {p0}, Landroid/hardware/biometrics/ITestSession$Stub;-><init>()V

    .line 67
    new-instance v0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 132
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    .line 133
    iput p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensorId:I

    .line 134
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

    .line 135
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    .line 136
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    .line 137
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    .line 138
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    .line 139
    return-void
.end method


# virtual methods
.method public acceptAuthentication(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 174
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 177
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensorId:I

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    .line 178
    invoke-virtual {v0, v1, p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 179
    .local v0, "faces":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/Face;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 180
    const-string v1, "face/aidl/BiometricTestSessionImpl"

    const-string v2, "No faces, returning"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void

    .line 183
    :cond_21
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/face/Face;

    invoke-virtual {v1}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v1

    .line 184
    .local v1, "fid":I
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {v2, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getHalSessionCallback()Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;

    move-result-object v2

    const/16 v3, 0x45

    new-array v3, v3, [B

    .line 185
    invoke-static {v3}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;

    move-result-object v3

    .line 184
    invoke-virtual {v2, v1, v3}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V

    .line 186
    return-void
.end method

.method public cleanupInternalState(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 222
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanupInternalState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "face/aidl/BiometricTestSessionImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensorId:I

    new-instance v2, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$2;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$2;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 247
    return-void
.end method

.method public finishEnroll(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 160
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    .line 163
    .local v0, "nextRandomId":I
    :goto_d
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 164
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v0

    goto :goto_d

    .line 167
    :cond_20
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {v1, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getHalSessionCallback()Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;

    move-result-object v1

    const/4 v2, 0x0

    .line 169
    invoke-virtual {v1, v0, v2}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->onEnrollmentProgress(II)V

    .line 170
    return-void
.end method

.method public notifyAcquired(II)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "acquireInfo"    # I

    .line 198
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 200
    new-instance v0, Landroid/hardware/biometrics/face/BaseFrame;

    invoke-direct {v0}, Landroid/hardware/biometrics/face/BaseFrame;-><init>()V

    .line 201
    .local v0, "data":Landroid/hardware/biometrics/face/BaseFrame;
    int-to-byte v1, p2

    iput-byte v1, v0, Landroid/hardware/biometrics/face/BaseFrame;->acquiredInfo:B

    .line 203
    new-instance v1, Landroid/hardware/biometrics/face/AuthenticationFrame;

    invoke-direct {v1}, Landroid/hardware/biometrics/face/AuthenticationFrame;-><init>()V

    .line 204
    .local v1, "authenticationFrame":Landroid/hardware/biometrics/face/AuthenticationFrame;
    iput-object v0, v1, Landroid/hardware/biometrics/face/AuthenticationFrame;->data:Landroid/hardware/biometrics/face/BaseFrame;

    .line 208
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {v2, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getHalSessionCallback()Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->onAuthenticationFrame(Landroid/hardware/biometrics/face/AuthenticationFrame;)V

    .line 210
    return-void
.end method

.method public notifyError(II)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "errorCode"    # I

    .line 214
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getHalSessionCallback()Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;

    move-result-object v0

    int-to-byte v1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->onError(BI)V

    .line 218
    return-void
.end method

.method public rejectAuthentication(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 190
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getHalSessionCallback()Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->onAuthenticationFailed()V

    .line 193
    return-void
.end method

.method public setTestHalEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 143
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->setTestHalEnabled(Z)V

    .line 146
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/face/aidl/Sensor;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->setTestHalEnabled(Z)V

    .line 147
    return-void
.end method

.method public startEnroll(I)V
    .registers 14
    .param p1, "userId"    # I

    .line 151
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 153
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mSensorId:I

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    const/16 v0, 0x45

    new-array v5, v0, [B

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    .line 154
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x0

    new-array v9, v0, [I

    .line 153
    const/4 v10, 0x0

    const/4 v11, 0x0

    move v6, p1

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/biometrics/sensors/face/aidl/FaceProvider;->scheduleEnroll(ILandroid/os/IBinder;[BILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;Z)J

    .line 156
    return-void
.end method
