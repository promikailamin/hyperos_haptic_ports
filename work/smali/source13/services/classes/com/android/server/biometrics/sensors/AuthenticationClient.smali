.class public abstract Lcom/android/server/biometrics/sensors/AuthenticationClient;
.super Lcom/android/server/biometrics/sensors/AcquisitionClient;
.source "AuthenticationClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/AuthenticationConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/AuthenticationClient$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/biometrics/sensors/AcquisitionClient<",
        "TT;>;",
        "Lcom/android/server/biometrics/sensors/AuthenticationConsumer;"
    }
.end annotation


# static fields
.field public static final STATE_NEW:I = 0x0

.field public static final STATE_STARTED:I = 0x1

.field public static final STATE_STARTED_PAUSED:I = 0x2

.field public static final STATE_STARTED_PAUSED_ATTEMPTED:I = 0x3

.field public static final STATE_STOPPED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "Biometrics/AuthenticationClient"


# instance fields
.field private final mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field private final mAllowBackgroundAuthentication:Z

.field private mAuthAttempted:Z

.field private mAuthSuccess:Z

.field private final mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

.field private final mIsKeyguardBypassEnabled:Z

.field private final mIsRestricted:Z

.field private final mIsStrongBiometric:Z

.field private final mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

.field protected final mOperationId:J

.field private final mRequireConfirmation:Z

.field private mStartTimeMs:J

.field protected mState:I

