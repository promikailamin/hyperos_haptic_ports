.class public Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;
.super Landroid/hardware/biometrics/face/ISessionCallback$Stub;
.source "Sensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/face/aidl/Sensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HalSessionCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$Callback;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

.field private final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field private final mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

.field private final mSensorId:I

.field private final mTag:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;IILcom/android/server/biometrics/sensors/LockoutCache;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$Callback;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "scheduler"    # Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;
    .param p5, "sensorId"    # I
    .param p6, "userId"    # I
    .param p7, "lockoutTracker"    # Lcom/android/server/biometrics/sensors/LockoutCache;
    .param p8, "lockoutResetDispatcher"    # Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;
    .param p9, "callback"    # Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$Callback;

    .line 149
    invoke-direct {p0}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mContext:Landroid/content/Context;

    .line 151
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    .line 152
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    .line 153
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    .line 154
    iput p5, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mSensorId:I

    .line 155
    iput p6, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mUserId:I

    .line 156
    iput-object p7, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    .line 157
    iput-object p8, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 158
    iput-object p9, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mCallback:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$Callback;

    .line 159
    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 168
    const-string v0, "74b0b7cb149ee205b12cd2254d216725c6e5429c"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 2

    .line 163
    const/4 v0, 0x2

    return v0
.end method

.method synthetic lambda$onAuthenticationFailed$7$com-android-server-biometrics-sensors-face-aidl-Sensor$HalSessionCallback()V
    .registers 8

    .line 335
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 336
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    if-nez v1, :cond_28

    .line 337
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAuthenticationFailed for non-authentication consumer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 338
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 337
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-void

    .line 342
    :cond_28
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    .line 344
    .local v1, "authenticationConsumer":Lcom/android/server/biometrics/sensors/AuthenticationConsumer;
    new-instance v2, Landroid/hardware/face/Face;

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mSensorId:I

    int-to-long v3, v3

    const-string v5, ""

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6, v3, v4}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 345
    .local v2, "face":Landroid/hardware/face/Face;
    const/4 v3, 0x0

    invoke-interface {v1, v2, v6, v3}, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    .line 347
    return-void
.end method

.method synthetic lambda$onAuthenticationFrame$2$com-android-server-biometrics-sensors-face-aidl-Sensor$HalSessionCallback(Landroid/hardware/biometrics/face/AuthenticationFrame;)V
    .registers 6
    .param p1, "frame"    # Landroid/hardware/biometrics/face/AuthenticationFrame;

    .line 206
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 207
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    if-nez v1, :cond_28

    .line 208
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAuthenticationFrame for incompatible client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 209
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 208
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-void

    .line 213
    :cond_28
    if-nez p1, :cond_47

    .line 214
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received null authentication frame for client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 215
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void

    .line 218
    :cond_47
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;

    .line 219
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkAuthenticationFrame(Landroid/hardware/biometrics/face/AuthenticationFrame;)Landroid/hardware/face/FaceAuthenticationFrame;

    move-result-object v2

    .line 218
    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->onAuthenticationFrame(Landroid/hardware/face/FaceAuthenticationFrame;)V

    .line 220
    return-void
.end method

