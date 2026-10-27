.class public Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;
.super Ljava/lang/Object;
.source "SenseProvider.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/face/ServiceProvider;


# static fields
.field public static sSystemClock:Ljava/time/Clock;


# instance fields
.field public mAuthenticationStatsCollector:Lcom/android/server/biometrics/AuthenticationStatsCollector;

.field public final mAuthenticatorIds:Ljava/util/Map;

.field public final mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

.field public final mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

.field public mGeneratedChallengeCache:Lcom/android/server/biometrics/sensors/face/sense/FaceGenerateChallengeClient;

.field public final mGeneratedChallengeCount:Ljava/util/List;

.field public final mHalResultController:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;

.field public final mHandler:Landroid/os/Handler;

.field public mIsBinding:Z

.field public final mLazyDaemon:Ljava/util/function/Supplier;

.field public final mLockoutTracker:Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;

.field public final mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field public final mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

.field public final mSensorId:I

.field public final mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

.field public mServices:Landroid/util/SparseArray;

.field public mTestHalEnabled:Z

.field public final mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

.field public final mUserSwitchObserver:Landroid/app/UserSwitchObserver;


# direct methods
.method public static synthetic $r8$lambda$45juBncq7FiFWaLdxdyrwaWm4Zc(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;Landroid/hardware/face/FaceAuthenticateOptions;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/os/IBinder;JJZIIZ)V
    .registers 12

    .line 0
    invoke-virtual/range {p0 .. p11}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->lambda$scheduleAuthenticate$7(Landroid/hardware/face/FaceAuthenticateOptions;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/os/IBinder;JJZIIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$4eqSy108-uYHCIwc--Eh7qAaIsU(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$4gDe2sUHWraHZNG248kmcu85my8(JLjava/lang/Long;)Z
    .registers 5

    .line 469
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr p0, v0

    const-wide/32 v0, 0x927c0

    cmp-long p0, p0, v0

    if-lez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$931NNrfRgg7SD75LqSLNTTSh2xg(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->lambda$startPreparedClient$15(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$FMwCKq-EyMJ1EhbSafQkAzkXqQQ(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;II[B)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->lambda$scheduleResetLockout$11(II[B)V

    return-void
.end method

.method public static synthetic $r8$lambda$IKxN6Dm2pYv_DCenYh4d4zBsUsU(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;Landroid/hardware/face/IFaceServiceReceiver;ILandroid/os/IBinder;ILjava/lang/String;)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->lambda$scheduleRemove$9(Landroid/hardware/face/IFaceServiceReceiver;ILandroid/os/IBinder;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L2oPTjfkuqbi8eKoWgpUFthclGA(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;Lcom/android/server/biometrics/AuthenticationStatsCollector;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->lambda$new$1(Lcom/android/server/biometrics/AuthenticationStatsCollector;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MvtlNnFdJWxTuiInJpP-W3Sclfc(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;Landroid/hardware/face/IFaceServiceReceiver;ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->lambda$scheduleRemoveAll$10(Landroid/hardware/face/IFaceServiceReceiver;ILandroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RePPxO8Bflurqa0wGhHwUOCFdTE(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;Landroid/hardware/face/IFaceServiceReceiver;IILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->lambda$scheduleGenerateChallenge$3(Landroid/hardware/face/IFaceServiceReceiver;IILandroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UNpHkPGppZuUI9q8O2P3AJU7LDU(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IILandroid/os/IBinder;Ljava/lang/String;I)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->lambda$scheduleGetFeature$13(Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IILandroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$XXfbT8p5eNcqj5pvGgKbp0zoK6I(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;Landroid/os/IBinder;J)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->lambda$cancelAuthentication$8(Landroid/os/IBinder;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$_Wgr0zNfweccEQZLuiIe8-D9Hj4(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;Landroid/os/IBinder;ILjava/lang/String;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->lambda$scheduleRevokeChallenge$4(Landroid/os/IBinder;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bxiZufsrL-d-_9R1YsdvJPnGOVA(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;)Lvendor/aospa/biometrics/face/ISenseService;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->getDaemon()Lvendor/aospa/biometrics/face/ISenseService;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jR2_74n81iFLmQw75-g5yJ7cBpg(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;Landroid/hardware/face/IFaceServiceReceiver;ILandroid/os/IBinder;[BLjava/lang/String;J[ILandroid/view/Surface;)V
    .registers 10

    .line 0
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->lambda$scheduleEnroll$5(Landroid/hardware/face/IFaceServiceReceiver;ILandroid/os/IBinder;[BLjava/lang/String;J[ILandroid/view/Surface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kBSHHv26uKsKoPJSwixkv86f5Wo(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;Landroid/os/IBinder;J)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->lambda$cancelEnrollment$6(Landroid/os/IBinder;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$nvIhbCJWidqjuCGN8RH7PWR1zys(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->lambda$scheduleInternalCleanup$14(ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s1OdY1uIYIMz9Y0B2jB3bjcJC6M(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;IZ[B)V
    .registers 9

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->lambda$scheduleSetFeature$12(IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;IZ[B)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBiometricStateCallback(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;)Lcom/android/server/biometrics/sensors/BiometricStateCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentUserId(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mCurrentUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHalResultController(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;)Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mHalResultController:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmScheduler(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;)Lcom/android/server/biometrics/sensors/BiometricScheduler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSensorId(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mSensorId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentUserId(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mCurrentUserId:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsBinding(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mIsBinding:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetDaemon(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;)Lvendor/aospa/biometrics/face/ISenseService;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->getDaemon()Lvendor/aospa/biometrics/face/ISenseService;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mscheduleInternalCleanup(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->scheduleInternalCleanup(ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleUpdateActiveUserWithoutHandler(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->scheduleUpdateActiveUserWithoutHandler(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 116
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v0

    sput-object v0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->sSystemClock:Ljava/time/Clock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Landroid/hardware/face/FaceSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;)V
    .registers 11

    .line 392
    new-instance v5, Lcom/android/server/biometrics/sensors/BiometricScheduler;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {v5, v0, v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;-><init>(ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Landroid/hardware/face/FaceSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/BiometricScheduler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/BiometricStateCallback;Landroid/hardware/face/FaceSensorPropertiesInternal;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;Lcom/android/server/biometrics/sensors/BiometricScheduler;)V
    .registers 15

    .line 353
    const-string v0, "SenseProvider"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    const/16 v1, -0x2710

    .line 137
    iput v1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mCurrentUserId:I

    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mGeneratedChallengeCount:Ljava/util/List;

    const/4 v1, 0x0

    .line 140
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mGeneratedChallengeCache:Lcom/android/server/biometrics/sensors/face/sense/FaceGenerateChallengeClient;

    .line 142
    new-instance v1, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$1;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$1;-><init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;)V

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mUserSwitchObserver:Landroid/app/UserSwitchObserver;

    .line 354
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mServices:Landroid/util/SparseArray;

    const/4 v2, 0x0

    .line 355
    iput-boolean v2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mIsBinding:Z

    .line 356
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 357
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mContext:Landroid/content/Context;

    .line 358
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    .line 359
    iget p2, p3, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    iput p2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mSensorId:I

    .line 360
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 361
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v5, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mHandler:Landroid/os/Handler;

    .line 362
    invoke-static {p1}, Lcom/android/server/biometrics/log/BiometricContext;->getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 363
    new-instance p2, Lcom/android/server/biometrics/sensors/face/UsageStats;

    invoke-direct {p2, p1}, Lcom/android/server/biometrics/sensors/face/UsageStats;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    .line 364
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mAuthenticatorIds:Ljava/util/Map;

    .line 365
    new-instance p2, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda11;

    invoke-direct {p2, p0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;)V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 366
    new-instance v7, Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;

    invoke-direct {v7}, Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;-><init>()V

    iput-object v7, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mLockoutTracker:Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;

    .line 367
    new-instance v2, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;

    iget v3, p3, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    move-object v4, p1

    move-object v8, p4

    move-object v6, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;-><init>(ILandroid/content/Context;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/BiometricScheduler;Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;)V

    iput-object v2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mHalResultController:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;

    .line 369
    new-instance p1, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda12;

    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;)V

    invoke-virtual {v2, p1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;->setCallback(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController$Callback;)V

    .line 373
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mCurrentUserId:I

    .line 375
    new-instance p1, Lcom/android/server/biometrics/AuthenticationStatsBroadcastReceiver;

    new-instance p2, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda13;

    invoke-direct {p2, p0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;)V

    const/4 p0, 0x4

    invoke-direct {p1, v4, p0, p2}, Lcom/android/server/biometrics/AuthenticationStatsBroadcastReceiver;-><init>(Landroid/content/Context;ILjava/util/function/Consumer;)V

    .line 385
    :try_start_8b
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0, v1, v0}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_8b .. :try_end_92} :catch_93

    return-void

    .line 387
    :catch_93
    const-string p0, "Unable to register user switch observer"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public bindService(I)Z
    .registers 7

    .line 1065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindService "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SenseProvider"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->isServiceEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_23

    .line 1067
    const-string p0, "Service disabled"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1069
    :cond_23
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mIsBinding:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_2e

    .line 1070
    const-string p0, "Service is binding"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2e
    const/16 v0, -0x2710

    if-eq p1, v0, :cond_60

    .line 1073
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->getService(I)Lvendor/aospa/biometrics/face/ISenseService;

    move-result-object v0

    if-nez v0, :cond_60

    .line 1075
    :try_start_38
    new-instance v0, Landroid/content/Intent;

    const-string v1, "co.aospa.sense.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1076
    const-string v1, "co.aospa.sense"

    const-string v4, "co.aospa.sense.SenseService"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1077
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection;

    invoke-direct {v4, p0, p1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$SenseServiceConnection;-><init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;I)V

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {v1, v0, v4, v3, p1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 1079
    iput-boolean v3, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mIsBinding:Z
    :try_end_59
    .catch Ljava/lang/SecurityException; {:try_start_38 .. :try_end_59} :catch_5a

    return p1

    :catch_5a
    move-exception p0

    goto :goto_5d

    :cond_5c
    return p1

    .line 1083
    :goto_5d
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_60
    return v2
.end method

.method public cancelAuthentication(ILandroid/os/IBinder;J)V
    .registers 6

    .line 681
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;Landroid/os/IBinder;J)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancelEnrollment(ILandroid/os/IBinder;J)V
    .registers 6

    .line 618
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;Landroid/os/IBinder;J)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancelFaceDetect(ILandroid/os/IBinder;J)V
    .registers 5

    .line 631
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Face detect not supported by IBiometricsFace@1.0. Did youforget to check the supportsFaceDetection flag?"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public containsSensor(I)Z
    .registers 2

    .line 411
    iget p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mSensorId:I

    if-ne p0, p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;
    .registers 10

    .line 1091
    new-instance v0, Lcom/android/server/biometrics/log/BiometricLogger;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mAuthenticationStatsCollector:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/log/BiometricLogger;-><init>(Landroid/content/Context;Landroid/os/Handler;IIILcom/android/server/biometrics/AuthenticationStatsCollector;)V

    return-object v0
.end method

.method public createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
    .registers 10

    .line 1114
    new-instance v0, Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mSensorId:I

    iget-object v5, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mHalResultController:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;

    move-object v4, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/face/sense/BiometricTestSessionImpl;-><init>(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;)V

    return-object v0
.end method

.method public final decrementChallengeCount()I
    .registers 5

    .line 466
    sget-object v0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 469
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mGeneratedChallengeCount:Ljava/util/List;

    new-instance v3, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda16;

    invoke-direct {v3, v0, v1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda16;-><init>(J)V

    invoke-interface {v2, v3}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 470
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mGeneratedChallengeCount:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 471
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mGeneratedChallengeCount:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 473
    :cond_1e
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mGeneratedChallengeCount:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public dumpHal(ILjava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 4

    .line 0
    return-void
.end method

.method public dumpInternal(ILjava/io/PrintWriter;)V
    .registers 11

    .line 904
    const-string p1, "SenseProvider"

    iget v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mSensorId:I

    .line 905
    invoke-static {v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v0

    .line 907
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 909
    :try_start_d
    const-string/jumbo v2, "service"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 911
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 912
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ac

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 913
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 914
    iget v5, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mSensorId:I

    invoke-static {v5}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mContext:Landroid/content/Context;

    .line 915
    invoke-virtual {v5, v6, v4}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 916
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 917
    const-string v7, "id"

    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 918
    const-string v7, "count"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 919
    const-string v5, "accept"

    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcceptForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 920
    const-string/jumbo v5, "reject"

    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getRejectForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 921
    const-string v5, "acquire"

    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcquireForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 922
    const-string/jumbo v5, "lockout"

    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getTimedLockoutForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 923
    const-string/jumbo v5, "permanentLockout"

    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getPermanentLockoutForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 926
    const-string v5, "acceptCrypto"

    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcceptCryptoForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 927
    const-string/jumbo v5, "rejectCrypto"

    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getRejectCryptoForUser(I)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 928
    const-string v5, "acquireCrypto"

    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getAcquireCryptoForUser(I)I

    move-result v4

    invoke-virtual {v6, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 929
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_26

    :catch_aa
    move-exception v2

    goto :goto_b3

    .line 932
    :cond_ac
    const-string/jumbo v3, "prints"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b2
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_b2} :catch_aa

    goto :goto_b8

    .line 934
    :goto_b3
    const-string v3, "dump formatting failure"

    invoke-static {p1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 936
    :goto_b8
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 937
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HAL deaths since last reboot: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getHALDeathCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 939
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p1, p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->dump(Ljava/io/PrintWriter;)V

    .line 940
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/face/UsageStats;->print(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dumpProtoMetrics(ILjava/io/FileDescriptor;)V
    .registers 3

    .line 0
    return-void
.end method

.method public dumpProtoState(ILandroid/util/proto/ProtoOutputStream;Z)V
    .registers 12

    const-wide v0, 0x20b00000001L

    .line 872
    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 874
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget p1, p1, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    const-wide v2, 0x10500000001L

    invoke-virtual {p2, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10e00000002L

    const/4 p1, 0x2

    .line 875
    invoke-virtual {p2, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 876
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget p1, p1, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 877
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->getCurrentStrength(I)I

    move-result p1

    const-wide v4, 0x10500000003L

    .line 876
    invoke-virtual {p2, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 878
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p1, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->dumpProtoState(Z)[B

    move-result-object p1

    const-wide v4, 0x10b00000004L

    invoke-virtual {p2, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 880
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_86

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/UserInfo;

    .line 881
    invoke-virtual {p3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    const-wide v4, 0x20b00000005L

    .line 883
    invoke-virtual {p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 884
    invoke-virtual {p2, v2, v3, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 885
    iget v6, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mSensorId:I

    invoke-static {v6}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mContext:Landroid/content/Context;

    .line 886
    invoke-virtual {v6, v7, p3}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const-wide v6, 0x10500000002L

    .line 885
    invoke-virtual {p2, v6, v7, p3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 887
    invoke-virtual {p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_4a

    .line 890
    :cond_86
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget-boolean p1, p1, Landroid/hardware/face/FaceSensorPropertiesInternal;->resetLockoutRequiresHardwareAuthToken:Z

    const-wide v2, 0x10800000006L

    invoke-virtual {p2, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 892
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget-boolean p0, p0, Landroid/hardware/face/FaceSensorPropertiesInternal;->resetLockoutRequiresChallenge:Z

    const-wide v2, 0x10800000007L

    invoke-virtual {p2, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 895
    invoke-virtual {p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getAuthenticatorId(II)J
    .registers 5

    .line 447
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public final declared-synchronized getDaemon()Lvendor/aospa/biometrics/face/ISenseService;
    .registers 4

    monitor-enter p0

    .line 396
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mTestHalEnabled:Z

    if-eqz v0, :cond_17

    .line 397
    new-instance v0, Lcom/android/server/biometrics/sensors/face/sense/TestHal;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mSensorId:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/sense/TestHal;-><init>(Landroid/content/Context;I)V

    .line 398
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mHalResultController:Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$HalResultController;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/face/sense/TestHal;->setCallback(Lvendor/aospa/biometrics/face/ISenseServiceReceiver;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 399
    monitor-exit p0

    return-object v0

    :catchall_15
    move-exception v0

    goto :goto_26

    .line 402
    :cond_17
    :try_start_17
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mCurrentUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->getService(I)Lvendor/aospa/biometrics/face/ISenseService;

    move-result-object v0

    if-nez v0, :cond_24

    .line 404
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mCurrentUserId:I

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->bindService(I)Z
    :try_end_24
    .catchall {:try_start_17 .. :try_end_24} :catchall_15

    .line 406
    :cond_24
    monitor-exit p0

    return-object v0

    :goto_26
    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_15

    throw v0
.end method

.method public getEnrolledFaces(II)Ljava/util/List;
    .registers 3

    .line 431
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mSensorId:I

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, p2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLockoutModeForUser(II)I
    .registers 3

    .line 442
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mLockoutTracker:Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;->getLockoutModeForUser(I)I

    move-result p0

    return p0
.end method

.method public bridge synthetic getSensorProperties(I)Landroid/hardware/biometrics/SensorPropertiesInternal;
    .registers 2

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->getSensorProperties(I)Landroid/hardware/face/FaceSensorPropertiesInternal;

    move-result-object p0

    return-object p0
.end method

.method public getSensorProperties(I)Landroid/hardware/face/FaceSensorPropertiesInternal;
    .registers 2

    .line 425
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    return-object p0
.end method

.method public getSensorProperties()Ljava/util/List;
    .registers 2

    .line 417
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 418
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mSensorProperties:Landroid/hardware/face/FaceSensorPropertiesInternal;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final getService(I)Lvendor/aospa/biometrics/face/ISenseService;
    .registers 3

    const/16 v0, -0x2710

    if-ne p1, v0, :cond_b

    .line 1059
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 1061
    :cond_b
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mServices:Landroid/util/SparseArray;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mCurrentUserId:I

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvendor/aospa/biometrics/face/ISenseService;

    return-object p0
.end method

.method public hasEnrollments(II)Z
    .registers 3

    .line 436
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->getEnrolledFaces(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final incrementChallengeCount()V
    .registers 3

    .line 462
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mGeneratedChallengeCount:Ljava/util/List;

    sget-object v0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final isGeneratedChallengeCacheValid()Z
    .registers 5

    .line 456
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mGeneratedChallengeCache:Lcom/android/server/biometrics/sensors/face/sense/FaceGenerateChallengeClient;

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->sSystemClock:Ljava/time/Clock;

    .line 457
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mGeneratedChallengeCache:Lcom/android/server/biometrics/sensors/face/sense/FaceGenerateChallengeClient;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/sense/FaceGenerateChallengeClient;->getCreatedAt()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long p0, v0, v2

    if-gez p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public isHardwareDetected(I)Z
    .registers 2

    .line 452
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->getDaemon()Lvendor/aospa/biometrics/face/ISenseService;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final isServiceEnabled()Z
    .registers 4

    .line 1047
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1048
    new-instance v0, Landroid/content/Intent;

    const-string v1, "co.aospa.sense.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1049
    const-string v1, "co.aospa.sense"

    const-string v2, "co.aospa.sense.SenseService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x20000

    .line 1050
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 1051
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$cancelAuthentication$8(Landroid/os/IBinder;J)V
    .registers 4

    .line 681
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->cancelAuthenticationOrDetection(Landroid/os/IBinder;J)V

    return-void
.end method

.method public final synthetic lambda$cancelEnrollment$6(Landroid/os/IBinder;J)V
    .registers 4

    .line 618
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->cancelEnrollment(Landroid/os/IBinder;J)V

    return-void
.end method

.method public final synthetic lambda$new$0()V
    .registers 2

    const/4 v0, 0x0

    .line 370
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mDaemon:Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;

    const/16 v0, -0x2710

    .line 371
    iput v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mCurrentUserId:I

    return-void
.end method

.method public final synthetic lambda$new$1(Lcom/android/server/biometrics/AuthenticationStatsCollector;)V
    .registers 4

    .line 380
    const-string v0, "SenseProvider"

    const-string v1, "Initializing AuthenticationStatsCollector"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mAuthenticationStatsCollector:Lcom/android/server/biometrics/AuthenticationStatsCollector;

    return-void
.end method

.method public final synthetic lambda$scheduleAuthenticate$7(Landroid/hardware/face/FaceAuthenticateOptions;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/os/IBinder;JJZIIZ)V
    .registers 35

    move-object/from16 v0, p0

    .line 641
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/face/FaceAuthenticateOptions;->getUserId()I

    move-result v1

    .line 642
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->getDaemon()Lvendor/aospa/biometrics/face/ISenseService;

    move-result-object v2

    if-nez v2, :cond_20

    .line 643
    iget v1, v0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->bindService(I)Z

    const/16 v0, 0x3f0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object/from16 v9, p2

    .line 645
    :try_start_17
    invoke-virtual {v9, v0, v2, v1, v2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception v0

    .line 648
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void

    :cond_20
    move-object/from16 v9, p2

    .line 652
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 654
    iget v1, v0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mSensorId:I

    invoke-static {v1}, Lcom/android/server/biometrics/Utils;->isStrongBiometric(I)Z

    move-result v18

    .line 655
    new-instance v3, Lcom/android/server/biometrics/sensors/face/sense/FaceAuthenticationClient;

    iget-object v4, v0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mLazyDaemon:Ljava/util/function/Supplier;

    const/4 v1, 0x2

    move/from16 v2, p10

    .line 658
    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v16

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mLockoutTracker:Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;

    iget-object v6, v0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mUsageStats:Lcom/android/server/biometrics/sensors/face/UsageStats;

    iget v7, v0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mSensorId:I

    .line 661
    invoke-static {v7}, Lcom/android/server/biometrics/Utils;->getCurrentStrength(I)I

    move-result v22

    const/4 v15, 0x0

    move-object/from16 v13, p1

    move-wide/from16 v7, p4

    move-wide/from16 v10, p6

    move/from16 v12, p8

    move/from16 v14, p9

    move/from16 v21, p11

    move-object/from16 v17, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v6

    move-object/from16 v6, p3

    invoke-direct/range {v3 .. v22}, Lcom/android/server/biometrics/sensors/face/sense/FaceAuthenticationClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;JLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLandroid/hardware/face/FaceAuthenticateOptions;IZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLcom/android/server/biometrics/sensors/LockoutTracker;Lcom/android/server/biometrics/sensors/face/UsageStats;ZI)V

    .line 662
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0, v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    return-void
.end method

.method public final synthetic lambda$scheduleEnroll$5(Landroid/hardware/face/IFaceServiceReceiver;ILandroid/os/IBinder;[BLjava/lang/String;J[ILandroid/view/Surface;)V
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 567
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->getDaemon()Lvendor/aospa/biometrics/face/ISenseService;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1a

    .line 568
    iget v2, v0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mCurrentUserId:I

    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->bindService(I)Z

    const/4 v0, 0x2

    .line 570
    :try_start_11
    invoke-interface {v1, v0, v3}, Landroid/hardware/face/IFaceServiceReceiver;->onError(II)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception v0

    .line 573
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void

    :cond_1a
    move/from16 v6, p2

    .line 577
    invoke-virtual {v0, v6}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 579
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->cancelFaceReEnrollNotification(Landroid/content/Context;)V

    .line 581
    new-instance v2, Lcom/android/server/biometrics/sensors/face/sense/FaceEnrollClient;

    move-object v4, v2

    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mLazyDaemon:Ljava/util/function/Supplier;

    move-object v7, v5

    new-instance v5, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-direct {v5, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    iget v1, v0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mSensorId:I

    .line 583
    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v11

    iget v15, v0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mSensorId:I

    const/4 v1, 0x1

    .line 585
    invoke-virtual {v0, v1, v3}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v16

    iget-object v1, v0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v3, v0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mContext:Landroid/content/Context;

    .line 588
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x10e00b7

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    const/16 v13, 0x4b

    move-object/from16 v8, p5

    move-wide/from16 v9, p6

    move-object/from16 v12, p8

    move-object/from16 v14, p9

    move-object/from16 v17, v1

    move-object v1, v4

    move-object v3, v7

    move-object/from16 v4, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v18}, Lcom/android/server/biometrics/sensors/face/sense/FaceEnrollClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;I[BLjava/lang/String;JLcom/android/server/biometrics/sensors/BiometricUtils;[IILandroid/view/Surface;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;I)V

    .line 591
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance v3, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$4;

    invoke-direct {v3, v0, v1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$4;-><init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;Lcom/android/server/biometrics/sensors/face/sense/FaceEnrollClient;)V

    invoke-virtual {v2, v1, v3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public final synthetic lambda$scheduleGenerateChallenge$3(Landroid/hardware/face/IFaceServiceReceiver;IILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 18

    .line 484
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->getDaemon()Lvendor/aospa/biometrics/face/ISenseService;

    move-result-object v0

    if-nez v0, :cond_17

    .line 485
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mCurrentUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->bindService(I)Z

    const-wide/16 v0, 0x0

    .line 487
    :try_start_d
    invoke-interface {p1, p2, p3, v0, v1}, Landroid/hardware/face/IFaceServiceReceiver;->onChallengeGenerated(IIJ)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception v0

    move-object p0, v0

    .line 490
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void

    .line 494
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->incrementChallengeCount()V

    .line 496
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->isGeneratedChallengeCacheValid()Z

    move-result p2

    if-eqz p2, :cond_2d

    .line 497
    const-string p2, "SenseProvider"

    const-string v0, "Current challenge is cached and will be reused"

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mGeneratedChallengeCache:Lcom/android/server/biometrics/sensors/face/sense/FaceGenerateChallengeClient;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/sense/FaceGenerateChallengeClient;->reuseResult(Landroid/hardware/face/IFaceServiceReceiver;)V

    return-void

    .line 502
    :cond_2d
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 504
    new-instance v0, Lcom/android/server/biometrics/sensors/face/sense/FaceGenerateChallengeClient;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mLazyDaemon:Ljava/util/function/Supplier;

    new-instance v4, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-direct {v4, p1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    iget v7, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mSensorId:I

    const/4 p1, 0x0

    .line 507
    invoke-virtual {p0, p1, p1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    sget-object p1, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->sSystemClock:Ljava/time/Clock;

    .line 509
    invoke-virtual {p1}, Ljava/time/Clock;->millis()J

    move-result-wide v10

    move v5, p3

    move-object/from16 v3, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/face/sense/FaceGenerateChallengeClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;J)V

    .line 510
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mGeneratedChallengeCache:Lcom/android/server/biometrics/sensors/face/sense/FaceGenerateChallengeClient;

    .line 511
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance p2, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$2;

    invoke-direct {p2, p0, v0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$2;-><init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;Lcom/android/server/biometrics/sensors/face/sense/FaceGenerateChallengeClient;)V

    invoke-virtual {p1, v0, p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public final synthetic lambda$scheduleGetFeature$13(Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IILandroid/os/IBinder;Ljava/lang/String;I)V
    .registers 19

    .line 791
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->getDaemon()Lvendor/aospa/biometrics/face/ISenseService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    .line 792
    iget p2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mCurrentUserId:I

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->bindService(I)Z

    if-eqz p1, :cond_1a

    const/16 p0, 0x3f0

    const/4 p2, 0x1

    .line 795
    :try_start_11
    invoke-virtual {p1, p0, v1, p2, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception v0

    move-object p0, v0

    .line 798
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1a
    return-void

    .line 804
    :cond_1b
    invoke-virtual {p0, p2, p3}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->getEnrolledFaces(II)Ljava/util/List;

    move-result-object p2

    .line 805
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 806
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Ignoring getFeature, no templates enrolled for user: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SenseProvider"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 810
    :cond_3c
    invoke-virtual {p0, p3}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 812
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/face/Face;

    invoke-virtual {p2}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v11

    .line 813
    new-instance v0, Lcom/android/server/biometrics/sensors/face/sense/FaceGetFeatureClient;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mLazyDaemon:Ljava/util/function/Supplier;

    iget v7, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mSensorId:I

    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mHandler:Landroid/os/Handler;

    .line 815
    invoke-static {v1, p2}, Lcom/android/server/biometrics/log/BiometricLogger;->ofUnknown(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object v4, p1

    move v5, p3

    move-object/from16 v3, p4

    move-object/from16 v6, p5

    move/from16 v10, p6

    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/face/sense/FaceGetFeatureClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;II)V

    .line 817
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance p2, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$5;

    invoke-direct {p2, p0, v10, v0, p3}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$5;-><init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;ILcom/android/server/biometrics/sensors/face/sense/FaceGetFeatureClient;I)V

    invoke-virtual {p1, v0, p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public final synthetic lambda$scheduleInternalCleanup$14(ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 13

    .line 837
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 839
    new-instance v0, Lcom/android/server/biometrics/sensors/face/sense/FaceInternalCleanupClient;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 840
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mSensorId:I

    const/4 v3, 0x3

    const/4 v6, 0x0

    .line 841
    invoke-virtual {p0, v3, v6}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget v3, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mSensorId:I

    .line 844
    invoke-static {v3}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mAuthenticatorIds:Ljava/util/Map;

    move v3, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/face/sense/FaceInternalCleanupClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/BiometricUtils;Ljava/util/Map;)V

    .line 845
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance v1, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    filled-new-array {p2, p0}, [Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public final synthetic lambda$scheduleRemove$9(Landroid/hardware/face/IFaceServiceReceiver;ILandroid/os/IBinder;ILjava/lang/String;)V
    .registers 20

    .line 688
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->getDaemon()Lvendor/aospa/biometrics/face/ISenseService;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_17

    .line 689
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mCurrentUserId:I

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->bindService(I)Z

    const/4 p0, 0x1

    .line 691
    :try_start_d
    invoke-interface {p1, p0, v2}, Landroid/hardware/face/IFaceServiceReceiver;->onError(II)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception v0

    move-object p0, v0

    .line 694
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void

    :cond_17
    move/from16 v6, p2

    .line 698
    invoke-virtual {p0, v6}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 700
    new-instance v1, Lcom/android/server/biometrics/sensors/face/sense/FaceRemovalClient;

    move-object v3, v1

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mLazyDaemon:Ljava/util/function/Supplier;

    move-object v5, v4

    new-instance v4, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-direct {v4, p1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    iget v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mSensorId:I

    .line 702
    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v8

    iget v9, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mSensorId:I

    const/4 v0, 0x4

    .line 703
    invoke-virtual {p0, v0, v2}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v12, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mAuthenticatorIds:Ljava/util/Map;

    const/4 v13, 0x3

    move-object/from16 v7, p5

    move-object v0, v3

    move-object v2, v5

    move-object/from16 v3, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v13}, Lcom/android/server/biometrics/sensors/face/sense/FaceRemovalClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;I)V

    .line 706
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public final synthetic lambda$scheduleRemoveAll$10(Landroid/hardware/face/IFaceServiceReceiver;ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 19

    .line 714
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->getDaemon()Lvendor/aospa/biometrics/face/ISenseService;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_17

    .line 715
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mCurrentUserId:I

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->bindService(I)Z

    const/4 p0, 0x1

    .line 717
    :try_start_d
    invoke-interface {p1, p0, v2}, Landroid/hardware/face/IFaceServiceReceiver;->onError(II)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception v0

    move-object p0, v0

    .line 720
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void

    :cond_17
    move/from16 v6, p2

    .line 724
    invoke-virtual {p0, v6}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 727
    new-instance v1, Lcom/android/server/biometrics/sensors/face/sense/FaceRemovalClient;

    move-object v3, v1

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mLazyDaemon:Ljava/util/function/Supplier;

    move-object v5, v4

    new-instance v4, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-direct {v4, p1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    iget v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mSensorId:I

    .line 730
    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v8

    iget v9, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mSensorId:I

    const/4 v0, 0x4

    .line 731
    invoke-virtual {p0, v0, v2}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v12, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mAuthenticatorIds:Ljava/util/Map;

    const/4 v13, 0x3

    move-object v2, v5

    const/4 v5, 0x0

    move-object/from16 v7, p4

    move-object v0, v3

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v13}, Lcom/android/server/biometrics/sensors/face/sense/FaceRemovalClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;I)V

    .line 734
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public final synthetic lambda$scheduleResetLockout$11(II[B)V
    .registers 13

    .line 741
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->getDaemon()Lvendor/aospa/biometrics/face/ISenseService;

    move-result-object v0

    if-nez v0, :cond_b

    .line 742
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mCurrentUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->bindService(I)Z

    .line 744
    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->getEnrolledFaces(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 745
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Ignoring lockout reset, no templates enrolled for user: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SenseProvider"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 749
    :cond_2c
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->scheduleUpdateActiveUserWithoutHandler(I)V

    .line 751
    new-instance v0, Lcom/android/server/biometrics/sensors/face/sense/FaceResetLockoutClient;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 752
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mSensorId:I

    const/4 p1, 0x0

    .line 753
    invoke-virtual {p0, p1, p1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move v3, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/biometrics/sensors/face/sense/FaceResetLockoutClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;[B)V

    .line 756
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    invoke-virtual {p1, v0, p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public final synthetic lambda$scheduleRevokeChallenge$4(Landroid/os/IBinder;ILjava/lang/String;)V
    .registers 14

    .line 527
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->getDaemon()Lvendor/aospa/biometrics/face/ISenseService;

    move-result-object v0

    if-nez v0, :cond_c

    .line 528
    iget p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mCurrentUserId:I

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->bindService(I)Z

    return-void

    .line 531
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->decrementChallengeCount()I

    move-result v0

    const-string v1, "SenseProvider"

    if-nez v0, :cond_3d

    .line 538
    const-string/jumbo v0, "scheduleRevokeChallenge executing - no active clients"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 539
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mGeneratedChallengeCache:Lcom/android/server/biometrics/sensors/face/sense/FaceGenerateChallengeClient;

    .line 541
    new-instance v1, Lcom/android/server/biometrics/sensors/face/sense/FaceRevokeChallengeClient;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mLazyDaemon:Ljava/util/function/Supplier;

    iget v7, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mSensorId:I

    const/4 v0, 0x0

    .line 543
    invoke-virtual {p0, v0, v0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/biometrics/sensors/face/sense/FaceRevokeChallengeClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 546
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance p2, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$3;

    invoke-direct {p2, p0, v1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$3;-><init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;Lcom/android/server/biometrics/sensors/face/sense/FaceRevokeChallengeClient;)V

    invoke-virtual {p1, v1, p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void

    .line 533
    :cond_3d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "scheduleRevokeChallenge skipped - challenge still in use: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mGeneratedChallengeCount:Ljava/util/List;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final synthetic lambda$scheduleSetFeature$12(IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;IZ[B)V
    .registers 23

    move/from16 v5, p2

    .line 765
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->getDaemon()Lvendor/aospa/biometrics/face/ISenseService;

    move-result-object v0

    if-nez v0, :cond_e

    .line 766
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mCurrentUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->bindService(I)Z

    return-void

    .line 769
    :cond_e
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->getEnrolledFaces(II)Ljava/util/List;

    move-result-object v0

    .line 770
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 771
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring setFeature, no templates enrolled for user: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SenseProvider"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 775
    :cond_2f
    invoke-virtual {p0, v5}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->scheduleUpdateActiveUserWithoutHandler(I)V

    const/4 v1, 0x0

    .line 777
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/Face;

    invoke-virtual {v0}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v13

    .line 778
    new-instance v0, Lcom/android/server/biometrics/sensors/face/sense/FaceSetFeatureClient;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mLazyDaemon:Ljava/util/function/Supplier;

    new-instance v4, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-object/from16 v3, p4

    invoke-direct {v4, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;-><init>(Landroid/hardware/face/IFaceServiceReceiver;)V

    iget v7, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mSensorId:I

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mHandler:Landroid/os/Handler;

    .line 780
    invoke-static {v3, v6}, Lcom/android/server/biometrics/log/BiometricLogger;->ofUnknown(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    move-object/from16 v3, p3

    move-object/from16 v6, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    invoke-direct/range {v0 .. v13}, Lcom/android/server/biometrics/sensors/face/sense/FaceSetFeatureClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;IZ[BI)V

    .line 783
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public final synthetic lambda$startPreparedClient$15(I)V
    .registers 2

    .line 865
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->startPreparedClient(I)V

    return-void
.end method

.method public scheduleAuthenticate(Landroid/os/IBinder;JILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/hardware/face/FaceAuthenticateOptions;ZIZ)J
    .registers 22

    .line 671
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v7

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    .line 673
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->scheduleAuthenticate(Landroid/os/IBinder;JILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/hardware/face/FaceAuthenticateOptions;JZIZ)V

    return-wide v7
.end method

.method public scheduleAuthenticate(Landroid/os/IBinder;JILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/hardware/face/FaceAuthenticateOptions;JZIZ)V
    .registers 26

    .line 640
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda6;

    move-object v2, p0

    move-object v5, p1

    move-wide/from16 v8, p2

    move/from16 v11, p4

    move-object/from16 v4, p5

    move-object/from16 v3, p6

    move-wide/from16 v6, p7

    move/from16 v10, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-direct/range {v1 .. v13}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;Landroid/hardware/face/FaceAuthenticateOptions;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/os/IBinder;JJZIIZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleEnroll(ILandroid/os/IBinder;[BILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;ZLandroid/hardware/face/FaceEnrollOptions;)J
    .registers 22

    .line 565
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v7

    .line 566
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move v3, p4

    move-object/from16 v2, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;Landroid/hardware/face/IFaceServiceReceiver;ILandroid/os/IBinder;[BLjava/lang/String;J[ILandroid/view/Surface;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-wide v7
.end method

.method public scheduleFaceDetect(Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/hardware/face/FaceAuthenticateOptions;I)J
    .registers 5

    .line 625
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Face detect not supported by IBiometricsFace@1.0. Did youforget to check the supportsFaceDetection flag?"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public scheduleGenerateChallenge(IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 14

    .line 483
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda8;

    move-object v2, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v3, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;Landroid/hardware/face/IFaceServiceReceiver;IILandroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleGetFeature(ILandroid/os/IBinder;IILcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Ljava/lang/String;)V
    .registers 16

    .line 790
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda2;

    move-object v2, p0

    move v4, p1

    move-object v6, p2

    move v5, p3

    move v8, p4

    move-object v3, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;IILandroid/os/IBinder;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 4

    .line 853
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->scheduleInternalCleanup(ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public scheduleInternalCleanup(IILcom/android/server/biometrics/sensors/ClientMonitorCallback;Z)V
    .registers 5

    .line 859
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mBiometricStateCallback:Lcom/android/server/biometrics/sensors/BiometricStateCallback;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->scheduleInternalCleanup(ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public final scheduleInternalCleanup(ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 5

    .line 836
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;ILcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleRemove(ILandroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 14

    .line 687
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda4;

    move-object v1, p0

    move-object v4, p2

    move v5, p3

    move v3, p4

    move-object v2, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;Landroid/hardware/face/IFaceServiceReceiver;ILandroid/os/IBinder;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleRemoveAll(ILandroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 12

    .line 713
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda10;

    move-object v1, p0

    move-object v4, p2

    move v3, p3

    move-object v2, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;Landroid/hardware/face/IFaceServiceReceiver;ILandroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleResetLockout(II[B)V
    .registers 6

    .line 740
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;II[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleRevokeChallenge(IILandroid/os/IBinder;Ljava/lang/String;J)V
    .registers 7

    .line 526
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mHandler:Landroid/os/Handler;

    new-instance p5, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda3;

    invoke-direct {p5, p0, p3, p2, p4}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;Landroid/os/IBinder;ILjava/lang/String;)V

    invoke-virtual {p1, p5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scheduleSetFeature(ILandroid/os/IBinder;IIZ[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .registers 20

    .line 764
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda0;

    move-object v2, p0

    move v3, p1

    move-object v5, p2

    move v4, p3

    move v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v10}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;IILandroid/os/IBinder;Landroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;IZ[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final scheduleUpdateActiveUserWithoutHandler(I)V
    .registers 13

    .line 970
    iget v0, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mSensorId:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->getEnrolledFaces(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v9, v0, 0x1

    .line 971
    new-instance v1, Lcom/android/server/biometrics/sensors/face/sense/FaceUpdateActiveUserClient;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 972
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mSensorId:I

    const/4 v0, 0x0

    .line 973
    invoke-virtual {p0, v0, v0}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->createLogger(II)Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    iget-object v10, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mAuthenticatorIds:Ljava/util/Map;

    move v4, p1

    invoke-direct/range {v1 .. v10}, Lcom/android/server/biometrics/sensors/face/sense/FaceUpdateActiveUserClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLjava/util/Map;)V

    .line 976
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$6;

    invoke-direct {v0, p0, v4}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$6;-><init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;I)V

    invoke-virtual {p1, v1, v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    return-void
.end method

.method public setTestHalEnabled(Z)V
    .registers 2

    .line 1107
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mTestHalEnabled:Z

    return-void
.end method

.method public startPreparedClient(II)V
    .registers 4

    .line 864
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p2}, Lcom/android/server/biometrics/sensors/face/sense/SenseProvider$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/biometrics/sensors/face/sense/SenseProvider;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
