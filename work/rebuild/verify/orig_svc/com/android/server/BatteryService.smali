.class public final Lcom/android/server/BatteryService;
.super Lcom/android/server/SystemService;
.source "BatteryService.java"


# static fields
.field public static final BATTERY_CHANGED_OPTIONS:Landroid/os/Bundle;

.field public static final BATTERY_OPTIONS:Landroid/os/Bundle;

.field public static final DUMPSYS_ARGS:[Ljava/lang/String;

.field public static final POWER_OPTIONS:Landroid/os/Bundle;

.field public static final TAG:Ljava/lang/String; = "BatteryService"

.field public static sSystemUiPackage:Ljava/lang/String;


# instance fields
.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mBatteryInputSuspended:Z

.field public mBatteryLevelCritical:Z

.field public mBatteryLevelLow:Z

.field public mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

.field public mBatteryNearlyFullLevel:I

.field public mBatteryPropertiesRegistrar:Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public mBinderService:Lcom/android/server/BatteryService$BinderService;

.field public mChargeStartLevel:I

.field public mChargeStartTime:J

.field public final mChargingPolicyChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final mConditionVariable:Landroid/os/ConditionVariable;

.field public final mContext:Landroid/content/Context;

.field public mCriticalBatteryLevel:I

.field public mDischargeStartLevel:I

.field public mDischargeStartTime:J

.field public final mHandler:Landroid/os/Handler;

.field public mHealthInfo:Landroid/hardware/health/HealthInfo;

.field public mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

.field public mInvalidCharger:I

.field public mIsFirstBatteryChangedUpdate:Z

.field public mLastBatteryLevelChangedSentMs:J

.field public mLastBroadcastBatteryCapacityLevel:I

.field public mLastBroadcastBatteryCycleCount:I

.field public mLastBroadcastBatteryFullCharge:I

.field public mLastBroadcastBatteryFullChargeDesign:I

.field public mLastBroadcastBatteryHealth:I

.field public mLastBroadcastBatteryLevel:I

.field public mLastBroadcastBatteryLevelCritical:Z

.field public mLastBroadcastBatteryPresent:Z

.field public mLastBroadcastBatteryStatus:I

.field public mLastBroadcastBatteryTemperature:I

.field public mLastBroadcastBatteryVoltage:I

.field public mLastBroadcastChargeCounter:I

.field public mLastBroadcastChargingState:I

.field public mLastBroadcastInvalidCharger:I

.field public mLastBroadcastMaxChargingCurrent:I

.field public mLastBroadcastMaxChargingCurrentUpdateTime:J

.field public mLastBroadcastMaxChargingVoltage:I

.field public mLastBroadcastPlugType:I

.field public mLastBroadcastVoltageUpdateTime:J

.field public mLastChargingPolicy:I

.field public final mLastHealthInfo:Landroid/hardware/health/HealthInfo;

.field public mLastLowBatteryWarningLevel:I

.field public mLastOemFastCharging:Z

.field public mLed:Lcom/android/server/BatteryService$Led;

.field public final mLocalCallback:Landroid/os/Handler$Callback;

.field public final mLock:Ljava/lang/Object;

.field public mLowBatteryCloseWarningLevel:I

.field public mLowBatteryWarningLevel:I

.field public mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mOemFastCharging:Z

.field public mPlugType:I

.field public mSentLowBatteryBroadcast:Z

.field public mSequence:I

.field public mShutdownBatteryTemperature:I

.field public mShutdownIfNoPower:Z

.field public mUpdatesStopped:Z


# direct methods
.method public static synthetic $r8$lambda$AiQShtRSNhmz_ZTL74NPp-e3gi0(Landroid/os/Message;)Z
    .registers 5

    .line 404
    iget v0, p0, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_41

    const/4 v2, 0x2

    if-eq v0, v2, :cond_27

    const/4 v2, 0x3

    if-eq v0, v2, :cond_d

    const/4 p0, 0x0

    return p0

    .line 435
    :cond_d
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/os/SomeArgs;

    .line 439
    :try_start_11
    iget-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    .line 440
    iget-object v2, p0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_22

    .line 442
    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 444
    sget-object p0, Lcom/android/server/BatteryService;->BATTERY_OPTIONS:Landroid/os/Bundle;

    invoke-static {v0, v2, p0}, Lcom/android/server/BatteryService;->sendBroadcastToAllUsers(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return v1

    :catchall_22
    move-exception v0

    .line 442
    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 443
    throw v0

    .line 422
    :cond_27
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/os/SomeArgs;

    .line 426
    :try_start_2b
    iget-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    .line 427
    iget-object v2, p0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_3c

    .line 429
    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 431
    sget-object p0, Lcom/android/server/BatteryService;->POWER_OPTIONS:Landroid/os/Bundle;

    invoke-static {v0, v2, p0}, Lcom/android/server/BatteryService;->sendBroadcastToAllUsers(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return v1

    :catchall_3c
    move-exception v0

    .line 429
    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 430
    throw v0

    .line 406
    :cond_41
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/os/SomeArgs;

    .line 411
    :try_start_45
    iget-object v0, p0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    .line 412
    iget-object v2, p0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    .line 413
    iget-object v3, p0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_55
    .catchall {:try_start_45 .. :try_end_55} :catchall_5e

    .line 415
    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 417
    sget-object p0, Lcom/android/server/BatteryService;->BATTERY_CHANGED_OPTIONS:Landroid/os/Bundle;

    invoke-static {v0, v2, p0, v3}, Lcom/android/server/BatteryService;->broadcastBatteryChangedIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Z)V

    return v1

    :catchall_5e
    move-exception v0

    .line 415
    invoke-virtual {p0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 416
    throw v0
.end method

.method public static synthetic $r8$lambda$FTMGU9zfcbKSRB-E_baBBuk1bsk(Lcom/android/server/BatteryService;ZLjava/io/PrintWriter;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/BatteryService;->lambda$unplugBattery$5(ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LviqpWDIutTTwiaEiuaGMjhoNls(Lcom/android/server/BatteryService;Landroid/content/Intent;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->lambda$shutdownIfNoPowerLocked$1(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PGQmMxEC6wpRSXkQ8eVHQpu1KzA(Lcom/android/server/BatteryService;ZLjava/io/PrintWriter;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/BatteryService;->lambda$resetBattery$6(ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QITgs02JU2zUgONUrF7rVY3JmZw(Lcom/android/server/BatteryService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->sendEnqueuedBatteryLevelChangedEvents()V

    return-void
.end method

.method public static synthetic $r8$lambda$egoSIcfIT8XByY8cTM2sBM4zxEA(Lcom/android/server/BatteryService;Landroid/content/Intent;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->lambda$shutdownIfOverTempLocked$2(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kI548aEkD-5ubzJcKyoIH4vQF6M(Lcom/android/server/BatteryService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->notifyChargingPolicyChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$uJGuV19mbplzJHje_bz0qpKKvU0(Lcom/android/server/BatteryService;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->lambda$setChargerAcOnline$3(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$xigVMi7T5FNp6AdWWcqiOj-iCUQ(Lcom/android/server/BatteryService;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->lambda$setBatteryLevel$4(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBatteryLevelLow(Lcom/android/server/BatteryService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBatteryNearlyFullLevel(Lcom/android/server/BatteryService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/BatteryService;->mBatteryNearlyFullLevel:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmChargingPolicyChangeListeners(Lcom/android/server/BatteryService;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mChargingPolicyChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/BatteryService;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHealthInfo(Lcom/android/server/BatteryService;)Landroid/hardware/health/HealthInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHealthServiceWrapper(Lcom/android/server/BatteryService;)Lcom/android/server/health/HealthServiceWrapper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInvalidCharger(Lcom/android/server/BatteryService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastChargingPolicy(Lcom/android/server/BatteryService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/BatteryService;->mLastChargingPolicy:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/BatteryService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLowBatteryWarningLevel(Lcom/android/server/BatteryService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPlugType(Lcom/android/server/BatteryService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmBatteryNearlyFullLevel(Lcom/android/server/BatteryService;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/BatteryService;->mBatteryNearlyFullLevel:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmInvalidCharger(Lcom/android/server/BatteryService;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpInternal(Lcom/android/server/BatteryService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BatteryService;->dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpProto(Lcom/android/server/BatteryService;Ljava/io/FileDescriptor;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->dumpProto(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misPoweredLocked(Lcom/android/server/BatteryService;I)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mresetBattery(Lcom/android/server/BatteryService;ZLjava/io/PrintWriter;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/BatteryService;->resetBattery(ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetBatteryLevel(Lcom/android/server/BatteryService;IZ)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/BatteryService;->setBatteryLevel(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetChargerAcOnline(Lcom/android/server/BatteryService;ZZ)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/BatteryService;->setChargerAcOnline(ZZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msuspendBatteryInput(Lcom/android/server/BatteryService;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/BatteryService;->suspendBatteryInput()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munplugBattery(Lcom/android/server/BatteryService;ZLjava/io/PrintWriter;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/BatteryService;->unplugBattery(ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateBatteryWarningLevelLocked(Lcom/android/server/BatteryService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 147
    const-string v0, "--checkin"

    const-string v1, "--unplugged"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    .line 356
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    const/4 v1, 0x1

    .line 357
    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v0

    const/4 v2, 0x2

    .line 358
    invoke-virtual {v0, v2}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->BATTERY_CHANGED_OPTIONS:Landroid/os/Bundle;

    .line 361
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 362
    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v0

    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 363
    const-string v4, "android"

    invoke-virtual {v0, v4, v3}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 364
    invoke-virtual {v0, v2}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->POWER_OPTIONS:Landroid/os/Bundle;

    .line 367
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 368
    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_OKAY"

    .line 369
    invoke-virtual {v0, v4, v1}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 370
    invoke-virtual {v0, v2}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v0

    .line 371
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->BATTERY_OPTIONS:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 452
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "BatteryService uses handler!! Can\'t create handler inside thread that has not called Looper.prepare()"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/os/Looper;

    invoke-direct {p0, p1, v0}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 6

    .line 459
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 160
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mConditionVariable:Landroid/os/ConditionVariable;

    .line 162
    new-instance v0, Landroid/hardware/health/HealthInfo;

    invoke-direct {v0}, Landroid/hardware/health/HealthInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/HealthInfo;

    const/4 v0, -0x1

    .line 276
    iput v0, p0, Lcom/android/server/BatteryService;->mLastBroadcastPlugType:I

    const/4 v0, 0x1

    .line 291
    iput v0, p0, Lcom/android/server/BatteryService;->mSequence:I

    .line 339
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mIsFirstBatteryChangedUpdate:Z

    const/4 v1, 0x0

    .line 343
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 352
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mChargingPolicyChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 403
    new-instance v1, Lcom/android/server/BatteryService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda0;-><init>()V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mLocalCallback:Landroid/os/Handler$Callback;

    .line 461
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    iput-object p1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 464
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p2, v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 465
    new-instance p2, Lcom/android/server/BatteryService$Led;

    const-class v0, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsManager;

    invoke-direct {p2, p0, p1, v0}, Lcom/android/server/BatteryService$Led;-><init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V

    iput-object p2, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    .line 466
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 467
    const-class p2, Landroid/app/ActivityManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManagerInternal;

    iput-object p2, p0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 469
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10e005a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    .line 471
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10e00dc

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 473
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    .line 475
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10e015d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/BatteryService;->mShutdownBatteryTemperature:I

    .line 477
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x1110267

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/BatteryService;->mShutdownIfNoPower:Z

    .line 479
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x104003a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/server/BatteryService;->sSystemUiPackage:Ljava/lang/String;

    .line 482
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    .line 483
    new-instance p1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object p1, p0, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 486
    new-instance p1, Ljava/io/File;

    const-string p2, "/sys/devices/virtual/switch/invalid_charger/state"

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_d0

    .line 487
    new-instance p1, Lcom/android/server/BatteryService$1;

    invoke-direct {p1, p0}, Lcom/android/server/BatteryService$1;-><init>(Lcom/android/server/BatteryService;)V

    .line 498
    const-string p2, "DEVPATH=/devices/virtual/switch/invalid_charger"

    invoke-virtual {p1, p2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 502
    :cond_d0
    invoke-static {}, Landroid/sysprop/PowerProperties;->battery_input_suspended()Ljava/util/Optional;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mBatteryInputSuspended:Z

    return-void
.end method

.method public static broadcastBatteryChangedIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Z)V
    .registers 6

    .line 1069
    invoke-static {p1, p3}, Lcom/android/server/BatteryService;->traceBatteryChangedBroadcastEvent(Landroid/content/Intent;Z)V

    .line 1073
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v0, 0x10000000

    .line 1074
    invoke-virtual {p3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1075
    sget-object v0, Lcom/android/server/BatteryService;->sSystemUiPackage:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1076
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v1, 0x0

    invoke-virtual {p0, p3, v0, v1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1078
    sget-object p0, Lcom/android/server/BatteryService;->sSystemUiPackage:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const/4 p3, -0x1

    invoke-static {p1, p0, p3, p2, p3}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)V

    return-void
.end method

.method public static dumpHelp(Ljava/io/PrintWriter;)V
    .registers 4

    .line 1403
    const-string v0, "Battery service (battery) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1404
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1405
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ac|usb|wireless|dock|status|level|temp|present|counter|invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|current_now|current_average"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  get [-f] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1411
    const-string v1, "    Gets the value of a battery state."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1412
    const-string v1, "    -f: force to get the latest property value."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  set [-f] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] <value>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1414
    const-string v0, "    Force a battery property value, freezing battery state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1415
    const-string v0, "    -f: force a battery change broadcast be sent, prints new sequence."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1416
    const-string v1, "  unplug [-f]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1417
    const-string v1, "    Force battery unplugged, freezing battery state."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1418
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1419
    const-string v1, "  reset [-f]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1420
    const-string v1, "    Unfreeze battery state, returning to current hardware values."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1421
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1422
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_91

    .line 1423
    const-string v0, "  suspend_input"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1424
    const-string v0, "    Suspend charging even if plugged in. "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_91
    return-void
.end method

.method private dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14

    .line 1680
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p3, :cond_2f

    .line 1681
    :try_start_5
    array-length v0, p3

    if-eqz v0, :cond_2f

    const-string v0, "-a"

    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_2f

    .line 1715
    :cond_14
    new-instance v2, Lcom/android/server/BatteryService$Shell;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$Shell;-><init>(Lcom/android/server/BatteryService;)V

    .line 1716
    iget-object v3, p0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    new-instance v9, Landroid/os/ResultReceiver;

    const/4 p0, 0x0

    invoke-direct {v9, p0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v5, p1

    move-object v7, p3

    invoke-virtual/range {v2 .. v9}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    goto/16 :goto_254

    :catchall_2b
    move-exception v0

    move-object p0, v0

    goto/16 :goto_256

    .line 1682
    :cond_2f
    :goto_2f
    const-string p1, "Current Battery Service state:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1683
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-eqz p1, :cond_3d

    .line 1684
    const-string p1, "  (UPDATES STOPPED -- use \'reset\' to restart)"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1686
    :cond_3d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  AC powered: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean p3, p3, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1687
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  USB powered: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean p3, p3, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1688
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Wireless powered: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean p3, p3, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1689
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Dock powered: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean p3, p3, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1690
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Max charging current: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p3, p3, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1691
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " Time when the latest updated value of the Max charging current was sent via battery changed broadcast: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/BatteryService;->mLastBroadcastMaxChargingCurrentUpdateTime:J

    .line 1693
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1691
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1694
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Max charging voltage: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p3, p3, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1695
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Charge counter: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p3, p3, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1696
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  status: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p3, p3, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1697
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  health: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p3, p3, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1698
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  present: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean p3, p3, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1699
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  level: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p3, p3, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1700
    const-string p1, "  scale: 100"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1701
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  voltage: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p3, p3, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1702
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " Time when the latest updated value of the voltage was sent via battery changed broadcast: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/BatteryService;->mLastBroadcastVoltageUpdateTime:J

    .line 1704
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1702
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1705
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " The last voltage value sent via the battery changed broadcast: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryVoltage:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1707
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  temperature: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p3, p3, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1708
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  technology: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object p3, p3, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1709
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Charging state: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p3, p3, Landroid/hardware/health/HealthInfo;->chargingState:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1710
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Charging policy: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p3, p3, Landroid/hardware/health/HealthInfo;->chargingPolicy:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1711
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Capacity level: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p3, p3, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1712
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Maximum capacity: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p3, p3, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1713
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Design capacity: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p0, p0, Landroid/hardware/health/HealthInfo;->batteryFullChargeDesignCapacityUah:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1718
    :goto_254
    monitor-exit v1

    return-void

    :goto_256
    monitor-exit v1
    :try_end_257
    .catchall {:try_start_5 .. :try_end_257} :catchall_2b

    throw p0
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .registers 6

    .line 1722
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1724
    iget-object p1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1725
    :try_start_8
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    const-wide v2, 0x10800000001L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1727
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v2, v1, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    if-eqz v2, :cond_1a

    const/4 v1, 0x1

    goto :goto_2e

    .line 1729
    :cond_1a
    iget-boolean v2, v1, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    if-eqz v2, :cond_20

    const/4 v1, 0x2

    goto :goto_2e

    .line 1731
    :cond_20
    iget-boolean v2, v1, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v2, :cond_26

    const/4 v1, 0x4

    goto :goto_2e

    .line 1733
    :cond_26
    iget-boolean v1, v1, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    if-eqz v1, :cond_2d

    const/16 v1, 0x8

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    const-wide v2, 0x10e00000002L

    .line 1736
    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1737
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    const-wide v2, 0x10500000003L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1740
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    const-wide v2, 0x10500000004L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1743
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    const-wide v2, 0x10500000005L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1745
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const-wide v2, 0x10e00000006L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1746
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    const-wide v2, 0x10e00000007L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1747
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v1, v1, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    const-wide v2, 0x10800000008L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1748
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    const-wide v2, 0x10500000009L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x1050000000aL

    const/16 v3, 0x64

    .line 1749
    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1750
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    const-wide v2, 0x1050000000bL

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1751
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    const-wide v2, 0x1050000000cL

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1754
    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object p0, p0, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    const-wide v1, 0x1090000000dL

    invoke-virtual {v0, v1, v2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1755
    monitor-exit p1
    :try_end_b9
    .catchall {:try_start_8 .. :try_end_b9} :catchall_bd

    .line 1756
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    :catchall_bd
    move-exception p0

    .line 1755
    :try_start_be
    monitor-exit p1
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bd

    throw p0
.end method

.method public static plugType(Landroid/hardware/health/HealthInfo;)I
    .registers 2

    .line 743
    iget-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 745
    :cond_6
    iget-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    if-eqz v0, :cond_c

    const/4 p0, 0x2

    return p0

    .line 747
    :cond_c
    iget-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v0, :cond_12

    const/4 p0, 0x4

    return p0

    .line 749
    :cond_12
    iget-boolean p0, p0, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    if-eqz p0, :cond_19

    const/16 p0, 0x8

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public static sendBroadcastToAllUsers(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 5

    .line 1775
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private setBatteryLevel(IZ)V
    .registers 5

    .line 1631
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v0, :cond_b

    .line 1632
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v0, v1}, Lcom/android/server/health/Utils;->copyV1Battery(Landroid/hardware/health/HealthInfo;Landroid/hardware/health/HealthInfo;)V

    .line 1634
    :cond_b
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iput p1, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    const/4 p1, 0x1

    .line 1635
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 1636
    new-instance p1, Lcom/android/server/BatteryService$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/BatteryService;Z)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method private setChargerAcOnline(ZZ)V
    .registers 5

    .line 1622
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v0, :cond_b

    .line 1623
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v0, v1}, Lcom/android/server/health/Utils;->copyV1Battery(Landroid/hardware/health/HealthInfo;Landroid/hardware/health/HealthInfo;)V

    .line 1625
    :cond_b
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iput-boolean p1, v0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    const/4 p1, 0x1

    .line 1626
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 1627
    new-instance p1, Lcom/android/server/BatteryService$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/BatteryService;Z)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method private suspendBatteryInput()V
    .registers 2

    .line 1664
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    .line 1668
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Landroid/sysprop/PowerProperties;->battery_input_suspended(Ljava/lang/Boolean;)V

    const/4 v0, 0x1

    .line 1669
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryInputSuspended:Z

    return-void

    .line 1665
    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "battery suspend_input is only supported on debuggable builds"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static traceBatteryChangedBroadcastEvent(Landroid/content/Intent;Z)V
    .registers 7

    const-wide/32 v0, 0x80000

    .line 1083
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-nez v2, :cond_a

    return-void

    .line 1085
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1086
    const-string v3, "broadcastBatteryChanged; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    const-string v3, "force="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1088
    const-string p1, ",seq="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "seq"

    const/4 v3, -0x1

    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1090
    const-string p1, ",s="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "status"

    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1092
    const-string p1, ",h="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "health"

    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1094
    const-string p1, ",p="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "present"

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1096
    const-string p1, ",l="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "level"

    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1098
    const-string p1, ",bl="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "battery_low"

    invoke-virtual {p0, p1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1100
    const-string p1, ",sc="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "scale"

    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1102
    const-string p1, ",pt="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "plugged"

    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1104
    const-string p1, ",v="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "voltage"

    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1106
    const-string p1, ",t="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "temperature"

    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1108
    const-string p1, ",tech="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "technology"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    const-string p1, ",invc="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "invalid_charger"

    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1112
    const-string p1, ",mcc="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "max_charging_current"

    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1114
    const-string p1, ",mcv="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "max_charging_voltage"

    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1116
    const-string p1, ",chc="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "charge_counter"

    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1118
    const-string p1, ",cc="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "android.os.extra.CYCLE_COUNT"

    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1120
    const-string p1, ",chs="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "android.os.extra.CHARGING_STATUS"

    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1122
    const-string p1, ",cl="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "android.os.extra.CAPACITY_LEVEL"

    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1125
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    return-void
.end method

.method public static traceBegin(Ljava/lang/String;)V
    .registers 3

    const-wide/32 v0, 0x80000

    .line 1760
    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    return-void
.end method

.method public static traceEnd()V
    .registers 2

    const-wide/32 v0, 0x80000

    .line 1764
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method


# virtual methods
.method public getHandlerForTest()Landroid/os/Handler;
    .registers 1

    .line 1769
    iget-object p0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public final getIconLocked(I)I
    .registers 5

    .line 1278
    iget-object p1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p1, p1, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const/4 v0, 0x2

    const v1, 0x10809d7

    if-ne p1, v0, :cond_b

    return v1

    :cond_b
    const/4 v0, 0x3

    const v2, 0x10809c9

    if-ne p1, v0, :cond_12

    return v2

    :cond_12
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x5

    if-ne p1, v0, :cond_19

    goto :goto_1d

    :cond_19
    const p0, 0x10809e5

    return p0

    :cond_1d
    :goto_1d
    const/16 p1, 0xf

    .line 1284
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result p1

    if-eqz p1, :cond_2e

    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p0, p0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    const/16 p1, 0x64

    if-lt p0, p1, :cond_2e

    return v1

    :cond_2e
    return v2
.end method

.method public final isOemFastCharging()Z
    .registers 9

    .line 1193
    iget-object p0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10700b7

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_10
    if-ge v2, v0, :cond_4f

    aget-object v3, p0, v2

    .line 1195
    const-string v4, ";"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 1196
    aget-object v4, v3, v1

    const/4 v5, 0x1

    .line 1197
    aget-object v3, v3, v5

    .line 1199
    :try_start_20
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-static {v6, v1, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1200
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_32} :catch_35

    if-eqz v3, :cond_4c

    return v5

    :catch_35
    move-exception v3

    .line 1204
    sget-object v5, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read oem fast charger status path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_4f
    return v1
.end method

.method public final isPoweredLocked(I)Z
    .registers 4

    .line 590
    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, p0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    return v1

    :cond_8
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_11

    .line 593
    iget-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    if-eqz v0, :cond_11

    return v1

    :cond_11
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1a

    .line 597
    iget-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    if-eqz v0, :cond_1a

    return v1

    :cond_1a
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_23

    .line 601
    iget-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v0, :cond_23

    return v1

    :cond_23
    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_2c

    .line 605
    iget-boolean p0, p0, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    if-eqz p0, :cond_2c

    return v1

    :cond_2c
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$resetBattery$6(ZLjava/io/PrintWriter;)V
    .registers 3

    .line 1655
    invoke-virtual {p0, p1, p2}, Lcom/android/server/BatteryService;->processValuesLocked(ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public final synthetic lambda$setBatteryLevel$4(Z)V
    .registers 2

    .line 1636
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    return-void
.end method

.method public final synthetic lambda$setChargerAcOnline$3(Z)V
    .registers 2

    .line 1627
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    return-void
.end method

.method public final synthetic lambda$shutdownIfNoPowerLocked$1(Landroid/content/Intent;)V
    .registers 2

    .line 661
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->startShutdownActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final synthetic lambda$shutdownIfOverTempLocked$2(Landroid/content/Intent;)V
    .registers 2

    .line 676
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->startShutdownActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final synthetic lambda$unplugBattery$5(ZLjava/io/PrintWriter;)V
    .registers 3

    .line 1648
    invoke-virtual {p0, p1, p2}, Lcom/android/server/BatteryService;->processValuesLocked(ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public final logBatteryStatsLocked()V
    .registers 9

    .line 1213
    const-string v0, "failed to delete temporary dumpsys file: "

    const-string v1, "failed to close dumpsys output stream"

    const-string v2, "batterystats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_e

    goto/16 :goto_f3

    .line 1216
    :cond_e
    iget-object p0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v3, "dropbox"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/DropBoxManager;

    if-eqz p0, :cond_f3

    .line 1217
    const-string v3, "BATTERY_DISCHARGE_INFO"

    invoke-virtual {p0, v3}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_24

    goto/16 :goto_f3

    :cond_24
    const/4 v4, 0x0

    .line 1223
    :try_start_25
    new-instance v5, Ljava/io/File;

    const-string v6, "/data/system/batterystats.dump"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2c} :catch_80
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2c} :catch_7d
    .catchall {:try_start_25 .. :try_end_2c} :catchall_7a

    .line 1224
    :try_start_2c
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_31} :catch_78
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_31} :catch_76
    .catchall {:try_start_2c .. :try_end_31} :catchall_74

    .line 1225
    :try_start_31
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    sget-object v7, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    invoke-interface {v2, v4, v7}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 1226
    invoke-static {v6}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    const/4 v2, 0x2

    .line 1229
    invoke-virtual {p0, v3, v5, v2}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_41} :catch_71
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_41} :catch_6e
    .catchall {:try_start_31 .. :try_end_41} :catchall_6a

    .line 1238
    :try_start_41
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_4a

    .line 1240
    :catch_45
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    :goto_4a
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_f3

    .line 1244
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_57
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1245
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1244
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f3

    :catchall_6a
    move-exception p0

    move-object v4, v6

    goto/16 :goto_c7

    :catch_6e
    move-exception p0

    move-object v4, v6

    goto :goto_83

    :catch_71
    move-exception p0

    move-object v4, v6

    goto :goto_a5

    :catchall_74
    move-exception p0

    goto :goto_c7

    :catch_76
    move-exception p0

    goto :goto_83

    :catch_78
    move-exception p0

    goto :goto_a5

    :catchall_7a
    move-exception p0

    move-object v5, v4

    goto :goto_c7

    :catch_7d
    move-exception p0

    move-object v5, v4

    goto :goto_83

    :catch_80
    move-exception p0

    move-object v5, v4

    goto :goto_a5

    .line 1233
    :goto_83
    :try_start_83
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v3, "failed to write dumpsys file"

    invoke-static {v2, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8a
    .catchall {:try_start_83 .. :try_end_8a} :catchall_74

    if-eqz v4, :cond_95

    .line 1238
    :try_start_8c
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_90

    goto :goto_95

    .line 1240
    :catch_90
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_95
    :goto_95
    if-eqz v5, :cond_f3

    .line 1243
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_f3

    .line 1244
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_57

    .line 1231
    :goto_a5
    :try_start_a5
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v3, "failed to dump battery service"

    invoke-static {v2, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ac
    .catchall {:try_start_a5 .. :try_end_ac} :catchall_74

    if-eqz v4, :cond_b7

    .line 1238
    :try_start_ae
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_b2

    goto :goto_b7

    .line 1240
    :catch_b2
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b7
    :goto_b7
    if-eqz v5, :cond_f3

    .line 1243
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_f3

    .line 1244
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_57

    :goto_c7
    if-eqz v4, :cond_d2

    .line 1238
    :try_start_c9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_cc} :catch_cd

    goto :goto_d2

    .line 1240
    :catch_cd
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d2
    :goto_d2
    if-eqz v5, :cond_f2

    .line 1243
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_f2

    .line 1244
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1245
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1244
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    :cond_f2
    throw p0

    :cond_f3
    :goto_f3
    return-void
.end method

.method public final logOutlierLocked(J)V
    .registers 8

    .line 1251
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1252
    const-string v1, "battery_discharge_threshold"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1254
    const-string v2, "battery_discharge_duration_threshold"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_4d

    if-eqz v0, :cond_4d

    .line 1259
    :try_start_16
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1260
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    cmp-long p1, p1, v2

    if-gtz p1, :cond_4d

    .line 1261
    iget p1, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object p2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p2, p2, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    sub-int/2addr p1, p2

    if-lt p1, v4, :cond_4d

    .line 1264
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->logBatteryStatsLocked()V
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_2e} :catch_2f

    return-void

    .line 1271
    :catch_2f
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid DischargeThresholds GService string: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " or "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    return-void
.end method

.method public final notifyChargingPolicyChanged()V
    .registers 3

    .line 1183
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1184
    :try_start_3
    iget v1, p0, Lcom/android/server/BatteryService;->mLastChargingPolicy:I

    .line 1185
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1d

    .line 1187
    iget-object p0, p0, Lcom/android/server/BatteryService;->mChargingPolicyChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal$ChargingPolicyChangeListener;

    .line 1188
    invoke-interface {v0, v1}, Landroid/os/BatteryManagerInternal$ChargingPolicyChangeListener;->onChargingPolicyChanged(I)V

    goto :goto_c

    :cond_1c
    return-void

    :catchall_1d
    move-exception p0

    .line 1185
    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public onBootPhase(I)V
    .registers 7

    const/16 v0, 0x226

    if-ne p1, v0, :cond_28

    .line 520
    iget-object p1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 521
    :try_start_7
    new-instance v0, Lcom/android/server/BatteryService$2;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V

    .line 529
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 530
    const-string/jumbo v2, "low_power_trigger_level"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 533
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V

    .line 534
    monitor-exit p1

    return-void

    :catchall_25
    move-exception p0

    monitor-exit p1
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_25

    throw p0

    :cond_28
    return-void
.end method

.method public onShellCommand(Lcom/android/server/BatteryService$Shell;Ljava/lang/String;)I
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-nez v1, :cond_b

    .line 1443
    invoke-virtual/range {p1 .. p2}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1445
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 1446
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_35c

    :goto_19
    const/4 v3, -0x1

    goto :goto_55

    :sswitch_1b
    const-string/jumbo v3, "reset"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    goto :goto_19

    :cond_25
    const/4 v3, 0x4

    goto :goto_55

    :sswitch_27
    const-string/jumbo v3, "set"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    goto :goto_19

    :cond_31
    const/4 v3, 0x3

    goto :goto_55

    :sswitch_33
    const-string v3, "get"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    goto :goto_19

    :cond_3c
    const/4 v3, 0x2

    goto :goto_55

    :sswitch_3e
    const-string/jumbo v3, "suspend_input"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    goto :goto_19

    :cond_48
    const/4 v3, 0x1

    goto :goto_55

    :sswitch_4a
    const-string/jumbo v3, "unplug"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    goto :goto_19

    :cond_54
    const/4 v3, 0x0

    .line 1608
    :goto_55
    const-string/jumbo v10, "wireless"

    const-string/jumbo v11, "status"

    const-string v12, "current_average"

    const-string/jumbo v13, "present"

    const-string v14, "ac"

    const-string/jumbo v15, "usb"

    const-string v4, "dock"

    const-string/jumbo v5, "temp"

    const-string/jumbo v6, "level"

    const/16 v17, -0x1

    const-string v7, "current_now"

    const/16 v18, 0x0

    const-string v8, "counter"

    const/16 v19, 0x1

    const-string v9, "invalid"

    const-string v1, "No property specified"

    move/from16 v20, v3

    const-string v3, "android.permission.DEVICE_POWER"

    packed-switch v20, :pswitch_data_372

    invoke-virtual/range {p1 .. p2}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1597
    :pswitch_87
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result v1

    .line 1598
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_9a

    move/from16 v9, v19

    goto :goto_9c

    :cond_9a
    move/from16 v9, v18

    .line 1600
    :goto_9c
    invoke-virtual {v0, v9, v2}, Lcom/android/server/BatteryService;->resetBattery(ZLjava/io/PrintWriter;)V

    goto/16 :goto_35b

    :pswitch_a1
    move-object/from16 v20, v10

    const/4 v10, 0x0

    .line 1515
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result v16

    move-object/from16 v21, v11

    .line 1516
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v3, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_bb

    .line 1520
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v17

    .line 1524
    :cond_bb
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c7

    .line 1526
    const-string v0, "No value specified"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v17

    .line 1531
    :cond_c7
    :try_start_c7
    iget-boolean v10, v0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v10, :cond_d2

    .line 1532
    iget-object v10, v0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object v11, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v10, v11}, Lcom/android/server/health/Utils;->copyV1Battery(Landroid/hardware/health/HealthInfo;Landroid/hardware/health/HealthInfo;)V

    .line 1535
    :cond_d2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_380

    goto/16 :goto_1d7

    :sswitch_db
    invoke-virtual {v3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d7

    .line 1574
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    goto/16 :goto_1ba

    .line 1535
    :sswitch_e9
    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d7

    .line 1558
    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    goto/16 :goto_1ba

    .line 1535
    :sswitch_f9
    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d7

    .line 1562
    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/hardware/health/HealthInfo;->batteryCurrentMicroamps:I

    goto/16 :goto_1ba

    .line 1535
    :sswitch_109
    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d7

    .line 1555
    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    goto/16 :goto_1ba

    .line 1535
    :sswitch_119
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d7

    goto/16 :goto_189

    :sswitch_121
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d7

    .line 1549
    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_132

    move/from16 v4, v19

    goto :goto_134

    :cond_132
    move/from16 v4, v18

    :goto_134
    iput-boolean v4, v3, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    goto/16 :goto_1ba

    .line 1535
    :sswitch_138
    invoke-virtual {v3, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d7

    .line 1543
    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_149

    move/from16 v4, v19

    goto :goto_14b

    :cond_149
    move/from16 v4, v18

    :goto_14b
    iput-boolean v4, v3, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    goto/16 :goto_1ba

    .line 1535
    :sswitch_14f
    invoke-virtual {v3, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d7

    .line 1540
    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_160

    move/from16 v4, v19

    goto :goto_162

    :cond_160
    move/from16 v4, v18

    :goto_162
    iput-boolean v4, v3, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    goto :goto_1ba

    .line 1535
    :sswitch_165
    invoke-virtual {v3, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d7

    .line 1537
    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_176

    move/from16 v4, v19

    goto :goto_178

    :cond_176
    move/from16 v4, v18

    :goto_178
    iput-boolean v4, v3, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    goto :goto_1ba

    .line 1535
    :sswitch_17b
    invoke-virtual {v3, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d7

    .line 1567
    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 1568
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    .line 1571
    :goto_189
    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    goto :goto_1ba

    :sswitch_192
    move-object/from16 v10, v21

    .line 1535
    invoke-virtual {v3, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d7

    .line 1552
    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    goto :goto_1ba

    :sswitch_1a3
    move-object/from16 v11, v20

    .line 1535
    invoke-virtual {v3, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d7

    .line 1546
    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1b6

    move/from16 v4, v19

    goto :goto_1b8

    :cond_1b6
    move/from16 v4, v18

    :goto_1b8
    iput-boolean v4, v3, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 1582
    :goto_1ba
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_1be
    .catch Ljava/lang/NumberFormatException; {:try_start_c7 .. :try_end_1be} :catch_1ed

    move/from16 v5, v19

    .line 1584
    :try_start_1c0
    iput-boolean v5, v0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    and-int/lit8 v6, v16, 0x1

    if-eqz v6, :cond_1c8

    const/4 v9, 0x1

    goto :goto_1ca

    :cond_1c8
    move/from16 v9, v18

    .line 1585
    :goto_1ca
    invoke-virtual {v0, v9, v2}, Lcom/android/server/BatteryService;->processValuesLocked(ZLjava/io/PrintWriter;)V
    :try_end_1cd
    .catchall {:try_start_1c0 .. :try_end_1cd} :catchall_1d2

    .line 1588
    :try_start_1cd
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_35b

    :catchall_1d2
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1589
    throw v0

    .line 1577
    :cond_1d7
    :goto_1d7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown set option: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1eb
    .catch Ljava/lang/NumberFormatException; {:try_start_1cd .. :try_end_1eb} :catch_1ed

    goto/16 :goto_35b

    .line 1592
    :catch_1ed
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad value: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v17

    :pswitch_202
    move-object/from16 v22, v11

    move-object v11, v10

    move-object/from16 v10, v22

    .line 1454
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result v3

    move/from16 p2, v3

    .line 1455
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_217

    .line 1457
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v17

    :cond_217
    const/16 v19, 0x1

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_231

    .line 1463
    iget-object v1, v0, Lcom/android/server/BatteryService;->mConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 1464
    invoke-virtual {v0}, Lcom/android/server/BatteryService;->updateHealthInfo()V

    .line 1465
    iget-object v1, v0, Lcom/android/server/BatteryService;->mConditionVariable:Landroid/os/ConditionVariable;

    move-object/from16 v21, v10

    move-object/from16 v20, v11

    const-wide/16 v10, 0x3e8

    invoke-virtual {v1, v10, v11}, Landroid/os/ConditionVariable;->block(J)Z

    goto :goto_235

    :cond_231
    move-object/from16 v21, v10

    move-object/from16 v20, v11

    .line 1468
    :goto_235
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_3b2

    :goto_23f
    move/from16 v4, v17

    goto/16 :goto_2ba

    :sswitch_243
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24a

    goto :goto_23f

    :cond_24a
    const/16 v4, 0xb

    goto/16 :goto_2ba

    :sswitch_24e
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_255

    goto :goto_23f

    :cond_255
    const/16 v4, 0xa

    goto/16 :goto_2ba

    :sswitch_259
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_260

    goto :goto_23f

    :cond_260
    const/16 v4, 0x9

    goto/16 :goto_2ba

    :sswitch_264
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26b

    goto :goto_23f

    :cond_26b
    const/16 v4, 0x8

    goto :goto_2ba

    :sswitch_26e
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_275

    goto :goto_23f

    :cond_275
    const/4 v4, 0x7

    goto :goto_2ba

    :sswitch_277
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27e

    goto :goto_23f

    :cond_27e
    const/4 v4, 0x6

    goto :goto_2ba

    :sswitch_280
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_287

    goto :goto_23f

    :cond_287
    const/4 v4, 0x5

    goto :goto_2ba

    :sswitch_289
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_290

    goto :goto_23f

    :cond_290
    const/4 v4, 0x4

    goto :goto_2ba

    :sswitch_292
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_299

    goto :goto_23f

    :cond_299
    const/4 v4, 0x3

    goto :goto_2ba

    :sswitch_29b
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a2

    goto :goto_23f

    :cond_2a2
    const/4 v4, 0x2

    goto :goto_2ba

    :sswitch_2a4
    move-object/from16 v10, v21

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2ad

    goto :goto_23f

    :cond_2ad
    const/4 v4, 0x1

    goto :goto_2ba

    :sswitch_2af
    move-object/from16 v11, v20

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b8

    goto :goto_23f

    :cond_2b8
    move/from16 v4, v18

    :goto_2ba
    packed-switch v4, :pswitch_data_3e4

    .line 1510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown get option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_35b

    .line 1507
    :pswitch_2d3
    iget v0, v0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_35b

    .line 1491
    :pswitch_2da
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_35b

    .line 1495
    :pswitch_2e3
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryCurrentMicroamps:I

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_35b

    .line 1488
    :pswitch_2ec
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_35b

    .line 1504
    :pswitch_2f5
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_35b

    .line 1482
    :pswitch_2fd
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_35b

    .line 1476
    :pswitch_305
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_35b

    .line 1473
    :pswitch_30d
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_35b

    .line 1470
    :pswitch_315
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_35b

    .line 1500
    :pswitch_31d
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_35b

    .line 1485
    :pswitch_325
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_35b

    .line 1479
    :pswitch_32d
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_35b

    .line 1603
    :pswitch_335
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    invoke-direct {v0}, Lcom/android/server/BatteryService;->suspendBatteryInput()V

    goto :goto_35b

    :pswitch_341
    const/4 v5, 0x0

    .line 1448
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result v1

    .line 1449
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_356

    move/from16 v9, v19

    goto :goto_358

    :cond_356
    move/from16 v9, v18

    .line 1451
    :goto_358
    invoke-virtual {v0, v9, v2}, Lcom/android/server/BatteryService;->unplugBattery(ZLjava/io/PrintWriter;)V

    :goto_35b
    return v18

    :sswitch_data_35c
    .sparse-switch
        -0x32165859 -> :sswitch_4a
        -0x204dc1f9 -> :sswitch_3e
        0x18f56 -> :sswitch_33
        0x1bc62 -> :sswitch_27
        0x6761d4f -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_372
    .packed-switch 0x0
        :pswitch_341
        :pswitch_335
        :pswitch_202
        :pswitch_a1
        :pswitch_87
    .end packed-switch

    :sswitch_data_380
    .sparse-switch
        -0x3b9b7862 -> :sswitch_1a3
        -0x3532300e -> :sswitch_192
        -0x169c46a9 -> :sswitch_17b
        -0x12f88745 -> :sswitch_165
        0xc22 -> :sswitch_14f
        0x1c584 -> :sswitch_138
        0x2f2233 -> :sswitch_121
        0x3643d4 -> :sswitch_119
        0x6219b84 -> :sswitch_109
        0x23db3310 -> :sswitch_f9
        0x391755fc -> :sswitch_e9
        0x74cff1f7 -> :sswitch_db
    .end sparse-switch

    :sswitch_data_3b2
    .sparse-switch
        -0x3b9b7862 -> :sswitch_2af
        -0x3532300e -> :sswitch_2a4
        -0x169c46a9 -> :sswitch_29b
        -0x12f88745 -> :sswitch_292
        0xc22 -> :sswitch_289
        0x1c584 -> :sswitch_280
        0x2f2233 -> :sswitch_277
        0x3643d4 -> :sswitch_26e
        0x6219b84 -> :sswitch_264
        0x23db3310 -> :sswitch_259
        0x391755fc -> :sswitch_24e
        0x74cff1f7 -> :sswitch_243
    .end sparse-switch

    :pswitch_data_3e4
    .packed-switch 0x0
        :pswitch_32d
        :pswitch_325
        :pswitch_31d
        :pswitch_315
        :pswitch_30d
        :pswitch_305
        :pswitch_2fd
        :pswitch_2f5
        :pswitch_2ec
        :pswitch_2e3
        :pswitch_2da
        :pswitch_2d3
    .end packed-switch
.end method

.method public onStart()V
    .registers 4

    .line 507
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->registerHealthCallback()V

    .line 509
    new-instance v0, Lcom/android/server/BatteryService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$BinderService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService-IA;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    .line 510
    const-string v2, "battery"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 511
    new-instance v0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService-IA;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBatteryPropertiesRegistrar:Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

    .line 512
    const-string v2, "batteryproperties"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 513
    const-class v0, Landroid/os/BatteryManagerInternal;

    new-instance v2, Lcom/android/server/BatteryService$LocalService;

    invoke-direct {v2, p0, v1}, Lcom/android/server/BatteryService$LocalService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService-IA;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public parseOptions(Lcom/android/server/BatteryService$Shell;)I
    .registers 4

    const/4 p0, 0x0

    .line 1433
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1434
    const-string v1, "-f"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_11
    return p0
.end method

.method public final processValuesLocked(Z)V
    .registers 18

    move-object/from16 v0, p0

    .line 760
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_12

    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v5, v0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    if-gt v2, v5, :cond_12

    move v2, v4

    goto :goto_13

    :cond_12
    move v2, v3

    :goto_13
    iput-boolean v2, v0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    .line 763
    invoke-static {v1}, Lcom/android/server/BatteryService;->plugType(Landroid/hardware/health/HealthInfo;)I

    move-result v8

    iput v8, v0, Lcom/android/server/BatteryService;->mPlugType:I

    .line 774
    :try_start_1b
    iget-object v5, v0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v6, v1, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    iget v7, v1, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    iget v9, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v10, v1, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    iget v11, v1, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    iget v12, v1, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    iget v13, v1, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    iget-wide v14, v1, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    invoke-interface/range {v5 .. v15}, Lcom/android/internal/app/IBatteryStats;->setBatteryState(IIIIIIIIJ)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_32} :catch_32

    .line 788
    :catch_32
    invoke-virtual {v0}, Lcom/android/server/BatteryService;->shutdownIfNoPowerLocked()V

    .line 789
    invoke-virtual {v0}, Lcom/android/server/BatteryService;->shutdownIfOverTempLocked()V

    .line 790
    invoke-virtual {v0}, Lcom/android/server/BatteryService;->isOemFastCharging()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/BatteryService;->mOemFastCharging:Z

    if-nez p1, :cond_48

    .line 792
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->chargingPolicy:I

    iget v2, v0, Lcom/android/server/BatteryService;->mLastChargingPolicy:I

    if-eq v1, v2, :cond_58

    .line 793
    :cond_48
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->chargingPolicy:I

    iput v1, v0, Lcom/android/server/BatteryService;->mLastChargingPolicy:I

    .line 794
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/BatteryService$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_58
    if-nez p1, :cond_bc

    .line 801
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    iget v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryStatus:I

    if-ne v2, v5, :cond_bc

    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    iget v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryHealth:I

    if-ne v2, v5, :cond_bc

    iget-boolean v2, v1, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    iget-boolean v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryPresent:Z

    if-ne v2, v5, :cond_bc

    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryLevel:I

    if-ne v2, v5, :cond_bc

    iget v2, v0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastPlugType:I

    if-ne v2, v5, :cond_bc

    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    iget v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryVoltage:I

    if-ne v2, v5, :cond_bc

    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    iget v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryTemperature:I

    if-ne v2, v5, :cond_bc

    iget v2, v1, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    iget v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastMaxChargingCurrent:I

    if-ne v2, v5, :cond_bc

    iget v2, v1, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    iget v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastMaxChargingVoltage:I

    if-ne v2, v5, :cond_bc

    iget v2, v0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    iget v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastInvalidCharger:I

    if-ne v2, v5, :cond_bc

    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    iget v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryCycleCount:I

    if-ne v2, v5, :cond_bc

    iget v2, v1, Landroid/hardware/health/HealthInfo;->chargingState:I

    iget v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastChargingState:I

    if-ne v2, v5, :cond_bc

    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    iget v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryCapacityLevel:I

    if-ne v2, v5, :cond_bc

    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    iget v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryFullCharge:I

    if-ne v2, v5, :cond_bc

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryFullChargeDesignCapacityUah:I

    iget v2, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryFullChargeDesign:I

    if-ne v1, v2, :cond_bc

    iget-boolean v1, v0, Lcom/android/server/BatteryService;->mOemFastCharging:Z

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mLastOemFastCharging:Z

    if-eq v1, v2, :cond_38a

    .line 821
    :cond_bc
    iget v1, v0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v2, v0, Lcom/android/server/BatteryService;->mLastBroadcastPlugType:I

    const-wide/16 v5, 0x0

    if-eq v1, v2, :cond_183

    const/16 v7, 0x58a

    const/16 v8, 0x58d

    const/16 v9, 0x589

    if-nez v2, :cond_12e

    .line 824
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iput v1, v0, Lcom/android/server/BatteryService;->mChargeStartLevel:I

    .line 825
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/BatteryService;->mChargeStartTime:J

    .line 827
    new-instance v1, Landroid/metrics/LogMaker;

    invoke-direct {v1, v9}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x4

    .line 828
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 829
    iget v2, v0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 830
    iget-object v2, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 831
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 830
    invoke-virtual {v1, v7, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 832
    iget-object v2, v0, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 836
    iget-wide v1, v0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_183

    iget v1, v0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object v2, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    if-eq v1, v2, :cond_183

    .line 838
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v7, v0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long/2addr v1, v7

    .line 840
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget v8, v0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 841
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v9, v9, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0xaaa

    .line 840
    invoke-static {v8, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 843
    iput-wide v5, v0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    move v7, v4

    goto :goto_185

    :cond_12e
    if-nez v1, :cond_183

    .line 847
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 848
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iput v1, v0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 850
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v10, v0, Lcom/android/server/BatteryService;->mChargeStartTime:J

    sub-long/2addr v1, v10

    cmp-long v10, v10, v5

    if-eqz v10, :cond_181

    cmp-long v10, v1, v5

    if-eqz v10, :cond_181

    .line 852
    new-instance v10, Landroid/metrics/LogMaker;

    invoke-direct {v10, v9}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v9, 0x5

    .line 853
    invoke-virtual {v10, v9}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 854
    iget v9, v0, Lcom/android/server/BatteryService;->mLastBroadcastPlugType:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v8, v9}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    const/16 v8, 0x58c

    .line 856
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 855
    invoke-virtual {v10, v8, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 857
    iget v1, v0, Lcom/android/server/BatteryService;->mChargeStartLevel:I

    .line 858
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 857
    invoke-virtual {v10, v7, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 859
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 860
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x58b

    .line 859
    invoke-virtual {v10, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 861
    iget-object v1, v0, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v10}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 863
    :cond_181
    iput-wide v5, v0, Lcom/android/server/BatteryService;->mChargeStartTime:J

    :cond_183
    move v7, v3

    move-wide v1, v5

    .line 866
    :goto_185
    iget-object v8, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v9, v8, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    iget v10, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryStatus:I

    if-ne v9, v10, :cond_19f

    iget v10, v8, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    iget v11, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryHealth:I

    if-ne v10, v11, :cond_19f

    iget-boolean v8, v8, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    iget-boolean v10, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryPresent:Z

    if-ne v8, v10, :cond_19f

    iget v8, v0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v10, v0, Lcom/android/server/BatteryService;->mLastBroadcastPlugType:I

    if-eq v8, v10, :cond_1de

    .line 871
    :cond_19f
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v9, v9, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 872
    iget-object v10, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v10, v10, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v11, v0, Lcom/android/server/BatteryService;->mPlugType:I

    .line 873
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object v12, v12, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    filled-new-array {v8, v9, v10, v11, v12}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0xaa3

    .line 870
    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 874
    iget-object v8, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v8, v8, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 876
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 874
    const-string v9, "debug.tracing.battery_status"

    invoke-static {v9, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    iget v8, v0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "debug.tracing.plug_type"

    invoke-static {v9, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    :cond_1de
    iget-object v8, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v8, v8, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v9, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryLevel:I

    if-eq v8, v9, :cond_203

    .line 884
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v9, v9, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    .line 885
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v10, v10, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 886
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v8, v9, v10}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v9, 0xaa2

    .line 882
    invoke-static {v9, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 888
    :cond_203
    iget-boolean v8, v0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    if-eqz v8, :cond_217

    iget-boolean v8, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryLevelCritical:Z

    if-nez v8, :cond_217

    iget v8, v0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v8, :cond_217

    .line 892
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v7, v0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long/2addr v1, v7

    move v7, v4

    .line 896
    :cond_217
    iget-boolean v8, v0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    if-nez v8, :cond_22e

    .line 898
    iget v8, v0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v8, :cond_248

    iget-object v8, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v9, v8, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    if-eq v9, v4, :cond_248

    iget v8, v8, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v9, v0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v8, v9, :cond_248

    .line 902
    iput-boolean v4, v0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto :goto_248

    .line 906
    :cond_22e
    iget v8, v0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v8, :cond_235

    .line 907
    iput-boolean v3, v0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto :goto_248

    .line 908
    :cond_235
    iget-object v8, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v8, v8, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v9, v0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v8, v9, :cond_240

    .line 909
    iput-boolean v3, v0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto :goto_248

    :cond_240
    if-eqz p1, :cond_248

    .line 910
    iget v9, v0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-lt v8, v9, :cond_248

    .line 913
    iput-boolean v3, v0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    .line 917
    :cond_248
    :goto_248
    iget v8, v0, Lcom/android/server/BatteryService;->mSequence:I

    add-int/2addr v8, v4

    iput v8, v0, Lcom/android/server/BatteryService;->mSequence:I

    .line 922
    iget v8, v0, Lcom/android/server/BatteryService;->mPlugType:I

    const/4 v9, 0x2

    const-string/jumbo v10, "seq"

    const/high16 v11, 0x4000000

    if-eqz v8, :cond_283

    iget v12, v0, Lcom/android/server/BatteryService;->mLastBroadcastPlugType:I

    if-nez v12, :cond_283

    .line 923
    new-instance v8, Landroid/content/Intent;

    const-string v12, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 924
    invoke-virtual {v8, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 925
    iget v12, v0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v8, v10, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 926
    iget-object v12, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v12, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 927
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v12

    .line 928
    iget-object v13, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    iput-object v13, v12, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 929
    iput-object v8, v12, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 930
    iget-object v8, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 931
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2b0

    :cond_283
    if-nez v8, :cond_2b0

    .line 932
    iget v8, v0, Lcom/android/server/BatteryService;->mLastBroadcastPlugType:I

    if-eqz v8, :cond_2b0

    .line 933
    new-instance v8, Landroid/content/Intent;

    const-string v12, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-direct {v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 934
    invoke-virtual {v8, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 935
    iget v12, v0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v8, v10, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 936
    iget-object v12, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v12, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 937
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v12

    .line 938
    iget-object v13, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    iput-object v13, v12, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 939
    iput-object v8, v12, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 940
    iget-object v8, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 941
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 944
    :cond_2b0
    :goto_2b0
    invoke-virtual {v0}, Lcom/android/server/BatteryService;->shouldSendBatteryLowLocked()Z

    move-result v8

    const/4 v9, 0x3

    if-eqz v8, :cond_2e1

    .line 945
    iput-boolean v4, v0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 946
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.BATTERY_LOW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 947
    invoke-virtual {v3, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 948
    iget v4, v0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v3, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 949
    iget-object v4, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 950
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v4

    .line 951
    iget-object v8, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    iput-object v8, v4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 952
    iput-object v3, v4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 953
    iget-object v3, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v9, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 954
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_316

    .line 955
    :cond_2e1
    iget-boolean v4, v0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    if-eqz v4, :cond_316

    iget-object v4, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v8, v0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v4, v8, :cond_316

    .line 957
    iput-boolean v3, v0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 958
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.BATTERY_OKAY"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 959
    invoke-virtual {v3, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 960
    iget v4, v0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v3, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 961
    iget-object v4, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 962
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v4

    .line 963
    iget-object v8, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    iput-object v8, v4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 964
    iput-object v3, v4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 965
    iget-object v3, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v9, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 966
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 973
    :cond_316
    :goto_316
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/BatteryService;->rateLimitBatteryChangedBroadcast(Z)Z

    move-result v3

    if-nez v3, :cond_31f

    .line 976
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/BatteryService;->sendBatteryChangedIntentLocked(Z)V

    .line 978
    :cond_31f
    iget v4, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryLevel:I

    iget-object v8, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v8, v8, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    if-ne v4, v8, :cond_32d

    iget v4, v0, Lcom/android/server/BatteryService;->mLastBroadcastPlugType:I

    iget v8, v0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eq v4, v8, :cond_330

    .line 980
    :cond_32d
    invoke-virtual {v0}, Lcom/android/server/BatteryService;->sendBatteryLevelChangedIntentLocked()V

    .line 985
    :cond_330
    iget-object v4, v0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    invoke-virtual {v4}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    if-eqz v7, :cond_33e

    cmp-long v4, v1, v5

    if-eqz v4, :cond_33e

    .line 989
    invoke-virtual {v0, v1, v2}, Lcom/android/server/BatteryService;->logOutlierLocked(J)V

    :cond_33e
    if-nez v3, :cond_38a

    .line 994
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    iput v2, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryStatus:I

    .line 995
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    iput v2, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryHealth:I

    .line 996
    iget-boolean v2, v1, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    iput-boolean v2, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryPresent:Z

    .line 997
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iput v2, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryLevel:I

    .line 998
    iget v2, v0, Lcom/android/server/BatteryService;->mPlugType:I

    iput v2, v0, Lcom/android/server/BatteryService;->mLastBroadcastPlugType:I

    .line 999
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    iput v2, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryVoltage:I

    .line 1000
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    iput v2, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryTemperature:I

    .line 1001
    iget v2, v1, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    iput v2, v0, Lcom/android/server/BatteryService;->mLastBroadcastMaxChargingCurrent:I

    .line 1002
    iget v2, v1, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    iput v2, v0, Lcom/android/server/BatteryService;->mLastBroadcastMaxChargingVoltage:I

    .line 1003
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    iput v2, v0, Lcom/android/server/BatteryService;->mLastBroadcastChargeCounter:I

    .line 1004
    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    iput-boolean v2, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryLevelCritical:Z

    .line 1005
    iget v2, v0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    iput v2, v0, Lcom/android/server/BatteryService;->mLastBroadcastInvalidCharger:I

    .line 1006
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    iput v2, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryCycleCount:I

    .line 1007
    iget v2, v1, Landroid/hardware/health/HealthInfo;->chargingState:I

    iput v2, v0, Lcom/android/server/BatteryService;->mLastBroadcastChargingState:I

    .line 1008
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    iput v2, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryCapacityLevel:I

    .line 1009
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    iput v2, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryFullCharge:I

    .line 1010
    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryFullChargeDesignCapacityUah:I

    iput v1, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryFullChargeDesign:I

    .line 1012
    iget-boolean v1, v0, Lcom/android/server/BatteryService;->mOemFastCharging:Z

    iput-boolean v1, v0, Lcom/android/server/BatteryService;->mLastOemFastCharging:Z

    :cond_38a
    return-void
.end method

.method public final processValuesLocked(ZLjava/io/PrintWriter;)V
    .registers 3

    .line 1673
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    if-eqz p2, :cond_c

    if-eqz p1, :cond_c

    .line 1675
    iget p0, p0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(I)V

    :cond_c
    return-void
.end method

.method public final rateLimitBatteryChangedBroadcast(Z)Z
    .registers 12

    .line 1302
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mIsFirstBatteryChangedUpdate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 1303
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/BatteryService;->mLastBroadcastVoltageUpdateTime:J

    .line 1304
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/BatteryService;->mLastBroadcastMaxChargingCurrentUpdateTime:J

    .line 1305
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mIsFirstBatteryChangedUpdate:Z

    return v1

    .line 1309
    :cond_14
    iget v0, p0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryVoltage:I

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v2, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    const/4 v4, 0x1

    if-eq v0, v3, :cond_1f

    move v5, v4

    goto :goto_20

    :cond_1f
    move v5, v1

    .line 1311
    :goto_20
    iget v6, p0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryTemperature:I

    iget v7, v2, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    if-eq v6, v7, :cond_28

    move v6, v4

    goto :goto_29

    :cond_28
    move v6, v1

    .line 1313
    :goto_29
    iget v7, p0, Lcom/android/server/BatteryService;->mLastBroadcastMaxChargingCurrent:I

    iget v8, v2, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    if-eq v7, v8, :cond_31

    move v7, v4

    goto :goto_32

    :cond_31
    move v7, v1

    :goto_32
    if-nez p1, :cond_ec

    .line 1315
    iget p1, v2, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    iget v8, p0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryStatus:I

    if-ne p1, v8, :cond_ec

    iget p1, v2, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    iget v8, p0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryHealth:I

    if-ne p1, v8, :cond_ec

    iget-boolean p1, v2, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    iget-boolean v8, p0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryPresent:Z

    if-ne p1, v8, :cond_ec

    iget p1, v2, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v8, p0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryLevel:I

    if-ne p1, v8, :cond_ec

    iget p1, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v8, p0, Lcom/android/server/BatteryService;->mLastBroadcastPlugType:I

    if-ne p1, v8, :cond_ec

    iget p1, v2, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    iget v8, p0, Lcom/android/server/BatteryService;->mLastBroadcastMaxChargingVoltage:I

    if-ne p1, v8, :cond_ec

    iget p1, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    iget v8, p0, Lcom/android/server/BatteryService;->mLastBroadcastInvalidCharger:I

    if-ne p1, v8, :cond_ec

    iget p1, v2, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    iget v8, p0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryCycleCount:I

    if-ne p1, v8, :cond_ec

    iget p1, v2, Landroid/hardware/health/HealthInfo;->chargingState:I

    iget v8, p0, Lcom/android/server/BatteryService;->mLastBroadcastChargingState:I

    if-ne p1, v8, :cond_ec

    iget p1, v2, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    iget v8, p0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryCapacityLevel:I

    if-ne p1, v8, :cond_ec

    iget p1, v2, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    iget v8, p0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryFullCharge:I

    if-ne p1, v8, :cond_ec

    iget p1, v2, Landroid/hardware/health/HealthInfo;->batteryFullChargeDesignCapacityUah:I

    iget v2, p0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryFullChargeDesign:I

    if-eq p1, v2, :cond_7d

    goto :goto_ec

    :cond_7d
    sub-int p1, v0, v3

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    if-eqz v5, :cond_ab

    .line 1349
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x3c23d70a    # 0.01f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_ab

    .line 1350
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v8, p0, Lcom/android/server/BatteryService;->mLastBroadcastVoltageUpdateTime:J

    sub-long/2addr v2, v8

    const-wide/16 v8, 0x4e20

    cmp-long p1, v2, v8

    if-ltz p1, :cond_ab

    .line 1352
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/BatteryService;->mLastBroadcastVoltageUpdateTime:J

    if-eqz v7, :cond_aa

    .line 1355
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/BatteryService;->mLastBroadcastMaxChargingCurrentUpdateTime:J

    :cond_aa
    return v1

    :cond_ab
    if-eqz v6, :cond_cd

    .line 1361
    iget p1, p0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryTemperature:I

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    sub-int/2addr p1, v0

    .line 1362
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_cd

    if-eqz v5, :cond_c4

    .line 1367
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/BatteryService;->mLastBroadcastVoltageUpdateTime:J

    :cond_c4
    if-eqz v7, :cond_cc

    .line 1370
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/BatteryService;->mLastBroadcastMaxChargingCurrentUpdateTime:J

    :cond_cc
    return v1

    :cond_cd
    if-eqz v7, :cond_eb

    .line 1376
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/android/server/BatteryService;->mLastBroadcastMaxChargingCurrentUpdateTime:J

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x1388

    cmp-long p1, v2, v6

    if-ltz p1, :cond_eb

    .line 1378
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/BatteryService;->mLastBroadcastMaxChargingCurrentUpdateTime:J

    if-eqz v5, :cond_ea

    .line 1381
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/BatteryService;->mLastBroadcastVoltageUpdateTime:J

    :cond_ea
    return v1

    :cond_eb
    return v4

    :cond_ec
    :goto_ec
    if-eqz v5, :cond_f4

    .line 1334
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/BatteryService;->mLastBroadcastVoltageUpdateTime:J

    :cond_f4
    if-eqz v7, :cond_fc

    .line 1337
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/BatteryService;->mLastBroadcastMaxChargingCurrentUpdateTime:J

    :cond_fc
    return v1
.end method

.method public final registerHealthCallback()V
    .registers 9

    .line 539
    const-string v0, "HealthInitWrapper"

    invoke-static {v0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    .line 542
    :try_start_5
    new-instance v0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/BatteryService;)V

    invoke-static {v0}, Lcom/android/server/health/HealthServiceWrapper;->create(Lcom/android/server/health/HealthInfoCallback;)Lcom/android/server/health/HealthServiceWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_10} :catch_7c
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_10} :catch_73
    .catchall {:try_start_5 .. :try_end_10} :catchall_89

    .line 550
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    .line 553
    const-string v0, "HealthInitWaitUpdate"

    invoke-static {v0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    .line 557
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 558
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    const-string v3, "health: Waited "

    if-nez v2, :cond_50

    .line 559
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms for callbacks. Waiting another "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ms..."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object p0, p0, Lcom/android/server/BatteryService;->mConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {p0, v5, v6}, Landroid/os/ConditionVariable;->block(J)Z

    .line 564
    :cond_50
    sget-object p0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms and received the update."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    return-void

    :catch_73
    move-exception p0

    .line 547
    :try_start_74
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v1, "health: cannot register callback. (no supported health HAL service)"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    throw p0

    :catch_7c
    move-exception p0

    .line 544
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v1, "health: cannot register callback. (RemoteException)"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
    :try_end_89
    .catchall {:try_start_74 .. :try_end_89} :catchall_89

    :catchall_89
    move-exception p0

    .line 550
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    .line 551
    throw p0
.end method

.method public final resetBattery(ZLjava/io/PrintWriter;)V
    .registers 6

    .line 1652
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 1653
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 1654
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v0, v2}, Lcom/android/server/health/Utils;->copyV1Battery(Landroid/hardware/health/HealthInfo;Landroid/hardware/health/HealthInfo;)V

    .line 1655
    new-instance v0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/BatteryService;ZLjava/io/PrintWriter;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1657
    :cond_16
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mBatteryInputSuspended:Z

    if-eqz p1, :cond_21

    .line 1658
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Landroid/sysprop/PowerProperties;->battery_input_suspended(Ljava/lang/Boolean;)V

    .line 1659
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mBatteryInputSuspended:Z

    :cond_21
    return-void
.end method

.method public final sendBatteryChangedIntentLocked(Z)V
    .registers 6

    .line 1019
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x60000000

    .line 1020
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1023
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    invoke-virtual {p0, v1}, Lcom/android/server/BatteryService;->getIconLocked(I)I

    move-result v1

    .line 1025
    const-string/jumbo v2, "seq"

    iget v3, p0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1026
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const-string/jumbo v3, "status"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1027
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    const-string v3, "health"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1028
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v2, v2, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    const-string/jumbo v3, "present"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1029
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    const-string/jumbo v3, "level"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1030
    const-string v2, "battery_low"

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1031
    const-string/jumbo v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1032
    const-string v2, "icon-small"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1033
    const-string/jumbo v1, "plugged"

    iget v2, p0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1034
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    const-string/jumbo v2, "voltage"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1035
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    const-string/jumbo v2, "temperature"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1037
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object v1, v1, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    const-string/jumbo v2, "technology"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1038
    const-string v1, "invalid_charger"

    iget v2, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1039
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    const-string/jumbo v2, "max_charging_current"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1041
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    const-string/jumbo v2, "max_charging_voltage"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1044
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    const-string v2, "charge_counter"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1045
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    const-string v2, "android.os.extra.CYCLE_COUNT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1046
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->chargingState:I

    const-string v2, "android.os.extra.CHARGING_STATUS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1047
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    const-string v2, "android.os.extra.CAPACITY_LEVEL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1048
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    const-string v2, "android.os.extra.MAXIMUM_CAPACITY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1049
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryFullChargeDesignCapacityUah:I

    const-string v2, "android.os.extra.DESIGN_CAPACITY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1052
    const-string/jumbo v1, "oem_fast_charging"

    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mOemFastCharging:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1059
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1060
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 1061
    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    iput-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1062
    iput-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1063
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1064
    iget-object p0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final sendBatteryLevelChangedIntentLocked()V
    .registers 10

    .line 1129
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1130
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1131
    const-string/jumbo v3, "seq"

    iget v4, p0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1132
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const-string/jumbo v4, "status"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1133
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    const-string v4, "health"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1134
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    const-string/jumbo v4, "present"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1135
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    const-string/jumbo v4, "level"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1136
    const-string v3, "battery_low"

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1137
    const-string/jumbo v3, "scale"

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1138
    const-string/jumbo v3, "plugged"

    iget v5, p0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1139
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    const-string/jumbo v5, "voltage"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1140
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    const-string/jumbo v5, "temperature"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1141
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    const-string v5, "charge_counter"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1142
    const-string v3, "android.os.extra.EVENT_TIMESTAMP"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1143
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    const-string v5, "android.os.extra.CYCLE_COUNT"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1144
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->chargingState:I

    const-string v5, "android.os.extra.CHARGING_STATUS"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1145
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    const-string v5, "android.os.extra.CAPACITY_LEVEL"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1146
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    const-string v5, "android.os.extra.MAXIMUM_CAPACITY"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1147
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryFullChargeDesignCapacityUah:I

    const-string v5, "android.os.extra.DESIGN_CAPACITY"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1151
    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    .line 1152
    iget-object v5, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v5, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1154
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-le v0, v4, :cond_b6

    .line 1155
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    :cond_b6
    if-eqz v3, :cond_d3

    .line 1160
    iget-wide v3, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelChangedSentMs:J

    sub-long v5, v1, v3

    const-wide/32 v7, 0xea60

    cmp-long v0, v5, v7

    if-lez v0, :cond_c6

    const-wide/16 v0, 0x0

    goto :goto_c9

    :cond_c6
    add-long/2addr v3, v7

    sub-long v0, v3, v1

    .line 1162
    :goto_c9
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/BatteryService$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_d3
    return-void
.end method

.method public final sendEnqueuedBatteryLevelChangedEvents()V
    .registers 5

    .line 1168
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1169
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1170
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 1171
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_31

    .line 1172
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.BATTERY_LEVEL_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000000

    .line 1173
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1174
    const-string v2, "android.os.extra.EVENTS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1176
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.BATTERY_STATS"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1178
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelChangedSentMs:J

    return-void

    :catchall_31
    move-exception p0

    .line 1171
    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public final shouldSendBatteryLowLocked()Z
    .registers 6

    .line 613
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 614
    :goto_9
    iget v3, p0, Lcom/android/server/BatteryService;->mLastBroadcastPlugType:I

    if-eqz v3, :cond_f

    move v3, v2

    goto :goto_10

    :cond_f
    move v3, v1

    :goto_10
    if-nez v0, :cond_29

    .line 622
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v4, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    if-eq v4, v2, :cond_29

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v4, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v0, v4, :cond_29

    if-nez v3, :cond_28

    iget v3, p0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryLevel:I

    if-gt v3, v4, :cond_28

    iget p0, p0, Lcom/android/server/BatteryService;->mLastLowBatteryWarningLevel:I

    if-le v0, p0, :cond_29

    :cond_28
    return v2

    :cond_29
    return v1
.end method

.method public final shouldShutdownLocked()Z
    .registers 6

    .line 630
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v0, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_d

    if-ne v1, v3, :cond_c

    return v3

    :cond_c
    return v4

    .line 633
    :cond_d
    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mShutdownIfNoPower:Z

    if-nez p0, :cond_12

    return v4

    .line 636
    :cond_12
    iget p0, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    if-lez p0, :cond_17

    return v4

    .line 641
    :cond_17
    iget-boolean p0, v0, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    if-nez p0, :cond_1c

    return v4

    .line 649
    :cond_1c
    iget p0, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_22

    return v3

    :cond_22
    return v4
.end method

.method public final shutdownIfNoPowerLocked()V
    .registers 4

    .line 655
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->shouldShutdownLocked()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 656
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.action.REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 657
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 658
    const-string v1, "android.intent.extra.REASON"

    const-string v2, "battery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 660
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 661
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/BatteryService$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_29
    return-void
.end method

.method public final shutdownIfOverTempLocked()V
    .registers 4

    .line 670
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    iget v1, p0, Lcom/android/server/BatteryService;->mShutdownBatteryTemperature:I

    if-le v0, v1, :cond_2c

    .line 671
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.action.REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 672
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 673
    const-string v1, "android.intent.extra.REASON"

    const-string/jumbo v2, "thermal,battery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 675
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 676
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/BatteryService$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2c
    return-void
.end method

.method public final startShutdownActivity(Landroid/content/Intent;)V
    .registers 10

    .line 681
    iget-object v0, p0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_14

    .line 685
    :cond_9
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    if-nez v1, :cond_15

    :goto_14
    return-void

    .line 691
    :cond_15
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    iget-object v0, p0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 692
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v7

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v2, p1

    .line 691
    invoke-virtual/range {v1 .. v7}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7e

    const/4 v0, 0x0

    move v1, v0

    .line 694
    :goto_2b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_7e

    .line 695
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 696
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_7b

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_40

    goto :goto_7b

    .line 700
    :cond_40
    iget-object v5, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v6, "android.permission.SHUTDOWN"

    invoke-virtual {v5, v6, v0, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_71

    .line 702
    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Shutdown activity "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " does not have permission "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    .line 707
    :cond_71
    iget-object p1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_7e

    :cond_7b
    :goto_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 711
    :cond_7e
    :goto_7e
    iget-object p0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final unplugBattery(ZLjava/io/PrintWriter;)V
    .registers 5

    .line 1640
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v0, :cond_b

    .line 1641
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {v0, v1}, Lcom/android/server/health/Utils;->copyV1Battery(Landroid/hardware/health/HealthInfo;Landroid/hardware/health/HealthInfo;)V

    .line 1643
    :cond_b
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 1644
    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    .line 1645
    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 1646
    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    const/4 v0, 0x1

    .line 1647
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 1648
    new-instance v0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/BatteryService;ZLjava/io/PrintWriter;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public update(Landroid/hardware/health/HealthInfo;)V
    .registers 6

    .line 721
    const-string v0, "HealthInfoUpdate"

    invoke-static {v0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    .line 723
    const-string v0, "BatteryChargeCounter"

    iget v1, p1, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 725
    const-string v0, "BatteryCurrent"

    iget v1, p1, Landroid/hardware/health/HealthInfo;->batteryCurrentMicroamps:I

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 726
    const-string v0, "PlugType"

    invoke-static {p1}, Lcom/android/server/BatteryService;->plugType(Landroid/hardware/health/HealthInfo;)I

    move-result v1

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 727
    const-string v0, "BatteryStatus"

    iget v1, p1, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 729
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 730
    :try_start_29
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v1, :cond_3b

    .line 731
    iput-object p1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    const/4 p1, 0x0

    .line 733
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    .line 734
    iget-object p0, p0, Lcom/android/server/BatteryService;->mConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_40

    :catchall_39
    move-exception p0

    goto :goto_45

    .line 736
    :cond_3b
    iget-object p0, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/HealthInfo;

    invoke-static {p0, p1}, Lcom/android/server/health/Utils;->copyV1Battery(Landroid/hardware/health/HealthInfo;Landroid/hardware/health/HealthInfo;)V

    .line 738
    :goto_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_29 .. :try_end_41} :catchall_39

    .line 739
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    return-void

    .line 738
    :goto_45
    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_39

    throw p0
.end method

.method public final updateBatteryWarningLevelLocked()V
    .registers 4

    .line 570
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 571
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 573
    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iput v2, p0, Lcom/android/server/BatteryService;->mLastLowBatteryWarningLevel:I

    .line 574
    const-string/jumbo v2, "low_power_trigger_level"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-nez v0, :cond_24

    .line 577
    iput v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 579
    :cond_24
    iget v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    if-ge v0, v1, :cond_2c

    .line 580
    iput v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 582
    :cond_2c
    iget v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    const/4 v0, 0x1

    .line 584
    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    return-void
.end method

.method public final updateHealthInfo()V
    .registers 3

    .line 1615
    :try_start_0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

    invoke-virtual {p0}, Lcom/android/server/health/HealthServiceWrapper;->scheduleUpdate()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 1617
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v1, "Unable to update health service data."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
