.class public Lcom/android/server/power/LowPowerStandbyController;
.super Ljava/lang/Object;
.source "LowPowerStandbyController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;,
        Lcom/android/server/power/LowPowerStandbyController$LocalService;,
        Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;,
        Lcom/android/server/power/LowPowerStandbyController$Clock;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final DEFAULT_ACTIVE_DURING_MAINTENANCE:Z = false

.field private static final MSG_NOTIFY_ACTIVE_CHANGED:I = 0x1

.field private static final MSG_NOTIFY_ALLOWLIST_CHANGED:I = 0x2

.field private static final MSG_STANDBY_TIMEOUT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LowPowerStandbyController"


# instance fields
.field private mActiveDuringMaintenance:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mAllowlistUids:Landroid/util/SparseBooleanArray;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

.field private final mContext:Landroid/content/Context;

.field private mEnabledByDefaultConfig:Z

.field private mForceActive:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIdleSinceNonInteractive:Z

.field private mIsActive:Z

.field private mIsDeviceIdle:Z

.field private mIsEnabled:Z

.field private mIsInteractive:Z

.field private mLastInteractiveTimeElapsed:J

.field private final mLocalService:Lcom/android/server/power/LowPowerStandbyControllerInternal;

.field private final mLock:Ljava/lang/Object;

.field private final mOnStandbyTimeoutExpired:Landroid/app/AlarmManager$OnAlarmListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mSettingsObserver:Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;

.field private mStandbyTimeoutConfig:I

.field private mSupportedConfig:Z


