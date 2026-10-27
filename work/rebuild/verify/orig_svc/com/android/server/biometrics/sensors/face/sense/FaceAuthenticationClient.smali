.class public Lcom/android/server/biometrics/sensors/face/sense/FaceAuthenticationClient;
.super Lcom/android/server/biometrics/sensors/AuthenticationClient;
.source "FaceAuthenticationClient.java"


# instance fields
.field public final mBiometricPromptIgnoreList:[I

.field public final mBiometricPromptIgnoreListVendor:[I

.field public final mKeyguardIgnoreList:[I

.field public final mKeyguardIgnoreListVendor:[I

.field public mLastAcquire:I

.field public final mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLandroid/hardware/face/FaceAuthenticateOptions;IZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLcom/android/server/biometrics/sensors/LockoutTracker;Lcom/android/server/biometrics/sensors/face/UsageStats;ZI)V
    .registers 39

    const/4 v14, 0x0

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move-wide/from16 v5, p7

    move/from16 v7, p9

    move-object/from16 v8, p10

    move/from16 v9, p11

    move/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    move/from16 v13, p15

    move-object/from16 v15, p16

    move/from16 v16, p18

    move/from16 v18, p19

    .line 85
    invoke-direct/range {v0 .. v18}, Lcom/android/server/biometrics/sensors/AuthenticationClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLandroid/hardware/biometrics/AuthenticateOptions;IZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/LockoutTracker;ZZI)V

    move-wide/from16 v1, p4

    .line 90
    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->setRequestId(J)V

    move-object/from16 v1, p17

    .line 91
    iput-object v1, v0, Lcom/android/server/biometrics/sensors/face/sense/FaceAuthenticationClient;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    .line 93
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070081

    .line 94
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/biometrics/sensors/face/sense/FaceAuthenticationClient;->mBiometricPromptIgnoreList:[I

    const v2, 0x1070084

    .line 96
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/biometrics/sensors/face/sense/FaceAuthenticationClient;->mBiometricPromptIgnoreListVendor:[I

    const v2, 0x1070083

    .line 98
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/biometrics/sensors/face/sense/FaceAuthenticationClient;->mKeyguardIgnoreList:[I

    const v2, 0x1070086

    .line 100
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/biometrics/sensors/face/sense/FaceAuthenticationClient;->mKeyguardIgnoreListVendor:[I

    return-void
.end method

.method private getAcquireIgnorelist()[I
    .registers 2

    .line 200
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/FaceAuthenticationClient;->mBiometricPromptIgnoreList:[I

    return-object p0

    :cond_9
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/FaceAuthenticationClient;->mKeyguardIgnoreList:[I

    return-object p0
.end method

.method private getAcquireVendorIgnorelist()[I
    .registers 2

    .line 204
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->isBiometricPrompt()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/FaceAuthenticationClient;->mBiometricPromptIgnoreListVendor:[I

    return-object p0

    :cond_9
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/FaceAuthenticationClient;->mKeyguardIgnoreListVendor:[I

    return-object p0
.end method


# virtual methods
.method public handleLifecycleAfterAuth(Z)V
    .registers 3

    .line 153
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public onAcquired(II)V
    .registers 6

    .line 217
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/sense/FaceAuthenticationClient;->mLastAcquire:I

    const/16 v0, 0xd

    if-ne p1, v0, :cond_d

    .line 220
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showReEnrollmentNotification(Landroid/content/Context;)V

    .line 223
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getLockoutTracker()Lcom/android/server/biometrics/sensors/LockoutTracker;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/biometrics/sensors/LockoutTracker;->getLockoutModeForUser(I)I

    move-result v0

    if-nez v0, :cond_2e

    .line 225
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v0

    .line 226
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isCryptoOperation()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementAcquireForUser(IZ)V

    .line 229
    :cond_2e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/sense/FaceAuthenticationClient;->shouldSend(II)Z

    move-result v0

    .line 230
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquiredInternal(IIZ)V

    return-void
.end method

.method public onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V
    .registers 13

    .line 173
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->vibrateSuccess()V

    const/4 p1, 0x4

    .line 176
    iput p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    .line 177
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/FaceAuthenticationClient;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;

    .line 178
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getStartTimeMs()J

    move-result-wide v1

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getStartTimeMs()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const/4 v7, 0x0

    .line 183
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v8

    const/4 v6, 0x0

    move v5, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;-><init>(JJZIII)V

    .line 177
    invoke-virtual {p1, v0}, Lcom/android/server/biometrics/sensors/face/UsageStats;->addEvent(Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;)V

    return-void
.end method

.method public onError(II)V
    .registers 13

    .line 188
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/sense/FaceAuthenticationClient;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;

    .line 189
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getStartTimeMs()J

    move-result-wide v2

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getStartTimeMs()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const/4 v6, 0x0

    .line 194
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v9

    move v7, p1

    move v8, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;-><init>(JJZIII)V

    .line 188
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/face/UsageStats;->addEvent(Lcom/android/server/biometrics/sensors/face/UsageStats$AuthenticationEvent;)V

    .line 196
    invoke-super {p0, v7, v8}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onError(II)V

    return-void
.end method

.method public final shouldSend(II)Z
    .registers 4

    const/16 v0, 0x16

    if-ne p1, v0, :cond_f

    .line 209
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/sense/FaceAuthenticationClient;->getAcquireVendorIgnorelist()[I

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/server/biometrics/Utils;->listContains([II)Z

    move-result p0

    :goto_c
    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 211
    :cond_f
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/sense/FaceAuthenticationClient;->getAcquireIgnorelist()[I

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/biometrics/Utils;->listContains([II)Z

    move-result p0

    goto :goto_c
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 2

    .line 106
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    const/4 p1, 0x1

    .line 107
    iput p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    return-void
.end method

.method public startHalOperation()V
    .registers 4

    .line 120
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->getFreshDaemon()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/aospa/biometrics/face/ISenseService;

    iget-wide v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mOperationId:J

    invoke-interface {v0, v1, v2}, Lvendor/aospa/biometrics/face/ISenseService;->authenticate(J)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception v0

    .line 122
    const-string v1, "FaceAuthenticationClient"

    const-string v2, "Remote exception when requesting auth"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 123
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/sense/FaceAuthenticationClient;->onError(II)V

    .line 124
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public stopHalOperation()V
    .registers 4

    .line 131
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

    .line 133
    const-string v1, "FaceAuthenticationClient"

    const-string v2, "Remote exception when requesting cancel"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 134
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/sense/FaceAuthenticationClient;->onError(II)V

    .line 135
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public wrapCallbackForStart(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .registers 4

    .line 113
    new-instance v0, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    .line 114
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
