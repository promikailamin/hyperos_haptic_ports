.class public Lcom/android/server/power/batterysaver/BatterySaverController;
.super Ljava/lang/Object;
.source "BatterySaverController.java"

# interfaces
.implements Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;


# instance fields
.field public mAdaptiveEnabledRaw:Z

.field public mAdaptivePreviouslyEnabled:Z

.field public final mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

.field public final mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

.field public final mContext:Landroid/content/Context;

.field public mFullEnabledRaw:Z

.field public mFullPreviouslyEnabled:Z

.field public final mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

.field public mIsInteractive:Z

.field public mIsPluggedIn:Z

.field public final mListeners:Ljava/util/ArrayList;

.field public final mLock:Ljava/lang/Object;

.field public mPowerManager:Landroid/os/PowerManager;

.field public mPowerSaveModeChangedListenerPackage:Ljava/util/Optional;

.field public final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/power/batterysaver/BatterySaverController;)Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/power/batterysaver/BatterySaverController;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsPluggedIn(Lcom/android/server/power/batterysaver/BatterySaverController;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mIsPluggedIn:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$misPolicyEnabled(Lcom/android/server/power/batterysaver/BatterySaverController;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isPolicyEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mupdateBatterySavingStats(Lcom/android/server/power/batterysaver/BatterySaverController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->updateBatterySavingStats()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/power/batterysaver/BatterySaverPolicy;Lcom/android/server/power/batterysaver/BatterySavingStats;)V
    .registers 7

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mListeners:Ljava/util/ArrayList;

    .line 169
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverController$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/batterysaver/BatterySaverController$1;-><init>(Lcom/android/server/power/batterysaver/BatterySaverController;)V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 205
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    .line 206
    iput-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    .line 207
    new-instance p1, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    invoke-direct {p1, p0, p3}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;-><init>(Lcom/android/server/power/batterysaver/BatterySaverController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    .line 208
    iput-object p4, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 209
    invoke-virtual {p4, p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->addListener(Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;)V

    .line 210
    iput-object p5, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    .line 212
    invoke-static {}, Landroid/os/PowerManager;->invalidatePowerSaveModeCaches()V

    return-void
.end method

.method public static reasonToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_40

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 163
    :pswitch_15
    const-string p0, "Full Power Savings changed"

    return-object p0

    .line 161
    :pswitch_18
    const-string/jumbo p0, "timeout"

    return-object p0

    .line 159
    :pswitch_1c
    const-string p0, "Adaptive Power Savings changed"

    return-object p0

    .line 157
    :pswitch_1f
    const-string p0, "Dynamic Warning Auto OFF"

    return-object p0

    .line 155
    :pswitch_22
    const-string p0, "Dynamic Warning Auto ON"

    return-object p0

    .line 153
    :pswitch_25
    const-string p0, "Setting changed"

    return-object p0

    .line 151
    :pswitch_28
    const-string p0, "Plugged in"

    return-object p0

    .line 149
    :pswitch_2b
    const-string p0, "Policy changed"

    return-object p0

    .line 147
    :pswitch_2e
    const-string p0, "Interactivity changed"

    return-object p0

    .line 145
    :pswitch_31
    const-string p0, "Sticky restore"

    return-object p0

    .line 143
    :pswitch_34
    const-string p0, "Manual OFF"

    return-object p0

    .line 141
    :pswitch_37
    const-string p0, "Manual ON"

    return-object p0

    .line 139
    :pswitch_3a
    const-string p0, "Percentage Auto OFF"

    return-object p0

    .line 137
    :pswitch_3d
    const-string p0, "Percentage Auto ON"

    return-object p0

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method


# virtual methods
.method public addListener(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V
    .registers 3

    .line 219
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_3
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public enableBatterySaver(ZI)V
    .registers 5

    .line 290
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getFullEnabledLocked()Z

    move-result v1

    if-ne v1, p1, :cond_d

    .line 292
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    goto :goto_1e

    .line 294
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverController;->setFullEnabledLocked(Z)V

    .line 296
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->updatePolicyLevelLocked()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 297
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(ZI)V

    .line 299
    :cond_1c
    monitor-exit v0

    return-void

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_b

    throw p0
.end method

.method public final getAdaptiveEnabledLocked()Z
    .registers 1

    .line 557
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabledRaw:Z

    return p0
.end method

.method public getBatterySaverPolicy()Lcom/android/server/power/batterysaver/BatterySaverPolicy;
    .registers 1

    .line 402
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    return-object p0
.end method

.method public final getFullEnabledLocked()Z
    .registers 1

    .line 543
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabledRaw:Z

    return p0
.end method

.method public getPolicyLocked(I)Landroid/os/BatterySaverPolicyConfig;
    .registers 2

    .line 313
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getPolicyLocked(I)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->toConfig()Landroid/os/BatterySaverPolicyConfig;

    move-result-object p0

    return-object p0
.end method

.method public final getPowerManager()Landroid/os/PowerManager;
    .registers 3

    .line 239
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_16

    .line 240
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    .line 241
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    .line 243
    :cond_16
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method public final getPowerSaveModeChangedListenerPackage()Ljava/util/Optional;
    .registers 3

    .line 495
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerSaveModeChangedListenerPackage:Ljava/util/Optional;

    if-nez v0, :cond_26

    .line 496
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    const v1, 0x10402da

    .line 497
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 501
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 500
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 501
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->isSystemPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 502
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    goto :goto_24

    .line 503
    :cond_20
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    :goto_24
    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerSaveModeChangedListenerPackage:Ljava/util/Optional;

    .line 505
    :cond_26
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerSaveModeChangedListenerPackage:Ljava/util/Optional;

    return-object p0
.end method

.method public handleBatterySaverStateChanged(ZI)V
    .registers 14

    .line 430
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v5

    .line 432
    iget-object v8, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 433
    :try_start_b
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getFullEnabledLocked()Z

    move-result v0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getAdaptiveEnabledLocked()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_20

    :cond_1a
    move v0, v10

    goto :goto_21

    :catchall_1c
    move-exception v0

    move-object p0, v0

    goto/16 :goto_d1

    :cond_20
    :goto_20
    move v0, v9

    .line 436
    :goto_21
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullPreviouslyEnabled:Z

    .line 437
    iget-boolean v2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptivePreviouslyEnabled:Z

    .line 438
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getFullEnabledLocked()Z

    move-result v3

    .line 439
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getAdaptiveEnabledLocked()Z

    move-result v4

    if-eqz v0, :cond_38

    .line 441
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->toEventLogString()Ljava/lang/String;

    move-result-object v0

    :goto_35
    move v7, p2

    move-object v6, v0

    goto :goto_3b

    :cond_38
    const-string v0, ""

    goto :goto_35

    .line 435
    :goto_3b
    invoke-static/range {v1 .. v7}, Lcom/android/server/EventLogTags;->writeBatterySaverMode(IIIIILjava/lang/String;I)V

    .line 444
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getFullEnabledLocked()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullPreviouslyEnabled:Z

    .line 445
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getAdaptiveEnabledLocked()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptivePreviouslyEnabled:Z

    .line 447
    iget-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mListeners:Ljava/util/ArrayList;

    new-array v0, v10, [Landroid/os/PowerManagerInternal$LowPowerModeListener;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/os/PowerManagerInternal$LowPowerModeListener;

    .line 449
    iput-boolean v5, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mIsInteractive:Z

    .line 450
    monitor-exit v8
    :try_end_57
    .catchall {:try_start_b .. :try_end_57} :catchall_1c

    .line 452
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_68

    .line 454
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v9, v1}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 457
    :cond_68
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->updateBatterySavingStats()V

    if-eqz p1, :cond_d0

    .line 467
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 468
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 469
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 472
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getPowerSaveModeChangedListenerPackage()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_aa

    .line 473
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getPowerSaveModeChangedListenerPackage()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v1, 0x11000000

    .line 475
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 477
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 481
    :cond_aa
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED_INTERNAL"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 483
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 486
    array-length p1, p2

    :goto_bc
    if-ge v10, p1, :cond_d0

    aget-object v0, p2, v10

    .line 487
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 488
    invoke-interface {v0}, Landroid/os/PowerManagerInternal$LowPowerModeListener;->getServiceType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getBatterySaverPolicy(I)Landroid/os/PowerSaveState;

    move-result-object v1

    .line 489
    invoke-interface {v0, v1}, Landroid/os/PowerManagerInternal$LowPowerModeListener;->onLowPowerModeChanged(Landroid/os/PowerSaveState;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_bc

    :cond_d0
    return-void

    .line 450
    :goto_d1
    :try_start_d1
    monitor-exit v8
    :try_end_d2
    .catchall {:try_start_d1 .. :try_end_d2} :catchall_1c

    throw p0
.end method

.method public isAdaptiveEnabled()Z
    .registers 2

    .line 356
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getAdaptiveEnabledLocked()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 358
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public isEnabled()Z
    .registers 3

    .line 321
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 322
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getFullEnabledLocked()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getAdaptiveEnabledLocked()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 323
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->shouldAdvertiseIsEnabled()Z

    move-result p0

    if-eqz p0, :cond_1a

    goto :goto_1c

    :catchall_18
    move-exception p0

    goto :goto_1f

    :cond_1a
    const/4 p0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 p0, 0x1

    :goto_1d
    monitor-exit v0

    return p0

    .line 324
    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_18

    throw p0
.end method

.method public isFullEnabled()Z
    .registers 2

    .line 338
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getFullEnabledLocked()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 340
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public isLaunchBoostDisabled()Z
    .registers 2

    .line 409
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isPolicyEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->isLaunchBoostDisabled()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public final isPolicyEnabled()Z
    .registers 3

    .line 332
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 333
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getFullEnabledLocked()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getAdaptiveEnabledLocked()Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_14

    :cond_10
    const/4 p0, 0x0

    goto :goto_15

    :catchall_12
    move-exception p0

    goto :goto_17

    :cond_14
    :goto_14
    const/4 p0, 0x1

    :goto_15
    monitor-exit v0

    return p0

    .line 334
    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_12

    throw p0
.end method

.method public onBatterySaverPolicyChanged(Lcom/android/server/power/batterysaver/BatterySaverPolicy;)V
    .registers 3

    .line 248
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isPolicyEnabled()Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 251
    :cond_7
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    const/4 p1, 0x1

    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(ZI)V

    return-void
.end method

.method public resetAdaptivePolicyLocked(I)Z
    .registers 3

    .line 374
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->resetAdaptivePolicyLocked()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 375
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(ZI)V

    return v0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public final setAdaptiveEnabledLocked(Z)V
    .registers 3

    .line 548
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabledRaw:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 551
    :cond_5
    invoke-static {}, Landroid/os/PowerManager;->invalidatePowerSaveModeCaches()V

    .line 552
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mAdaptiveEnabledRaw:Z

    return-void
.end method

.method public setAdaptivePolicyEnabledLocked(ZI)Z
    .registers 5

    .line 382
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getAdaptiveEnabledLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_8

    return v1

    .line 385
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverController;->setAdaptiveEnabledLocked(Z)V

    .line 386
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->updatePolicyLevelLocked()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 387
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(ZI)V

    return p1

    :cond_18
    return v1
.end method

.method public setAdaptivePolicyLocked(Landroid/os/BatterySaverPolicyConfig;I)Z
    .registers 3

    .line 362
    invoke-static {p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->fromConfig(Landroid/os/BatterySaverPolicyConfig;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/batterysaver/BatterySaverController;->setAdaptivePolicyLocked(Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;I)Z

    move-result p0

    return p0
.end method

.method public setAdaptivePolicyLocked(Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;I)Z
    .registers 4

    .line 366
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->setAdaptivePolicyLocked(Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 367
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(ZI)V

    return p1

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public final setFullEnabledLocked(Z)V
    .registers 3

    .line 534
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabledRaw:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 537
    :cond_5
    invoke-static {}, Landroid/os/PowerManager;->invalidatePowerSaveModeCaches()V

    .line 538
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFullEnabledRaw:Z

    return-void
.end method

.method public setFullPolicyLocked(Landroid/os/BatterySaverPolicyConfig;I)Z
    .registers 3

    .line 344
    invoke-static {p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;->fromConfig(Landroid/os/BatterySaverPolicyConfig;)Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/batterysaver/BatterySaverController;->setFullPolicyLocked(Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;I)Z

    move-result p0

    return p0
.end method

.method public setFullPolicyLocked(Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;I)Z
    .registers 4

    .line 348
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->setFullPolicyLocked(Lcom/android/server/power/batterysaver/BatterySaverPolicy$Policy;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 349
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(ZI)V

    return p1

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public systemReady()V
    .registers 4

    .line 228
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 229
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    const-string v1, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 235
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postSystemReady()V

    return-void
.end method

.method public final updateBatterySavingStats()V
    .registers 9

    .line 509
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v0

    if-nez v0, :cond_e

    .line 511
    const-string p0, "BatterySaverController"

    const-string v0, "PowerManager not initialized"

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 514
    :cond_e
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    .line 516
    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v2, :cond_1d

    move v0, v5

    goto :goto_26

    .line 517
    :cond_1d
    invoke-virtual {v0}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    move-result v0

    if-eqz v0, :cond_25

    move v0, v4

    goto :goto_26

    :cond_25
    move v0, v3

    .line 520
    :goto_26
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 521
    :try_start_29
    iget-object v6, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    .line 522
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getFullEnabledLocked()Z

    move-result v7

    if-eqz v7, :cond_33

    move v3, v4

    goto :goto_3a

    .line 523
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getAdaptiveEnabledLocked()Z

    move-result v4

    if-eqz v4, :cond_3a

    move v3, v5

    .line 528
    :cond_3a
    :goto_3a
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mIsPluggedIn:Z

    .line 521
    invoke-virtual {v6, v3, v1, v0, p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->transitionState(IIII)V

    .line 529
    monitor-exit v2

    return-void

    :catchall_41
    move-exception p0

    monitor-exit v2
    :try_end_43
    .catchall {:try_start_29 .. :try_end_43} :catchall_41

    throw p0
.end method

.method public final updatePolicyLevelLocked()Z
    .registers 2

    .line 303
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getFullEnabledLocked()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 304
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->setPolicyLevel(I)Z

    move-result p0

    return p0

    .line 305
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getAdaptiveEnabledLocked()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 306
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->setPolicyLevel(I)Z

    move-result p0

    return p0

    .line 308
    :cond_1c
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->setPolicyLevel(I)Z

    move-result p0

    return p0
.end method