# direct methods
.method public static synthetic $r8$lambda$fnuUmEHxwGla4tVH-LSbLbHxmMg(Lcom/android/server/power/LowPowerStandbyController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/LowPowerStandbyController;->onStandbyTimeoutExpired()V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddToAllowlistInternal(Lcom/android/server/power/LowPowerStandbyController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->addToAllowlistInternal(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyActiveChanged(Lcom/android/server/power/LowPowerStandbyController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->notifyActiveChanged(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyAllowlistChanged(Lcom/android/server/power/LowPowerStandbyController;[I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->notifyAllowlistChanged([I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monDeviceIdleModeChanged(Lcom/android/server/power/LowPowerStandbyController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/LowPowerStandbyController;->onDeviceIdleModeChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monInteractive(Lcom/android/server/power/LowPowerStandbyController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/LowPowerStandbyController;->onInteractive()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monNonInteractive(Lcom/android/server/power/LowPowerStandbyController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/LowPowerStandbyController;->onNonInteractive()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monStandbyTimeoutExpired(Lcom/android/server/power/LowPowerStandbyController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/LowPowerStandbyController;->onStandbyTimeoutExpired()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveFromAllowlistInternal(Lcom/android/server/power/LowPowerStandbyController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->removeFromAllowlistInternal(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/LowPowerStandbyController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/power/LowPowerStandbyController$Clock;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "clock"    # Lcom/android/server/power/LowPowerStandbyController$Clock;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    .line 89
    new-instance v0, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/power/LowPowerStandbyController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/LowPowerStandbyController;)V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mOnStandbyTimeoutExpired:Landroid/app/AlarmManager$OnAlarmListener;

    .line 91
    new-instance v0, Lcom/android/server/power/LowPowerStandbyController$LocalService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/LowPowerStandbyController$LocalService;-><init>(Lcom/android/server/power/LowPowerStandbyController;Lcom/android/server/power/LowPowerStandbyController$LocalService-IA;)V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLocalService:Lcom/android/server/power/LowPowerStandbyControllerInternal;

    .line 92
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mAllowlistUids:Landroid/util/SparseBooleanArray;

    .line 94
    new-instance v0, Lcom/android/server/power/LowPowerStandbyController$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/LowPowerStandbyController$1;-><init>(Lcom/android/server/power/LowPowerStandbyController;)V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 173
    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    .line 174
    new-instance v0, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;-><init>(Lcom/android/server/power/LowPowerStandbyController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Landroid/os/Handler;

    .line 175
    iput-object p3, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    .line 176
    new-instance v1, Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;-><init>(Lcom/android/server/power/LowPowerStandbyController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSettingsObserver:Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;

    .line 177
    return-void
.end method

.method private addToAllowlistInternal(I)V
    .registers 5
    .param p1, "uid"    # I

    .line 555
    sget-boolean v0, Lcom/android/server/power/LowPowerStandbyController;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 556
    const-string v0, "LowPowerStandbyController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding to allowlist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_1c
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 559
    :try_start_1f
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mAllowlistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_34

    .line 560
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mAllowlistUids:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 561
    invoke-direct {p0}, Lcom/android/server/power/LowPowerStandbyController;->enqueueNotifyAllowlistChangedLocked()V

    .line 563
    :cond_34
    monitor-exit v0

    .line 564
    return-void

    .line 563
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_1f .. :try_end_38} :catchall_36

    throw v1
.end method

.method private cancelStandbyTimeoutAlarmLocked()V
    .registers 3

    .line 298
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mOnStandbyTimeoutExpired:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 299
    return-void
.end method

.method private enqueueNotifyActiveChangedLocked()V
    .registers 6

    .line 395
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    invoke-interface {v0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 396
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Landroid/os/Handler;

    iget-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 397
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 398
    return-void
.end method

.method private enqueueNotifyAllowlistChangedLocked()V
    .registers 6

    .line 589
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    invoke-interface {v0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 590
    .local v0, "now":J
    invoke-direct {p0}, Lcom/android/server/power/LowPowerStandbyController;->getAllowlistUidsLocked()[I

    move-result-object v2

    .line 591
    .local v2, "allowlistUids":[I
    iget-object v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 592
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 593
    return-void
.end method

.method private getAllowlistUidsLocked()[I
    .registers 4

    .line 580
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mAllowlistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 581
    .local v0, "uids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mAllowlistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 582
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mAllowlistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    aput v2, v0, v1

    .line 581
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 584
    .end local v1    # "i":I
    :cond_1c
    return-object v0
.end method

.method private notifyActiveChanged(Z)V
    .registers 4
    .param p1, "active"    # Z

    .line 402
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 403
    .local v0, "pmi":Landroid/os/PowerManagerInternal;
    const-class v1, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 406
    .local v1, "npmi":Lcom/android/server/net/NetworkPolicyManagerInternal;
    invoke-virtual {v0, p1}, Landroid/os/PowerManagerInternal;->setLowPowerStandbyActive(Z)V

    .line 407
    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkPolicyManagerInternal;->setLowPowerStandbyActive(Z)V

    .line 408
    return-void
.end method

.method private notifyAllowlistChanged([I)V
    .registers 4
    .param p1, "allowlistUids"    # [I

    .line 596
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 597
    .local v0, "pmi":Landroid/os/PowerManagerInternal;
    const-class v1, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 599
    .local v1, "npmi":Lcom/android/server/net/NetworkPolicyManagerInternal;
    invoke-virtual {v0, p1}, Landroid/os/PowerManagerInternal;->setLowPowerStandbyAllowlist([I)V

    .line 600
    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkPolicyManagerInternal;->setLowPowerStandbyAllowlist([I)V

    .line 601
    return-void
.end method

.method private notifyEnabledChangedLocked()V
    .registers 4

    .line 375
    sget-boolean v0, Lcom/android/server/power/LowPowerStandbyController;->DEBUG:Z

    if-eqz v0, :cond_1f

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyEnabledChangedLocked, mIsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LowPowerStandbyController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_1f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.os.action.LOW_POWER_STANDBY_ENABLED_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 380
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 381
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 382
    return-void
.end method

.method private onDeviceIdleModeChanged()V
    .registers 5

    .line 302
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 303
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsDeviceIdle:Z

    .line 304
    sget-boolean v1, Lcom/android/server/power/LowPowerStandbyController;->DEBUG:Z

    if-eqz v1, :cond_2a

    .line 305
    const-string v1, "LowPowerStandbyController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDeviceIdleModeChanged, mIsDeviceIdle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsDeviceIdle:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_2a
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIdleSinceNonInteractive:Z

    if-nez v1, :cond_35

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsDeviceIdle:Z

    if-eqz v1, :cond_33

    goto :goto_35

    :cond_33
    const/4 v1, 0x0

    goto :goto_36

    :cond_35
    :goto_35
    const/4 v1, 0x1

    :goto_36
    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIdleSinceNonInteractive:Z

    .line 309
    invoke-direct {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    .line 310
    monitor-exit v0

    .line 311
    return-void

    .line 310
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method private onDisabledLocked()V
    .registers 3

    .line 330
    sget-boolean v0, Lcom/android/server/power/LowPowerStandbyController;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 331
    const-string v0, "LowPowerStandbyController"

    const-string/jumbo v1, "onDisabledLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_c
    invoke-direct {p0}, Lcom/android/server/power/LowPowerStandbyController;->cancelStandbyTimeoutAlarmLocked()V

    .line 335
    invoke-direct {p0}, Lcom/android/server/power/LowPowerStandbyController;->unregisterBroadcastReceiver()V

    .line 336
    invoke-direct {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    .line 337
    return-void
.end method

.method private onEnabledLocked()V
    .registers 3

    .line 315
    sget-boolean v0, Lcom/android/server/power/LowPowerStandbyController;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 316
    const-string v0, "LowPowerStandbyController"

    const-string/jumbo v1, "onEnabledLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_c
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 320
    invoke-direct {p0}, Lcom/android/server/power/LowPowerStandbyController;->onInteractive()V

    goto :goto_1b

    .line 322
    :cond_18
    invoke-direct {p0}, Lcom/android/server/power/LowPowerStandbyController;->onNonInteractive()V

    .line 325
    :goto_1b
    invoke-direct {p0}, Lcom/android/server/power/LowPowerStandbyController;->registerBroadcastReceiver()V

    .line 326
    return-void
.end method

.method private onInteractive()V
    .registers 3

    .line 275
    sget-boolean v0, Lcom/android/server/power/LowPowerStandbyController;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 276
    const-string v0, "LowPowerStandbyController"

    const-string/jumbo v1, "onInteractive"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_c
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_f
    invoke-direct {p0}, Lcom/android/server/power/LowPowerStandbyController;->cancelStandbyTimeoutAlarmLocked()V

    .line 281
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsInteractive:Z

    .line 282
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsDeviceIdle:Z

    .line 283
    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIdleSinceNonInteractive:Z

    .line 284
    invoke-direct {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    .line 285
    monitor-exit v0

    .line 286
    return-void

    .line 285
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_1f

    throw v1
.end method

.method private onNonInteractive()V
    .registers 5

    .line 257
    sget-boolean v0, Lcom/android/server/power/LowPowerStandbyController;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 258
    const-string v0, "LowPowerStandbyController"

    const-string/jumbo v1, "onNonInteractive"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_c
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    invoke-interface {v0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 261
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 262
    const/4 v3, 0x0

    :try_start_16
    iput-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsInteractive:Z

    .line 263
    iput-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsDeviceIdle:Z

    .line 264
    iput-wide v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLastInteractiveTimeElapsed:J

    .line 266
    iget v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyTimeoutConfig:I

    if-lez v3, :cond_23

    .line 267
    invoke-direct {p0}, Lcom/android/server/power/LowPowerStandbyController;->scheduleStandbyTimeoutAlarmLocked()V

    .line 270
    :cond_23
    invoke-direct {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    .line 271
    monitor-exit v2

    .line 272
    return-void

    .line 271
    :catchall_28
    move-exception v3

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_16 .. :try_end_2a} :catchall_28

    throw v3
.end method

.method private onStandbyTimeoutExpired()V
    .registers 3

    .line 385
    sget-boolean v0, Lcom/android/server/power/LowPowerStandbyController;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 386
    const-string v0, "LowPowerStandbyController"

    const-string/jumbo v1, "onStandbyTimeoutExpired"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_c
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 389
    :try_start_f
    invoke-direct {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    .line 390
    monitor-exit v0

    .line 391
    return-void

    .line 390
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_14

    throw v1
.end method

.method private registerBroadcastReceiver()V
    .registers 4

    .line 361
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 362
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 363
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 364
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 367
    return-void
.end method

.method private removeFromAllowlistInternal(I)V
    .registers 5
    .param p1, "uid"    # I

    .line 567
    sget-boolean v0, Lcom/android/server/power/LowPowerStandbyController;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 568
    const-string v0, "LowPowerStandbyController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing from allowlist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_1c
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 571
    :try_start_1f
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mAllowlistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 572
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mAllowlistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 573
    invoke-direct {p0}, Lcom/android/server/power/LowPowerStandbyController;->enqueueNotifyAllowlistChangedLocked()V

    .line 575
    :cond_33
    monitor-exit v0

    .line 576
    return-void

    .line 575
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_1f .. :try_end_37} :catchall_35

    throw v1
.end method

.method private scheduleStandbyTimeoutAlarmLocked()V
    .registers 12

    .line 290
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyTimeoutConfig:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 291
    .local v0, "nextAlarmTime":J
    iget-object v4, p0, Lcom/android/server/power/LowPowerStandbyController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v9, p0, Lcom/android/server/power/LowPowerStandbyController;->mOnStandbyTimeoutExpired:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v10, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    const-string v8, "LowPowerStandbyController.StandbyTimeout"

    move-wide v6, v0

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 294
    return-void
.end method

.method private unregisterBroadcastReceiver()V
    .registers 3

    .line 370
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 371
    return-void
.end method

.method private updateActiveLocked()V
    .registers 9

    .line 232
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    invoke-interface {v0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 233
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mLastInteractiveTimeElapsed:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyTimeoutConfig:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v2, :cond_15

    move v2, v3

    goto :goto_16

    :cond_15
    move v2, v4

    .line 235
    .local v2, "standbyTimeoutExpired":Z
    :goto_16
    iget-boolean v5, p0, Lcom/android/server/power/LowPowerStandbyController;->mIdleSinceNonInteractive:Z

    if-eqz v5, :cond_20

    iget-boolean v5, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsDeviceIdle:Z

    if-nez v5, :cond_20

    move v5, v3

    goto :goto_21

    :cond_20
    move v5, v4

    .line 236
    .local v5, "maintenanceMode":Z
    :goto_21
    iget-boolean v6, p0, Lcom/android/server/power/LowPowerStandbyController;->mForceActive:Z

    if-nez v6, :cond_37

    iget-boolean v6, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    if-eqz v6, :cond_36

    iget-boolean v6, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsInteractive:Z

    if-nez v6, :cond_36

    if-eqz v2, :cond_36

    if-eqz v5, :cond_37

    iget-boolean v6, p0, Lcom/android/server/power/LowPowerStandbyController;->mActiveDuringMaintenance:Z

    if-eqz v6, :cond_36

    goto :goto_37

    :cond_36
    move v3, v4

    .line 239
    .local v3, "newActive":Z
    :cond_37
    :goto_37
    sget-boolean v4, Lcom/android/server/power/LowPowerStandbyController;->DEBUG:Z

    const-string v6, "LowPowerStandbyController"

    if-eqz v4, :cond_b2

    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateActiveLocked: mIsEnabled="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v7, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", mIsInteractive="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v7, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsInteractive:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", standbyTimeoutExpired="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", mIdleSinceNonInteractive="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v7, p0, Lcom/android/server/power/LowPowerStandbyController;->mIdleSinceNonInteractive:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", mIsDeviceIdle="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v7, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsDeviceIdle:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", mActiveDuringMaintenance="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v7, p0, Lcom/android/server/power/LowPowerStandbyController;->mActiveDuringMaintenance:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", mForceActive="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v7, p0, Lcom/android/server/power/LowPowerStandbyController;->mForceActive:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", mIsActive="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v7, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", newActive="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_b2
    iget-boolean v4, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    if-eq v4, v3, :cond_d7

    .line 248
    iput-boolean v3, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    .line 249
    sget-boolean v4, Lcom/android/server/power/LowPowerStandbyController;->DEBUG:Z

    if-eqz v4, :cond_d4

    .line 250
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIsActive changed, mIsActive="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v7, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_d4
    invoke-direct {p0}, Lcom/android/server/power/LowPowerStandbyController;->enqueueNotifyActiveChangedLocked()V

    .line 254
    :cond_d7
    return-void
.end method

.method private updateSettingsLocked()V
    .registers 6

    .line 219
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 220
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_18

    .line 222
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnabledByDefaultConfig:Z

    .line 220
    const-string v4, "low_power_standby_enabled"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_18

    move v1, v2

    goto :goto_19

    :cond_18
    move v1, v3

    :goto_19
    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    .line 223
    const-string v1, "low_power_standby_active_during_maintenance"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_25

    :cond_24
    move v2, v3

    :goto_25
    iput-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mActiveDuringMaintenance:Z

    .line 227
    invoke-direct {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    .line 228
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 469
    sget-boolean v0, Lcom/android/server/power/PowerDebugConfig;->DEBUG_LPSC:Z

    sput-boolean v0, Lcom/android/server/power/LowPowerStandbyController;->DEBUG:Z

    .line 470
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 472
    .local v0, "ipw":Landroid/util/IndentingPrintWriter;
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 473
    const-string v1, "Low Power Standby Controller:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 475
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 476
    :try_start_19
    const-string v2, "mIsActive="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 477
    iget-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 478
    const-string v2, "mIsEnabled="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 479
    iget-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 480
    const-string/jumbo v2, "mSupportedConfig="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 481
    iget-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 482
    const-string v2, "mEnabledByDefaultConfig="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 483
    iget-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnabledByDefaultConfig:Z

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 484
    const-string/jumbo v2, "mStandbyTimeoutConfig="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 485
    iget v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyTimeoutConfig:I

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 487
    iget-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    if-nez v2, :cond_55

    iget-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    if-eqz v2, :cond_7d

    .line 488
    :cond_55
    const-string v2, "mIsInteractive="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 489
    iget-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsInteractive:Z

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 490
    const-string v2, "mLastInteractiveTime="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 491
    iget-wide v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mLastInteractiveTimeElapsed:J

    invoke-virtual {v0, v2, v3}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 492
    const-string v2, "mIdleSinceNonInteractive="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 493
    iget-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mIdleSinceNonInteractive:Z

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 494
    const-string v2, "mIsDeviceIdle="

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 495
    iget-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsDeviceIdle:Z

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 498
    :cond_7d
    invoke-direct {p0}, Lcom/android/server/power/LowPowerStandbyController;->getAllowlistUidsLocked()[I

    move-result-object v2

    .line 499
    .local v2, "allowlistUids":[I
    const-string v3, "mAllowlistUids="

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 500
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 501
    .end local v2    # "allowlistUids":[I
    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_19 .. :try_end_8e} :catchall_92

    .line 502
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 503
    return-void

    .line 501
    :catchall_92
    move-exception v2

    :try_start_93
    monitor-exit v1
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    throw v2
.end method

.method dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 13
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "tag"    # J

    .line 506
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 507
    :try_start_3
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 508
    .local v1, "token":J
    const-wide v3, 0x10800000001L

    iget-boolean v5, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 509
    const-wide v3, 0x10800000002L

    iget-boolean v5, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 510
    const-wide v3, 0x10800000003L

    iget-boolean v5, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 511
    const-wide v3, 0x10800000004L

    iget-boolean v5, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnabledByDefaultConfig:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 513
    const-wide v3, 0x10800000005L

    iget-boolean v5, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsInteractive:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 514
    const-wide v3, 0x10300000006L

    iget-wide v5, p0, Lcom/android/server/power/LowPowerStandbyController;->mLastInteractiveTimeElapsed:J

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 516
    const-wide v3, 0x10500000007L

    iget v5, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyTimeoutConfig:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 518
    const-wide v3, 0x10800000008L

    iget-boolean v5, p0, Lcom/android/server/power/LowPowerStandbyController;->mIdleSinceNonInteractive:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 520
    const-wide v3, 0x10800000009L

    iget-boolean v5, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsDeviceIdle:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 522
    invoke-direct {p0}, Lcom/android/server/power/LowPowerStandbyController;->getAllowlistUidsLocked()[I

    move-result-object v3

    .line 523
    .local v3, "allowlistUids":[I
    array-length v4, v3

    const/4 v5, 0x0

    :goto_67
    if-ge v5, v4, :cond_76

    aget v6, v3, v5

    .line 524
    .local v6, "appId":I
    const-wide v7, 0x2050000000aL

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 523
    .end local v6    # "appId":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_67

    .line 527
    :cond_76
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 528
    .end local v1    # "token":J
    .end local v3    # "allowlistUids":[I
    monitor-exit v0

    .line 529
    return-void

    .line 528
    :catchall_7b
    move-exception v1

    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_3 .. :try_end_7d} :catchall_7b

    throw v1
.end method

.method forceActive(Z)V
    .registers 4
    .param p1, "active"    # Z

    .line 461
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 462
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mForceActive:Z

    .line 463
    invoke-direct {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    .line 464
    monitor-exit v0

    .line 465
    return-void

    .line 464
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method isActive()Z
    .registers 3

    .line 412
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 413
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsActive:Z

    monitor-exit v0

    return v1

    .line 414
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method isEnabled()Z
    .registers 3

    .line 424
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 425
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    .line 426
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method isSupported()Z
    .registers 3

    .line 418
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 419
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    monitor-exit v0

    return v1

    .line 420
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method onSettingsChanged()V
    .registers 4

    .line 341
    sget-boolean v0, Lcom/android/server/power/LowPowerStandbyController;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 342
    const-string v0, "LowPowerStandbyController"

    const-string/jumbo v1, "onSettingsChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_c
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 345
    :try_start_f
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    .line 346
    .local v1, "oldEnabled":Z
    invoke-direct {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateSettingsLocked()V

    .line 348
    iget-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    if-eq v2, v1, :cond_24

    .line 349
    if-eqz v2, :cond_1e

    .line 350
    invoke-direct {p0}, Lcom/android/server/power/LowPowerStandbyController;->onEnabledLocked()V

    goto :goto_21

    .line 352
    :cond_1e
    invoke-direct {p0}, Lcom/android/server/power/LowPowerStandbyController;->onDisabledLocked()V

    .line 355
    :goto_21
    invoke-direct {p0}, Lcom/android/server/power/LowPowerStandbyController;->notifyEnabledChangedLocked()V

    .line 357
    .end local v1    # "oldEnabled":Z
    :cond_24
    monitor-exit v0

    .line 358
    return-void

    .line 357
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_26

    throw v1
.end method

.method public setActiveDuringMaintenance(Z)V
    .registers 6
    .param p1, "activeDuringMaintenance"    # Z

    .line 446
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 447
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    if-nez v1, :cond_10

    .line 448
    const-string v1, "LowPowerStandbyController"

    const-string v2, "Low Power Standby settings cannot be changed because it is not supported on this device"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    monitor-exit v0

    return-void

    .line 453
    :cond_10
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "low_power_standby_active_during_maintenance"

    .line 455
    if-eqz p1, :cond_1c

    const/4 v3, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v3, 0x0

    .line 453
    :goto_1d
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 456
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onSettingsChanged()V

    .line 457
    monitor-exit v0

    .line 458
    return-void

    .line 457
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method setEnabled(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .line 430
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 431
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    if-nez v1, :cond_10

    .line 432
    const-string v1, "LowPowerStandbyController"

    const-string v2, "Low Power Standby cannot be enabled because it is not supported on this device"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    monitor-exit v0

    return-void

    .line 437
    :cond_10
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "low_power_standby_enabled"

    .line 438
    if-eqz p1, :cond_1c

    const/4 v3, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v3, 0x0

    .line 437
    :goto_1d
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 439
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onSettingsChanged()V

    .line 440
    monitor-exit v0

    .line 441
    return-void

    .line 440
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public systemReady()V
    .registers 8

    .line 182
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 183
    .local v0, "resources":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    const v2, 0x1110176

    :try_start_c
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mSupportedConfig:Z

    .line 187
    if-nez v2, :cond_16

    .line 188
    monitor-exit v1

    return-void

    .line 191
    :cond_16
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/AlarmManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 192
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/PowerManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mPowerManager:Landroid/os/PowerManager;

    .line 194
    const v2, 0x10e0099

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mStandbyTimeoutConfig:I

    .line 196
    const v2, 0x1110175

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mEnabledByDefaultConfig:Z

    .line 199
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsInteractive:Z

    .line 201
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "low_power_standby_enabled"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/LowPowerStandbyController;->mSettingsObserver:Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 204
    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "low_power_standby_active_during_maintenance"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/LowPowerStandbyController;->mSettingsObserver:Lcom/android/server/power/LowPowerStandbyController$SettingsObserver;

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 207
    invoke-direct {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateSettingsLocked()V

    .line 209
    iget-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsEnabled:Z

    if-eqz v2, :cond_76

    .line 210
    invoke-direct {p0}, Lcom/android/server/power/LowPowerStandbyController;->registerBroadcastReceiver()V

    .line 212
    :cond_76
    monitor-exit v1
    :try_end_77
    .catchall {:try_start_c .. :try_end_77} :catchall_7f

    .line 214
    const-class v1, Lcom/android/server/power/LowPowerStandbyControllerInternal;

    iget-object v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mLocalService:Lcom/android/server/power/LowPowerStandbyControllerInternal;

    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 215
    return-void

    .line 212
    :catchall_7f
    move-exception v2

    :try_start_80
    monitor-exit v1
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw v2
.end method
