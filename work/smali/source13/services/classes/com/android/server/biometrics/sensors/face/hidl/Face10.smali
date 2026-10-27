.class public Lcom/android/server/biometrics/sensors/face/hidl/Face10;
.super Ljava/lang/Object;
.source "Face10.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;
.implements Lcom/android/server/biometrics/sensors/face/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;
    }
.end annotation


# static fields
.field private static final COMMAND_ENROLL_RESET_ENROLL_LOGIC:I = 0x1

.field private static final COMMAND_ENROLL_RESUME_ENROLL_LOGIC:I = 0x0

.field private static final COMMAND_ENROLL_STOP_ENROLL_LOGIC:I = 0x2

.field private static final ENROLL_TIMEOUT_SEC:I = 0x3c

.field private static final GENERATE_CHALLENGE_COUNTER_TTL_MILLIS:I = 0x927c0

.field private static final GENERATE_CHALLENGE_REUSE_INTERVAL_MILLIS:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "Face10"

.field private static mCanNextFaceInputStep:Z

.field public static sSystemClock:Ljava/time/Clock;


# instance fields
.field private final mAuthenticatorIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

.field private mFaceInputStep:I

.field private mGeneratedChallengeCache:Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;

.field private final mGeneratedChallengeCount:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

.field private final mHandler:Landroid/os/Handler;

.field private final mLazyDaemon:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockoutTracker:Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;

.field private final mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

.field private final mSensorId:I

.field private final mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

.field private mTestHalEnabled:Z

.field private final mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

.field private final mUserSwitchObserver:Landroid/app/UserSwitchObserver;


