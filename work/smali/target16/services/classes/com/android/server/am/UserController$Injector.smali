.class Lcom/android/server/am/UserController$Injector;
.super Ljava/lang/Object;
.source "UserController.java"


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public mLockSettingsInternal:Lcom/android/server/locksettings/LockSettingsInternal;

.field public mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public mUserManager:Lcom/android/server/pm/UserManagerService;

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public mUserSwitchingDialog:Lcom/android/server/am/UserSwitchingDialog;

.field public final mUserSwitchingDialogLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$FvvzSlnmEfZ797QDRQWwplqhvGU(Landroid/appwidget/AppWidgetManagerInternal;I)V
    .registers 2

    .line 4647
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetManagerInternal;->unlockUser(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3

    .line 4477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4473
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserSwitchingDialogLock:Ljava/lang/Object;

    .line 4478
    iput-object p1, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method


# virtual methods
.method public activityManagerForceStopUserPackages(ILjava/lang/String;Z)V
    .registers 5

    .line 4621
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 4622
    :try_start_6
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->forceStopUserPackagesLocked(ILjava/lang/String;Z)Z

    .line 4623
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception p0

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public activityManagerOnUserStopped(I)V
    .registers 2

    .line 4535
    const-class p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUserStopped(I)V

    return-void
.end method

.method public batteryStatsServiceNoteEvent(ILjava/lang/String;I)V
    .registers 4

    .line 4588
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    return-void
.end method

.method public broadcastIntent(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZIIIII)I
    .registers 41

    move-object/from16 v0, p0

    .line 4507
    const-string v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    move-object/from16 v7, p1

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_10

    move/from16 v1, p15

    .line 4511
    :cond_10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x7581

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4513
    new-instance v1, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 4515
    iget-object v2, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    .line 4516
    :try_start_2c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcastIntent-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p15

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4517
    iget-object v3, v0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v14, 0x0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move/from16 v16, p8

    move-object/from16 v17, p9

    move/from16 v19, p10

    move/from16 v20, p11

    move/from16 v21, p12

    move/from16 v22, p13

    move/from16 v23, p14

    move/from16 v24, p15

    invoke-virtual/range {v3 .. v24}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    move-result v0

    .line 4521
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4522
    monitor-exit v2
    :try_end_7b
    .catchall {:try_start_2c .. :try_end_7b} :catchall_7f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_7f
    move-exception v0

    .line 4523
    :try_start_80
    monitor-exit v2
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public checkCallingPermission(Ljava/lang/String;)I
    .registers 2

    .line 4527
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public checkComponentPermission(Ljava/lang/String;IIIZ)I
    .registers 6

    .line 4628
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result p0

    return p0
.end method

.method public checkPermissionForPreflight(Ljava/lang/String;IILjava/lang/String;)Z
    .registers 5

    .line 4634
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 4633
    invoke-static {p0, p1, p2, p3, p4}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public clearAllLockedTasks(Ljava/lang/String;)V
    .registers 2

    .line 4725
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->clearLockedTasks(Ljava/lang/String;)V

    return-void
.end method

.method public clearBroadcastQueueForUser(I)V
    .registers 3

    .line 4657
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 4658
    :try_start_6
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->clearBroadcastQueueForUserLocked(I)Z

    .line 4659
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception p0

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public dismissUserSwitchingDialog(Ljava/lang/Runnable;)V
    .registers 4

    .line 4675
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserSwitchingDialogLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4676
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/UserController$Injector;->mUserSwitchingDialog:Lcom/android/server/am/UserSwitchingDialog;

    if-eqz v1, :cond_10

    .line 4677
    invoke-virtual {v1, p1}, Lcom/android/server/am/UserSwitchingDialog;->dismiss(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 4678
    iput-object p1, p0, Lcom/android/server/am/UserController$Injector;->mUserSwitchingDialog:Lcom/android/server/am/UserSwitchingDialog;

    goto :goto_15

    :catchall_e
    move-exception p0

    goto :goto_17

    :cond_10
    if-eqz p1, :cond_15

    .line 4680
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 4682
    :cond_15
    :goto_15
    monitor-exit v0

    return-void

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_e

    throw p0
.end method

.method public doesUserSupportSwitchTo(Landroid/content/pm/UserInfo;)Z
    .registers 2

    .line 4737
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result p0

    return p0
.end method

.method public getAlarmManagerInternal()Lcom/android/server/AlarmManagerInternal;
    .registers 1

    .line 4580
    const-class p0, Lcom/android/server/AlarmManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/AlarmManagerInternal;

    return-object p0
.end method

.method public getAudioManagerInternal()Landroid/media/AudioManagerInternal;
    .registers 1

    .line 4576
    const-class p0, Landroid/media/AudioManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManagerInternal;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 4494
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .registers 4

    .line 4482
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/am/UserController$Injector;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getKeyguardManager()Landroid/app/KeyguardManager;
    .registers 2

    .line 4584
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    return-object p0
.end method

.method public getLmkdKillCount()I
    .registers 2

    const/4 p0, 0x0

    const/16 v0, 0x383

    .line 4809
    invoke-static {p0, v0}, Lcom/android/server/am/ProcessList;->getLmkdKillCount(II)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 4810
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_14

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_14
    const/4 p0, -0x1

    return p0
.end method

.method public getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .registers 2

    .line 4498
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getLockSettingsInternal()Lcom/android/server/locksettings/LockSettingsInternal;
    .registers 2

    .line 4562
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mLockSettingsInternal:Lcom/android/server/locksettings/LockSettingsInternal;

    if-nez v0, :cond_e

    .line 4563
    const-class v0, Lcom/android/server/locksettings/LockSettingsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/locksettings/LockSettingsInternal;

    iput-object v0, p0, Lcom/android/server/am/UserController$Injector;->mLockSettingsInternal:Lcom/android/server/locksettings/LockSettingsInternal;

    .line 4565
    :cond_e
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mLockSettingsInternal:Lcom/android/server/locksettings/LockSettingsInternal;

    return-object p0
.end method

.method public getPowerManagerInternal()Landroid/os/PowerManagerInternal;
    .registers 2

    .line 4569
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-nez v0, :cond_e

    .line 4570
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/UserController$Injector;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 4572
    :cond_e
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    return-object p0
.end method

.method public getSystemServiceManager()Lcom/android/server/SystemServiceManager;
    .registers 1

    .line 4596
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object p0
.end method

.method public getUiHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .registers 3

    .line 4486
    new-instance v0, Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-object v0
.end method

.method public getUserJourneyLogger()Lcom/android/server/pm/UserJourneyLogger;
    .registers 1

    .line 4490
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getUserJourneyLogger()Lcom/android/server/pm/UserJourneyLogger;

    move-result-object p0

    return-object p0
.end method

.method public getUserManager()Lcom/android/server/pm/UserManagerService;
    .registers 2

    .line 4547
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserManager:Lcom/android/server/pm/UserManagerService;

    if-nez v0, :cond_13

    .line 4548
    const-string/jumbo v0, "user"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4549
    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService;

    iput-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 4551
    :cond_13
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-object p0
.end method

.method public getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;
    .registers 2

    .line 4555
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-nez v0, :cond_e

    .line 4556
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/UserController$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 4558
    :cond_e
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    return-object p0
.end method

.method public getVisibleActivityUsers()Landroid/util/ArraySet;
    .registers 3

    .line 4793
    const-class p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 4794
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 4795
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    if-eqz p0, :cond_2f

    .line 4797
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopVisibleActivities()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityAssistInfo;

    .line 4798
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityAssistInfo;->getUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2f
    return-object v0
.end method

.method public getWindowManager()Lcom/android/server/wm/WindowManagerService;
    .registers 1

    .line 4531
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public installEncryptionUnawareProviders(I)V
    .registers 2

    .line 4671
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mCpHelper:Lcom/android/server/am/ContentProviderHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ContentProviderHelper;->installEncryptionUnawareProviders(I)V

    return-void
.end method

.method public isCallerRecents(I)Z
    .registers 2

    .line 4729
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isCallerRecents(I)Z

    move-result p0

    return p0
.end method

.method public isFirstBootOrUpgrade()Z
    .registers 2

    .line 4600
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    .line 4602
    :try_start_4
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->isDeviceUpgrading()Z

    move-result p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_15

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0

    :catch_15
    move-exception p0

    .line 4604
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public isHeadlessSystemUserMode()Z
    .registers 1

    .line 4733
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result p0

    return p0
.end method

.method public isRuntimeRestarted()Z
    .registers 1

    .line 4592
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/SystemServiceManager;->isRuntimeRestarted()Z

    move-result p0

    return p0
.end method

.method public loadUserRecents(I)V
    .registers 2

    .line 4663
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->loadRecentTasksForUser(I)V

    return-void
.end method

.method public lockDeviceNowAndWaitForKeyguardShown()V
    .registers 6

    .line 4759
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 4760
    const-string/jumbo v1, "lockDeviceNowAndWaitForKeyguardShown"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4762
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 4763
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4764
    new-instance v3, Lcom/android/server/am/UserController$Injector$2;

    invoke-direct {v3, p0, v1}, Lcom/android/server/am/UserController$Injector$2;-><init>(Lcom/android/server/am/UserController$Injector;Ljava/util/concurrent/CountDownLatch;)V

    const-string/jumbo v4, "onSwitchCallback"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 4769
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    .line 4771
    :try_start_28
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v2, v3, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_30} :catch_40
    .catchall {:try_start_28 .. :try_end_30} :catchall_3e

    if-eqz p0, :cond_36

    .line 4778
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    .line 4772
    :cond_36
    :try_start_36
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "User controller expected a callback while waiting to show the keyguard. Timed out after 20 seconds."

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_3e} :catch_40
    .catchall {:try_start_36 .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception p0

    goto :goto_47

    :catch_40
    move-exception p0

    .line 4776
    :try_start_41
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_3e

    .line 4778
    :goto_47
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4779
    throw p0
.end method

.method public onSystemUserVisibilityChanged(Z)V
    .registers 2

    .line 4755
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->onSystemUserVisibilityChanged(Z)V

    return-void
.end method

.method public onUserStarting(I)V
    .registers 3

    .line 4745
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object p0

    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/SystemServiceManager;->onUserStarting(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    return-void
.end method

.method public reportCurWakefulnessUsageEvent()V
    .registers 1

    .line 4709
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->reportCurWakefulnessUsageEvent()V

    return-void
.end method

.method public reportGlobalUsageEvent(I)V
    .registers 2

    .line 4705
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->reportGlobalUsageEvent(I)V

    return-void
.end method

.method public sendPreBootBroadcast(IZLjava/lang/Runnable;)V
    .registers 13

    .line 4610
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "android.intent.action.PRE_BOOT_COMPLETED"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7581

    .line 4609
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4611
    new-instance v2, Lcom/android/server/am/UserController$Injector$1;

    iget-object v4, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    move-object v3, p0

    move v5, p1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/UserController$Injector$1;-><init>(Lcom/android/server/am/UserController$Injector;Lcom/android/server/am/ActivityManagerService;ILcom/android/internal/util/ProgressReporter;ZLjava/lang/Runnable;)V

    .line 4616
    invoke-virtual {v2}, Lcom/android/server/am/PreBootBroadcaster;->sendNext()V

    return-void
.end method

.method public setPerformancePowerMode(Z)V
    .registers 5

    .line 4749
    invoke-static {}, Lcom/android/server/am/UserController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting power mode MODE_FIXED_PERFORMANCE to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4750
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getPowerManagerInternal()Landroid/os/PowerManagerInternal;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    return-void
.end method

.method public showUserSwitchingDialog(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 15

    .line 4688
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    .line 4689
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4693
    invoke-static {}, Lcom/android/server/am/UserController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Showing user switch dialog on UserController, it could cause a race condition if it\'s shown by CarSystemUI as well"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4696
    :cond_19
    iget-object v1, p0, Lcom/android/server/am/UserController$Injector;->mUserSwitchingDialogLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    .line 4697
    :try_start_1d
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController$Injector;->dismissUserSwitchingDialog(Ljava/lang/Runnable;)V

    .line 4698
    new-instance v2, Lcom/android/server/am/UserSwitchingDialog;

    iget-object v0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/am/UserController$Injector;->mHandler:Landroid/os/Handler;

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/UserSwitchingDialog;-><init>(Landroid/content/Context;Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/am/UserController$Injector;->mUserSwitchingDialog:Lcom/android/server/am/UserSwitchingDialog;

    .line 4700
    invoke-virtual {v2, p5}, Lcom/android/server/am/UserSwitchingDialog;->show(Ljava/lang/Runnable;)V

    .line 4701
    monitor-exit v1

    return-void

    :catchall_36
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_1d .. :try_end_39} :catchall_36

    throw p0
.end method

.method public startPersistentApps(I)V
    .registers 2

    .line 4667
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->startPersistentApps(I)V

    return-void
.end method

.method public startUserWidgets(I)V
    .registers 4

    .line 4642
    const-class p0, Landroid/appwidget/AppWidgetManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/appwidget/AppWidgetManagerInternal;

    if-eqz p0, :cond_16

    .line 4646
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/UserController$Injector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/UserController$Injector$$ExternalSyntheticLambda0;-><init>(Landroid/appwidget/AppWidgetManagerInternal;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_16
    return-void
.end method

.method public systemServiceManagerOnUserCompletedEvent(II)V
    .registers 3

    .line 4543
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/SystemServiceManager;->onUserCompletedEvent(II)V

    return-void
.end method

.method public systemServiceManagerOnUserStopped(I)V
    .registers 2

    .line 4539
    invoke-virtual {p0}, Lcom/android/server/am/UserController$Injector;->getSystemServiceManager()Lcom/android/server/SystemServiceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/SystemServiceManager;->onUserStopped(I)V

    return-void
.end method

.method public taskSupervisorRemoveUser(I)V
    .registers 2

    .line 4713
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->removeUser(I)V

    return-void
.end method

.method public updateUserConfiguration()V
    .registers 1

    .line 4653
    iget-object p0, p0, Lcom/android/server/am/UserController$Injector;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->updateUserConfiguration()V

    return-void
.end method
