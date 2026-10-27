.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;
.super Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;
.source "Sensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HalSessionCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$Callback;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

.field private final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field private final mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

.field private final mSensorId:I

.field private final mTag:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;IILcom/android/server/biometrics/sensors/LockoutCache;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$Callback;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "scheduler"    # Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;
    .param p5, "sensorId"    # I
    .param p6, "userId"    # I
    .param p7, "lockoutTracker"    # Lcom/android/server/biometrics/sensors/LockoutCache;
    .param p8, "lockoutResetDispatcher"    # Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;
    .param p9, "callback"    # Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$Callback;

    .line 140
    invoke-direct {p0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mContext:Landroid/content/Context;

    .line 142
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    .line 143
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    .line 144
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    .line 145
    iput p5, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mSensorId:I

    .line 146
    iput p6, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mUserId:I

    .line 147
    iput-object p7, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    .line 148
    iput-object p8, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 149
    iput-object p9, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$Callback;

    .line 150
    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 159
    const-string v0, "c2f3b863b6dff925bc4451473ee6caa1aa304b8f"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 2

    .line 154
    const/4 v0, 0x2

    return v0
.end method

.method synthetic lambda$onAcquired$2$com-android-server-biometrics-sensors-fingerprint-aidl-Sensor$HalSessionCallback(BI)V
    .registers 7
    .param p1, "info"    # B
    .param p2, "vendorCode"    # I

    .line 197
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 198
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    if-nez v1, :cond_28

    .line 199
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAcquired for non-acquisition client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 200
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void

    .line 204
    :cond_28
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    .line 205
    .local v1, "acquisitionClient":Lcom/android/server/biometrics/sensors/AcquisitionClient;, "Lcom/android/server/biometrics/sensors/AcquisitionClient<*>;"
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlConversionUtils;->toFrameworkAcquiredInfo(B)I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquired(II)V

    .line 207
    return-void
.end method

.method synthetic lambda$onAuthenticationFailed$6$com-android-server-biometrics-sensors-fingerprint-aidl-Sensor$HalSessionCallback()V
    .registers 8

    .line 279
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 280
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    if-nez v1, :cond_28

    .line 281
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAuthenticationFailed for non-authentication consumer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 282
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 281
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void

    .line 286
    :cond_28
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    .line 288
    .local v1, "authenticationConsumer":Lcom/android/server/biometrics/sensors/AuthenticationConsumer;
    new-instance v2, Landroid/hardware/fingerprint/Fingerprint;

    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mSensorId:I

    int-to-long v3, v3

    const-string v5, ""

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6, v3, v4}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 289
    .local v2, "fp":Landroid/hardware/fingerprint/Fingerprint;
    const/4 v3, 0x0

    .line 290
    invoke-interface {v1, v2, v6, v3}, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    .line 291
    return-void
.end method

