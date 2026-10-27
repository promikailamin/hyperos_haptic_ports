.class public Lcom/android/server/power/batterysaver/BatterySaverController;
.super Ljava/lang/Object;
.source "BatterySaverController.java"

# interfaces
.implements Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field public static final REASON_ADAPTIVE_DYNAMIC_POWER_SAVINGS_CHANGED:I = 0xb

.field public static final REASON_DYNAMIC_POWER_SAVINGS_AUTOMATIC_OFF:I = 0xa

.field public static final REASON_DYNAMIC_POWER_SAVINGS_AUTOMATIC_ON:I = 0x9

.field public static final REASON_FULL_POWER_SAVINGS_CHANGED:I = 0xd

.field public static final REASON_INTERACTIVE_CHANGED:I = 0x5

.field public static final REASON_MANUAL_OFF:I = 0x3

.field public static final REASON_MANUAL_ON:I = 0x2

.field public static final REASON_PERCENTAGE_AUTOMATIC_OFF:I = 0x1

.field public static final REASON_PERCENTAGE_AUTOMATIC_ON:I = 0x0

.field public static final REASON_PLUGGED_IN:I = 0x7

.field public static final REASON_POLICY_CHANGED:I = 0x6

.field public static final REASON_SETTING_CHANGED:I = 0x8

.field public static final REASON_STICKY_RESTORE:I = 0x4

.field public static final REASON_TIMEOUT:I = 0xc

.field static final TAG:Ljava/lang/String; = "BatterySaverController"


# instance fields
.field private mAdaptiveEnabledRaw:Z

.field private mAdaptivePreviouslyEnabled:Z

.field private final mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

.field private final mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

.field private final mContext:Landroid/content/Context;

.field private mFullEnabledRaw:Z

.field private mFullPreviouslyEnabled:Z

.field private final mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

.field private mIsInteractive:Z

