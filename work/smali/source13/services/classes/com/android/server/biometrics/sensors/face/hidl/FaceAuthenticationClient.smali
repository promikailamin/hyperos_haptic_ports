.class Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;
.super Lcom/android/server/biometrics/sensors/AuthenticationClient;
.source "FaceAuthenticationClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/AuthenticationClient<",
        "Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceAuthenticationClient"


# instance fields
.field private final mBiometricPromptIgnoreList:[I

.field private final mBiometricPromptIgnoreListVendor:[I

.field private final mKeyguardIgnoreList:[I

.field private final mKeyguardIgnoreListVendor:[I

.field private mLastAcquire:I

.field private mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

.field private final mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLcom/android/server/biometrics/sensors/LockoutTracker;Lcom/android/server/biometrics/sensors/face/UsageStats;ZZ)V
    .registers 43
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
    .param p18, "lockoutTracker"    # Lcom/android/server/biometrics/sensors/LockoutTracker;
    .param p19, "usageStats"    # Lcom/android/server/biometrics/sensors/face/UsageStats;
    .param p20, "allowBackgroundAuthentication"    # Z
    .param p21, "isKeyguardBypassEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;",
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
            "Lcom/android/server/biometrics/sensors/LockoutTracker;",
            "Lcom/android/server/biometrics/sensors/face/UsageStats;",
            "ZZ)V"
        }
    .end annotation

    .local p2, "lazyDaemon":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;>;"
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

    move-object/from16 v17, p18

    move/from16 v18, p20

    move/from16 v20, p21

    .line 74
    const/16 v16, 0x0

    const/16 v19, 0x1

    invoke-direct/range {v0 .. v20}, Lcom/android/server/biometrics/sensors/AuthenticationClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/LockoutTracker;ZZZ)V

    .line 79
    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->setRequestId(J)V

    .line 80
    move-object/from16 v3, p19

    iput-object v3, v0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    .line 81
    const-class v4, Landroid/hardware/SensorPrivacyManager;

    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorPrivacyManager;

    iput-object v4, v0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 84
    .local v4, "resources":Landroid/content/res/Resources;
    const v6, 0x1070069

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mBiometricPromptIgnoreList:[I

    .line 86
    const v6, 0x107006c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mBiometricPromptIgnoreListVendor:[I

    .line 88
    const v6, 0x107006b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mKeyguardIgnoreList:[I

    .line 90
    const v6, 0x107006e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mKeyguardIgnoreListVendor:[I

    .line 92
    return-void
.end method

.method private getAcquireIgnorelist()[I
    .registers 2

    .line 185
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->isBiometricPrompt()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mBiometricPromptIgnoreList:[I

    goto :goto_b

    :cond_9
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mKeyguardIgnoreList:[I

    :goto_b
    return-object v0
.end method

.method private getAcquireVendorIgnorelist()[I
    .registers 2

    .line 189
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->isBiometricPrompt()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mBiometricPromptIgnoreListVendor:[I

    goto :goto_b

    :cond_9
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mKeyguardIgnoreListVendor:[I

    :goto_b
    return-object v0
.end method

.method private shouldSend(II)Z
    .registers 4
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 193
    const/16 v0, 0x16

    if-ne p1, v0, :cond_f

    .line 194
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->getAcquireVendorIgnorelist()[I

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/biometrics/Utils;->listContains([II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 196
    :cond_f
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->getAcquireIgnorelist()[I

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/biometrics/Utils;->listContains([II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method protected handleLifecycleAfterAuth(Z)V
    .registers 4
    .param p1, "authenticated"    # Z

    .line 153
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 154
    return-void
.end method

.method public onAcquired(II)V
    .registers 4
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 202
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mLastAcquire:I

    .line 204
    const/16 v0, 0xd

    if-ne p1, v0, :cond_d

    .line 205
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showReEnrollmentNotification(Landroid/content/Context;)V

    .line 208
    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->shouldSend(II)Z

    move-result v0

    .line 209
    .local v0, "shouldSend":Z
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->onAcquiredInternal(IIZ)V

    .line 210
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

    .line 159
    .local p3, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    .line 161
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mState:I

    .line 162
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    new-instance v10, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;

    .line 163
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->getStartTimeMs()J

    move-result-wide v2

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->getStartTimeMs()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 168
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->getTargetUserId()I

    move-result v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v10

    move v6, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;-><init>(JJZIII)V

    .line 162
    invoke-virtual {v0, v10}, Lcom/android/server/biometrics/sensors/face/UsageStats;->addEvent(Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;)V

    .line 169
    return-void
.end method

.method public onError(II)V
    .registers 14
    .param p1, "error"    # I
    .param p2, "vendorCode"    # I

    .line 173
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    new-instance v10, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;

    .line 174
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->getStartTimeMs()J

    move-result-wide v2

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->getStartTimeMs()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 179
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->getTargetUserId()I

    move-result v9

    const/4 v6, 0x0

    move-object v1, v10

    move v7, p1

    move v8, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;-><init>(JJZIII)V

    .line 173
    invoke-virtual {v0, v10}, Lcom/android/server/biometrics/sensors/face/UsageStats;->addEvent(Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;)V

    .line 181
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onError(II)V

    .line 182
    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 96
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 97
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mState:I

    .line 98
    return-void
.end method

.method protected startHalOperation()V
    .registers 6

    .line 110
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    const/4 v3, 0x2

    .line 112
    invoke-virtual {v0, v1, v3}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 114
    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->onError(II)V

    .line 115
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 116
    return-void

    .line 120
    :cond_16
    :try_start_16
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    iget-wide v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mOperationId:J

    invoke-interface {v0, v3, v4}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->authenticate(J)I
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_21} :catch_22

    .line 125
    goto :goto_32

    .line 121
    :catch_22
    move-exception v0

    .line 122
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "FaceAuthenticationClient"

    const-string v4, "Remote exception when requesting auth"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->onError(II)V

    .line 124
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 126
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_32
    return-void
.end method

.method protected stopHalOperation()V
    .registers 4

    .line 131
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    invoke-interface {v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->cancel()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 136
    goto :goto_1c

    .line 132
    :catch_a
    move-exception v0

    .line 133
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FaceAuthenticationClient"

    const-string v2, "Remote exception when requesting cancel"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->onError(II)V

    .line 135
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v1, p0, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 137
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method

.method public wasUserDetected()Z
    .registers 3

    .line 143
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->mLastAcquire:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_c

    const/16 v1, 0x15

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected wrapCallbackForStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .registers 7
    .param p1, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 103
    new-instance v0, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 104
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/biometrics/log/BiometricLogger;->createALSCallback(Z)Lcom/android/server/biometrics/log/CallbackWithProbe;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    aput-object p1, v1, v3

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 103
    return-object v0
.end method