.method synthetic lambda$onAuthenticationSucceeded$5$com-android-server-biometrics-sensors-fingerprint-aidl-Sensor$HalSessionCallback(ILandroid/hardware/keymaster/HardwareAuthToken;)V
    .registers 12
    .param p1, "enrollmentId"    # I
    .param p2, "hat"    # Landroid/hardware/keymaster/HardwareAuthToken;

    .line 256
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 257
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    if-nez v1, :cond_28

    .line 258
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAuthenticationSucceeded for non-authentication consumer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 259
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void

    .line 263
    :cond_28
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    .line 265
    .local v1, "authenticationConsumer":Lcom/android/server/biometrics/sensors/AuthenticationConsumer;
    new-instance v2, Landroid/hardware/fingerprint/Fingerprint;

    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mSensorId:I

    int-to-long v3, v3

    const-string v5, ""

    invoke-direct {v2, v5, p1, v3, v4}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 266
    .local v2, "fp":Landroid/hardware/fingerprint/Fingerprint;
    invoke-static {p2}, Lcom/android/server/biometrics/HardwareAuthTokenUtils;->toByteArray(Landroid/hardware/keymaster/HardwareAuthToken;)[B

    move-result-object v3

    .line 267
    .local v3, "byteArray":[B
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v4, "byteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    array-length v5, v3

    const/4 v6, 0x0

    :goto_40
    if-ge v6, v5, :cond_4e

    aget-byte v7, v3, v6

    .line 269
    .local v7, "b":B
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    .end local v7    # "b":B
    add-int/lit8 v6, v6, 0x1

    goto :goto_40

    .line 272
    :cond_4e
    const/4 v5, 0x1

    invoke-interface {v1, v2, v5, v4}, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    .line 273
    return-void
.end method

.method synthetic lambda$onAuthenticatorIdInvalidated$14$com-android-server-biometrics-sensors-fingerprint-aidl-Sensor$HalSessionCallback(J)V
    .registers 7
    .param p1, "newAuthenticatorId"    # J

    .line 421
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 422
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintInvalidationClient;

    if-nez v1, :cond_28

    .line 423
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAuthenticatorIdInvalidated for wrong consumer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 424
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 423
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    return-void

    .line 428
    :cond_28
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintInvalidationClient;

    .line 430
    .local v1, "invalidationClient":Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintInvalidationClient;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintInvalidationClient;->onAuthenticatorIdInvalidated(J)V

    .line 431
    return-void
.end method

.method synthetic lambda$onAuthenticatorIdRetrieved$13$com-android-server-biometrics-sensors-fingerprint-aidl-Sensor$HalSessionCallback(J)V
    .registers 7
    .param p1, "authenticatorId"    # J

    .line 405
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 406
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGetAuthenticatorIdClient;

    if-nez v1, :cond_28

    .line 407
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAuthenticatorIdRetrieved for wrong consumer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 408
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 407
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    return-void

    .line 412
    :cond_28
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGetAuthenticatorIdClient;

    .line 414
    .local v1, "getAuthenticatorIdClient":Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGetAuthenticatorIdClient;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGetAuthenticatorIdClient;->onAuthenticatorIdRetrieved(J)V

    .line 415
    return-void
.end method

.method synthetic lambda$onChallengeGenerated$0$com-android-server-biometrics-sensors-fingerprint-aidl-Sensor$HalSessionCallback(J)V
    .registers 7
    .param p1, "challenge"    # J

    .line 165
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 166
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGenerateChallengeClient;

    if-nez v1, :cond_28

    .line 167
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onChallengeGenerated for wrong client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 168
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void

    .line 172
    :cond_28
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGenerateChallengeClient;

    .line 174
    .local v1, "generateChallengeClient":Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGenerateChallengeClient;
    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mSensorId:I

    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mUserId:I

    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintGenerateChallengeClient;->onChallengeGenerated(IIJ)V

    .line 175
    return-void
.end method

.method synthetic lambda$onChallengeRevoked$1$com-android-server-biometrics-sensors-fingerprint-aidl-Sensor$HalSessionCallback(J)V
    .registers 7
    .param p1, "challenge"    # J

    .line 181
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 182
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRevokeChallengeClient;

    if-nez v1, :cond_28

    .line 183
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onChallengeRevoked for wrong client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 184
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void

    .line 188
    :cond_28
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRevokeChallengeClient;

    .line 190
    .local v1, "revokeChallengeClient":Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRevokeChallengeClient;
    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mSensorId:I

    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mUserId:I

    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintRevokeChallengeClient;->onChallengeRevoked(IIJ)V

    .line 191
    return-void
.end method

.method synthetic lambda$onEnrollmentProgress$4$com-android-server-biometrics-sensors-fingerprint-aidl-Sensor$HalSessionCallback(II)V
    .registers 9
    .param p1, "enrollmentId"    # I
    .param p2, "remaining"    # I

    .line 236
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 237
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;

    if-nez v1, :cond_28

    .line 238
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onEnrollmentProgress for non-enroll client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 239
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 238
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void

    .line 243
    :cond_28
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v1

    .line 244
    .local v1, "currentUserId":I
    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mSensorId:I

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mContext:Landroid/content/Context;

    .line 245
    invoke-virtual {v2, v3, v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getUniqueName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 246
    .local v2, "name":Ljava/lang/CharSequence;
    new-instance v3, Landroid/hardware/fingerprint/Fingerprint;

    iget v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mSensorId:I

    int-to-long v4, v4

    invoke-direct {v3, v2, p1, v4, v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 248
    .local v3, "fingerprint":Landroid/hardware/fingerprint/Fingerprint;
    move-object v4, v0

    check-cast v4, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;

    .line 249
    .local v4, "enrollClient":Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;
    invoke-virtual {v4, v3, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintEnrollClient;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 250
    return-void
.end method

.method synthetic lambda$onEnrollmentsEnumerated$11$com-android-server-biometrics-sensors-fingerprint-aidl-Sensor$HalSessionCallback([I)V
    .registers 10
    .param p1, "enrollmentIds"    # [I

    .line 360
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 361
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    if-nez v1, :cond_28

    .line 362
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onEnrollmentsEnumerated for non-enumerate consumer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 363
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 362
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    return-void

    .line 367
    :cond_28
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    .line 369
    .local v1, "enumerateConsumer":Lcom/android/server/biometrics/sensors/EnumerateConsumer;
    array-length v2, p1

    if-lez v2, :cond_49

    .line 370
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2f
    array-length v3, p1

    if-ge v2, v3, :cond_48

    .line 371
    new-instance v3, Landroid/hardware/fingerprint/Fingerprint;

    aget v4, p1, v2

    iget v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mSensorId:I

    int-to-long v5, v5

    const-string v7, ""

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 372
    .local v3, "fp":Landroid/hardware/fingerprint/Fingerprint;
    array-length v4, p1

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v1, v3, v4}, Lcom/android/server/biometrics/sensors/EnumerateConsumer;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 370
    .end local v3    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .end local v2    # "i":I
    :cond_48
    goto :goto_4e

    .line 375
    :cond_49
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/server/biometrics/sensors/EnumerateConsumer;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 377
    :goto_4e
    return-void
.end method

.method synthetic lambda$onEnrollmentsRemoved$12$com-android-server-biometrics-sensors-fingerprint-aidl-Sensor$HalSessionCallback([I)V
    .registers 10
    .param p1, "enrollmentIds"    # [I

    .line 383
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 384
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/RemovalConsumer;

    if-nez v1, :cond_28

    .line 385
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRemoved for non-removal consumer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 386
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 385
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return-void

    .line 390
    :cond_28
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/RemovalConsumer;

    .line 391
    .local v1, "removalConsumer":Lcom/android/server/biometrics/sensors/RemovalConsumer;
    array-length v2, p1

    if-lez v2, :cond_49

    .line 392
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2f
    array-length v3, p1

    if-ge v2, v3, :cond_48

    .line 393
    new-instance v3, Landroid/hardware/fingerprint/Fingerprint;

    aget v4, p1, v2

    iget v5, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mSensorId:I

    int-to-long v5, v5

    const-string v7, ""

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 394
    .local v3, "fp":Landroid/hardware/fingerprint/Fingerprint;
    array-length v4, p1

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v1, v3, v4}, Lcom/android/server/biometrics/sensors/RemovalConsumer;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 392
    .end local v3    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .end local v2    # "i":I
    :cond_48
    goto :goto_4e

    .line 397
    :cond_49
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/server/biometrics/sensors/RemovalConsumer;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 399
    :goto_4e
    return-void
.end method

.method synthetic lambda$onError$3$com-android-server-biometrics-sensors-fingerprint-aidl-Sensor$HalSessionCallback(BI)V
    .registers 7
    .param p1, "error"    # B
    .param p2, "vendorCode"    # I

    .line 213
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 214
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onError, client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 215
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

    .line 214
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    if-nez v1, :cond_59

    .line 219
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onError for non-error consumer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 220
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 219
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-void

    .line 224
    :cond_59
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    .line 225
    .local v1, "errorConsumer":Lcom/android/server/biometrics/sensors/ErrorConsumer;
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/AidlConversionUtils;->toFrameworkError(B)I

    move-result v2

    invoke-interface {v1, v2, p2}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    .line 227
    const/4 v2, 0x1

    if-ne p1, v2, :cond_6b

    .line 228
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mCallback:Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$Callback;

    invoke-interface {v2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$Callback;->onHardwareUnavailable()V

    .line 230
    :cond_6b
    return-void
.end method

.method synthetic lambda$onInteractionDetected$10$com-android-server-biometrics-sensors-fingerprint-aidl-Sensor$HalSessionCallback()V
    .registers 5

    .line 344
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 345
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;

    if-nez v1, :cond_28

    .line 346
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onInteractionDetected for non-detect client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 347
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 346
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return-void

    .line 351
    :cond_28
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;

    .line 353
    .local v1, "fingerprintDetectClient":Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintDetectClient;->onInteractionDetected()V

    .line 354
    return-void
.end method

.method synthetic lambda$onLockoutCleared$9$com-android-server-biometrics-sensors-fingerprint-aidl-Sensor$HalSessionCallback()V
    .registers 6

    .line 327
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 328
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;

    if-nez v1, :cond_1e

    .line 329
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "onLockoutCleared outside of resetLockout by HAL"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mSensorId:I

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mUserId:I

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;->resetLocalLockoutStateToNone(IILcom/android/server/biometrics/sensors/LockoutCache;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;)V

    goto :goto_2c

    .line 333
    :cond_1e
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "onLockoutCleared after resetLockout"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;

    .line 336
    .local v1, "resetLockoutClient":Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;->onLockoutCleared()V

    .line 338
    .end local v1    # "resetLockoutClient":Lcom/android/server/biometrics/sensors/fingerprint/aidl/FingerprintResetLockoutClient;
    :goto_2c
    return-void
.end method

.method synthetic lambda$onLockoutPermanent$8$com-android-server-biometrics-sensors-fingerprint-aidl-Sensor$HalSessionCallback()V
    .registers 5

    .line 312
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 313
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/LockoutConsumer;

    if-nez v1, :cond_28

    .line 314
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLockoutPermanent for non-lockout consumer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 315
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 314
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-void

    .line 319
    :cond_28
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/LockoutConsumer;

    .line 320
    .local v1, "lockoutConsumer":Lcom/android/server/biometrics/sensors/LockoutConsumer;
    invoke-interface {v1}, Lcom/android/server/biometrics/sensors/LockoutConsumer;->onLockoutPermanent()V

    .line 321
    return-void
.end method

.method synthetic lambda$onLockoutTimed$7$com-android-server-biometrics-sensors-fingerprint-aidl-Sensor$HalSessionCallback(J)V
    .registers 7
    .param p1, "durationMillis"    # J

    .line 297
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 298
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/LockoutConsumer;

    if-nez v1, :cond_28

    .line 299
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLockoutTimed for non-lockout consumer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 300
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 299
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-void

    .line 304
    :cond_28
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/LockoutConsumer;

    .line 305
    .local v1, "lockoutConsumer":Lcom/android/server/biometrics/sensors/LockoutConsumer;
    invoke-interface {v1, p1, p2}, Lcom/android/server/biometrics/sensors/LockoutConsumer;->onLockoutTimed(J)V

    .line 306
    return-void
.end method

.method public onAcquired(BI)V
    .registers 5
    .param p1, "info"    # B
    .param p2, "vendorCode"    # I

    .line 196
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;BI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 208
    return-void
.end method

.method public onAuthenticationFailed()V
    .registers 3

    .line 278
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 292
    return-void
.end method

.method public onAuthenticationSucceeded(ILandroid/hardware/keymaster/HardwareAuthToken;)V
    .registers 5
    .param p1, "enrollmentId"    # I
    .param p2, "hat"    # Landroid/hardware/keymaster/HardwareAuthToken;

    .line 255
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;ILandroid/hardware/keymaster/HardwareAuthToken;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 274
    return-void
.end method

.method public onAuthenticatorIdInvalidated(J)V
    .registers 5
    .param p1, "newAuthenticatorId"    # J

    .line 420
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 432
    return-void
.end method

.method public onAuthenticatorIdRetrieved(J)V
    .registers 5
    .param p1, "authenticatorId"    # J

    .line 404
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 416
    return-void
.end method

.method public onChallengeGenerated(J)V
    .registers 5
    .param p1, "challenge"    # J

    .line 164
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 176
    return-void
.end method

.method public onChallengeRevoked(J)V
    .registers 5
    .param p1, "challenge"    # J

    .line 180
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 192
    return-void
.end method

.method public onEnrollmentProgress(II)V
    .registers 5
    .param p1, "enrollmentId"    # I
    .param p2, "remaining"    # I

    .line 235
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 251
    return-void
.end method

.method public onEnrollmentsEnumerated([I)V
    .registers 4
    .param p1, "enrollmentIds"    # [I

    .line 359
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 378
    return-void
.end method

.method public onEnrollmentsRemoved([I)V
    .registers 4
    .param p1, "enrollmentIds"    # [I

    .line 382
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 400
    return-void
.end method

.method public onError(BI)V
    .registers 5
    .param p1, "error"    # B
    .param p2, "vendorCode"    # I

    .line 212
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;BI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 231
    return-void
.end method

.method public onInteractionDetected()V
    .registers 3

    .line 343
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 355
    return-void
.end method

.method public onLockoutCleared()V
    .registers 3

    .line 326
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 339
    return-void
.end method

.method public onLockoutPermanent()V
    .registers 3

    .line 311
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 322
    return-void
.end method

.method public onLockoutTimed(J)V
    .registers 5
    .param p1, "durationMillis"    # J

    .line 296
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 307
    return-void
.end method

.method public onSessionClosed()V
    .registers 4

    .line 436
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/Sensor$HalSessionCallback;->mScheduler:Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/android/server/biometrics/sensors/face/aidl/Sensor$HalSessionCallback$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/UserAwareBiometricScheduler;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 437
    return-void
.end method
