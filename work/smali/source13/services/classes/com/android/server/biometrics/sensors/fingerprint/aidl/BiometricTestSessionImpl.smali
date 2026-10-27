.class Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;
.super Landroid/hardware/biometrics/ITestSession$Stub;
.source "BiometricTestSessionImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "fp/aidl/BiometricTestSessionImpl"


# instance fields
.field private final mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

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

.field private final mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

.field private final mRandom:Ljava/util/Random;

.field private final mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field private final mSensor:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

.field private final mSensorId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;)Landroid/hardware/biometrics/ITestSessionCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

    return-object p0
.end method

.method constructor <init>(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sensorId"    # I
    .param p3, "callback"    # Landroid/hardware/biometrics/ITestSessionCallback;
    .param p4, "biometricStateCallback"    # Lcom/android/server/biometrics/sensors/BiometricStateCallback;
    .param p5, "provider"    # Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;
    .param p6, "sensor"    # Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 123
    invoke-direct {p0}, Landroid/hardware/biometrics/ITestSession$Stub;-><init>()V

    .line 66
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 124
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    .line 125
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensorId:I

    .line 126
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mCallback:Landroid/hardware/biometrics/ITestSessionCallback;

    .line 127
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    .line 128
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    .line 129
    iput-object p6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    .line 131
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    .line 132
    return-void
.end method


# virtual methods
.method public acceptAuthentication(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 166
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 169
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensorId:I

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    .line 170
    invoke-virtual {v0, v1, p1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 171
    .local v0, "fingerprints":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 172
    const-string v1, "fp/aidl/BiometricTestSessionImpl"

    const-string v2, "No fingerprints, returning"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void

    .line 175
    :cond_21
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v1

    .line 176
    .local v1, "fid":I
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v2, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getHalSessionCallback()Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;

    move-result-object v2

    const/16 v3, 0x45

    new-array v3, v3, [B

    .line 177
    invoke-static {v3}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toHardwareAuthToken([B)Landroid/hardware/keymaster/HardwareAuthToken;

    move-result-object v3

    .line 176
    invoke-virtual {v2, v1, v3}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V

    .line 178
    return-void
.end method

.method public cleanupInternalState(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 205
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanupInternalState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fp/aidl/BiometricTestSessionImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensorId:I

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl$2;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 230
    return-void
.end method

.method public finishEnroll(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 152
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    .line 155
    .local v0, "nextRandomId":I
    :goto_d
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 156
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v0

    goto :goto_d

    .line 159
    :cond_20
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mEnrollmentIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v1, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getHalSessionCallback()Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;

    move-result-object v1

    const/4 v2, 0x0

    .line 161
    invoke-virtual {v1, v0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->onEnrollmentProgress(II)V

    .line 162
    return-void
.end method

.method public notifyAcquired(II)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "acquireInfo"    # I

    .line 189
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getHalSessionCallback()Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;

    move-result-object v0

    int-to-byte v1, p2

    .line 192
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->onAcquired(BI)V

    .line 193
    return-void
.end method

.method public notifyError(II)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "errorCode"    # I

    .line 197
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getHalSessionCallback()Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;

    move-result-object v0

    int-to-byte v1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->onError(BI)V

    .line 201
    return-void
.end method

.method public rejectAuthentication(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 182
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->getSessionForUser(I)Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlSession;->getHalSessionCallback()Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->onAuthenticationFailed()V

    .line 185
    return-void
.end method

.method public setTestHalEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 136
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->setTestHalEnabled(Z)V

    .line 139
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensor:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;->setTestHalEnabled(Z)V

    .line 140
    return-void
.end method

.method public startEnroll(I)V
    .registers 12
    .param p1, "userId"    # I

    .line 144
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 146
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;

    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mSensorId:I

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    const/16 v0, 0x45

    new-array v5, v0, [B

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;->mContext:Landroid/content/Context;

    .line 147
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    .line 146
    const/4 v9, 0x2

    move v6, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintProvider;->scheduleEnroll(ILandroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;I)J

    .line 148
    return-void
.end method