.field private mIsPluggedIn:Z

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/PowerManagerInternal$LowPowerModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerSaveModeChangedListenerPackage:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/power/batterysaver/BatterySaverController;)Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/power/batterysaver/BatterySaverController;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsPluggedIn(Lcom/android/server/power/batterysaver/BatterySaverController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mIsPluggedIn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$misPolicyEnabled(Lcom/android/server/power/batterysaver/BatterySaverController;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isPolicyEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateBatterySavingStats(Lcom/android/server/power/batterysaver/BatterySaverController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->updateBatterySavingStats()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 65
    sget-boolean v0, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/power/batterysaver/BatterySaverController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/power/batterysaver/BatterySaverPolicy;Lcom/android/server/power/batterysaver/BatterySavingStats;)V
    .registers 7
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "policy"    # Lcom/android/server/power/batterysaver/BatterySaverPolicy;
    .param p5, "batterySavingStats"    # Lcom/android/server/power/batterysaver/BatterySavingStats;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mListeners:Ljava/util/ArrayList;

    .line 170
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverController$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/batterysaver/BatterySaverController$1;-><init>(Lcom/android/server/power/batterysaver/BatterySaverController;)V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 206
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    .line 207
    iput-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    .line 208
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    invoke-direct {v0, p0, p3}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;-><init>(Lcom/android/server/power/batterysaver/BatterySaverController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    .line 209
    iput-object p4, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 210
    invoke-virtual {p4, p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->addListener(Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;)V

    .line 211
    iput-object p5, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    .line 213
    invoke-static {}, Landroid/os/PowerManager;->invalidatePowerSaveModeCaches()V

    .line 214
    return-void
.end method

.method private getAdaptiveEnabledLocked()Z
    .registers 2

    .line 558
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabledRaw:Z

    return v0
.end method

.method private getFullEnabledLocked()Z
    .registers 2

    .line 544
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabledRaw:Z

    return v0
.end method

.method private getPowerManager()Landroid/os/PowerManager;
    .registers 3

    .line 240
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_16

    .line 241
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    .line 242
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    .line 244
    :cond_16
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method private getPowerSaveModeChangedListenerPackage()Ljava/util/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerSaveModeChangedListenerPackage:Ljava/util/Optional;

    if-nez v0, :cond_27

    .line 497
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    const v1, 0x10402ab

    .line 498
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "configPowerSaveModeChangedListenerPackage":Ljava/lang/String;
    nop

    .line 502
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 501
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 502
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->isSystemPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 503
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    goto :goto_25

    .line 504
    :cond_21
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    :goto_25
    iput-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerSaveModeChangedListenerPackage:Ljava/util/Optional;

    .line 506
    .end local v0    # "configPowerSaveModeChangedListenerPackage":Ljava/lang/String;
    :cond_27
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerSaveModeChangedListenerPackage:Ljava/util/Optional;

    return-object v0
.end method

.method private isPolicyEnabled()Z
    .registers 3

    .line 333
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 334
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getFullEnabledLocked()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getAdaptiveEnabledLocked()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_12

    :cond_10
    const/4 v1, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v1, 0x1

    :goto_13
    monitor-exit v0

    return v1

    .line 335
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method static reasonToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "reason"    # I

    .line 136
    packed-switch p0, :pswitch_data_42

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 164
    :pswitch_17
    const-string v0, "Full Power Savings changed"

    return-object v0

    .line 162
    :pswitch_1a
    const-string/jumbo v0, "timeout"

    return-object v0

    .line 160
    :pswitch_1e
    const-string v0, "Adaptive Power Savings changed"

    return-object v0

    .line 158
    :pswitch_21
    const-string v0, "Dynamic Warning Auto OFF"

    return-object v0

    .line 156
    :pswitch_24
    const-string v0, "Dynamic Warning Auto ON"

    return-object v0

    .line 154
    :pswitch_27
    const-string v0, "Setting changed"

    return-object v0

    .line 152
    :pswitch_2a
    const-string v0, "Plugged in"

    return-object v0

    .line 150
    :pswitch_2d
    const-string v0, "Policy changed"

    return-object v0

    .line 148
    :pswitch_30
    const-string v0, "Interactivity changed"

    return-object v0

    .line 146
    :pswitch_33
    const-string v0, "Sticky restore"

    return-object v0

    .line 144
    :pswitch_36
    const-string v0, "Manual OFF"

    return-object v0

    .line 142
    :pswitch_39
    const-string v0, "Manual ON"

    return-object v0

    .line 140
    :pswitch_3c
    const-string v0, "Percentage Auto OFF"

    return-object v0

    .line 138
    :pswitch_3f
    const-string v0, "Percentage Auto ON"

    return-object v0

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method private setAdaptiveEnabledLocked(Z)V
    .registers 3
    .param p1, "value"    # Z

    .line 549
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabledRaw:Z

    if-ne v0, p1, :cond_5

    .line 550
    return-void

    .line 552
    :cond_5
    invoke-static {}, Landroid/os/PowerManager;->invalidatePowerSaveModeCaches()V

    .line 553
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabledRaw:Z

    .line 554
    return-void
.end method

.method private setFullEnabledLocked(Z)V
    .registers 3
    .param p1, "value"    # Z

    .line 535
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabledRaw:Z

    if-ne v0, p1, :cond_5

    .line 536
    return-void

    .line 538
    :cond_5
    invoke-static {}, Landroid/os/PowerManager;->invalidatePowerSaveModeCaches()V

    .line 539
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabledRaw:Z

    .line 540
    return-void
.end method

.method private updateBatterySavingStats()V
    .registers 11

    .line 510
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v0

    .line 511
    .local v0, "pm":Landroid/os/PowerManager;
    if-nez v0, :cond_e

    .line 512
    const-string v1, "BatterySaverController"

    const-string v2, "PowerManager not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    return-void

    .line 515
    :cond_e
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    .line 517
    .local v1, "isInteractive":Z
    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1d

    move v2, v3

    goto :goto_26

    .line 518
    :cond_1d
    invoke-virtual {v0}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    move-result v2

    if-eqz v2, :cond_25

    move v2, v4

    goto :goto_26

    .line 519
    :cond_25
    move v2, v5

    :goto_26
    nop

    .line 521
    .local v2, "dozeMode":I
    iget-object v6, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 522
    :try_start_2a
    iget-object v7, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    .line 523
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getFullEnabledLocked()Z

    move-result v8

    if-eqz v8, :cond_34

    move v3, v4

    goto :goto_3c

    .line 524
    :cond_34
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getAdaptiveEnabledLocked()Z

    move-result v8

    if-eqz v8, :cond_3b

    goto :goto_3c

    .line 525
    :cond_3b
    move v3, v5

    .line 526
    :goto_3c
    if-eqz v1, :cond_40

    move v8, v4

    goto :goto_41

    .line 527
    :cond_40
    move v8, v5

    .line 529
    :goto_41
    iget-boolean v9, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mIsPluggedIn:Z

    if-eqz v9, :cond_46

    goto :goto_47

    :cond_46
    move v4, v5

    .line 522
    :goto_47
    invoke-virtual {v7, v3, v8, v2, v4}, Lcom/android/server/power/batterysaver/BatterySavingStats;->transitionState(IIII)V

    .line 530
    monitor-exit v6

    .line 531
    return-void

    .line 530
    :catchall_4c
    move-exception v3

    monitor-exit v6
    :try_end_4e
    .catchall {:try_start_2a .. :try_end_4e} :catchall_4c

    throw v3
.end method

.method private updatePolicyLevelLocked()Z
    .registers 3

    .line 304
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getFullEnabledLocked()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 305
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->setPolicyLevel(I)Z

    move-result v0

    return v0

    .line 306
    :cond_e
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getAdaptiveEnabledLocked()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 307
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->setPolicyLevel(I)Z

    move-result v0

    return v0

    .line 309
    :cond_1c
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->setPolicyLevel(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addListener(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/os/PowerManagerInternal$LowPowerModeListener;

    .line 220
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    monitor-exit v0

    .line 223
    return-void

    .line 222
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public enableBatterySaver(ZI)V
    .registers 6
    .param p1, "enable"    # Z
    .param p2, "reason"    # I

    .line 291
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getFullEnabledLocked()Z

    move-result v1

    if-ne v1, p1, :cond_b

    .line 293
    monitor-exit v0

    return-void

    .line 295
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverController;->setFullEnabledLocked(Z)V

    .line 297
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->updatePolicyLevelLocked()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 298
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(ZI)V

    .line 300
    :cond_1a
    monitor-exit v0

    .line 301
    return-void

    .line 300
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public getBatterySaverPolicy()Lcom/android/server/power/batterysaver/BatterySaverPolicy;
    .registers 2

    .line 403
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    return-object v0
.end method

.method getPolicyLocked(I)Landroid/os/BatterySaverPolicyConfig;
    .registers 3
    .param p1, "policyLevel"    # I

    .line 314
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getPolicyLocked(I)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->toConfig()Landroid/os/BatterySaverPolicyConfig;

    move-result-object v0

    return-object v0
.end method

.method handleBatterySaverStateChanged(ZI)V
    .registers 15
    .param p1, "sendBroadcast"    # Z
    .param p2, "reason"    # I

    .line 431
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    .line 433
    .local v0, "isInteractive":Z
    iget-object v8, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 434
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getFullEnabledLocked()Z

    move-result v1

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v1, :cond_1c

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getAdaptiveEnabledLocked()Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_1c

    :cond_1a
    move v1, v9

    goto :goto_1d

    :cond_1c
    :goto_1c
    move v1, v10

    :goto_1d
    move v11, v1

    .line 437
    .local v11, "enabled":Z
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullPreviouslyEnabled:Z

    if-eqz v1, :cond_24

    move v1, v10

    goto :goto_25

    :cond_24
    move v1, v9

    .line 438
    :goto_25
    iget-boolean v2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptivePreviouslyEnabled:Z

    if-eqz v2, :cond_2b

    move v2, v10

    goto :goto_2c

    :cond_2b
    move v2, v9

    .line 439
    :goto_2c
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getFullEnabledLocked()Z

    move-result v3

    if-eqz v3, :cond_34

    move v3, v10

    goto :goto_35

    :cond_34
    move v3, v9

    .line 440
    :goto_35
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getAdaptiveEnabledLocked()Z

    move-result v4

    .line 441
    nop

    .line 442
    if-eqz v11, :cond_43

    iget-object v5, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {v5}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->toEventLogString()Ljava/lang/String;

    move-result-object v5

    goto :goto_45

    :cond_43
    const-string v5, ""

    :goto_45
    move-object v6, v5

    .line 436
    move v5, v0

    move v7, p2

    invoke-static/range {v1 .. v7}, Lcom/android/server/EventLogTags;->writeBatterySaverMode(IIIIILjava/lang/String;I)V

    .line 445
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getFullEnabledLocked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullPreviouslyEnabled:Z

    .line 446
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getAdaptiveEnabledLocked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptivePreviouslyEnabled:Z

    .line 448
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mListeners:Ljava/util/ArrayList;

    new-array v2, v9, [Landroid/os/PowerManagerInternal$LowPowerModeListener;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/PowerManagerInternal$LowPowerModeListener;

    .line 450
    .local v1, "listeners":[Landroid/os/PowerManagerInternal$LowPowerModeListener;
    iput-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mIsInteractive:Z

    .line 451
    monitor-exit v8
    :try_end_64
    .catchall {:try_start_b .. :try_end_64} :catchall_103

    .line 453
    const-class v2, Landroid/os/PowerManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManagerInternal;

    .line 454
    .local v2, "pmi":Landroid/os/PowerManagerInternal;
    if-eqz v2, :cond_75

    .line 455
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v10, v3}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 458
    :cond_75
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->updateBatterySavingStats()V

    .line 460
    if-eqz p1, :cond_102

    .line 462
    sget-boolean v3, Lcom/android/server/power/batterysaver/BatterySaverController;->DEBUG:Z

    if-eqz v3, :cond_9a

    .line 463
    const-string v3, "BatterySaverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending broadcasts for mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_9a
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 469
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 470
    iget-object v5, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 473
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getPowerSaveModeChangedListenerPackage()Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_d9

    .line 474
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 475
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getPowerSaveModeChangedListenerPackage()Ljava/util/Optional;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x11000000

    .line 476
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    .line 478
    iget-object v5, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 482
    :cond_d9
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.os.action.POWER_SAVE_MODE_CHANGED_INTERNAL"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 483
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 484
    iget-object v4, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "android.permission.DEVICE_POWER"

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 487
    array-length v4, v1

    :goto_ee
    if-ge v9, v4, :cond_102

    aget-object v5, v1, v9

    .line 488
    .local v5, "listener":Landroid/os/PowerManagerInternal$LowPowerModeListener;
    iget-object v6, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 489
    invoke-interface {v5}, Landroid/os/PowerManagerInternal$LowPowerModeListener;->getServiceType()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getBatterySaverPolicy(I)Landroid/os/PowerSaveState;

    move-result-object v6

    .line 490
    .local v6, "result":Landroid/os/PowerSaveState;
    invoke-interface {v5, v6}, Landroid/os/PowerManagerInternal$LowPowerModeListener;->onLowPowerModeChanged(Landroid/os/PowerSaveState;)V

    .line 487
    .end local v5    # "listener":Landroid/os/PowerManagerInternal$LowPowerModeListener;
    .end local v6    # "result":Landroid/os/PowerSaveState;
    add-int/lit8 v9, v9, 0x1

    goto :goto_ee

    .line 493
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_102
    return-void

    .line 451
    .end local v1    # "listeners":[Landroid/os/PowerManagerInternal$LowPowerModeListener;
    .end local v2    # "pmi":Landroid/os/PowerManagerInternal;
    .end local v11    # "enabled":Z
    :catchall_103
    move-exception v1

    :try_start_104
    monitor-exit v8
    :try_end_105
    .catchall {:try_start_104 .. :try_end_105} :catchall_103

    throw v1
.end method

.method isAdaptiveEnabled()Z
    .registers 3

    .line 357
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 358
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getAdaptiveEnabledLocked()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 359
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public isEnabled()Z
    .registers 3

    .line 322
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getFullEnabledLocked()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getAdaptiveEnabledLocked()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 324
    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->shouldAdvertiseIsEnabled()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_1a

    :cond_18
    const/4 v1, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v1, 0x1

    :goto_1b
    monitor-exit v0

    .line 323
    return v1

    .line 325
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method isFullEnabled()Z
    .registers 3

    .line 339
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 340
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getFullEnabledLocked()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 341
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public isInteractive()Z
    .registers 3

    .line 396
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 397
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mIsInteractive:Z

    monitor-exit v0

    return v1

    .line 398
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isLaunchBoostDisabled()Z
    .registers 2

    .line 410
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isPolicyEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->isLaunchBoostDisabled()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public onBatterySaverPolicyChanged(Lcom/android/server/power/batterysaver/BatterySaverPolicy;)V
    .registers 5
    .param p1, "policy"    # Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 249
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isPolicyEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 250
    return-void

    .line 252
    :cond_7
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    const/4 v1, 0x1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(ZI)V

    .line 253
    return-void
.end method

.method resetAdaptivePolicyLocked(I)Z
    .registers 4
    .param p1, "reason"    # I

    .line 375
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->resetAdaptivePolicyLocked()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 376
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(ZI)V

    .line 377
    return v1

    .line 379
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method setAdaptivePolicyEnabledLocked(ZI)Z
    .registers 5
    .param p1, "enabled"    # Z
    .param p2, "reason"    # I

    .line 383
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getAdaptiveEnabledLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_8

    .line 384
    return v1

    .line 386
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverController;->setAdaptiveEnabledLocked(Z)V

    .line 387
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->updatePolicyLevelLocked()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 388
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(ZI)V

    .line 389
    return v1

    .line 391
    :cond_18
    return v1
.end method

.method setAdaptivePolicyLocked(Landroid/os/BatterySaverPolicyConfig;I)Z
    .registers 4
    .param p1, "config"    # Landroid/os/BatterySaverPolicyConfig;
    .param p2, "reason"    # I

    .line 363
    invoke-static {p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->fromConfig(Landroid/os/BatterySaverPolicyConfig;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/power/batterysaver/BatterySaverController;->setAdaptivePolicyLocked(Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;I)Z

    move-result v0

    return v0
.end method

.method setAdaptivePolicyLocked(Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;I)Z
    .registers 5
    .param p1, "policy"    # Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
    .param p2, "reason"    # I

    .line 367
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->setAdaptivePolicyLocked(Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 368
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(ZI)V

    .line 369
    return v1

    .line 371
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method setFullPolicyLocked(Landroid/os/BatterySaverPolicyConfig;I)Z
    .registers 4
    .param p1, "config"    # Landroid/os/BatterySaverPolicyConfig;
    .param p2, "reason"    # I

    .line 345
    invoke-static {p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->fromConfig(Landroid/os/BatterySaverPolicyConfig;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/power/batterysaver/BatterySaverController;->setFullPolicyLocked(Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;I)Z

    move-result v0

    return v0
.end method

.method setFullPolicyLocked(Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;I)Z
    .registers 5
    .param p1, "policy"    # Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;
    .param p2, "reason"    # I

    .line 349
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->setFullPolicyLocked(Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 350
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(ZI)V

    .line 351
    return v1

    .line 353
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public systemReady()V
    .registers 4

    .line 229
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    const-string v1, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 236
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postSystemReady()V

    .line 237
    return-void
.end method