.method synthetic lambda$onAuthenticationSucceeded$6$com-android-server-biometrics-sensors-face-aidl-Sensor$HalSessionCallback(ILandroid/hardware/keymaster/HardwareAuthToken;)V
    .registers 12
    .param p1, "enrollmentId"    # I
    .param p2, "hat"    # Landroid/hardware/keymaster/HardwareAuthToken;

    .line 313
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 314
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    if-nez v1, :cond_28

    .line 315
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAuthenticationSucceeded for non-authentication consumer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 316
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 315
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return-void

    .line 320
    :cond_28
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    .line 322
    .local v1, "authenticationConsumer":Lcom/android/server/biometrics/sensors/AuthenticationConsumer;
    new-instance v2, Landroid/hardware/face/Face;

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mSensorId:I

    int-to-long v3, v3

    const-string v5, ""

    invoke-direct {v2, v5, p1, v3, v4}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 323
    .local v2, "face":Landroid/hardware/face/Face;
    invoke-static {p2}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toByteArray(Landroid/hardware/keymaster/HardwareAuthToken;)[B

    move-result-object v3

    .line 324
    .local v3, "byteArray":[B
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v4, "byteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    array-length v5, v3

    const/4 v6, 0x0

    :goto_40
    if-ge v6, v5, :cond_4e

    aget-byte v7, v3, v6

    .line 326
    .local v7, "b":B
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    .end local v7    # "b":B
    add-int/lit8 v6, v6, 0x1

    goto :goto_40

    .line 328
    :cond_4e
    const/4 v5, 0x1

    invoke-interface {v1, v2, v5, v4}, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    .line 329
    return-void
.end method

.method synthetic lambda$onAuthenticatorIdInvalidated$17$com-android-server-biometrics-sensors-face-aidl-Sensor$HalSessionCallback(J)V
    .registers 7
    .param p1, "newAuthenticatorId"    # J

    .line 506
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 507
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceInvalidationClient;

    if-nez v1, :cond_28

    .line 508
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAuthenticatorIdInvalidated for wrong consumer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 509
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 508
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return-void

    .line 513
    :cond_28
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceInvalidationClient;

    .line 514
    .local v1, "invalidationClient":Lcom/android/server/biometrics/sensors/face/aidl/FaceInvalidationClient;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceInvalidationClient;->onAuthenticatorIdInvalidated(J)V

    .line 515
    return-void
.end method

.method synthetic lambda$onAuthenticatorIdRetrieved$16$com-android-server-biometrics-sensors-face-aidl-Sensor$HalSessionCallback(J)V
    .registers 7
    .param p1, "authenticatorId"    # J

    .line 490
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 491
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetAuthenticatorIdClient;

    if-nez v1, :cond_28

    .line 492
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAuthenticatorIdRetrieved for wrong consumer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 493
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 492
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    return-void

    .line 497
    :cond_28
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetAuthenticatorIdClient;

    .line 499
    .local v1, "getAuthenticatorIdClient":Lcom/android/server/biometrics/sensors/face/aidl/FaceGetAuthenticatorIdClient;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetAuthenticatorIdClient;->onAuthenticatorIdRetrieved(J)V

    .line 500
    return-void
.end method

.method synthetic lambda$onChallengeGenerated$0$com-android-server-biometrics-sensors-face-aidl-Sensor$HalSessionCallback(J)V
    .registers 7
    .param p1, "challenge"    # J

    .line 174
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 175
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceGenerateChallengeClient;

    if-nez v1, :cond_28

    .line 176
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onChallengeGenerated for wrong client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 177
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void

    .line 181
    :cond_28
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceGenerateChallengeClient;

    .line 183
    .local v1, "generateChallengeClient":Lcom/android/server/biometrics/sensors/face/aidl/FaceGenerateChallengeClient;
    iget v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mSensorId:I

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mUserId:I

    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceGenerateChallengeClient;->onChallengeGenerated(IIJ)V

    .line 184
    return-void
.end method

.method synthetic lambda$onChallengeRevoked$1$com-android-server-biometrics-sensors-face-aidl-Sensor$HalSessionCallback(J)V
    .registers 7
    .param p1, "challenge"    # J

    .line 190
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 191
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceRevokeChallengeClient;

    if-nez v1, :cond_28

    .line 192
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onChallengeRevoked for wrong client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 193
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void

    .line 197
    :cond_28
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceRevokeChallengeClient;

    .line 199
    .local v1, "revokeChallengeClient":Lcom/android/server/biometrics/sensors/face/aidl/FaceRevokeChallengeClient;
    iget v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mSensorId:I

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mUserId:I

    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceRevokeChallengeClient;->onChallengeRevoked(IIJ)V

    .line 200
    return-void
.end method

.method synthetic lambda$onEnrollmentFrame$3$com-android-server-biometrics-sensors-face-aidl-Sensor$HalSessionCallback(Landroid/hardware/biometrics/face/EnrollmentFrame;)V
    .registers 8
    .param p1, "frame"    # Landroid/hardware/biometrics/face/EnrollmentFrame;

    .line 226
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 227
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    if-nez v1, :cond_28

    .line 228
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onEnrollmentFrame for incompatible client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 229
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void

    .line 232
    :cond_28
    if-nez p1, :cond_47

    .line 233
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received null enrollment frame for client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 234
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 233
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void

    .line 240
    :cond_47
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkEnrollmentFrame(Landroid/hardware/biometrics/face/EnrollmentFrame;)Landroid/hardware/face/FaceEnrollFrame;

    move-result-object v1

    .line 241
    .local v1, "enrollFrame":Landroid/hardware/face/FaceEnrollFrame;
    invoke-virtual {v1}, Landroid/hardware/face/FaceEnrollFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/face/FaceDataFrame;->getVendorCode()I

    move-result v2

    .line 243
    .local v2, "vendorCode":I
    const/16 v3, 0x1da3

    if-ne v2, v3, :cond_62

    .line 244
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$sfputmCanNextFaceInputStep(Z)V

    .line 245
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    const-string v4, "Receive reset mCanNextFaceInputStep tag"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_62
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$sfgetmCanNextFaceInputStep()Z

    move-result v3

    if-eqz v3, :cond_82

    .line 248
    move-object v3, v0

    check-cast v3, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    .line 249
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkEnrollmentFrame(Landroid/hardware/biometrics/face/EnrollmentFrame;)Landroid/hardware/face/FaceEnrollFrame;

    move-result-object v4

    .line 248
    invoke-virtual {v3, v4}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->onEnrollmentFrame(Landroid/hardware/face/FaceEnrollFrame;)V

    .line 251
    const/16 v3, 0x13

    const/4 v4, 0x0

    if-ne v2, v3, :cond_7a

    .line 252
    invoke-static {v4}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$sfputmCanNextFaceInputStep(Z)V

    .line 255
    :cond_7a
    const/16 v3, 0x24

    if-ne v2, v3, :cond_bd

    .line 256
    invoke-static {v4}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor;->-$$Nest$sfputmCanNextFaceInputStep(Z)V

    goto :goto_bd

    .line 259
    :cond_82
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCanNextFaceInputStep false, skip this frame: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 260
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkEnrollmentFrame(Landroid/hardware/biometrics/face/EnrollmentFrame;)Landroid/hardware/face/FaceEnrollFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/face/FaceEnrollFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/face/FaceDataFrame;->getAcquiredInfo()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", vendorCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 261
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkEnrollmentFrame(Landroid/hardware/biometrics/face/EnrollmentFrame;)Landroid/hardware/face/FaceEnrollFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/face/FaceEnrollFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/face/FaceDataFrame;->getVendorCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 259
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_bd
    :goto_bd
    return-void
.end method

.method synthetic lambda$onEnrollmentProgress$5$com-android-server-biometrics-sensors-face-aidl-Sensor$HalSessionCallback(II)V
    .registers 9
    .param p1, "enrollmentId"    # I
    .param p2, "remaining"    # I

    .line 293
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 294
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    if-nez v1, :cond_28

    .line 295
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onEnrollmentProgress for non-enroll client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 296
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 295
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return-void

    .line 300
    :cond_28
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v1

    .line 301
    .local v1, "currentUserId":I
    iget v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mSensorId:I

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mContext:Landroid/content/Context;

    .line 302
    invoke-virtual {v2, v3, v1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getUniqueName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 303
    .local v2, "name":Ljava/lang/CharSequence;
    new-instance v3, Landroid/hardware/face/Face;

    iget v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mSensorId:I

    int-to-long v4, v4

    invoke-direct {v3, v2, p1, v4, v5}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 305
    .local v3, "face":Landroid/hardware/face/Face;
    move-object v4, v0

    check-cast v4, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;

    .line 306
    .local v4, "enrollClient":Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;
    invoke-virtual {v4, v3, p2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceEnrollClient;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 307
    return-void
.end method

.method synthetic lambda$onEnrollmentsEnumerated$12$com-android-server-biometrics-sensors-face-aidl-Sensor$HalSessionCallback([I)V
    .registers 10
    .param p1, "enrollmentIds"    # [I

    .line 415
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 416
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    if-nez v1, :cond_28

    .line 417
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onEnrollmentsEnumerated for non-enumerate consumer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 418
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 417
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return-void

    .line 422
    :cond_28
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    .line 424
    .local v1, "enumerateConsumer":Lcom/android/server/biometrics/sensors/EnumerateConsumer;
    array-length v2, p1

    if-lez v2, :cond_49

    .line 425
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2f
    array-length v3, p1

    if-ge v2, v3, :cond_48

    .line 426
    new-instance v3, Landroid/hardware/face/Face;

    aget v4, p1, v2

    iget v5, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mSensorId:I

    int-to-long v5, v5

    const-string v7, ""

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 427
    .local v3, "face":Landroid/hardware/face/Face;
    array-length v4, p1

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v1, v3, v4}, Lcom/android/server/biometrics/sensors/EnumerateConsumer;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 425
    .end local v3    # "face":Landroid/hardware/face/Face;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .end local v2    # "i":I
    :cond_48
    goto :goto_4e

    .line 430
    :cond_49
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/server/biometrics/sensors/EnumerateConsumer;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 432
    :goto_4e
    return-void
.end method

.method synthetic lambda$onEnrollmentsRemoved$15$com-android-server-biometrics-sensors-face-aidl-Sensor$HalSessionCallback([I)V
    .registers 10
    .param p1, "enrollmentIds"    # [I

    .line 468
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 469
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/RemovalConsumer;

    if-nez v1, :cond_28

    .line 470
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRemoved for non-removal consumer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 471
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 470
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    return-void

    .line 475
    :cond_28
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/RemovalConsumer;

    .line 476
    .local v1, "removalConsumer":Lcom/android/server/biometrics/sensors/RemovalConsumer;
    array-length v2, p1

    if-lez v2, :cond_49

    .line 477
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2f
    array-length v3, p1

    if-ge v2, v3, :cond_48

    .line 478
    new-instance v3, Landroid/hardware/face/Face;

    aget v4, p1, v2

    iget v5, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mSensorId:I

    int-to-long v5, v5

    const-string v7, ""

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 479
    .local v3, "face":Landroid/hardware/face/Face;
    array-length v4, p1

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v1, v3, v4}, Lcom/android/server/biometrics/sensors/RemovalConsumer;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 477
    .end local v3    # "face":Landroid/hardware/face/Face;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .end local v2    # "i":I
    :cond_48
    goto :goto_4e

    .line 482
    :cond_49
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/server/biometrics/sensors/RemovalConsumer;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 484
    :goto_4e
    return-void
.end method

.method synthetic lambda$onError$4$com-android-server-biometrics-sensors-face-aidl-Sensor$HalSessionCallback(BI)V
    .registers 7
    .param p1, "error"    # B
    .param p2, "vendorCode"    # I

    .line 270
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 271
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onError, client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 272
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", vendorCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 271
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    if-nez v1, :cond_59

    .line 276
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onError for non-error consumer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 277
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 276
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void

    .line 281
    :cond_59
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    .line 282
    .local v1, "errorConsumer":Lcom/android/server/biometrics/sensors/ErrorConsumer;
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/aidl/AidlConversionUtils;->toFrameworkError(B)I

    move-result v2

    invoke-interface {v1, v2, p2}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    .line 284
    const/4 v2, 0x1

    if-ne p1, v2, :cond_6b

    .line 285
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mCallback:Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$Callback;

    invoke-interface {v2}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$Callback;->onHardwareUnavailable()V

    .line 287
    :cond_6b
    return-void
.end method

.method synthetic lambda$onFeatureSet$14$com-android-server-biometrics-sensors-face-aidl-Sensor$HalSessionCallback()V
    .registers 5

    .line 453
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 454
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;

    if-nez v1, :cond_28

    .line 455
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFeatureSet for non-set consumer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 456
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 455
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return-void

    .line 460
    :cond_28
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;

    .line 461
    .local v1, "faceSetFeatureClient":Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceSetFeatureClient;->onFeatureSet(Z)V

    .line 462
    return-void
.end method

.method synthetic lambda$onFeaturesRetrieved$13$com-android-server-biometrics-sensors-face-aidl-Sensor$HalSessionCallback([B)V
    .registers 6
    .param p1, "features"    # [B

    .line 438
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 439
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetFeatureClient;

    if-nez v1, :cond_28

    .line 440
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFeaturesRetrieved for non-get feature consumer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 441
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 440
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    return-void

    .line 444
    :cond_28
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetFeatureClient;

    .line 445
    .local v1, "faceGetFeatureClient":Lcom/android/server/biometrics/sensors/face/aidl/FaceGetFeatureClient;
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceGetFeatureClient;->onFeatureGet(Z[B)V

    .line 446
    return-void
.end method

.method synthetic lambda$onInteractionDetected$11$com-android-server-biometrics-sensors-face-aidl-Sensor$HalSessionCallback()V
    .registers 5

    .line 400
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 401
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;

    if-nez v1, :cond_28

    .line 402
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onInteractionDetected for wrong client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 403
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 402
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return-void

    .line 407
    :cond_28
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;

    .line 408
    .local v1, "detectClient":Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceDetectClient;->onInteractionDetected()V

    .line 409
    return-void
.end method

.method synthetic lambda$onLockoutCleared$10$com-android-server-biometrics-sensors-face-aidl-Sensor$HalSessionCallback()V
    .registers 6

    .line 383
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 384
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;

    if-nez v1, :cond_1e

    .line 385
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "onLockoutCleared outside of resetLockout by HAL"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mSensorId:I

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mUserId:I

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;->resetLocalLockoutStateToNone(IILcom/android/server/biometrics/sensors/LockoutCache;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;)V

    goto :goto_2c

    .line 389
    :cond_1e
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "onLockoutCleared after resetLockout"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;

    .line 392
    .local v1, "resetLockoutClient":Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;->onLockoutCleared()V

    .line 394
    .end local v1    # "resetLockoutClient":Lcom/android/server/biometrics/sensors/face/aidl/FaceResetLockoutClient;
    :goto_2c
    return-void
.end method

.method synthetic lambda$onLockoutPermanent$9$com-android-server-biometrics-sensors-face-aidl-Sensor$HalSessionCallback()V
    .registers 5

    .line 368
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 369
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/LockoutConsumer;

    if-nez v1, :cond_28

    .line 370
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLockoutPermanent for non-lockout consumer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 371
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 370
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    return-void

    .line 375
    :cond_28
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/LockoutConsumer;

    .line 376
    .local v1, "lockoutConsumer":Lcom/android/server/biometrics/sensors/LockoutConsumer;
    invoke-interface {v1}, Lcom/android/server/biometrics/sensors/LockoutConsumer;->onLockoutPermanent()V

    .line 377
    return-void
.end method

.method synthetic lambda$onLockoutTimed$8$com-android-server-biometrics-sensors-face-aidl-Sensor$HalSessionCallback(J)V
    .registers 7
    .param p1, "durationMillis"    # J

    .line 353
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 354
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/LockoutConsumer;

    if-nez v1, :cond_28

    .line 355
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLockoutTimed for non-lockout consumer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 356
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 355
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return-void

    .line 360
    :cond_28
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/LockoutConsumer;

    .line 361
    .local v1, "lockoutConsumer":Lcom/android/server/biometrics/sensors/LockoutConsumer;
    invoke-interface {v1, p1, p2}, Lcom/android/server/biometrics/sensors/LockoutConsumer;->onLockoutTimed(J)V

    .line 362
    return-void
.end method

.method public onAuthenticationFailed()V
    .registers 3

    .line 334
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 348
    return-void
.end method

.method public onAuthenticationFrame(Landroid/hardware/biometrics/face/AuthenticationFrame;)V
    .registers 4
    .param p1, "frame"    # Landroid/hardware/biometrics/face/AuthenticationFrame;

    .line 205
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;Landroid/hardware/biometrics/face/AuthenticationFrame;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 221
    return-void
.end method

.method public onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V
    .registers 5
    .param p1, "enrollmentId"    # I
    .param p2, "hat"    # Landroid/hardware/keymaster/HardwareAuthToken;

    .line 312
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;ILandroid/hardware/keymaster/HardwareAuthToken;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 330
    return-void
.end method

.method public onAuthenticatorIdInvalidated(J)V
    .registers 5
    .param p1, "newAuthenticatorId"    # J

    .line 505
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 516
    return-void
.end method

.method public onAuthenticatorIdRetrieved(J)V
    .registers 5
    .param p1, "authenticatorId"    # J

    .line 489
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 501
    return-void
.end method

.method public onChallengeGenerated(J)V
    .registers 5
    .param p1, "challenge"    # J

    .line 173
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 185
    return-void
.end method

.method public onChallengeRevoked(J)V
    .registers 5
    .param p1, "challenge"    # J

    .line 189
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    return-void
.end method

.method public onEnrollmentFrame(Landroid/hardware/biometrics/face/EnrollmentFrame;)V
    .registers 4
    .param p1, "frame"    # Landroid/hardware/biometrics/face/EnrollmentFrame;

    .line 225
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;Landroid/hardware/biometrics/face/EnrollmentFrame;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 265
    return-void
.end method

.method public onEnrollmentProgress(II)V
    .registers 5
    .param p1, "enrollmentId"    # I
    .param p2, "remaining"    # I

    .line 292
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 308
    return-void
.end method

.method public onEnrollmentsEnumerated([I)V
    .registers 4
    .param p1, "enrollmentIds"    # [I

    .line 414
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 433
    return-void
.end method

.method public onEnrollmentsRemoved([I)V
    .registers 4
    .param p1, "enrollmentIds"    # [I

    .line 467
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 485
    return-void
.end method

.method public onError(BI)V
    .registers 5
    .param p1, "error"    # B
    .param p2, "vendorCode"    # I

    .line 269
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;BI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 288
    return-void
.end method

.method public onFeatureSet(B)V
    .registers 4
    .param p1, "feature"    # B

    .line 452
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 463
    return-void
.end method

.method public onFeaturesRetrieved([B)V
    .registers 4
    .param p1, "features"    # [B

    .line 437
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 448
    return-void
.end method

.method public onInteractionDetected()V
    .registers 3

    .line 399
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 410
    return-void
.end method

.method public onLockoutCleared()V
    .registers 3

    .line 382
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 395
    return-void
.end method

.method public onLockoutPermanent()V
    .registers 3

    .line 367
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 378
    return-void
.end method

.method public onLockoutTimed(J)V
    .registers 5
    .param p1, "durationMillis"    # J

    .line 352
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 363
    return-void
.end method

.method public onSessionClosed()V
    .registers 4

    .line 520
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 521
    return-void
.end method
