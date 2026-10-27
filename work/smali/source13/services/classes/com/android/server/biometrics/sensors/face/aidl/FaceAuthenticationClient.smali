.class Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;
.super Lcom/android/server/biometrics/sensors/AuthenticationClient;
.source "FaceAuthenticationClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/LockoutConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
        "Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;",
        ">;",
        "Lcom/android/server/biometrics/sensors/LockoutConsumer;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceAuthenticationClient"


# instance fields
.field private final mBiometricPromptIgnoreList:[I

.field private final mBiometricPromptIgnoreListVendor:[I

.field private mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

.field private final mKeyguardIgnoreList:[I

.field private final mKeyguardIgnoreListVendor:[I

.field private mLastAcquire:I

.field private final mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

.field private final mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLcom/android/server/biometrics/sensors/face/UsageStats;Lcom/android/server/biometrics/sensors/LockoutCache;ZZ)V
    .registers 47
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "requestId"    # J
    .param p6, "listener"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .param p7, "targetUserId"    # I
    .param p8, "operationId"    # J
    .param p10, "restricted"    # Z
    .param p11, "owner"    # Ljava/lang/String;
    .param p12, "cookie"    # I
    .param p13, "requireConfirmation"    # Z
    .param p14, "sensorId"    # I
    .param p15, "logger"    # Lcom/android/server/biometrics/log/BiometricLogger;
    .param p16, "biometricContext"    # Lcom/android/server/biometrics/log/BiometricContext;
    .param p17, "isStrongBiometric"    # Z
    .param p18, "usageStats"    # Lcom/android/server/biometrics/sensors/face/UsageStats;
    .param p19, "lockoutCache"    # Lcom/android/server/biometrics/sensors/LockoutCache;
    .param p20, "allowBackgroundAuthentication"    # Z
    .param p21, "isKeyguardBypassEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;",
            ">;",
            "Landroid/os/IBinder;",
            "J",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "IJZ",
            "Ljava/lang/String;",
            "IZI",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "Z",
            "Lcom/android/server/biometrics/sensors/face/UsageStats;",
            "Lcom/android/server/biometrics/sensors/LockoutCache;",
            "ZZ)V"
        }
    .end annotation

    .local p2, "lazyDaemon":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    .line 83
    move-object/from16 v23, v0

    const-class v0, Landroid/hardware/SensorPrivacyManager;

    .line 86
    move-object/from16 v24, v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/hardware/SensorPrivacyManager;

    .line 83
    move-object/from16 v0, v23

    invoke-direct/range {v0 .. v22}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLcom/android/server/biometrics/sensors/face/UsageStats;Lcom/android/server/biometrics/sensors/LockoutCache;ZZLandroid/hardware/SensorPrivacyManager;)V

    .line 87
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLcom/android/server/biometrics/sensors/face/UsageStats;Lcom/android/server/biometrics/sensors/LockoutCache;ZZLandroid/hardware/SensorPrivacyManager;)V
    .registers 44
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "requestId"    # J
    .param p6, "listener"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .param p7, "targetUserId"    # I
    .param p8, "operationId"    # J
    .param p10, "restricted"    # Z
    .param p11, "owner"    # Ljava/lang/String;
    .param p12, "cookie"    # I
    .param p13, "requireConfirmation"    # Z
    .param p14, "sensorId"    # I
    .param p15, "logger"    # Lcom/android/server/biometrics/log/BiometricLogger;
    .param p16, "biometricContext"    # Lcom/android/server/biometrics/log/BiometricContext;
    .param p17, "isStrongBiometric"    # Z
    .param p18, "usageStats"    # Lcom/android/server/biometrics/sensors/face/UsageStats;
    .param p19, "lockoutCache"    # Lcom/android/server/biometrics/sensors/LockoutCache;
    .param p20, "allowBackgroundAuthentication"    # Z
    .param p21, "isKeyguardBypassEnabled"    # Z
    .param p22, "sensorPrivacyManager"    # Landroid/hardware/SensorPrivacyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;",
            ">;",
            "Landroid/os/IBinder;",
            "J",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "IJZ",
            "Ljava/lang/String;",
            "IZI",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "Z",
            "Lcom/android/server/biometrics/sensors/face/UsageStats;",
            "Lcom/android/server/biometrics/sensors/LockoutCache;",
            "ZZ",
            "Landroid/hardware/SensorPrivacyManager;",
            ")V"
        }
    .end annotation

    .local p2, "lazyDaemon":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;>;"
    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p7

    move-wide/from16 v6, p8

    move/from16 v8, p10

    move-object/from16 v9, p11

    move/from16 v10, p12

    move/from16 v11, p13

    move/from16 v12, p14

    move-object/from16 v13, p15

    move-object/from16 v14, p16

    move/from16 v15, p17

    move-object/from16 v17, p19

    move/from16 v18, p20

    move/from16 v20, p21

    .line 99
    const/16 v16, 0x0

    const/16 v19, 0x1

    invoke-direct/range {v0 .. v20}, Lcom/android/server/biometrics/sensors/AuthenticationClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/LockoutTracker;ZZZ)V

    .line 72
    const/16 v0, 0x17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mLastAcquire:I

    .line 104
    move-wide/from16 v2, p4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->setRequestId(J)V

    .line 105
    move-object/from16 v0, p18

    iput-object v0, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    .line 106
    move-object/from16 v4, p19

    iput-object v4, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    .line 107
    const-class v5, Landroid/app/NotificationManager;

    move-object/from16 v6, p1

    invoke-virtual {v6, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iput-object v5, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mNotificationManager:Landroid/app/NotificationManager;

    .line 108
    move-object/from16 v5, p22

    iput-object v5, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 111
    .local v7, "resources":Landroid/content/res/Resources;
    const v8, 0x1070069

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBiometricPromptIgnoreList:[I

    .line 113
    const v8, 0x107006c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBiometricPromptIgnoreListVendor:[I

    .line 115
    const v8, 0x107006b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mKeyguardIgnoreList:[I

    .line 117
    const v8, 0x107006e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mKeyguardIgnoreListVendor:[I

    .line 119
    return-void
.end method

.method private doAuthenticate()Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;

    .line 157
    .local v0, "session":Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->hasContextMethods()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 158
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mOperationId:J

    .line 159
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getOperationContext()Landroid/hardware/biometrics/common/OperationContext;

    move-result-object v4

    .line 158
    invoke-interface {v1, v2, v3, v4}, Landroid/hardware/biometrics/face/ISession;->authenticateWithContext(JLandroid/hardware/biometrics/common/OperationContext;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v1

    return-object v1

    .line 161
    :cond_1b
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/aidl/AidlSession;->getSession()Landroid/hardware/biometrics/face/ISession;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mOperationId:J

    invoke-interface {v1, v2, v3}, Landroid/hardware/biometrics/face/ISession;->authenticate(J)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v1

    return-object v1
.end method

.method private getAcquireIgnorelist()[I
    .registers 2

    .line 229
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->isBiometricPrompt()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBiometricPromptIgnoreList:[I

    goto :goto_b

    :cond_9
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mKeyguardIgnoreList:[I

    :goto_b
    return-object v0
.end method

.method private getAcquireVendorIgnorelist()[I
    .registers 2

    .line 233
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->isBiometricPrompt()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mBiometricPromptIgnoreListVendor:[I

    goto :goto_b

    :cond_9
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mKeyguardIgnoreListVendor:[I

    :goto_b
    return-object v0
.end method

.method private shouldSendAcquiredMessage(II)Z
    .registers 6
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 237
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x16

    if-ne p1, v2, :cond_13

    .line 238
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getAcquireVendorIgnorelist()[I

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/server/biometrics/Utils;->listContains([II)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_1f

    :cond_11
    move v0, v1

    goto :goto_1f

    .line 239
    :cond_13
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getAcquireIgnorelist()[I

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/server/biometrics/Utils;->listContains([II)Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v1

    .line 237
    :goto_1f
    return v0
.end method


# virtual methods
.method public getTargetUserId()I
    .registers 2

    .line 307
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mTargetUserId:I

    return v0
.end method

.method protected handleLifecycleAfterAuth(Z)V
    .registers 4
    .param p1, "authenticated"    # Z

    .line 193
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 194
    return-void
.end method

.method public onAcquired(II)V
    .registers 4
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 244
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mLastAcquire:I

    .line 245
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->shouldSendAcquiredMessage(II)Z

    move-result v0

    .line 246
    .local v0, "shouldSend":Z
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->onAcquiredInternal(IIZ)V

    .line 247
    return-void
.end method

.method public onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V
    .registers 15
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "authenticated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 199
    .local p3, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    .line 201
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mState:I

    .line 202
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    new-instance v10, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;

    .line 203
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getStartTimeMs()J

    move-result-wide v2

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getStartTimeMs()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 208
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getTargetUserId()I

    move-result v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v10

    move v6, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;-><init>(JJZIII)V

    .line 202
    invoke-virtual {v0, v10}, Lcom/android/server/biometrics/sensors/face/UsageStats;->addEvent(Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;)V

    .line 209
    return-void
.end method

.method public onAuthenticationFrame(Landroid/hardware/face/FaceAuthenticationFrame;)V
    .registers 9
    .param p1, "frame"    # Landroid/hardware/face/FaceAuthenticationFrame;

    .line 256
    invoke-virtual {p1}, Landroid/hardware/face/FaceAuthenticationFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/face/FaceDataFrame;->getAcquiredInfo()I

    move-result v0

    .line 257
    .local v0, "acquireInfo":I
    invoke-virtual {p1}, Landroid/hardware/face/FaceAuthenticationFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/face/FaceDataFrame;->getVendorCode()I

    move-result v1

    .line 258
    .local v1, "vendorCode":I
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mLastAcquire:I

    .line 259
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->onAcquiredInternal(IIZ)V

    .line 261
    invoke-direct {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->shouldSendAcquiredMessage(II)Z

    move-result v3

    .line 262
    .local v3, "shouldSend":Z
    if-eqz v3, :cond_37

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v4

    if-eqz v4, :cond_37

    .line 264
    :try_start_22
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onAuthenticationFrame(Landroid/hardware/face/FaceAuthenticationFrame;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_29} :catch_2a

    .line 268
    goto :goto_37

    .line 265
    :catch_2a
    move-exception v4

    .line 266
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "FaceAuthenticationClient"

    const-string v6, "Failed to send authentication frame"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v5, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 270
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_37
    :goto_37
    return-void
.end method

.method public onError(II)V
    .registers 14
    .param p1, "error"    # I
    .param p2, "vendorCode"    # I

    .line 213
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    new-instance v10, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;

    .line 214
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getStartTimeMs()J

    move-result-wide v2

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getStartTimeMs()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 219
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getTargetUserId()I

    move-result v9

    const/4 v6, 0x0

    move-object v1, v10

    move v7, p1

    move v8, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;-><init>(JJZIII)V

    .line 213
    invoke-virtual {v0, v10}, Lcom/android/server/biometrics/sensors/face/UsageStats;->addEvent(Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;)V

    .line 221
    const/16 v0, 0x10

    if-ne p1, v0, :cond_2a

    .line 222
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showReEnrollmentNotification(Landroid/content/Context;)V

    .line 225
    :cond_2a
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onError(II)V

    .line 226
    return-void
.end method

.method public onLockoutPermanent()V
    .registers 8

    .line 290
    invoke-super {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onLockoutPermanent()V

    .line 291
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getTargetUserId()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/LockoutCache;->setLockoutModeForUser(II)V

    .line 293
    const/16 v0, 0x9

    .line 294
    .local v0, "error":I
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getOperationContext()Landroid/hardware/biometrics/common/OperationContext;

    move-result-object v3

    .line 295
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getTargetUserId()I

    move-result v6

    .line 294
    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/log/BiometricLogger;->logOnError(Landroid/content/Context;Landroid/hardware/biometrics/common/OperationContext;III)V

    .line 298
    :try_start_25
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getSensorId()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getCookie()I

    move-result v3

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_37} :catch_38

    .line 301
    goto :goto_40

    .line 299
    :catch_38
    move-exception v1

    .line 300
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "FaceAuthenticationClient"

    const-string v3, "Remote exception"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_40
    return-void
.end method

.method public onLockoutTimed(J)V
    .registers 10
    .param p1, "durationMillis"    # J

    .line 274
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onLockoutTimed(J)V

    .line 275
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mLockoutCache:Lcom/android/server/biometrics/sensors/LockoutCache;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getTargetUserId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/LockoutCache;->setLockoutModeForUser(II)V

    .line 277
    const/4 v0, 0x7

    .line 278
    .local v0, "error":I
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getOperationContext()Landroid/hardware/biometrics/common/OperationContext;

    move-result-object v3

    .line 279
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getTargetUserId()I

    move-result v6

    .line 278
    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/log/BiometricLogger;->logOnError(Landroid/content/Context;Landroid/hardware/biometrics/common/OperationContext;III)V

    .line 282
    :try_start_23
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getSensorId()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getCookie()I

    move-result v3

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_34} :catch_35

    .line 285
    goto :goto_3d

    .line 283
    :catch_35
    move-exception v1

    .line 284
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "FaceAuthenticationClient"

    const-string v3, "Remote exception"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 286
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3d
    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 123
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 124
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mState:I

    .line 125
    return-void
.end method

.method protected startHalOperation()V
    .registers 6

    .line 137
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    if-eqz v2, :cond_16

    const/4 v3, 0x2

    .line 139
    invoke-virtual {v2, v0, v3}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(II)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 141
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->onError(II)V

    .line 143
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v2, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    goto :goto_1c

    .line 145
    :cond_16
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->doAuthenticate()Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1c} :catch_1d

    .line 151
    :goto_1c
    goto :goto_2d

    .line 147
    :catch_1d
    move-exception v2

    .line 148
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "FaceAuthenticationClient"

    const-string v4, "Remote exception when requesting auth"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->onError(II)V

    .line 150
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 152
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2d
    return-void
.end method

.method protected stopHalOperation()V
    .registers 4

    .line 167
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mCancellationSignal:Landroid/hardware/biometrics/common/ICancellationSignal;

    if-eqz v0, :cond_1a

    .line 169
    :try_start_4
    invoke-interface {v0}, Landroid/hardware/biometrics/common/ICancellationSignal;->cancel()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 174
    goto :goto_1a

    .line 170
    :catch_8
    move-exception v0

    .line 171
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FaceAuthenticationClient"

    const-string v2, "Remote exception when requesting cancel"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->onError(II)V

    .line 173
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 176
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1a
    :goto_1a
    return-void
.end method

.method public wasUserDetected()Z
    .registers 3

    .line 182
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->mLastAcquire:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_10

    const/16 v1, 0x15

    if-eq v0, v1, :cond_10

    const/16 v1, 0x17

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method protected wrapCallbackForStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .registers 7
    .param p1, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 130
    new-instance v0, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 131
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/aidl/FaceAuthenticationClient;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/biometrics/log/BiometricLogger;->createALSCallback(Z)Lcom/android/server/biometrics/log/CallbackWithProbe;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    aput-object p1, v1, v3

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 130
    return-object v0
.end method