.field private final mTaskStackListener:Landroid/app/TaskStackListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsRestricted(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsRestricted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsStrongBiometric(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsStrongBiometric:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$msendCancelOnly(Lcom/android/server/biometrics/sensors/AuthenticationClient;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->sendCancelOnly(Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/LockoutTracker;ZZZ)V
    .registers 34
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "listener"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .param p5, "targetUserId"    # I
    .param p6, "operationId"    # J
    .param p8, "restricted"    # Z
    .param p9, "owner"    # Ljava/lang/String;
    .param p10, "cookie"    # I
    .param p11, "requireConfirmation"    # Z
    .param p12, "sensorId"    # I
    .param p13, "biometricLogger"    # Lcom/android/server/biometrics/log/BiometricLogger;
    .param p14, "biometricContext"    # Lcom/android/server/biometrics/log/BiometricContext;
    .param p15, "isStrongBiometric"    # Z
    .param p16, "taskStackListener"    # Landroid/app/TaskStackListener;
    .param p17, "lockoutTracker"    # Lcom/android/server/biometrics/sensors/LockoutTracker;
    .param p18, "allowBackgroundAuthentication"    # Z
    .param p19, "shouldVibrate"    # Z
    .param p20, "isKeyguardBypassEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Landroid/os/IBinder;",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "IJZ",
            "Ljava/lang/String;",
            "IZI",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "Z",
            "Landroid/app/TaskStackListener;",
            "Lcom/android/server/biometrics/sensors/LockoutTracker;",
            "ZZZ)V"
        }
    .end annotation

    .line 103
    .local p0, "this":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<TT;>;"
    .local p2, "lazyDaemon":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    move-object v12, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p9

    move/from16 v7, p10

    move/from16 v8, p12

    move/from16 v9, p19

    move-object/from16 v10, p13

    move-object/from16 v11, p14

    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/AcquisitionClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IIZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, v12, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAuthSuccess:Z

    .line 93
    iput v0, v12, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    .line 105
    move/from16 v0, p15

    iput-boolean v0, v12, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsStrongBiometric:Z

    .line 106
    move-wide/from16 v1, p6

    iput-wide v1, v12, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mOperationId:J

    .line 107
    move/from16 v3, p11

    iput-boolean v3, v12, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mRequireConfirmation:Z

    .line 108
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getActivityTaskManager()Landroid/app/ActivityTaskManager;

    move-result-object v4

    iput-object v4, v12, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 109
    const-class v4, Landroid/hardware/biometrics/BiometricManager;

    move-object v5, p1

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/biometrics/BiometricManager;

    iput-object v4, v12, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    .line 110
    move-object/from16 v4, p16

    iput-object v4, v12, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mTaskStackListener:Landroid/app/TaskStackListener;

    .line 111
    move-object/from16 v6, p17

    iput-object v6, v12, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    .line 112
    move/from16 v7, p8

    iput-boolean v7, v12, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsRestricted:Z

    .line 113
    move/from16 v8, p18

    iput-boolean v8, v12, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAllowBackgroundAuthentication:Z

    .line 114
    move/from16 v9, p20

    iput-boolean v9, v12, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsKeyguardBypassEnabled:Z

    .line 115
    return-void
.end method

.method private isSettings()Z
    .registers 3

    .line 163
    .local p0, "this":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->isSettings(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private sendCancelOnly(Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V
    .registers 7
    .param p1, "listener"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    .line 389
    .local p0, "this":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<TT;>;"
    const-string v0, "Biometrics/AuthenticationClient"

    if-nez p1, :cond_a

    .line 390
    const-string v1, "Unable to sendAuthenticationCanceled, listener null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    return-void

    .line 394
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getSensorId()I

    move-result v1

    .line 395
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getCookie()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    .line 394
    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_17} :catch_18

    .line 400
    goto :goto_1e

    .line 398
    :catch_18
    move-exception v1

    .line 399
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 401
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1e
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 142
    .local p0, "this":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isBiometricPrompt()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 143
    .local v0, "clearListener":Z
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->binderDiedInternal(Z)V

    .line 144
    return-void
.end method

.method public cancel()V
    .registers 3

    .line 454
    .local p0, "this":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<TT;>;"
    invoke-super {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->cancel()V

    .line 455
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mTaskStackListener:Landroid/app/TaskStackListener;

    if-eqz v0, :cond_c

    .line 456
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    invoke-virtual {v1, v0}, Landroid/app/ActivityTaskManager;->unregisterTaskStackListener(Landroid/app/TaskStackListener;)V

    .line 458
    :cond_c
    return-void
.end method

.method protected getActivityTaskManager()Landroid/app/ActivityTaskManager;
    .registers 2

    .line 137
    .local p0, "this":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<TT;>;"
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v0

    return-object v0
.end method

.method public getOperationId()J
    .registers 3

    .line 151
    .local p0, "this":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<TT;>;"
    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mOperationId:J

    return-wide v0
.end method

.method public getProtoEnum()I
    .registers 2

    .line 490
    .local p0, "this":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<TT;>;"
    const/4 v0, 0x3

    return v0
.end method

.method protected getShowOverlayReason()I
    .registers 2

    .line 514
    .local p0, "this":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguard()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 515
    const/4 v0, 0x4

    return v0

    .line 516
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isBiometricPrompt()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 519
    const/4 v0, 0x3

    return v0

    .line 520
    :cond_10
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isSettings()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 523
    const/4 v0, 0x6

    return v0

    .line 525
    :cond_18
    const/4 v0, 0x5

    return v0
.end method

.method protected getStartTimeMs()J
    .registers 3

    .line 133
    .local p0, "this":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<TT;>;"
    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mStartTimeMs:J

    return-wide v0
.end method

.method public getState()I
    .registers 2

    .line 477
    .local p0, "this":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<TT;>;"
    iget v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    return v0
.end method

.method public handleFailedAttempt(I)I
    .registers 5
    .param p1, "userId"    # I

    .line 118
    .local p0, "this":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<TT;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    .line 119
    invoke-interface {v0, p1}, Lcom/android/server/biometrics/sensors/LockoutTracker;->getLockoutModeForUser(I)I

    move-result v0

    .line 120
    .local v0, "lockoutMode":I
    nop

    .line 121
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getSensorId()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v1

    .line 123
    .local v1, "performanceTracker":Lcom/android/server/biometrics/sensors/PerformanceTracker;
    const/4 v2, 0x2

    if-ne v0, v2, :cond_16

    .line 124
    invoke-virtual {v1, p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementPermanentLockoutForUser(I)V

    goto :goto_1c

    .line 125
    :cond_16
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1c

    .line 126
    invoke-virtual {v1, p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementTimedLockoutForUser(I)V

    .line 129
    :cond_1c
    :goto_1c
    return v0
.end method

.method protected abstract handleLifecycleAfterAuth(Z)V
.end method

.method public interruptsPrecedingClients()Z
    .registers 3

    .line 496
    .local p0, "this":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 497
    const/4 v0, 0x1

    return v0

    .line 499
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public isBiometricPrompt()Z
    .registers 2

    .line 147
    .local p0, "this":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getCookie()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method protected isCryptoOperation()Z
    .registers 5

    .line 168
    .local p0, "this":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<TT;>;"
    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mOperationId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isKeyguard()Z
    .registers 3

    .line 159
    .local p0, "this":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isKeyguardBypassEnabled()Z
    .registers 2

    .line 485
    .local p0, "this":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsKeyguardBypassEnabled:Z

    return v0
.end method

.method public isRestricted()Z
    .registers 2

    .line 155
    .local p0, "this":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsRestricted:Z

    return v0
.end method

.method public onAcquired(II)V
    .registers 7
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 405
    .local p0, "this":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquired(II)V

    .line 407
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    .line 408
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getTargetUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/biometrics/sensors/LockoutTracker;->getLockoutModeForUser(I)I

    move-result v0

    .line 409
    .local v0, "lockoutMode":I
    if-nez v0, :cond_22

    .line 410
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getSensorId()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v1

    .line 411
    .local v1, "pt":Lcom/android/server/biometrics/sensors/PerformanceTracker;
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getTargetUserId()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isCryptoOperation()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementAcquireForUser(IZ)V

    .line 413
    .end local v1    # "pt":Lcom/android/server/biometrics/sensors/PerformanceTracker;
    :cond_22
    return-void
.end method

.method public onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V
    .registers 24
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

    .line 174
    .local p0, "this":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<TT;>;"
    .local p3, "hardwareAuthToken":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object/from16 v6, p0

    move/from16 v0, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getOperationContext()Landroid/hardware/biometrics/common/OperationContext;

    move-result-object v9

    iget-boolean v11, v6, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mRequireConfirmation:Z

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getTargetUserId()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isBiometricPrompt()Z

    move-result v13

    .line 174
    move/from16 v10, p2

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/biometrics/log/BiometricLogger;->logOnAuthenticated(Landroid/content/Context;Landroid/hardware/biometrics/common/OperationContext;ZZIZ)V

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v7

    .line 179
    .local v7, "listener":Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAuthenticated("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 180
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Owner: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isBP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isBiometricPrompt()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requireConfirmation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v6, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mRequireConfirmation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getTargetUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", clientMonitor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    const-string v2, "Biometrics/AuthenticationClient"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getSensorId()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v8

    .line 189
    .local v8, "pm":Lcom/android/server/biometrics/sensors/PerformanceTracker;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isCryptoOperation()Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getTargetUserId()I

    move-result v1

    invoke-virtual {v8, v1, v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementCryptoAuthForUser(IZ)V

    goto :goto_b5

    .line 192
    :cond_ae
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getTargetUserId()I

    move-result v1

    invoke-virtual {v8, v1, v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementAuthForUser(IZ)V

    .line 195
    :goto_b5
    iget-boolean v1, v6, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAllowBackgroundAuthentication:Z

    if-eqz v1, :cond_be

    .line 196
    const-string v1, "Allowing background authentication, this is allowed only for platform or test invocations"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_be
    const/4 v1, 0x0

    .line 202
    .local v1, "isBackgroundAuth":Z
    iget-boolean v3, v6, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAllowBackgroundAuthentication:Z

    if-nez v3, :cond_eb

    if-eqz v0, :cond_eb

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_eb

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/biometrics/Utils;->isSystem(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_eb

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/biometrics/Utils;->isBackground(Ljava/lang/String;)Z

    move-result v1

    move v9, v1

    goto :goto_ec

    .line 209
    :cond_eb
    move v9, v1

    .end local v1    # "isBackgroundAuth":Z
    .local v9, "isBackgroundAuth":Z
    :goto_ec
    const/4 v1, 0x2

    const/4 v3, -0x1

    const-string v4, "159249069"

    const/4 v5, 0x0

    const/4 v10, 0x3

    const v11, 0x534e4554

    const/4 v12, 0x1

    if-eqz v9, :cond_11f

    .line 210
    const-string v13, "Failing possible background authentication"

    invoke-static {v2, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v0, 0x0

    .line 214
    .end local p2    # "authenticated":Z
    .local v0, "authenticated":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    .line 215
    .local v13, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-array v14, v10, [Ljava/lang/Object;

    aput-object v4, v14, v5

    if-eqz v13, :cond_10f

    iget v15, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_110

    :cond_10f
    move v15, v3

    :goto_110
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v12

    const-string v15, "Attempted background authentication"

    aput-object v15, v14, v1

    invoke-static {v11, v14}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    move v13, v0

    goto :goto_120

    .line 209
    .end local v0    # "authenticated":Z
    .end local v13    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local p2    # "authenticated":Z
    :cond_11f
    move v13, v0

    .line 219
    .end local p2    # "authenticated":Z
    .local v13, "authenticated":Z
    :goto_120
    if-eqz v13, :cond_1a1

    .line 221
    if-eqz v9, :cond_141

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 223
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-array v2, v10, [Ljava/lang/Object;

    aput-object v4, v2, v5

    if-eqz v0, :cond_134

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    :cond_134
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    const-string v3, "Successful background authentication!"

    aput-object v3, v2, v1

    invoke-static {v11, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 227
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_141
    iput-boolean v12, v6, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAuthSuccess:Z

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->markAlreadyDone()V

    .line 230
    iget-object v0, v6, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mTaskStackListener:Landroid/app/TaskStackListener;

    if-eqz v0, :cond_14f

    .line 231
    iget-object v1, v6, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    invoke-virtual {v1, v0}, Landroid/app/ActivityTaskManager;->unregisterTaskStackListener(Landroid/app/TaskStackListener;)V

    .line 234
    :cond_14f
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 235
    .local v0, "byteToken":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_156
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_16d

    .line 236
    move-object/from16 v10, p3

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_156

    :cond_16d
    move-object/from16 v10, p3

    .line 239
    .end local v1    # "i":I
    iget-boolean v1, v6, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsStrongBiometric:Z

    if-eqz v1, :cond_18e

    .line 240
    iget-object v14, v6, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getToken()Landroid/os/IBinder;

    move-result-object v15

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v16

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getSensorId()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getTargetUserId()I

    move-result v18

    .line 240
    move-object/from16 v19, v0

    invoke-virtual/range {v14 .. v19}, Landroid/hardware/biometrics/BiometricManager;->resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V

    .line 245
    :cond_18e
    invoke-static {}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->getInstance()Lcom/android/server/biometrics/sensors/CoexCoordinator;

    move-result-object v1

    .line 246
    .local v1, "coordinator":Lcom/android/server/biometrics/sensors/CoexCoordinator;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    new-instance v4, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;

    move-object/from16 v11, p1

    invoke-direct {v4, v6, v0, v7, v11}, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;-><init>(Lcom/android/server/biometrics/sensors/AuthenticationClient;[BLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V

    invoke-virtual {v1, v2, v3, v6, v4}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->onAuthenticationSucceeded(JLcom/android/server/biometrics/sensors/AuthenticationClient;Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;)V

    .line 301
    .end local v0    # "byteToken":[B
    .end local v1    # "coordinator":Lcom/android/server/biometrics/sensors/CoexCoordinator;
    goto :goto_1d2

    .line 302
    :cond_1a1
    move-object/from16 v11, p1

    move-object/from16 v10, p3

    if-eqz v9, :cond_1b0

    .line 303
    const-string v0, "cancelling due to background auth"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->cancel()V

    goto :goto_1d2

    .line 307
    :cond_1b0
    nop

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getTargetUserId()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->handleFailedAttempt(I)I

    move-result v12

    .line 309
    .local v12, "lockoutMode":I
    if-eqz v12, :cond_1be

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->markAlreadyDone()V

    .line 313
    :cond_1be
    invoke-static {}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->getInstance()Lcom/android/server/biometrics/sensors/CoexCoordinator;

    move-result-object v14

    .line 314
    .local v14, "coordinator":Lcom/android/server/biometrics/sensors/CoexCoordinator;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    new-instance v5, Lcom/android/server/biometrics/sensors/AuthenticationClient$2;

    invoke-direct {v5, v6, v7}, Lcom/android/server/biometrics/sensors/AuthenticationClient$2;-><init>(Lcom/android/server/biometrics/sensors/AuthenticationClient;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V

    move-object v0, v14

    move-object/from16 v3, p0

    move v4, v12

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->onAuthenticationRejected(JLcom/android/server/biometrics/sensors/AuthenticationClient;ILcom/android/server/biometrics/sensors/CoexCoordinator$Callback;)V

    .line 349
    .end local v12    # "lockoutMode":I
    .end local v14    # "coordinator":Lcom/android/server/biometrics/sensors/CoexCoordinator;
    :goto_1d2
    return-void
.end method

.method public onError(II)V
    .registers 5
    .param p1, "errorCode"    # I
    .param p2, "vendorCode"    # I

    .line 417
    .local p0, "this":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onError(II)V

    .line 418
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    .line 420
    invoke-static {}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->getInstance()Lcom/android/server/biometrics/sensors/CoexCoordinator;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/sensors/AuthenticationClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/AuthenticationClient;)V

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->onAuthenticationError(Lcom/android/server/biometrics/sensors/AuthenticationClient;ILcom/android/server/biometrics/sensors/CoexCoordinator$ErrorCallback;)V

    .line 421
    return-void
.end method

.method protected onLockoutPermanent()V
    .registers 5

    .line 374
    .local p0, "this":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    .line 375
    .local v0, "listener":Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    invoke-static {}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->getInstance()Lcom/android/server/biometrics/sensors/CoexCoordinator;

    move-result-object v1

    .line 376
    .local v1, "coordinator":Lcom/android/server/biometrics/sensors/CoexCoordinator;
    new-instance v2, Lcom/android/server/biometrics/sensors/AuthenticationClient$4;

    invoke-direct {v2, p0, v0}, Lcom/android/server/biometrics/sensors/AuthenticationClient$4;-><init>(Lcom/android/server/biometrics/sensors/AuthenticationClient;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V

    const/16 v3, 0x9

    invoke-virtual {v1, p0, v3, v2}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->onAuthenticationError(Lcom/android/server/biometrics/sensors/AuthenticationClient;ILcom/android/server/biometrics/sensors/CoexCoordinator$ErrorCallback;)V

    .line 386
    return-void
.end method

.method protected onLockoutTimed(J)V
    .registers 7
    .param p1, "durationMillis"    # J

    .line 356
    .local p0, "this":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    .line 357
    .local v0, "listener":Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    invoke-static {}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->getInstance()Lcom/android/server/biometrics/sensors/CoexCoordinator;

    move-result-object v1

    .line 358
    .local v1, "coordinator":Lcom/android/server/biometrics/sensors/CoexCoordinator;
    new-instance v2, Lcom/android/server/biometrics/sensors/AuthenticationClient$3;

    invoke-direct {v2, p0, v0}, Lcom/android/server/biometrics/sensors/AuthenticationClient$3;-><init>(Lcom/android/server/biometrics/sensors/AuthenticationClient;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V

    const/4 v3, 0x7

    invoke-virtual {v1, p0, v3, v2}, Lcom/android/server/biometrics/sensors/CoexCoordinator;->onAuthenticationError(Lcom/android/server/biometrics/sensors/AuthenticationClient;ILcom/android/server/biometrics/sensors/CoexCoordinator$ErrorCallback;)V

    .line 367
    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 7
    .param p1, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 428
    .local p0, "this":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<TT;>;"
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 430
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    .line 431
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getTargetUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/biometrics/sensors/LockoutTracker;->getLockoutModeForUser(I)I

    move-result v0

    .line 432
    .local v0, "lockoutMode":I
    const/4 v1, 0x1

    const-string v2, "Biometrics/AuthenticationClient"

    if-eqz v0, :cond_3a

    .line 433
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In lockout mode("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") ; disallowing authentication"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    if-ne v0, v1, :cond_32

    .line 435
    const/4 v1, 0x7

    goto :goto_34

    .line 436
    :cond_32
    const/16 v1, 0x9

    :goto_34
    nop

    .line 437
    .local v1, "errorCode":I
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onError(II)V

    .line 438
    return-void

    .line 441
    .end local v1    # "errorCode":I
    :cond_3a
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mTaskStackListener:Landroid/app/TaskStackListener;

    if-eqz v3, :cond_43

    .line 442
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    invoke-virtual {v4, v3}, Landroid/app/ActivityTaskManager;->registerTaskStackListener(Landroid/app/TaskStackListener;)V

    .line 445
    :cond_43
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting auth for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mStartTimeMs:J

    .line 448
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAuthAttempted:Z

    .line 449
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->startHalOperation()V

    .line 450
    return-void
.end method

.method public wasAuthAttempted()Z
    .registers 2

    .line 505
    .local p0, "this":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAuthAttempted:Z

    return v0
.end method

.method public wasAuthSuccessful()Z
    .registers 2

    .line 510
    .local p0, "this":Lcom/android/server/biometrics/sensors/AuthenticationClient;, "Lcom/android/server/biometrics/sensors/AuthenticationClient<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAuthSuccess:Z

    return v0
.end method

.method public abstract wasUserDetected()Z
.end method