# direct methods
.method public static synthetic $r8$lambda$Bmxaswyoypha8iNPlIBSxIXk5AY(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->getDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentUserId(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)I
    .registers 1

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mCurrentUserId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSensorId(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)I
    .registers 1

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentUserId(Lcom/android/server/biometrics/sensors/face/hidl/Face10;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mCurrentUserId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mscheduleInternalCleanup(Lcom/android/server/biometrics/sensors/face/hidl/Face10;ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleInternalCleanup(ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscheduleUpdateActiveUserWithoutHandler(Lcom/android/server/biometrics/sensors/face/hidl/Face10;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmCanNextFaceInputStep()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mCanNextFaceInputStep:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputmCanNextFaceInputStep(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mCanNextFaceInputStep:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 113
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mCanNextFaceInputStep:Z

    .line 121
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v0

    sput-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->sSystemClock:Ljava/time/Clock;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/hardware/face/FaceSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/BiometricScheduler;Lcom/android/server/biometrics/log/BiometricContext;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sensorProps"    # Landroid/hardware/face/FaceSensorPropertiesInternal;
    .param p3, "lockoutResetDispatcher"    # Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "scheduler"    # Lcom/android/server/biometrics/sensors/BiometricScheduler;
    .param p6, "biometricContext"    # Lcom/android/server/biometrics/log/BiometricContext;

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 138
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mCurrentUserId:I

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCount:Ljava/util/List;

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCache:Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;

    .line 143
    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$1;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mUserSwitchObserver:Landroid/app/UserSwitchObserver;

    .line 391
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 392
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    .line 393
    iget v0, p2, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    iput v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    .line 394
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 395
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    .line 396
    iput-object p6, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 397
    new-instance v0, Lcom/android/server/biometrics/sensors/face/UsageStats;

    invoke-direct {v0, p1}, Lcom/android/server/biometrics/sensors/face/UsageStats;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    .line 398
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mAuthenticatorIds:Ljava/util/Map;

    .line 399
    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 400
    new-instance v6, Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;

    invoke-direct {v6}, Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;-><init>()V

    iput-object v6, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLockoutTracker:Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;

    .line 401
    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    iget v2, p2, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    move-object v1, v0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p5

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;-><init>(ILandroid/content/Context;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/BiometricScheduler;Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    .line 403
    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->setCallback(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$Callback;)V

    .line 415
    return-void
.end method

.method private createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;
    .registers 6
    .param p1, "statsAction"    # I
    .param p2, "statsClient"    # I

    .line 991
    new-instance v0, Lcom/android/server/biometrics/log/BiometricLogger;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(Landroid/content/Context;III)V

    return-object v0
.end method

.method private decrementChallengeCount()I
    .registers 5

    .line 562
    sget-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 565
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCount:Ljava/util/List;

    new-instance v3, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda14;

    invoke-direct {v3, v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda14;-><init>(J)V

    invoke-interface {v2, v3}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 566
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCount:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 567
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCount:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 569
    :cond_1e
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCount:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    return v2
.end method

.method private declared-synchronized getDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    .registers 14

    monitor-enter p0

    .line 455
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mTestHalEnabled:Z

    if-eqz v0, :cond_15

    .line 456
    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;-><init>(Landroid/content/Context;I)V

    .line 457
    .local v0, "testHal":Lcom/android/server/biometrics/sensors/face/hidl/TestHal;
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/TestHal;->setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_cc

    .line 458
    monitor-exit p0

    return-object v0

    .line 461
    .end local v0    # "testHal":Lcom/android/server/biometrics/sensors/face/hidl/TestHal;
    .end local p0    # "this":Lcom/android/server/biometrics/sensors/face/hidl/Face10;
    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_cc

    if-eqz v0, :cond_1b

    .line 462
    monitor-exit p0

    return-object v0

    .line 465
    .restart local p0    # "this":Lcom/android/server/biometrics/sensors/face/hidl/Face10;
    :cond_1b
    :try_start_1b
    const-string v0, "Face10"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Daemon was null, reconnecting, current operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 466
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 465
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_1b .. :try_end_39} :catchall_cc

    .line 469
    :try_start_39
    invoke-static {}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->getService()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    :try_end_3f
    .catch Ljava/util/NoSuchElementException; {:try_start_39 .. :try_end_3f} :catch_49
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3f} :catch_40
    .catchall {:try_start_39 .. :try_end_3f} :catchall_cc

    .line 475
    goto :goto_52

    .line 473
    .end local p0    # "this":Lcom/android/server/biometrics/sensors/face/hidl/Face10;
    :catch_40
    move-exception v0

    .line 474
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_41
    const-string v1, "Face10"

    const-string v2, "Failed to get face HAL"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_52

    .line 470
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_49
    move-exception v0

    .line 472
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "Face10"

    const-string v2, "NoSuchElementException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 475
    nop

    .line 477
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :goto_52
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    const/4 v1, 0x0

    if-nez v0, :cond_60

    .line 478
    const-string v0, "Face10"

    const-string v2, "Face HAL not available"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_41 .. :try_end_5e} :catchall_cc

    .line 479
    monitor-exit p0

    return-object v1

    .line 482
    :cond_60
    :try_start_60
    invoke-interface {v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {v0, p0, v2, v3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_69
    .catchall {:try_start_60 .. :try_end_69} :catchall_cc

    .line 486
    const-wide/16 v4, 0x0

    .line 488
    .local v4, "halId":J
    :try_start_6b
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    invoke-interface {v0, v6}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object v0

    iget-wide v6, v0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->value:J
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_75} :catch_77
    .catchall {:try_start_6b .. :try_end_75} :catchall_cc

    move-wide v4, v6

    .line 492
    goto :goto_81

    .line 489
    :catch_77
    move-exception v0

    .line 490
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_78
    const-string v6, "Face10"

    const-string v7, "Failed to set callback for face HAL"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 491
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 494
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_81
    const-string v0, "Face10"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Face HAL ready, HAL ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    cmp-long v0, v4, v2

    if-eqz v0, :cond_bf

    .line 496
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleLoadAuthenticatorIds()V

    .line 497
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleInternalCleanup(ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 498
    iget v7, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    new-instance v8, Landroid/os/Binder;

    invoke-direct {v8}, Landroid/os/Binder;-><init>()V

    .line 499
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    .line 501
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v12

    .line 498
    move-object v6, p0

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleGetFeature(ILandroid/os/IBinder;IILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;)V

    goto :goto_c8

    .line 503
    :cond_bf
    const-string v0, "Face10"

    const-string v2, "Unable to set callback"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 507
    :goto_c8
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    :try_end_ca
    .catchall {:try_start_78 .. :try_end_ca} :catchall_cc

    monitor-exit p0

    return-object v0

    .line 454
    .end local v4    # "halId":J
    :catchall_cc
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private incrementChallengeCount()V
    .registers 4

    .line 558
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCount:Ljava/util/List;

    sget-object v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 559
    return-void
.end method

.method private isGeneratedChallengeCacheValid()Z
    .registers 5

    .line 552
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCache:Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->sSystemClock:Ljava/time/Clock;

    .line 553
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCache:Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->getCreatedAt()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 552
    :goto_1b
    return v0
.end method

.method static synthetic lambda$decrementChallengeCount$2(JLjava/lang/Long;)Z
    .registers 7
    .param p0, "now"    # J
    .param p2, "x"    # Ljava/lang/Long;

    .line 565
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, p0, v0

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public static newInstance(Landroid/content/Context;Landroid/hardware/face/FaceSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;)Lcom/android/server/biometrics/sensors/face/hidl/Face10;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sensorProps"    # Landroid/hardware/face/FaceSensorPropertiesInternal;
    .param p2, "lockoutResetDispatcher"    # Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 420
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 421
    .local v4, "handler":Landroid/os/Handler;
    new-instance v7, Lcom/android/server/biometrics/sensors/face/hidl/Face10;

    new-instance v5, Lcom/android/server/biometrics/sensors/BiometricScheduler;

    const-string v0, "Face10"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v5, v0, v1, v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;-><init>(Ljava/lang/String;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;)V

    .line 424
    invoke-static {p0}, Lcom/android/server/biometrics/log/BiometricContext;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object v6

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;-><init>(Landroid/content/Context;Landroid/hardware/face/FaceSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/BiometricScheduler;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 421
    return-object v7
.end method

.method private scheduleInternalCleanup(ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 843
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 855
    return-void
.end method

.method private scheduleLoadAuthenticatorIds()V
    .registers 3

    .line 953
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 961
    return-void
.end method

.method private scheduleUpdateActiveUserWithoutHandler(I)V
    .registers 13
    .param p1, "targetUserId"    # I

    .line 971
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->getEnrolledFaces(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v9, v0, 0x1

    .line 972
    .local v9, "hasEnrolled":Z
    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/FaceUpdateActiveUserClient;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 973
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    .line 974
    const/4 v1, 0x0

    invoke-direct {p0, v1, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v10, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mAuthenticatorIds:Ljava/util/Map;

    move-object v1, v0

    move v4, p1

    invoke-direct/range {v1 .. v10}, Lcom/android/server/biometrics/sensors/face/hidl/FaceUpdateActiveUserClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLjava/util/Map;)V

    .line 977
    .local v0, "client":Lcom/android/server/biometrics/sensors/face/hidl/FaceUpdateActiveUserClient;
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance v2, Lcom/android/server/biometrics/sensors/face/hidl/Face10$6;

    invoke-direct {v2, p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$6;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;I)V

    invoke-virtual {v1, v0, v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 988
    return-void
.end method


# virtual methods
.method public cancelAuthentication(ILandroid/os/IBinder;J)V
    .registers 7
    .param p1, "sensorId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "requestId"    # J

    .line 728
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/os/IBinder;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 729
    return-void
.end method

.method public cancelEnrollment(ILandroid/os/IBinder;J)V
    .registers 7
    .param p1, "sensorId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "requestId"    # J

    .line 676
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/os/IBinder;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 677
    return-void
.end method

.method public cancelFaceDetect(ILandroid/os/IBinder;J)V
    .registers 7
    .param p1, "sensorId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "requestId"    # J

    .line 689
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Face detect not supported by IBiometricsFace@1.0. Did youforget to check the supportsFaceDetection flag?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public containsSensor(I)Z
    .registers 3
    .param p1, "sensorId"    # I

    .line 512
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
    .registers 11
    .param p1, "sensorId"    # I
    .param p2, "callback"    # Landroid/hardware/biometrics/ITestSessionCallback;
    .param p3, "opPackageName"    # Ljava/lang/String;

    .line 1052
    new-instance v6, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHalResultController:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;

    move-object v0, v6

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;-><init>(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;Lcom/android/server/biometrics/sensors/face/hidl/Face10;Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;)V

    return-object v6
.end method

.method public dumpHal(ILjava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 10
    .param p1, "sensorId"    # I
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1008
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-nez v0, :cond_9

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v0, :cond_9

    .line 1009
    return-void

    .line 1014
    :cond_9
    const-string/jumbo v0, "ro.face.disable_debug_data"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 1015
    const-string/jumbo v0, "persist.face.disable_debug_data"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_6d

    .line 1022
    :cond_1d
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->getDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    .line 1023
    .local v0, "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    if-eqz v0, :cond_6c

    .line 1024
    const/4 v2, 0x0

    .line 1026
    .local v2, "devnull":Ljava/io/FileOutputStream;
    :try_start_24
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/dev/null"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 1027
    new-instance v3, Landroid/os/NativeHandle;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/io/FileDescriptor;

    .line 1028
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x1

    aput-object p2, v4, v5

    new-array v5, v1, [I

    invoke-direct {v3, v4, v5, v1}, Landroid/os/NativeHandle;-><init>([Ljava/io/FileDescriptor;[IZ)V

    move-object v1, v3

    .line 1030
    .local v1, "handle":Landroid/os/NativeHandle;
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v3}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_4c} :catch_53
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_4c} :catch_53
    .catchall {:try_start_24 .. :try_end_4c} :catchall_51

    .line 1034
    .end local v1    # "handle":Landroid/os/NativeHandle;
    nop

    .line 1036
    :try_start_4d
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_62

    goto :goto_61

    .line 1034
    :catchall_51
    move-exception v1

    goto :goto_64

    .line 1031
    :catch_53
    move-exception v1

    .line 1032
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_54
    const-string v3, "Face10"

    const-string v4, "error while reading face debugging data"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_51

    .line 1034
    nop

    .end local v1    # "ex":Ljava/lang/Exception;
    if-eqz v2, :cond_6c

    .line 1036
    :try_start_5e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    .line 1038
    :goto_61
    goto :goto_6c

    .line 1037
    :catch_62
    move-exception v1

    goto :goto_61

    .line 1034
    :goto_64
    if-eqz v2, :cond_6b

    .line 1036
    :try_start_66
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a

    .line 1038
    goto :goto_6b

    .line 1037
    :catch_6a
    move-exception v3

    .line 1040
    :cond_6b
    :goto_6b
    throw v1

    .line 1042
    .end local v2    # "devnull":Ljava/io/FileOutputStream;
    :cond_6c
    :goto_6c
    return-void

    .line 1016
    .end local v0    # "daemon":Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
    :cond_6d
    :goto_6d
    return-void
.end method

.method public dumpInternal(ILjava/io/PrintWriter;)V
    .registers 14
    .param p1, "sensorId"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 905
    const-string v0, "Face10"

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    .line 906
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v1

    .line 908
    .local v1, "performanceTracker":Lcom/android/server/biometrics/sensors/PerformanceTracker;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 910
    .local v2, "dump":Lorg/json/JSONObject;
    :try_start_d
    const-string/jumbo v3, "service"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 912
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 913
    .local v3, "sets":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ac

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 914
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 915
    .local v6, "userId":I
    iget v7, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    invoke-static {v7}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    .line 916
    invoke-virtual {v7, v8, v6}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .line 917
    .local v7, "c":I
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 918
    .local v8, "set":Lorg/json/JSONObject;
    const-string/jumbo v9, "id"

    invoke-virtual {v8, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 919
    const-string v9, "count"

    invoke-virtual {v8, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 920
    const-string v9, "accept"

    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcceptForUser(I)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 921
    const-string/jumbo v9, "reject"

    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getRejectForUser(I)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 922
    const-string v9, "acquire"

    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcquireForUser(I)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 923
    const-string/jumbo v9, "lockout"

    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getTimedLockoutForUser(I)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 924
    const-string/jumbo v9, "permanentLockout"

    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getPermanentLockoutForUser(I)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 927
    const-string v9, "acceptCrypto"

    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcceptCryptoForUser(I)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 928
    const-string/jumbo v9, "rejectCrypto"

    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getRejectCryptoForUser(I)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 929
    const-string v9, "acquireCrypto"

    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcquireCryptoForUser(I)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 930
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 931
    nop

    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v6    # "userId":I
    .end local v7    # "c":I
    .end local v8    # "set":Lorg/json/JSONObject;
    goto/16 :goto_26

    .line 933
    :cond_ac
    const-string/jumbo v4, "prints"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b2
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_b2} :catch_b4

    .line 936
    nop

    .end local v3    # "sets":Lorg/json/JSONArray;
    goto :goto_ba

    .line 934
    :catch_b4
    move-exception v3

    .line 935
    .local v3, "e":Lorg/json/JSONException;
    const-string v4, "dump formatting failure"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 937
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_ba
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HAL deaths since last reboot: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getHALDeathCount()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 940
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0, p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->dump(Ljava/io/PrintWriter;)V

    .line 941
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    invoke-virtual {v0, p2}, Lcom/android/server/biometrics/sensors/face/UsageStats;->print(Ljava/io/PrintWriter;)V

    .line 942
    return-void
.end method

.method public dumpProtoMetrics(ILjava/io/FileDescriptor;)V
    .registers 3
    .param p1, "sensorId"    # I
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    .line 901
    return-void
.end method

.method public dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V
    .registers 20
    .param p1, "sensorId"    # I
    .param p2, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p3, "clearSchedulerBuffer"    # Z

    .line 873
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide v2, 0x20b00000001L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 875
    .local v2, "sensorToken":J
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v4, v4, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    const-wide v5, 0x10500000001L

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 876
    const-wide v7, 0x10e00000002L

    const/4 v4, 0x2

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 877
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v4, v4, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 878
    invoke-static {v4}, Lcom/android/server/biometrics/Utils;->getCurrentStrength(I)I

    move-result v4

    .line 877
    const-wide v7, 0x10500000003L

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 879
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move/from16 v7, p3

    invoke-virtual {v4, v7}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->dumpProtoState(Z)[B

    move-result-object v4

    const-wide v8, 0x10b00000004L

    invoke-virtual {v1, v8, v9, v4}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 881
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_50
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 882
    .local v8, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    .line 884
    .local v9, "userId":I
    const-wide v10, 0x20b00000005L

    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 885
    .local v10, "userToken":J
    invoke-virtual {v1, v5, v6, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 886
    const-wide v12, 0x10500000002L

    iget v14, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    invoke-static {v14}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v14

    iget-object v15, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    .line 887
    invoke-virtual {v14, v15, v9}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    .line 886
    invoke-virtual {v1, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 888
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 889
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    .end local v9    # "userId":I
    .end local v10    # "userToken":J
    goto :goto_50

    .line 891
    :cond_8c
    const-wide v4, 0x10800000006L

    iget-object v6, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget-boolean v6, v6, Landroid/hardware/face/FaceSensorPropertiesInternal;->resetLockoutRequiresHardwareAuthToken:Z

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 893
    const-wide v4, 0x10800000007L

    iget-object v6, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget-boolean v6, v6, Landroid/hardware/face/FaceSensorPropertiesInternal;->resetLockoutRequiresChallenge:Z

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 896
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 897
    return-void
.end method

.method public extCmd(ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;IILjava/lang/String;)I
    .registers 10
    .param p1, "sensorId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p4, "cmd"    # I
    .param p5, "param"    # I
    .param p6, "opPackageName"    # Ljava/lang/String;

    .line 1059
    const/4 v0, 0x1

    if-nez p4, :cond_b

    .line 1060
    sput-boolean v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mCanNextFaceInputStep:Z

    .line 1061
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mFaceInputStep:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mFaceInputStep:I

    .line 1062
    return v0

    .line 1063
    :cond_b
    const/4 v1, 0x0

    if-ne p4, v0, :cond_1a

    .line 1064
    sput-boolean v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mCanNextFaceInputStep:Z

    .line 1065
    iput v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mFaceInputStep:I

    .line 1067
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/FaceServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/face/FaceServiceStub;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/server/biometrics/sensors/face/FaceServiceStub;->setEnrollStep(I)V

    .line 1068
    return v0

    .line 1070
    :cond_1a
    return v1
.end method

.method public getAuthenticatorId(II)J
    .registers 7
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I

    .line 543
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEnrolledFaces(II)Ljava/util/List;
    .registers 5
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation

    .line 532
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLockoutModeForUser(II)I
    .registers 4
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I

    .line 538
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLockoutTracker:Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;

    invoke-virtual {v0, p2}, Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;->getLockoutModeForUser(I)I

    move-result v0

    return v0
.end method

.method public getSensorProperties(I)Landroid/hardware/face/FaceSensorPropertiesInternal;
    .registers 3
    .param p1, "sensorId"    # I

    .line 526
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    return-object v0
.end method

.method public getSensorProperties()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;"
        }
    .end annotation

    .line 518
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 519
    .local v0, "properties":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    return-object v0
.end method

.method public isHardwareDetected(I)Z
    .registers 3
    .param p1, "sensorId"    # I

    .line 548
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->getDaemon()Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method synthetic lambda$cancelAuthentication$8$com-android-server-biometrics-sensors-face-hidl-Face10(Landroid/os/IBinder;J)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "requestId"    # J

    .line 728
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->cancelAuthenticationOrDetection(Landroid/os/IBinder;J)V

    return-void
.end method

.method synthetic lambda$cancelEnrollment$6$com-android-server-biometrics-sensors-face-hidl-Face10(Landroid/os/IBinder;J)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "requestId"    # J

    .line 676
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->cancelEnrollment(Landroid/os/IBinder;J)V

    return-void
.end method

.method synthetic lambda$new$0$com-android-server-biometrics-sensors-face-hidl-Face10()V
    .registers 2

    .line 404
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 405
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mCurrentUserId:I

    .line 406
    return-void
.end method

.method synthetic lambda$scheduleAuthenticate$7$com-android-server-biometrics-sensors-face-hidl-Face10(ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLjava/lang/String;IIZZ)V
    .registers 40
    .param p1, "userId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "requestId"    # J
    .param p5, "receiver"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .param p6, "operationId"    # J
    .param p8, "restricted"    # Z
    .param p9, "opPackageName"    # Ljava/lang/String;
    .param p10, "cookie"    # I
    .param p11, "statsClient"    # I
    .param p12, "allowBackgroundAuthentication"    # Z
    .param p13, "isKeyguardBypassEnabled"    # Z

    move-object/from16 v0, p0

    move/from16 v8, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move-wide/from16 v9, p6

    move/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move/from16 v21, p12

    move/from16 v22, p13

    .line 699
    invoke-direct/range {p0 .. p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 701
    iget v1, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    invoke-static {v1}, Lcom/android/server/biometrics/Utils;->isStrongBiometric(I)Z

    move-result v23

    .local v23, "isStrongBiometric":Z
    move/from16 v18, v23

    .line 702
    new-instance v24, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;

    move-object/from16 v1, v24

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Ljava/util/function/Supplier;

    iget v15, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    .line 705
    const/4 v14, 0x2

    move-object/from16 v25, v1

    move/from16 v1, p11

    invoke-direct {v0, v14, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v16

    iget-object v14, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object/from16 v17, v14

    iget-object v14, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLockoutTracker:Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;

    move-object/from16 v19, v14

    iget-object v14, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    move-object/from16 v20, v14

    const/4 v14, 0x0

    move-object/from16 v1, v25

    invoke-direct/range {v1 .. v22}, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLcom/android/server/biometrics/sensors/LockoutTracker;Lcom/android/server/biometrics/sensors/face/UsageStats;ZZ)V

    move-object/from16 v1, v24

    .line 708
    .local v1, "client":Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v2, v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    .line 709
    return-void
.end method

.method synthetic lambda$scheduleEnroll$5$com-android-server-biometrics-sensors-face-hidl-Face10(ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;[BLjava/lang/String;J[ILandroid/view/Surface;)V
    .registers 30
    .param p1, "userId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p4, "hardwareAuthToken"    # [B
    .param p5, "opPackageName"    # Ljava/lang/String;
    .param p6, "id"    # J
    .param p8, "disabledFeatures"    # [I
    .param p9, "previewSurface"    # Landroid/view/Surface;

    move-object/from16 v0, p0

    move/from16 v6, p1

    move-object/from16 v4, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-wide/from16 v9, p6

    move-object/from16 v12, p8

    move-object/from16 v14, p9

    .line 648
    invoke-direct/range {p0 .. p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 650
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->cancelReEnrollNotification(Landroid/content/Context;)V

    .line 652
    new-instance v18, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;

    move-object/from16 v1, v18

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Ljava/util/function/Supplier;

    new-instance v11, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object v5, v11

    move-object/from16 v13, p3

    invoke-direct {v11, v13}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    iget v11, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    .line 654
    invoke-static {v11}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v11

    iget v15, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    .line 656
    const/4 v13, 0x1

    move-object/from16 v19, v1

    const/4 v1, 0x0

    invoke-direct {v0, v13, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v16

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object/from16 v17, v1

    const/16 v13, 0x3c

    move-object/from16 v1, v19

    invoke-direct/range {v1 .. v17}, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;JLcom/android/server/biometrics/sensors/BiometricUtils;[IILandroid/view/Surface;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    move-object/from16 v1, v18

    .line 660
    .local v1, "client":Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance v3, Lcom/android/server/biometrics/sensors/face/hidl/Face10$4;

    invoke-direct {v3, v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$4;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;)V

    invoke-virtual {v2, v1, v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 670
    return-void
.end method

.method synthetic lambda$scheduleGenerateChallenge$3$com-android-server-biometrics-sensors-face-hidl-Face10(Landroid/hardware/face/IFaceServiceReceiver;ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 21
    .param p1, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p2, "userId"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "opPackageName"    # Ljava/lang/String;

    .line 580
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->incrementChallengeCount()V

    .line 582
    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->isGeneratedChallengeCacheValid()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 583
    const-string v2, "Face10"

    const-string v3, "Current challenge is cached and will be reused"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCache:Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;

    invoke-virtual {v2, v1}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;->reuseResult(Landroid/hardware/face/IFaceServiceReceiver;)V

    .line 585
    return-void

    .line 588
    :cond_1a
    move/from16 v2, p2

    invoke-direct {v0, v2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 590
    new-instance v15, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;

    iget-object v4, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Ljava/util/function/Supplier;

    new-instance v7, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-direct {v7, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    iget v10, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    .line 593
    const/4 v3, 0x0

    invoke-direct {v0, v3, v3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    sget-object v3, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->sSystemClock:Ljava/time/Clock;

    .line 595
    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v13

    move-object v3, v15

    move-object/from16 v6, p3

    move/from16 v8, p2

    move-object/from16 v9, p4

    invoke-direct/range {v3 .. v14}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;J)V

    .line 596
    .local v3, "client":Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;
    iput-object v3, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCache:Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;

    .line 597
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance v5, Lcom/android/server/biometrics/sensors/face/hidl/Face10$2;

    invoke-direct {v5, v0, v3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$2;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;)V

    invoke-virtual {v4, v3, v5}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 606
    return-void
.end method

.method synthetic lambda$scheduleGetFeature$13$com-android-server-biometrics-sensors-face-hidl-Face10(IILandroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)V
    .registers 24
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "listener"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .param p5, "opPackageName"    # Ljava/lang/String;
    .param p6, "feature"    # I

    .line 811
    move-object/from16 v0, p0

    move/from16 v13, p2

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->getEnrolledFaces(II)Ljava/util/List;

    move-result-object v14

    .line 812
    .local v14, "faces":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/Face;>;"
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 813
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring getFeature, no templates enrolled for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Face10"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    return-void

    .line 817
    :cond_27
    invoke-direct {v0, v13}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 819
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/face/Face;

    invoke-virtual {v1}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v15

    .line 820
    .local v15, "faceId":I
    new-instance v16, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Ljava/util/function/Supplier;

    iget v8, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    .line 822
    invoke-static {v2}, Lcom/android/server/biometrics/log/BiometricLogger;->ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object/from16 v1, v16

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p2

    move-object/from16 v7, p5

    move/from16 v11, p6

    move v12, v15

    invoke-direct/range {v1 .. v12}, Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;II)V

    .line 824
    .local v1, "client":Lcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance v3, Lcom/android/server/biometrics/sensors/face/hidl/Face10$5;

    move/from16 v4, p6

    invoke-direct {v3, v0, v4, v1, v13}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$5;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;ILcom/android/server/biometrics/sensors/face/hidl/FaceGetFeatureClient;I)V

    invoke-virtual {v2, v1, v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 838
    return-void
.end method

.method synthetic lambda$scheduleInternalCleanup$14$com-android-server-biometrics-sensors-face-hidl-Face10(ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 16
    .param p1, "userId"    # I
    .param p2, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 844
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 846
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->getEnrolledFaces(II)Ljava/util/List;

    move-result-object v0

    .line 847
    .local v0, "enrolledList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/Face;>;"
    new-instance v12, Lcom/android/server/biometrics/sensors/face/hidl/FaceInternalCleanupClient;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 848
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    .line 849
    const/4 v1, 0x3

    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    .line 852
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mAuthenticatorIds:Ljava/util/Map;

    move-object v1, v12

    move v4, p1

    move-object v9, v0

    invoke-direct/range {v1 .. v11}, Lcom/android/server/biometrics/sensors/face/hidl/FaceInternalCleanupClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/List;Lcom/android/server/biometrics/sensors/BiometricUtils;Ljava/util/Map;)V

    .line 853
    .local v1, "client":Lcom/android/server/biometrics/sensors/face/hidl/FaceInternalCleanupClient;
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 854
    return-void
.end method

.method synthetic lambda$scheduleLoadAuthenticatorIds$16$com-android-server-biometrics-sensors-face-hidl-Face10()V
    .registers 6

    .line 954
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 955
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    .line 956
    .local v2, "targetUserId":I
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 957
    invoke-direct {p0, v2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 959
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    .end local v2    # "targetUserId":I
    :cond_2b
    goto :goto_e

    .line 960
    :cond_2c
    return-void
.end method

.method synthetic lambda$scheduleRemove$9$com-android-server-biometrics-sensors-face-hidl-Face10(ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;ILjava/lang/String;)V
    .registers 22
    .param p1, "userId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p4, "faceId"    # I
    .param p5, "opPackageName"    # Ljava/lang/String;

    .line 735
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 737
    new-instance v14, Lcom/android/server/biometrics/sensors/face/hidl/FaceRemovalClient;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Ljava/util/function/Supplier;

    new-instance v5, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object/from16 v15, p3

    invoke-direct {v5, v15}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    iget v1, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    .line 739
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v9

    iget v10, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    .line 740
    const/4 v1, 0x4

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v13, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mAuthenticatorIds:Ljava/util/Map;

    move-object v1, v14

    move-object/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p1

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v13}, Lcom/android/server/biometrics/sensors/face/hidl/FaceRemovalClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;)V

    .line 743
    .local v1, "client":Lcom/android/server/biometrics/sensors/face/hidl/FaceRemovalClient;
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v2, v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    .line 744
    return-void
.end method

.method synthetic lambda$scheduleRemoveAll$10$com-android-server-biometrics-sensors-face-hidl-Face10(ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 21
    .param p1, "userId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p4, "opPackageName"    # Ljava/lang/String;

    .line 751
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 754
    new-instance v14, Lcom/android/server/biometrics/sensors/face/hidl/FaceRemovalClient;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Ljava/util/function/Supplier;

    new-instance v5, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object/from16 v15, p3

    invoke-direct {v5, v15}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    iget v1, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    .line 757
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v9

    iget v10, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    .line 758
    const/4 v1, 0x4

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v13, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mAuthenticatorIds:Ljava/util/Map;

    const/4 v6, 0x0

    move-object v1, v14

    move-object/from16 v4, p2

    move/from16 v7, p1

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v13}, Lcom/android/server/biometrics/sensors/face/hidl/FaceRemovalClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;)V

    .line 761
    .local v1, "client":Lcom/android/server/biometrics/sensors/face/hidl/FaceRemovalClient;
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v2, v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    .line 762
    return-void
.end method

.method synthetic lambda$scheduleResetLockout$11$com-android-server-biometrics-sensors-face-hidl-Face10(II[B)V
    .registers 15
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "hardwareAuthToken"    # [B

    .line 768
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->getEnrolledFaces(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring lockout reset, no templates enrolled for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Face10"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    return-void

    .line 773
    :cond_23
    invoke-direct {p0, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 775
    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/FaceResetLockoutClient;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 776
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    .line 777
    const/4 v1, 0x0

    invoke-direct {p0, v1, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object v2, v0

    move v5, p2

    move-object v10, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/server/biometrics/sensors/face/hidl/FaceResetLockoutClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;[B)V

    .line 780
    .local v0, "client":Lcom/android/server/biometrics/sensors/face/hidl/FaceResetLockoutClient;
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    .line 781
    return-void
.end method

.method synthetic lambda$scheduleRevokeChallenge$4$com-android-server-biometrics-sensors-face-hidl-Face10(Landroid/os/IBinder;ILjava/lang/String;)V
    .registers 16
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;

    .line 613
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->decrementChallengeCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    move v0, v1

    .line 614
    .local v0, "shouldRevoke":Z
    :goto_a
    const-string v2, "Face10"

    if-nez v0, :cond_28

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleRevokeChallenge skipped - challenge still in use: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCount:Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    return-void

    .line 620
    :cond_28
    const-string/jumbo v3, "scheduleRevokeChallenge executing - no active clients"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mGeneratedChallengeCache:Lcom/android/server/biometrics/sensors/face/hidl/FaceGenerateChallengeClient;

    .line 623
    new-instance v2, Lcom/android/server/biometrics/sensors/face/hidl/FaceRevokeChallengeClient;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Ljava/util/function/Supplier;

    iget v9, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    .line 625
    invoke-direct {p0, v1, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object v3, v2

    move-object v6, p1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v11}, Lcom/android/server/biometrics/sensors/face/hidl/FaceRevokeChallengeClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    move-object v1, v2

    .line 628
    .local v1, "client":Lcom/android/server/biometrics/sensors/face/hidl/FaceRevokeChallengeClient;
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance v3, Lcom/android/server/biometrics/sensors/face/hidl/Face10$3;

    invoke-direct {v3, p0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$3;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Lcom/android/server/biometrics/sensors/face/hidl/FaceRevokeChallengeClient;)V

    invoke-virtual {v2, v1, v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 638
    return-void
.end method

.method synthetic lambda$scheduleSetFeature$12$com-android-server-biometrics-sensors-face-hidl-Face10(IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;IZ[B)V
    .registers 28
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p5, "opPackageName"    # Ljava/lang/String;
    .param p6, "feature"    # I
    .param p7, "enabled"    # Z
    .param p8, "hardwareAuthToken"    # [B

    .line 789
    move-object/from16 v0, p0

    move/from16 v15, p2

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->getEnrolledFaces(II)Ljava/util/List;

    move-result-object v14

    .line 790
    .local v14, "faces":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/Face;>;"
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 791
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring setFeature, no templates enrolled for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Face10"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    return-void

    .line 795
    :cond_27
    invoke-direct {v0, v15}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 797
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/face/Face;

    invoke-virtual {v1}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v16

    .line 798
    .local v16, "faceId":I
    new-instance v17, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mLazyDaemon:Ljava/util/function/Supplier;

    new-instance v5, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object/from16 v13, p4

    invoke-direct {v5, v13}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    iget v8, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mContext:Landroid/content/Context;

    .line 800
    invoke-static {v1}, Lcom/android/server/biometrics/log/BiometricLogger;->ofUnknown(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object/from16 v1, v17

    move-object/from16 v4, p3

    move/from16 v6, p2

    move-object/from16 v7, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v18, v14

    .end local v14    # "faces":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/Face;>;"
    .local v18, "faces":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/Face;>;"
    move/from16 v14, v16

    invoke-direct/range {v1 .. v14}, Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;IZ[BI)V

    .line 803
    .local v1, "client":Lcom/android/server/biometrics/sensors/face/hidl/FaceSetFeatureClient;
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v2, v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    .line 804
    return-void
.end method

.method synthetic lambda$serviceDied$1$com-android-server-biometrics-sensors-face-hidl-Face10()V
    .registers 7

    .line 431
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mSensorId:I

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v0

    .line 432
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementHALDeathCount()V

    .line 433
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    .line 434
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mCurrentUserId:I

    .line 436
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 437
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    if-eqz v1, :cond_41

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending ERROR_HW_UNAVAILABLE for client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Face10"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    .line 440
    .local v1, "errorConsumer":Lcom/android/server/biometrics/sensors/ErrorConsumer;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    .line 443
    const/16 v2, 0x94

    const/4 v4, 0x4

    const/4 v5, -0x1

    invoke-static {v2, v4, v3, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 449
    .end local v1    # "errorConsumer":Lcom/android/server/biometrics/sensors/ErrorConsumer;
    :cond_41
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->recordCrashState()V

    .line 450
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->reset()V

    .line 451
    return-void
.end method

.method synthetic lambda$startPreparedClient$15$com-android-server-biometrics-sensors-face-hidl-Face10(I)V
    .registers 3
    .param p1, "cookie"    # I

    .line 866
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->startPreparedClient(I)V

    .line 867
    return-void
.end method

.method public scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;ZIZZ)J
    .registers 31
    .param p1, "sensorId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "operationId"    # J
    .param p5, "userId"    # I
    .param p6, "cookie"    # I
    .param p7, "receiver"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .param p8, "opPackageName"    # Ljava/lang/String;
    .param p9, "restricted"    # Z
    .param p10, "statsClient"    # I
    .param p11, "allowBackgroundAuthentication"    # Z
    .param p12, "isKeyguardBypassEnabled"    # Z

    .line 717
    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v16

    .line 719
    .local v16, "id":J
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v9, v16

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    invoke-virtual/range {v0 .. v14}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;JZIZZ)V

    .line 723
    return-wide v16
.end method

.method public scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;JZIZZ)V
    .registers 32
    .param p1, "sensorId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "operationId"    # J
    .param p5, "userId"    # I
    .param p6, "cookie"    # I
    .param p7, "receiver"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .param p8, "opPackageName"    # Ljava/lang/String;
    .param p9, "requestId"    # J
    .param p11, "restricted"    # Z
    .param p12, "statsClient"    # I
    .param p13, "allowBackgroundAuthentication"    # Z
    .param p14, "isKeyguardBypassEnabled"    # Z

    .line 698
    move-object/from16 v15, p0

    iget-object v14, v15, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda11;

    move-object v0, v13

    move-object/from16 v1, p0

    move/from16 v2, p5

    move-object/from16 v3, p2

    move-wide/from16 v4, p9

    move-object/from16 v6, p7

    move-wide/from16 v7, p3

    move/from16 v9, p11

    move-object/from16 v10, p8

    move/from16 v11, p6

    move/from16 v12, p12

    move-object v15, v13

    move/from16 v13, p13

    move-object/from16 v16, v14

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLjava/lang/String;IIZZ)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 710
    return-void
.end method

.method public scheduleEnroll(ILandroid/os/IBinder;[BILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;Z)J
    .registers 26
    .param p1, "sensorId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "hardwareAuthToken"    # [B
    .param p4, "userId"    # I
    .param p5, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p6, "opPackageName"    # Ljava/lang/String;
    .param p7, "disabledFeatures"    # [I
    .param p8, "previewSurface"    # Landroid/view/Surface;
    .param p9, "debugConsent"    # Z

    .line 646
    move-object/from16 v11, p0

    iget-object v0, v11, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v12

    .line 647
    .local v12, "id":J
    iget-object v14, v11, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v15, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda8;

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, p4

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    move-wide v7, v12

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;[BLjava/lang/String;J[ILandroid/view/Surface;)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 671
    return-wide v12
.end method

.method public scheduleFaceDetect(ILandroid/os/IBinder;ILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)J
    .registers 9
    .param p1, "sensorId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "userId"    # I
    .param p4, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .param p5, "opPackageName"    # Ljava/lang/String;
    .param p6, "statsClient"    # I

    .line 683
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Face detect not supported by IBiometricsFace@1.0. Did youforget to check the supportsFaceDetection flag?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scheduleGenerateChallenge(IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 14
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p5, "opPackageName"    # Ljava/lang/String;

    .line 579
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/hardware/face/IFaceServiceReceiver;ILandroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 607
    return-void
.end method

.method public scheduleGetFeature(ILandroid/os/IBinder;IILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;)V
    .registers 18
    .param p1, "sensorId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "userId"    # I
    .param p4, "feature"    # I
    .param p5, "listener"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .param p6, "opPackageName"    # Ljava/lang/String;

    .line 810
    move-object v8, p0

    iget-object v9, v8, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda12;

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move v3, p3

    move-object v4, p2

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;IILandroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 839
    return-void
.end method

.method public scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 4
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 860
    invoke-direct {p0, p2, p3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->scheduleInternalCleanup(ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 861
    return-void
.end method

.method public scheduleRemove(ILandroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 16
    .param p1, "sensorId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "faceId"    # I
    .param p4, "userId"    # I
    .param p5, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p6, "opPackageName"    # Ljava/lang/String;

    .line 734
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda17;

    move-object v1, v8

    move-object v2, p0

    move v3, p4

    move-object v4, p2

    move-object v5, p5

    move v6, p3

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;ILjava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 745
    return-void
.end method

.method public scheduleRemoveAll(ILandroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 14
    .param p1, "sensorId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "userId"    # I
    .param p4, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p5, "opPackageName"    # Ljava/lang/String;

    .line 750
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda16;

    move-object v1, v7

    move-object v2, p0

    move v3, p3

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;ILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 763
    return-void
.end method

.method public scheduleResetLockout(II[B)V
    .registers 6
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "hardwareAuthToken"    # [B

    .line 767
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;II[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 782
    return-void
.end method

.method public scheduleRevokeChallenge(IILandroid/os/IBinder;Ljava/lang/String;J)V
    .registers 9
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "opPackageName"    # Ljava/lang/String;
    .param p5, "challenge"    # J

    .line 612
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p3, p2, p4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;Landroid/os/IBinder;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 639
    return-void
.end method

.method public scheduleSetFeature(ILandroid/os/IBinder;IIZ[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 22
    .param p1, "sensorId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "userId"    # I
    .param p4, "feature"    # I
    .param p5, "enabled"    # Z
    .param p6, "hardwareAuthToken"    # [B
    .param p7, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p8, "opPackageName"    # Ljava/lang/String;

    .line 788
    move-object v10, p0

    iget-object v11, v10, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda13;

    move-object v0, v12

    move-object v1, p0

    move v2, p1

    move/from16 v3, p3

    move-object v4, p2

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;IZ[B)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 805
    return-void
.end method

.method public serviceDied(J)V
    .registers 5
    .param p1, "cookie"    # J

    .line 429
    const-string v0, "Face10"

    const-string v1, "HAL died"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 452
    return-void
.end method

.method setTestHalEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 1045
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mTestHalEnabled:Z

    .line 1046
    return-void
.end method

.method public startPreparedClient(II)V
    .registers 5
    .param p1, "sensorId"    # I
    .param p2, "cookie"    # I

    .line 865
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 868
    return-void
.end method
