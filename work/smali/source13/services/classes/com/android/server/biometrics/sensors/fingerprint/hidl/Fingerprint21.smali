.class public Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;
.super Ljava/lang/Object;
.source "Fingerprint21.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;
.implements Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;,
        Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$BiometricTaskStackListener;
    }
.end annotation


# static fields
.field private static final ENROLL_TIMEOUT_SEC:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "Fingerprint21"

.field private static mIsScreenOnWhenFingerdown:Z


# instance fields
.field private final mActivityTaskManager:Landroid/app/ActivityTaskManager;

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

.field private final mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

.field final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

.field private final mHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;

.field private final mHandler:Landroid/os/Handler;

.field private final mIsPowerbuttonFps:Z

.field private final mIsUdfps:Z

.field private final mLazyDaemon:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockoutResetCallback:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutResetCallback;

.field private final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field private final mLockoutTracker:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

.field private final mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

.field private final mSensorId:I

.field private final mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

.field private mSidefpsController:Landroid/hardware/fingerprint/ISidefpsController;

.field private final mTaskStackListener:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$BiometricTaskStackListener;

.field private mTestHalEnabled:Z

.field private mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

.field private final mUserSwitchObserver:Landroid/app/UserSwitchObserver;


# direct methods
.method public static synthetic $r8$lambda$3B_1tGkFnbIG99VYPsEb1LbVYtk(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->getCurrentUser()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBiometricStateCallback(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)Lcom/android/server/biometrics/sensors/BiometricStateCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentUserId(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)I
    .registers 1

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mCurrentUserId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLockoutResetDispatcher(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScheduler(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)Lcom/android/server/biometrics/sensors/BiometricScheduler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSensorProperties(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentUserId(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mCurrentUserId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mscheduleInternalCleanup(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleInternalCleanup(ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscheduleUpdateActiveUserWithoutHandler(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleUpdateActiveUserWithoutHandler(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmIsScreenOnWhenFingerdown()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mIsScreenOnWhenFingerdown:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputmIsScreenOnWhenFingerdown(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mIsScreenOnWhenFingerdown:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 146
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mIsScreenOnWhenFingerdown:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/BiometricScheduler;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;Lcom/android/server/biometrics/log/BiometricContext;)V
    .registers 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "biometricStateCallback"    # Lcom/android/server/biometrics/sensors/BiometricStateCallback;
    .param p3, "sensorProps"    # Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .param p4, "scheduler"    # Lcom/android/server/biometrics/sensors/BiometricScheduler;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "lockoutResetDispatcher"    # Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;
    .param p7, "controller"    # Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;
    .param p8, "biometricContext"    # Lcom/android/server/biometrics/log/BiometricContext;

    .line 433
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    const-string v6, "Fingerprint21"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v7, 0x0

    invoke-direct {v0, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 137
    const/16 v0, -0x2710

    iput v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mCurrentUserId:I

    .line 176
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V

    iput-object v0, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLockoutResetCallback:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutResetCallback;

    .line 184
    new-instance v7, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$2;

    invoke-direct {v7, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V

    iput-object v7, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mUserSwitchObserver:Landroid/app/UserSwitchObserver;

    .line 434
    iput-object v2, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    .line 435
    move-object/from16 v8, p2

    iput-object v8, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    .line 436
    move-object/from16 v9, p8

    iput-object v9, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 438
    iput-object v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 439
    iget v10, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iput v10, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorId:I

    .line 440
    iget v10, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x3

    if-eq v10, v14, :cond_48

    iget v10, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    if-ne v10, v11, :cond_46

    goto :goto_48

    :cond_46
    move v10, v13

    goto :goto_49

    :cond_48
    :goto_48
    move v10, v12

    :goto_49
    iput-boolean v10, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mIsUdfps:Z

    .line 442
    iget v10, v3, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    const/4 v14, 0x4

    if-ne v10, v14, :cond_51

    goto :goto_52

    :cond_51
    move v12, v13

    :goto_52
    iput-boolean v12, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mIsPowerbuttonFps:Z

    .line 444
    move-object/from16 v10, p4

    iput-object v10, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 445
    iput-object v4, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    .line 446
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v12

    iput-object v12, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 449
    invoke-static {}, Lcom/android/server/biometrics/BiometricServiceBaseStub;->getInstance()Lcom/android/server/biometrics/BiometricServiceBaseStub;

    move-result-object v12

    invoke-interface {v12, v4, v2}, Lcom/android/server/biometrics/BiometricServiceBaseStub;->registerSideFpUnlockTypeChangedObserver(Landroid/os/Handler;Landroid/content/Context;)V

    .line 451
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;

    move-result-object v12

    .line 452
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v14

    invoke-interface {v12, v2, v4, v14}, Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;->registerDoubleTapSideFpOptionObserver(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    .line 453
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;->getIsPowerfp()Z

    move-result v12

    if-eqz v12, :cond_91

    .line 454
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;->getIsSupportFpTap()Z

    move-result v12

    if-eqz v12, :cond_91

    .line 455
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;

    move-result-object v12

    .line 456
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v14

    .line 455
    invoke-interface {v12, v2, v14, v13, v11}, Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;->NotifyLockOutState(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BaseClientMonitor;II)V

    .line 460
    :cond_91
    new-instance v11, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$BiometricTaskStackListener;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$BiometricTaskStackListener;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$BiometricTaskStackListener-IA;)V

    iput-object v11, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mTaskStackListener:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$BiometricTaskStackListener;

    .line 461
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    invoke-static {v11}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v11

    iput-object v11, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mAuthenticatorIds:Ljava/util/Map;

    .line 462
    new-instance v11, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda18;

    invoke-direct {v11, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V

    iput-object v11, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 463
    move-object/from16 v11, p6

    iput-object v11, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    .line 464
    new-instance v12, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    invoke-direct {v12, v2, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$LockoutResetCallback;)V

    iput-object v12, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLockoutTracker:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    .line 465
    iput-object v5, v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;

    .line 466
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V

    invoke-virtual {v5, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;->setCallback(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController$Callback;)V

    .line 472
    :try_start_c0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, v7, v6}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_c7
    .catch Landroid/os/RemoteException; {:try_start_c0 .. :try_end_c7} :catch_c8

    .line 475
    goto :goto_ce

    .line 473
    :catch_c8
    move-exception v0

    .line 474
    .local v0, "e":Landroid/os/RemoteException;
    const-string v7, "Unable to register user switch observer"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_ce
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;

    move-result-object v0

    new-instance v6, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$3;

    invoke-direct {v6, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V

    invoke-interface {v0, v6}, Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub;->setChangeListener(Lcom/android/server/biometrics/sensors/fingerprint/PowerFingerPrintServiceStub$ChangeListener;)V

    .line 513
    return-void
.end method

.method private createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;
    .registers 6
    .param p1, "statsAction"    # I
    .param p2, "statsClient"    # I

    .line 926
    new-instance v0, Lcom/android/server/biometrics/log/BiometricLogger;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(Landroid/content/Context;III)V

    return-object v0
.end method

.method private getCurrentUser()I
    .registers 2

    .line 678
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mCurrentUserId:I

    return v0
.end method

.method static synthetic lambda$onPointerDown$16(IIFFLcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .registers 7
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "minor"    # F
    .param p3, "major"    # F
    .param p4, "client"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 979
    instance-of v0, p4, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;

    if-nez v0, :cond_1e

    .line 980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onFingerDown received during client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fingerprint21"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    return-void

    .line 983
    :cond_1e
    move-object v0, p4

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;->onPointerDown(IIFF)V

    .line 984
    return-void
.end method

.method static synthetic lambda$onPointerUp$17(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .registers 3
    .param p0, "client"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 990
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;

    if-nez v0, :cond_1e

    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onFingerDown received during client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fingerprint21"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    return-void

    .line 994
    :cond_1e
    move-object v0, p0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;

    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;->onPointerUp()V

    .line 995
    return-void
.end method

.method static synthetic lambda$onUiReady$18(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .registers 3
    .param p0, "client"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 1001
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;

    if-nez v0, :cond_1e

    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUiReady received during client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fingerprint21"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    return-void

    .line 1005
    :cond_1e
    move-object v0, p0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;

    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/fingerprint/Udfps;->onUiReady()V

    .line 1006
    return-void
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;)Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;
    .registers 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "biometricStateCallback"    # Lcom/android/server/biometrics/sensors/BiometricStateCallback;
    .param p2, "sensorProps"    # Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "lockoutResetDispatcher"    # Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;
    .param p5, "gestureAvailabilityDispatcher"    # Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    .line 521
    new-instance v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 523
    invoke-static/range {p2 .. p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->sensorTypeFromFingerprintProperties(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)I

    move-result v1

    const-string v2, "Fingerprint21"

    move-object/from16 v3, p5

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;-><init>(Ljava/lang/String;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;)V

    .line 525
    .local v0, "scheduler":Lcom/android/server/biometrics/sensors/BiometricScheduler;
    new-instance v11, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;

    move-object/from16 v1, p2

    iget v2, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    move-object v13, p0

    move-object/from16 v14, p3

    invoke-direct {v11, v2, p0, v14, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;-><init>(ILandroid/content/Context;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/BiometricScheduler;)V

    .line 527
    .local v11, "controller":Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;
    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;

    .line 528
    invoke-static {p0}, Lcom/android/server/biometrics/log/BiometricContext;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object v12

    move-object v4, v2

    move-object v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object v8, v0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v12}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/BiometricScheduler;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 527
    return-object v2
.end method

.method private scheduleInternalCleanup(ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 902
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 916
    return-void
.end method

.method private scheduleLoadAuthenticatorIds()V
    .registers 3

    .line 623
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 635
    return-void
.end method

.method private scheduleUpdateActiveUserWithoutHandler(I)V
    .registers 3
    .param p1, "targetUserId"    # I

    .line 638
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleUpdateActiveUserWithoutHandler(IZ)V

    .line 639
    return-void
.end method

.method private scheduleUpdateActiveUserWithoutHandler(IZ)V
    .registers 16
    .param p1, "targetUserId"    # I
    .param p2, "force"    # Z

    .line 652
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v0, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 653
    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->getEnrolledFingerprints(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v10, v0, 0x1

    .line 654
    .local v10, "hasEnrolled":Z
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintUpdateActiveUserClient;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 656
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v6, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 657
    const/4 v1, 0x0

    invoke-direct {p0, v1, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    new-instance v9, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda1;

    invoke-direct {v9, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V

    iget-object v11, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mAuthenticatorIds:Ljava/util/Map;

    move-object v1, v0

    move v4, p1

    move v12, p2

    invoke-direct/range {v1 .. v12}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintUpdateActiveUserClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/function/Supplier;ZLjava/util/Map;Z)V

    .line 661
    .local v0, "client":Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintUpdateActiveUserClient;
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$4;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$4;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 675
    return-void
.end method


# virtual methods
.method public cancelAuthentication(ILandroid/os/IBinder;J)V
    .registers 7
    .param p1, "sensorId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "requestId"    # J

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelAuthentication, sensorId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fingerprint21"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;Landroid/os/IBinder;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 860
    return-void
.end method

.method public cancelEnrollment(ILandroid/os/IBinder;J)V
    .registers 7
    .param p1, "sensorId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "requestId"    # J

    .line 785
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;Landroid/os/IBinder;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 786
    return-void
.end method

.method public containsSensor(I)Z
    .registers 3
    .param p1, "sensorId"    # I

    .line 683
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v0, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    if-ne v0, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
    .registers 12
    .param p1, "sensorId"    # I
    .param p2, "callback"    # Landroid/hardware/biometrics/ITestSessionCallback;
    .param p3, "opPackageName"    # Ljava/lang/String;

    .line 1153
    new-instance v7, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v2, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;

    move-object v0, v7

    move-object v3, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/BiometricTestSessionImpl;-><init>(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;)V

    return-object v7
.end method

.method public dumpInternal(ILjava/io/PrintWriter;)V
    .registers 14
    .param p1, "sensorId"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 1106
    const-string v0, "Fingerprint21"

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v1, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 1107
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v1

    .line 1109
    .local v1, "performanceTracker":Lcom/android/server/biometrics/sensors/PerformanceTracker;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1111
    .local v2, "dump":Lorg/json/JSONObject;
    :try_start_f
    const-string/jumbo v3, "service"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1112
    const-string/jumbo v3, "isUdfps"

    iget-boolean v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mIsUdfps:Z

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1113
    const-string/jumbo v3, "isPowerbuttonFps"

    iget-boolean v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mIsPowerbuttonFps:Z

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1115
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1116
    .local v3, "sets":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_be

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 1117
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 1118
    .local v6, "userId":I
    iget v7, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorId:I

    invoke-static {v7}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    .line 1119
    invoke-virtual {v7, v8, v6}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .line 1120
    .local v7, "N":I
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 1121
    .local v8, "set":Lorg/json/JSONObject;
    const-string/jumbo v9, "id"

    invoke-virtual {v8, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1122
    const-string v9, "count"

    invoke-virtual {v8, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1123
    const-string v9, "accept"

    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcceptForUser(I)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1124
    const-string/jumbo v9, "reject"

    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getRejectForUser(I)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1125
    const-string v9, "acquire"

    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcquireForUser(I)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1126
    const-string/jumbo v9, "lockout"

    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getTimedLockoutForUser(I)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1127
    const-string/jumbo v9, "permanentLockout"

    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getPermanentLockoutForUser(I)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1130
    const-string v9, "acceptCrypto"

    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcceptCryptoForUser(I)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1131
    const-string/jumbo v9, "rejectCrypto"

    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getRejectCryptoForUser(I)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1132
    const-string v9, "acquireCrypto"

    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcquireCryptoForUser(I)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1133
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1134
    nop

    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v6    # "userId":I
    .end local v7    # "N":I
    .end local v8    # "set":Lorg/json/JSONObject;
    goto/16 :goto_38

    .line 1136
    :cond_be
    const-string/jumbo v4, "prints"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c4
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_c4} :catch_c6

    .line 1139
    nop

    .end local v3    # "sets":Lorg/json/JSONArray;
    goto :goto_cc

    .line 1137
    :catch_c6
    move-exception v3

    .line 1138
    .local v3, "e":Lorg/json/JSONException;
    const-string v4, "dump formatting failure"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1140
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_cc
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1141
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

    .line 1142
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0, p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->dump(Ljava/io/PrintWriter;)V

    .line 1143
    return-void
.end method

.method public dumpProtoMetrics(ILjava/io/FileDescriptor;)V
    .registers 19
    .param p1, "sensorId"    # I
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    .line 1053
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v1, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 1054
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v1

    .line 1056
    .local v1, "tracker":Lcom/android/server/biometrics/sensors/PerformanceTracker;
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v3, p2

    invoke-direct {v2, v3}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1057
    .local v2, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_dc

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 1058
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 1060
    .local v6, "userId":I
    const-wide v7, 0x20b00000001L

    invoke-virtual {v2, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 1062
    .local v7, "userToken":J
    const-wide v9, 0x10500000001L

    invoke-virtual {v2, v9, v10, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1063
    iget v11, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorId:I

    .line 1064
    invoke-static {v11}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    .line 1065
    invoke-virtual {v11, v12, v6}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    .line 1063
    const-wide v12, 0x10500000002L

    invoke-virtual {v2, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1068
    const-wide v14, 0x10b00000003L

    invoke-virtual {v2, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 1069
    .local v14, "countsToken":J
    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcceptForUser(I)I

    move-result v11

    invoke-virtual {v2, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1070
    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getRejectForUser(I)I

    move-result v11

    invoke-virtual {v2, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1071
    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcquireForUser(I)I

    move-result v11

    const-wide v12, 0x10500000003L

    invoke-virtual {v2, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1072
    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getTimedLockoutForUser(I)I

    move-result v11

    const-wide v12, 0x10500000004L

    invoke-virtual {v2, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1073
    nop

    .line 1074
    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getPermanentLockoutForUser(I)I

    move-result v11

    .line 1073
    const-wide v12, 0x10500000005L

    invoke-virtual {v2, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1075
    invoke-virtual {v2, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1079
    const-wide v12, 0x10b00000004L

    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 1080
    .end local v14    # "countsToken":J
    .local v11, "countsToken":J
    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcceptCryptoForUser(I)I

    move-result v13

    invoke-virtual {v2, v9, v10, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1081
    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getRejectCryptoForUser(I)I

    move-result v9

    const-wide v13, 0x10500000002L

    invoke-virtual {v2, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1082
    invoke-virtual {v1, v6}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcquireCryptoForUser(I)I

    move-result v9

    const-wide v13, 0x10500000003L

    invoke-virtual {v2, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1083
    const/4 v9, 0x0

    const-wide v13, 0x10500000004L

    invoke-virtual {v2, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1084
    const-wide v13, 0x10500000005L

    invoke-virtual {v2, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1085
    invoke-virtual {v2, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1087
    invoke-virtual {v2, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1088
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v6    # "userId":I
    .end local v7    # "userToken":J
    .end local v11    # "countsToken":J
    goto/16 :goto_1f

    .line 1089
    :cond_dc
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1090
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->clear()V

    .line 1091
    return-void
.end method

.method public dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V
    .registers 20
    .param p1, "sensorId"    # I
    .param p2, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p3, "clearSchedulerBuffer"    # Z

    .line 1022
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide v2, 0x20b00000001L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 1024
    .local v2, "sensorToken":J
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v4, v4, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    const-wide v5, 0x10500000001L

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1025
    const-wide v7, 0x10e00000002L

    const/4 v4, 0x1

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1026
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1027
    const-wide v7, 0x20e00000008L

    const/4 v4, 0x0

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1029
    :cond_33
    const-wide v7, 0x10500000003L

    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v4, v4, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 1030
    invoke-static {v4}, Lcom/android/server/biometrics/Utils;->getCurrentStrength(I)I

    move-result v4

    .line 1029
    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1031
    const-wide v7, 0x10b00000004L

    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    move/from16 v9, p3

    invoke-virtual {v4, v9}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->dumpProtoState(Z)[B

    move-result-object v4

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 1033
    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_61
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 1034
    .local v7, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 1036
    .local v8, "userId":I
    const-wide v10, 0x20b00000005L

    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 1037
    .local v10, "userToken":J
    invoke-virtual {v1, v5, v6, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1038
    const-wide v12, 0x10500000002L

    iget v14, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorId:I

    invoke-static {v14}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v14

    iget-object v15, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    .line 1039
    invoke-virtual {v14, v15, v8}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    .line 1038
    invoke-virtual {v1, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1040
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1041
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    .end local v8    # "userId":I
    .end local v10    # "userToken":J
    goto :goto_61

    .line 1043
    :cond_9d
    const-wide v4, 0x10800000006L

    iget-object v6, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget-boolean v6, v6, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->resetLockoutRequiresHardwareAuthToken:Z

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1045
    const-wide v4, 0x10800000007L

    iget-object v6, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget-boolean v6, v6, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->resetLockoutRequiresChallenge:Z

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1048
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1049
    return-void
.end method

.method public getAuthenticatorId(II)J
    .registers 7
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I

    .line 970
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;->getMiuiGroupId(I)I

    move-result p2

    .line 972
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mAuthenticatorIds:Ljava/util/Map;

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

.method declared-synchronized getDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .registers 9

    monitor-enter p0

    .line 560
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mTestHalEnabled:Z

    if-eqz v0, :cond_15

    .line 561
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorId:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;-><init>(Landroid/content/Context;I)V

    .line 562
    .local v0, "testHal":Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;->setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_b3

    .line 563
    monitor-exit p0

    return-object v0

    .line 566
    .end local v0    # "testHal":Lcom/android/server/biometrics/sensors/fingerprint/hidl/TestHal;
    .end local p0    # "this":Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;
    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_b3

    if-eqz v0, :cond_1b

    .line 567
    monitor-exit p0

    return-object v0

    .line 570
    .restart local p0    # "this":Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;
    :cond_1b
    :try_start_1b
    const-string v0, "Fingerprint21"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Daemon was null, reconnecting, current operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 571
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 570
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_1b .. :try_end_39} :catchall_b3

    .line 573
    :try_start_39
    invoke-static {}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->getService()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :try_end_3f
    .catch Ljava/util/NoSuchElementException; {:try_start_39 .. :try_end_3f} :catch_49
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3f} :catch_40
    .catchall {:try_start_39 .. :try_end_3f} :catchall_b3

    .line 579
    goto :goto_52

    .line 577
    .end local p0    # "this":Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;
    :catch_40
    move-exception v0

    .line 578
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_41
    const-string v1, "Fingerprint21"

    const-string v2, "Failed to get fingerprint HAL"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_52

    .line 574
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_49
    move-exception v0

    .line 576
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "Fingerprint21"

    const-string v2, "NoSuchElementException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 579
    nop

    .line 581
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :goto_52
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    const/4 v1, 0x0

    if-nez v0, :cond_60

    .line 582
    const-string v0, "Fingerprint21"

    const-string v2, "Fingerprint HAL not available"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_41 .. :try_end_5e} :catchall_b3

    .line 583
    monitor-exit p0

    return-object v1

    .line 586
    :cond_60
    :try_start_60
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {v0, p0, v2, v3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_69
    .catchall {:try_start_60 .. :try_end_69} :catchall_b3

    .line 590
    const-wide/16 v4, 0x0

    .line 592
    .local v4, "halId":J
    :try_start_6b
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHalResultController:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$HalResultController;

    invoke-interface {v0, v6}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J

    move-result-wide v6
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_73} :catch_75
    .catchall {:try_start_6b .. :try_end_73} :catchall_b3

    move-wide v4, v6

    .line 596
    goto :goto_7f

    .line 593
    :catch_75
    move-exception v0

    .line 594
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_76
    const-string v6, "Fingerprint21"

    const-string v7, "Failed to set callback for fingerprint HAL"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 595
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 598
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_7f
    const-string v0, "Fingerprint21"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fingerprint HAL ready, HAL ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    cmp-long v0, v4, v2

    if-eqz v0, :cond_a6

    .line 600
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleLoadAuthenticatorIds()V

    .line 601
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleInternalCleanup(ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    goto :goto_af

    .line 603
    :cond_a6
    const-string v0, "Fingerprint21"

    const-string v2, "Unable to set callback"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 607
    :goto_af
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :try_end_b1
    .catchall {:try_start_76 .. :try_end_b1} :catchall_b3

    monitor-exit p0

    return-object v0

    .line 559
    .end local v4    # "halId":J
    :catchall_b3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEnrolledFingerprints(II)Ljava/util/List;
    .registers 5
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .line 952
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;->getMiuiGroupId(I)I

    move-result p2

    .line 954
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorId:I

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLockoutModeForUser(II)I
    .registers 4
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I

    .line 961
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;->getMiuiGroupId(I)I

    move-result p2

    .line 963
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLockoutTracker:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    invoke-virtual {v0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->getLockoutModeForUser(I)I

    move-result v0

    return v0
.end method

.method public getSensorProperties(I)Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
    .registers 3
    .param p1, "sensorId"    # I

    .line 697
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    return-object v0
.end method

.method public getSensorProperties()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation

    .line 689
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 690
    .local v0, "properties":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;>;"
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    return-object v0
.end method

.method getUdfpsOverlayController()Landroid/hardware/fingerprint/IUdfpsOverlayController;
    .registers 2

    .line 611
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    return-object v0
.end method

.method public isHardwareDetected(I)Z
    .registers 3
    .param p1, "sensorId"    # I

    .line 932
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->getDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method synthetic lambda$cancelAuthentication$11$com-android-server-biometrics-sensors-fingerprint-hidl-Fingerprint21(Landroid/os/IBinder;J)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "requestId"    # J

    .line 859
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->cancelAuthenticationOrDetection(Landroid/os/IBinder;J)V

    return-void
.end method

.method synthetic lambda$cancelEnrollment$7$com-android-server-biometrics-sensors-fingerprint-hidl-Fingerprint21(Landroid/os/IBinder;J)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "requestId"    # J

    .line 785
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->cancelEnrollment(Landroid/os/IBinder;J)V

    return-void
.end method

.method synthetic lambda$new$0$com-android-server-biometrics-sensors-fingerprint-hidl-Fingerprint21()V
    .registers 2

    .line 467
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 468
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mCurrentUserId:I

    .line 469
    return-void
.end method

.method synthetic lambda$rename$15$com-android-server-biometrics-sensors-fingerprint-hidl-Fingerprint21(IILjava/lang/String;)V
    .registers 6
    .param p1, "groupId"    # I
    .param p2, "fingerId"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 942
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorId:I

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    .line 943
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->renameBiometricForUser(Landroid/content/Context;IILjava/lang/CharSequence;)V

    .line 944
    return-void
.end method

.method synthetic lambda$scheduleAuthenticate$9$com-android-server-biometrics-sensors-fingerprint-hidl-Fingerprint21(IILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLjava/lang/String;IIZ)V
    .registers 42
    .param p1, "userId"    # I
    .param p2, "sensorId"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "requestId"    # J
    .param p6, "listener"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .param p7, "operationId"    # J
    .param p9, "restricted"    # Z
    .param p10, "opPackageName"    # Ljava/lang/String;
    .param p11, "cookie"    # I
    .param p12, "statsClient"    # I
    .param p13, "allowBackgroundAuthentication"    # Z

    move-object/from16 v0, p0

    move/from16 v8, p1

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-wide/from16 v9, p7

    move/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    move/from16 v23, p13

    .line 815
    invoke-direct/range {p0 .. p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 819
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceInjectorStub;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceInjectorStub;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    .line 821
    invoke-static {}, Lcom/android/server/biometrics/BiometricServiceBaseStub;->getInstance()Lcom/android/server/biometrics/BiometricServiceBaseStub;

    move-result-object v3

    iget-object v14, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    invoke-interface {v3, v14}, Lcom/android/server/biometrics/BiometricServiceBaseStub;->getFingerprintUnlockType(Landroid/content/Context;)I

    move-result v3

    .line 822
    move/from16 v14, p1

    move/from16 v15, p2

    invoke-virtual {v0, v15, v14}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->getEnrolledFingerprints(II)Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v14

    .line 819
    invoke-interface {v1, v2, v3, v14}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceInjectorStub;->recordFpTypeAndEnrolledCount(Landroid/content/Context;II)V

    .line 824
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v1, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-static {v1}, Lcom/android/server/biometrics/Utils;->isStrongBiometric(I)Z

    move-result v25

    .local v25, "isStrongBiometric":Z
    move/from16 v18, v25

    .line 825
    new-instance v26, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;

    move-object/from16 v1, v26

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLazyDaemon:Ljava/util/function/Supplier;

    iget-object v14, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v14, v14, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    move v15, v14

    .line 829
    const/4 v14, 0x2

    move-object/from16 v27, v1

    move/from16 v1, p12

    invoke-direct {v0, v14, v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v16

    iget-object v14, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object/from16 v17, v14

    iget-object v14, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mTaskStackListener:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$BiometricTaskStackListener;

    move-object/from16 v19, v14

    iget-object v14, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLockoutTracker:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    move-object/from16 v20, v14

    iget-object v14, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    move-object/from16 v21, v14

    iget-object v14, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSidefpsController:Landroid/hardware/fingerprint/ISidefpsController;

    move-object/from16 v22, v14

    iget-object v14, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    move-object/from16 v24, v14

    const/4 v14, 0x0

    move-object/from16 v1, v27

    invoke-direct/range {v1 .. v24}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IJZLjava/lang/String;IZILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;Landroid/hardware/fingerprint/IUdfpsOverlayController;Landroid/hardware/fingerprint/ISidefpsController;ZLandroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V

    move-object/from16 v1, v26

    .line 834
    .local v1, "client":Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintAuthenticationClient;
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 835
    return-void
.end method

.method synthetic lambda$scheduleEnroll$6$com-android-server-biometrics-sensors-fingerprint-hidl-Fingerprint21(ILandroid/os/IBinder;JLandroid/hardware/fingerprint/IFingerprintServiceReceiver;[BLjava/lang/String;I)V
    .registers 29
    .param p1, "userId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "id"    # J
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "hardwareAuthToken"    # [B
    .param p7, "opPackageName"    # Ljava/lang/String;
    .param p8, "enrollReason"    # I

    move-object/from16 v0, p0

    move/from16 v8, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v18, p8

    .line 750
    invoke-direct/range {p0 .. p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 752
    new-instance v19, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;

    move-object/from16 v1, v19

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLazyDaemon:Ljava/util/function/Supplier;

    new-instance v11, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object v7, v11

    move-object/from16 v12, p5

    invoke-direct {v11, v12}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    iget v11, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorId:I

    .line 755
    invoke-static {v11}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v11

    iget-object v13, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v13, v13, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 757
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-direct {v0, v14, v15}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v14

    iget-object v15, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v12, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    move-object/from16 v16, v12

    iget-object v12, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSidefpsController:Landroid/hardware/fingerprint/ISidefpsController;

    move-object/from16 v17, v12

    const/16 v12, 0x3c

    invoke-direct/range {v1 .. v18}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Landroid/hardware/fingerprint/IUdfpsOverlayController;Landroid/hardware/fingerprint/ISidefpsController;I)V

    .line 762
    .local v1, "client":Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintEnrollClient;
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance v3, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$5;

    invoke-direct {v3, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$5;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V

    invoke-virtual {v2, v1, v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 779
    return-void
.end method

.method synthetic lambda$scheduleFingerDetect$8$com-android-server-biometrics-sensors-fingerprint-hidl-Fingerprint21(ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)V
    .registers 25
    .param p1, "userId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "id"    # J
    .param p5, "listener"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .param p6, "opPackageName"    # Ljava/lang/String;
    .param p7, "statsClient"    # I

    .line 794
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 796
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v1, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-static {v1}, Lcom/android/server/biometrics/Utils;->isStrongBiometric(I)Z

    move-result v1

    .line 797
    .local v1, "isStrongBiometric":Z
    new-instance v16, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLazyDaemon:Ljava/util/function/Supplier;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v11, v2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 800
    const/4 v2, 0x2

    move/from16 v15, p7

    invoke-direct {v0, v2, v15}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v14, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    move-object/from16 v2, v16

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move/from16 v9, p1

    move-object/from16 v10, p6

    move v15, v1

    invoke-direct/range {v2 .. v15}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Landroid/hardware/fingerprint/IUdfpsOverlayController;Z)V

    .line 803
    .local v2, "client":Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintDetectClient;
    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iget-object v4, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    invoke-virtual {v3, v2, v4}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 804
    return-void
.end method

.method synthetic lambda$scheduleGenerateChallenge$4$com-android-server-biometrics-sensors-fingerprint-hidl-Fingerprint21(Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
    .registers 16
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p3, "userId"    # I
    .param p4, "opPackageName"    # Ljava/lang/String;

    .line 718
    new-instance v10, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintGenerateChallengeClient;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLazyDaemon:Ljava/util/function/Supplier;

    new-instance v4, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-direct {v4, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v7, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 722
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object v0, v10

    move-object v3, p1

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintGenerateChallengeClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 725
    .local v0, "client":Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintGenerateChallengeClient;
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    .line 726
    return-void
.end method

.method synthetic lambda$scheduleInternalCleanup$14$com-android-server-biometrics-sensors-fingerprint-hidl-Fingerprint21(ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 16
    .param p1, "userId"    # I
    .param p2, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 903
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 905
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v0, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->getEnrolledFingerprints(II)Ljava/util/List;

    move-result-object v0

    .line 907
    .local v0, "enrolledList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    new-instance v12, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintInternalCleanupClient;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 908
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v6, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 910
    const/4 v1, 0x3

    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorId:I

    .line 913
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mAuthenticatorIds:Ljava/util/Map;

    move-object v1, v12

    move v4, p1

    move-object v9, v0

    invoke-direct/range {v1 .. v11}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintInternalCleanupClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/List;Lcom/android/server/biometrics/sensors/BiometricUtils;Ljava/util/Map;)V

    .line 914
    .local v1, "client":Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintInternalCleanupClient;
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v2, v1, p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 915
    return-void
.end method

.method synthetic lambda$scheduleLoadAuthenticatorIds$2$com-android-server-biometrics-sensors-fingerprint-hidl-Fingerprint21()V
    .registers 6

    .line 624
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 628
    .local v1, "user":Landroid/content/pm/UserInfo;
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;

    move-result-object v2

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v2, v3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;->getMiuiGroupId(I)I

    move-result v2

    .line 630
    .local v2, "targetUserId":I
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 631
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleUpdateActiveUserWithoutHandler(IZ)V

    .line 633
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    .end local v2    # "targetUserId":I
    :cond_34
    goto :goto_e

    .line 634
    :cond_35
    return-void
.end method

.method synthetic lambda$scheduleRemove$12$com-android-server-biometrics-sensors-fingerprint-hidl-Fingerprint21(ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
    .registers 22
    .param p1, "userId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p4, "fingerId"    # I
    .param p5, "opPackageName"    # Ljava/lang/String;

    .line 867
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 869
    new-instance v14, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintRemovalClient;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLazyDaemon:Ljava/util/function/Supplier;

    new-instance v5, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object/from16 v15, p3

    invoke-direct {v5, v15}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    iget v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorId:I

    .line 871
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v9

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v10, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 873
    const/4 v1, 0x4

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v13, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mAuthenticatorIds:Ljava/util/Map;

    move-object v1, v14

    move-object/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p1

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v13}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintRemovalClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;)V

    .line 876
    .local v1, "client":Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintRemovalClient;
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 877
    return-void
.end method

.method synthetic lambda$scheduleRemoveAll$13$com-android-server-biometrics-sensors-fingerprint-hidl-Fingerprint21(ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
    .registers 21
    .param p1, "userId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p4, "opPackageName"    # Ljava/lang/String;

    .line 885
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 888
    new-instance v14, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintRemovalClient;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLazyDaemon:Ljava/util/function/Supplier;

    new-instance v5, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object/from16 v15, p3

    invoke-direct {v5, v15}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;)V

    iget v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorId:I

    .line 891
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/fingerprint/FingerprintUtils;

    move-result-object v9

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v10, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 893
    const/4 v1, 0x4

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v13, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mAuthenticatorIds:Ljava/util/Map;

    const/4 v6, 0x0

    move-object v1, v14

    move-object/from16 v4, p2

    move/from16 v7, p1

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v13}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintRemovalClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;)V

    .line 896
    .local v1, "client":Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintRemovalClient;
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 897
    return-void
.end method

.method synthetic lambda$scheduleResetLockout$3$com-android-server-biometrics-sensors-fingerprint-hidl-Fingerprint21(II)V
    .registers 12
    .param p1, "userId"    # I
    .param p2, "sensorId"    # I

    .line 705
    new-instance v8, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintResetLockoutClient;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    .line 706
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 707
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLockoutTracker:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    move-object v0, v8

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintResetLockoutClient;-><init>(Landroid/content/Context;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;)V

    .line 710
    .local v0, "client":Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintResetLockoutClient;
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    .line 711
    return-void
.end method

.method synthetic lambda$scheduleRevokeChallenge$5$com-android-server-biometrics-sensors-fingerprint-hidl-Fingerprint21(Landroid/os/IBinder;ILjava/lang/String;)V
    .registers 14
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;

    .line 733
    new-instance v9, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintRevokeChallengeClient;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mLazyDaemon:Ljava/util/function/Supplier;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v6, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    .line 736
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object v0, v9

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintRevokeChallengeClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 739
    .local v0, "client":Lcom/android/server/biometrics/sensors/fingerprint/hidl/FingerprintRevokeChallengeClient;
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    .line 740
    return-void
.end method

.method synthetic lambda$serviceDied$1$com-android-server-biometrics-sensors-fingerprint-hidl-Fingerprint21()V
    .registers 6

    .line 535
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSensorProperties:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v0, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v0

    .line 536
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementHALDeathCount()V

    .line 537
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 538
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mCurrentUserId:I

    .line 540
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 541
    .local v0, "client":Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    if-eqz v1, :cond_42

    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending ERROR_HW_UNAVAILABLE for client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Fingerprint21"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    .line 544
    .local v1, "errorConsumer":Lcom/android/server/biometrics/sensors/ErrorConsumer;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    .line 547
    const/16 v2, 0x94

    const/4 v4, -0x1

    invoke-static {v2, v3, v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 553
    .end local v1    # "errorConsumer":Lcom/android/server/biometrics/sensors/ErrorConsumer;
    :cond_42
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->recordCrashState()V

    .line 554
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->reset()V

    .line 555
    return-void
.end method

.method synthetic lambda$startPreparedClient$10$com-android-server-biometrics-sensors-fingerprint-hidl-Fingerprint21(I)V
    .registers 3
    .param p1, "cookie"    # I

    .line 853
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->startPreparedClient(I)V

    return-void
.end method

.method public onPointerDown(JIIIFF)V
    .registers 10
    .param p1, "requestId"    # J
    .param p3, "sensorId"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "minor"    # F
    .param p7, "major"    # F

    .line 978
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda5;

    invoke-direct {v1, p4, p5, p6, p7}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda5;-><init>(IIFF)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClientIfMatches(JLjava/util/function/Consumer;)V

    .line 985
    return-void
.end method

.method public onPointerUp(JI)V
    .registers 6
    .param p1, "requestId"    # J
    .param p3, "sensorId"    # I

    .line 989
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClientIfMatches(JLjava/util/function/Consumer;)V

    .line 996
    return-void
.end method

.method public onUiReady(JI)V
    .registers 6
    .param p1, "requestId"    # J
    .param p3, "sensorId"    # I

    .line 1000
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClientIfMatches(JLjava/util/function/Consumer;)V

    .line 1007
    return-void
.end method

.method public rename(IIILjava/lang/String;)V
    .registers 8
    .param p1, "sensorId"    # I
    .param p2, "fingerId"    # I
    .param p3, "userId"    # I
    .param p4, "name"    # Ljava/lang/String;

    .line 939
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;->getMiuiGroupId(I)I

    move-result v0

    .line 941
    .local v0, "groupId":I
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0, v0, p2, p4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 945
    return-void
.end method

.method public scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;ZIZ)J
    .registers 29
    .param p1, "sensorId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "operationId"    # J
    .param p5, "userId"    # I
    .param p6, "cookie"    # I
    .param p7, "listener"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .param p8, "opPackageName"    # Ljava/lang/String;
    .param p9, "restricted"    # Z
    .param p10, "statsClient"    # I
    .param p11, "allowBackgroundAuthentication"    # Z

    .line 843
    move-object/from16 v14, p0

    iget-object v0, v14, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v15

    .line 845
    .local v15, "id":J
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-wide v9, v15

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;JZIZ)V

    .line 848
    return-wide v15
.end method

.method public scheduleAuthenticate(ILandroid/os/IBinder;JIILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;JZIZ)V
    .registers 31
    .param p1, "sensorId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "operationId"    # J
    .param p5, "userId"    # I
    .param p6, "cookie"    # I
    .param p7, "listener"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .param p8, "opPackageName"    # Ljava/lang/String;
    .param p9, "requestId"    # J
    .param p11, "restricted"    # Z
    .param p12, "statsClient"    # I
    .param p13, "allowBackgroundAuthentication"    # Z

    .line 814
    move-object/from16 v15, p0

    iget-object v14, v15, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda15;

    move-object v0, v13

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p9

    move-object/from16 v7, p7

    move-wide/from16 v8, p3

    move/from16 v10, p11

    move-object/from16 v11, p8

    move/from16 v12, p6

    move-object v15, v13

    move/from16 v13, p12

    move-object/from16 v16, v14

    move/from16 v14, p13

    invoke-direct/range {v0 .. v14}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;IILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLjava/lang/String;IIZ)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 836
    return-void
.end method

.method public scheduleEnroll(ILandroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;I)J
    .registers 23
    .param p1, "sensorId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "hardwareAuthToken"    # [B
    .param p4, "userId"    # I
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "opPackageName"    # Ljava/lang/String;
    .param p7, "enrollReason"    # I

    .line 748
    move-object v10, p0

    iget-object v0, v10, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v11

    .line 749
    .local v11, "id":J
    iget-object v13, v10, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda2;

    move-object v0, v14

    move-object v1, p0

    move/from16 v2, p4

    move-object/from16 v3, p2

    move-wide v4, v11

    move-object/from16 v6, p5

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;ILandroid/os/IBinder;JLandroid/hardware/fingerprint/IFingerprintServiceReceiver;[BLjava/lang/String;I)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 780
    return-wide v11
.end method

.method public scheduleFingerDetect(ILandroid/os/IBinder;ILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)J
    .registers 21
    .param p1, "sensorId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "userId"    # I
    .param p4, "listener"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;
    .param p5, "opPackageName"    # Ljava/lang/String;
    .param p6, "statsClient"    # I

    .line 792
    move-object v9, p0

    iget-object v0, v9, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v10

    .line 793
    .local v10, "id":J
    iget-object v12, v9, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda9;

    move-object v0, v13

    move-object v1, p0

    move/from16 v2, p3

    move-object/from16 v3, p2

    move-wide v4, v10

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;ILandroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;I)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 806
    return-wide v10
.end method

.method public scheduleGenerateChallenge(IILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V
    .registers 14
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p5, "opPackageName"    # Ljava/lang/String;

    .line 717
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda20;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move v5, p2

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 727
    return-void
.end method

.method public scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 8
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "callback"    # Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 921
    new-instance v0, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    invoke-direct {p0, p2, v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->scheduleInternalCleanup(ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 923
    return-void
.end method

.method public scheduleInvalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V
    .registers 7
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "callback"    # Landroid/hardware/biometrics/IInvalidationCallback;

    .line 1098
    :try_start_0
    invoke-interface {p3}, Landroid/hardware/biometrics/IInvalidationCallback;->onCompleted()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 1101
    goto :goto_c

    .line 1099
    :catch_4
    move-exception v0

    .line 1100
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Fingerprint21"

    const-string v2, "Failed to complete InvalidateAuthenticatorId"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public scheduleRemove(ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IILjava/lang/String;)V
    .registers 16
    .param p1, "sensorId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p4, "fingerId"    # I
    .param p5, "userId"    # I
    .param p6, "opPackageName"    # Ljava/lang/String;

    .line 866
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda11;

    move-object v1, v8

    move-object v2, p0

    move v3, p5

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 878
    return-void
.end method

.method public scheduleRemoveAll(ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
    .registers 14
    .param p1, "sensorId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p4, "userId"    # I
    .param p5, "opPackageName"    # Ljava/lang/String;

    .line 884
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda10;

    move-object v1, v7

    move-object v2, p0

    move v3, p4

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;ILandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 898
    return-void
.end method

.method public scheduleResetLockout(II[B)V
    .registers 6
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "hardwareAuthToken"    # [B

    .line 704
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 712
    return-void
.end method

.method public scheduleRevokeChallenge(IILandroid/os/IBinder;Ljava/lang/String;J)V
    .registers 9
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "opPackageName"    # Ljava/lang/String;
    .param p5, "challenge"    # J

    .line 732
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p3, p2, p4}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;Landroid/os/IBinder;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 741
    return-void
.end method

.method public serviceDied(J)V
    .registers 5
    .param p1, "cookie"    # J

    .line 533
    const-string v0, "Fingerprint21"

    const-string v1, "HAL died"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 556
    return-void
.end method

.method public setSidefpsController(Landroid/hardware/fingerprint/ISidefpsController;)V
    .registers 2
    .param p1, "controller"    # Landroid/hardware/fingerprint/ISidefpsController;

    .line 1016
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mSidefpsController:Landroid/hardware/fingerprint/ISidefpsController;

    .line 1017
    return-void
.end method

.method setTestHalEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 1146
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mTestHalEnabled:Z

    .line 1147
    return-void
.end method

.method public setUdfpsOverlayController(Landroid/hardware/fingerprint/IUdfpsOverlayController;)V
    .registers 2
    .param p1, "controller"    # Landroid/hardware/fingerprint/IUdfpsOverlayController;

    .line 1011
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mUdfpsOverlayController:Landroid/hardware/fingerprint/IUdfpsOverlayController;

    .line 1012
    return-void
.end method

.method public startPreparedClient(II)V
    .registers 5
    .param p1, "sensorId"    # I
    .param p2, "cookie"    # I

    .line 853
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 854
    return-void
.end method
