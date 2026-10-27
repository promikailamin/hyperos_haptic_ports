.class public Lcom/android/server/am/AppErrors;
.super Ljava/lang/Object;
.source "AppErrors.java"


# instance fields
.field public mAppsNotReportingCrashes:Landroid/util/ArraySet;

.field public final mBadProcessLock:Ljava/lang/Object;

.field public volatile mBadProcesses:Lcom/android/internal/app/ProcessMap;

.field public final mContext:Landroid/content/Context;

.field public final mPackageWatchdog:Lcom/android/server/PackageWatchdog;

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public final mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

.field public final mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

.field public final mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

.field public final mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

.field public final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public static synthetic $r8$lambda$tahYgIQkTlfUILZTTqiIS49S4Gc(Lcom/android/server/am/AppErrors;Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppErrors;->lambda$scheduleAppCrashLocked$0(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w69pU-431_pyGi3C_XWfp6yr4Mg(Lcom/android/server/am/AppErrors;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/am/AppErrors;->lambda$handleAppCrashInActivityController$1(Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/PackageWatchdog;)V
    .registers 5

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    .line 101
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    .line 107
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

    .line 114
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    .line 135
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 146
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->assertRuntimeOverlayThemable()V

    .line 150
    iput-object p2, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 151
    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object p2, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 152
    iput-object p1, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 153
    iput-object p3, p0, Lcom/android/server/am/AppErrors;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    return-void
.end method


# virtual methods
.method public clearBadProcess(Ljava/lang/String;I)V
    .registers 6

    .line 369
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 370
    :try_start_3
    new-instance v1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 371
    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ProcessMap;->putAll(Lcom/android/internal/app/ProcessMap;)V

    .line 372
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 373
    iput-object v1, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 374
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public clearBadProcessForUser(Ljava/lang/String;I)V
    .registers 9

    .line 378
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 379
    :try_start_3
    new-instance v1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 380
    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ProcessMap;->putAll(Lcom/android/internal/app/ProcessMap;)V

    .line 381
    invoke-virtual {v1, p1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    if-nez v2, :cond_17

    .line 383
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    goto :goto_36

    .line 385
    :cond_17
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1d
    if-ltz v3, :cond_32

    .line 386
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq p2, v5, :cond_2c

    .line 387
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne p2, v5, :cond_2f

    .line 388
    :cond_2c
    invoke-virtual {v1, p1, v4}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    :cond_2f
    add-int/lit8 v3, v3, -0x1

    goto :goto_1d

    .line 391
    :cond_32
    iput-object v1, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 392
    monitor-exit v0

    return-void

    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_15

    throw p0
.end method

.method public crashApplication(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .registers 7

    .line 596
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 597
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 599
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 601
    :try_start_c
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/am/AppErrors;->crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;II)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_13

    .line 603
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_13
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 604
    throw p0
.end method

.method public final crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;II)V
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 609
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 610
    iget-object v4, v3, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 611
    iget-object v0, v3, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    .line 612
    iget-object v5, v3, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    if-eqz v4, :cond_29

    if-eqz v0, :cond_29

    .line 614
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    :cond_29
    if-eqz v4, :cond_2c

    move-object v0, v4

    :cond_2c
    :goto_2c
    const/4 v11, 0x5

    const/4 v12, 0x3

    const/4 v13, 0x0

    if-eqz v2, :cond_61

    .line 620
    iget-object v6, v1, Lcom/android/server/am/AppErrors;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPackageListWithVersionCode()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v6, v9, v12}, Lcom/android/server/PackageWatchdog;->notifyPackageFailure(Ljava/util/List;I)V

    .line 623
    iget-object v6, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v6

    .line 624
    :try_start_40
    iget-object v9, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const-string v10, "Native crash"

    iget-object v14, v3, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 625
    invoke-virtual {v10, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_50

    move v10, v11

    goto :goto_51

    :cond_50
    const/4 v10, 0x4

    .line 627
    :goto_51
    const-string v14, "crash"

    .line 624
    invoke-virtual {v9, v2, v10, v13, v14}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    .line 630
    monitor-exit v6
    :try_end_57
    .catchall {:try_start_40 .. :try_end_57} :catchall_5b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_61

    :catchall_5b
    move-exception v0

    :try_start_5c
    monitor-exit v6
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_61
    :goto_61
    if-eqz v2, :cond_6d

    .line 634
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/WindowProcessController;->computeRelaunchReason()I

    move-result v6

    move v14, v6

    goto :goto_6e

    :cond_6d
    move v14, v13

    .line 636
    :goto_6e
    new-instance v15, Lcom/android/server/am/AppErrorResult;

    invoke-direct {v15}, Lcom/android/server/am/AppErrorResult;-><init>()V

    .line 638
    iget-object v6, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v6

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v16, v6

    move-object v6, v5

    move-object v5, v0

    .line 643
    :try_start_81
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/AppErrors;->handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z

    move-result v0

    move-wide v8, v7

    move-object v7, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    if-eqz v0, :cond_94

    .line 645
    monitor-exit v16
    :try_end_8d
    .catchall {:try_start_81 .. :try_end_8d} :catchall_91

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_91
    move-exception v0

    goto/16 :goto_220

    :cond_94
    const/4 v0, 0x2

    if-ne v14, v0, :cond_9c

    .line 651
    :try_start_97
    monitor-exit v16
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_91

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_9c
    if-eqz v2, :cond_a9

    .line 658
    :try_start_9e
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v6

    if-eqz v6, :cond_a9

    .line 659
    monitor-exit v16
    :try_end_a5
    .catchall {:try_start_9e .. :try_end_a5} :catchall_91

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_a9
    if-eqz v2, :cond_b6

    .line 664
    :try_start_ab
    iget-object v6, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v10, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    iget v14, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-virtual {v6, v10, v14}, Lcom/android/server/am/BatteryStatsService;->noteProcessCrash(Ljava/lang/String;I)V

    .line 667
    :cond_b6
    new-instance v6, Lcom/android/server/am/AppErrorDialog$Data;

    invoke-direct {v6}, Lcom/android/server/am/AppErrorDialog$Data;-><init>()V

    .line 668
    iput-object v15, v6, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    .line 669
    iput-object v2, v6, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_21b

    .line 673
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v3

    move-object/from16 v17, v6

    move-object v6, v1

    move-object/from16 v1, v17

    if-nez v3, :cond_ce

    goto/16 :goto_21b

    .line 678
    :cond_ce
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "time: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "\nmsg: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\nstacktrace: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/am/AppErrorDialog$Data;->paste:Ljava/lang/String;

    .line 682
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/4 v4, 0x1

    .line 683
    iput v4, v3, Landroid/os/Message;->what:I

    .line 685
    iget v10, v1, Lcom/android/server/am/AppErrorDialog$Data;->taskId:I

    .line 686
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 687
    iget-object v1, v6, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 688
    monitor-exit v16
    :try_end_105
    .catchall {:try_start_ab .. :try_end_105} :catchall_91

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 690
    invoke-virtual {v15}, Lcom/android/server/am/AppErrorResult;->get()I

    move-result v1

    .line 693
    iget-object v3, v6, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/16 v5, 0x13c

    invoke-static {v3, v5, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    const/4 v3, 0x6

    if-eq v1, v3, :cond_119

    const/4 v3, 0x7

    if-ne v1, v3, :cond_11a

    :cond_119
    move v1, v4

    :cond_11a
    if-eq v1, v4, :cond_1bd

    if-eq v1, v0, :cond_1a8

    if-eq v1, v12, :cond_15f

    if-eq v1, v11, :cond_153

    const/16 v0, 0x8

    if-eq v1, v0, :cond_128

    goto/16 :goto_1fe

    .line 736
    :cond_128
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 737
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 738
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_1ff

    .line 699
    :cond_153
    iget-object v1, v6, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v1

    .line 700
    :try_start_156
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/AppErrors;->stopReportingCrashesLBp(Lcom/android/server/am/ProcessRecord;)V

    .line 701
    monitor-exit v1

    goto/16 :goto_1fe

    :catchall_15c
    move-exception v0

    monitor-exit v1
    :try_end_15e
    .catchall {:try_start_156 .. :try_end_15e} :catchall_15c

    throw v0

    .line 704
    :cond_15f
    iget-object v11, v6, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v11

    .line 705
    :try_start_165
    iget-object v0, v6, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const-string v5, "crash"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z

    move-object v2, v1

    .line 707
    monitor-exit v11
    :try_end_175
    .catchall {:try_start_165 .. :try_end_175} :catchall_1a2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, -0x1

    if-eq v10, v0, :cond_1fe

    .line 710
    :try_start_17b
    iget-object v0, v6, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 711
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 710
    invoke-virtual {v0, v10, v1}, Lcom/android/server/am/ActivityManagerService;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_188
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17b .. :try_end_188} :catch_18a

    goto/16 :goto_1fe

    :catch_18a
    move-exception v0

    .line 715
    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not restart taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1fe

    :catchall_1a2
    move-exception v0

    .line 707
    :try_start_1a3
    monitor-exit v11
    :try_end_1a4
    .catchall {:try_start_1a3 .. :try_end_1a4} :catchall_1a2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 741
    :cond_1a8
    iget-object v1, v6, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1

    .line 742
    :try_start_1ae
    invoke-virtual {v6, v2, v8, v9, v7}, Lcom/android/server/am/AppErrors;->createAppErrorIntentLOSP(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 743
    monitor-exit v1
    :try_end_1b3
    .catchall {:try_start_1ae .. :try_end_1b3} :catchall_1b7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_1ff

    :catchall_1b7
    move-exception v0

    :try_start_1b8
    monitor-exit v1
    :try_end_1b9
    .catchall {:try_start_1b8 .. :try_end_1b9} :catchall_1b7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    .line 720
    :cond_1bd
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 723
    :try_start_1c1
    iget-object v0, v6, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onHandleAppCrash(Lcom/android/server/wm/WindowProcessController;)V

    .line 724
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_1fb

    .line 725
    iget-object v9, v6, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v9
    :try_end_1d8
    .catchall {:try_start_1c1 .. :try_end_1d8} :catchall_1f3

    .line 726
    :try_start_1d8
    iget-object v0, v6, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const-string v5, "crash"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z

    move-object v2, v1

    .line 728
    monitor-exit v9
    :try_end_1e8
    .catchall {:try_start_1d8 .. :try_end_1e8} :catchall_1f5

    :try_start_1e8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 729
    iget-object v0, v6, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, v13}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V
    :try_end_1f2
    .catchall {:try_start_1e8 .. :try_end_1f2} :catchall_1f3

    goto :goto_1fb

    :catchall_1f3
    move-exception v0

    goto :goto_217

    :catchall_1f5
    move-exception v0

    .line 728
    :try_start_1f6
    monitor-exit v9
    :try_end_1f7
    .catchall {:try_start_1f6 .. :try_end_1f7} :catchall_1f5

    :try_start_1f7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_1fb
    .catchall {:try_start_1f7 .. :try_end_1fb} :catchall_1f3

    .line 732
    :cond_1fb
    :goto_1fb
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_1fe
    :goto_1fe
    const/4 v0, 0x0

    :goto_1ff
    if-eqz v0, :cond_216

    .line 749
    :try_start_201
    iget-object v1, v6, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    iget v2, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    invoke-direct {v3, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_20d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_201 .. :try_end_20d} :catch_20e

    goto :goto_216

    :catch_20e
    move-exception v0

    .line 751
    const-string v1, "ActivityManager"

    const-string v2, "bug report receiver dissappeared"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_216
    :goto_216
    return-void

    .line 732
    :goto_217
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 733
    throw v0

    .line 674
    :cond_21b
    :goto_21b
    :try_start_21b
    monitor-exit v16
    :try_end_21c
    .catchall {:try_start_21b .. :try_end_21c} :catchall_91

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 688
    :goto_220
    :try_start_220
    monitor-exit v16
    :try_end_221
    .catchall {:try_start_220 .. :try_end_221} :catchall_91

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public createAppErrorIntentLOSP(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;
    .registers 5

    .line 842
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppErrors;->createAppErrorReportLOSP(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 846
    :cond_8
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.APP_ERROR"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 847
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessErrorStateRecord;->getErrorReportReceiver()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 848
    const-string p1, "android.intent.extra.BUG_REPORT"

    invoke-virtual {p2, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 849
    invoke-virtual {p2, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p2
.end method

.method public final createAppErrorReportLOSP(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;
    .registers 8

    .line 856
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 857
    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->getErrorReportReceiver()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 861
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isCrashing()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isNotResponding()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 862
    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isForceCrashReport()Z

    move-result v0

    if-nez v0, :cond_1d

    return-object v1

    .line 866
    :cond_1d
    new-instance v0, Landroid/app/ApplicationErrorReport;

    invoke-direct {v0}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 867
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 868
    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->getErrorReportReceiver()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 869
    iget-object v2, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 870
    iput-wide p2, v0, Landroid/app/ApplicationErrorReport;->time:J

    .line 871
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-eqz p1, :cond_42

    move p1, p2

    goto :goto_43

    :cond_42
    const/4 p1, 0x0

    :goto_43
    iput-boolean p1, v0, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 873
    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isCrashing()Z

    move-result p1

    if-nez p1, :cond_76

    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isForceCrashReport()Z

    move-result p1

    if-eqz p1, :cond_52

    goto :goto_76

    .line 876
    :cond_52
    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isNotResponding()Z

    move-result p1

    if-eqz p1, :cond_75

    .line 878
    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->getNotRespondingReport()Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object p0

    if-nez p0, :cond_5f

    return-object v1

    :cond_5f
    const/4 p1, 0x2

    .line 883
    iput p1, v0, Landroid/app/ApplicationErrorReport;->type:I

    .line 884
    new-instance p1, Landroid/app/ApplicationErrorReport$AnrInfo;

    invoke-direct {p1}, Landroid/app/ApplicationErrorReport$AnrInfo;-><init>()V

    iput-object p1, v0, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    .line 886
    iget-object p2, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    iput-object p2, p1, Landroid/app/ApplicationErrorReport$AnrInfo;->activity:Ljava/lang/String;

    .line 887
    iget-object p2, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    iput-object p2, p1, Landroid/app/ApplicationErrorReport$AnrInfo;->cause:Ljava/lang/String;

    .line 888
    iget-object p0, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    iput-object p0, p1, Landroid/app/ApplicationErrorReport$AnrInfo;->info:Ljava/lang/String;

    :cond_75
    return-object v0

    .line 874
    :cond_76
    :goto_76
    iput p2, v0, Landroid/app/ApplicationErrorReport;->type:I

    .line 875
    iput-object p4, v0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    return-object v0
.end method

.method public dumpDebugLPr(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 171
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 172
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1f

    return-void

    .line 176
    :cond_1f
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 177
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide v8, 0x10300000001L

    .line 178
    invoke-virtual {v1, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 180
    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    const-wide v11, 0x10900000001L

    if-nez v6, :cond_104

    .line 181
    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    .line 182
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v6

    const/4 v15, 0x0

    :goto_47
    if-ge v15, v6, :cond_104

    const-wide v7, 0x20b00000003L

    .line 184
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 185
    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Ljava/lang/String;

    .line 186
    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    .line 187
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v13

    .line 189
    invoke-virtual {v1, v11, v12, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const/4 v14, 0x0

    :goto_68
    if-ge v14, v13, :cond_f3

    .line 191
    invoke-virtual {v10, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 192
    iget-object v12, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v12}, Lcom/android/server/am/ActivityManagerService;->getProcessNamesLOSP()Lcom/android/internal/app/ProcessMap;

    move-result-object v12

    invoke-virtual {v12, v9, v11}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_94

    if-eqz v12, :cond_88

    .line 194
    invoke-virtual {v12}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_94

    :cond_88
    move-wide/from16 v19, v4

    move-object/from16 p3, v9

    move-object/from16 v16, v10

    move/from16 v17, v13

    move/from16 v18, v14

    move-object v5, v3

    goto :goto_e1

    .line 197
    :cond_94
    invoke-virtual {v10, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/AppErrors$BadProcessInfo;

    move-object/from16 p3, v9

    move-object/from16 v16, v10

    move/from16 v17, v13

    move/from16 v18, v14

    const-wide v9, 0x20b00000002L

    .line 198
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    const-wide v9, 0x10500000001L

    .line 199
    invoke-virtual {v1, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 200
    iget-wide v9, v12, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    move-wide/from16 v19, v4

    move-object v5, v3

    const-wide v3, 0x10300000002L

    invoke-virtual {v1, v3, v4, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x10900000003L

    .line 201
    iget-object v9, v12, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v3, 0x10900000004L

    .line 202
    iget-object v9, v12, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v3, 0x10900000005L

    .line 203
    iget-object v9, v12, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 204
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_e1
    add-int/lit8 v14, v18, 0x1

    move-object/from16 v9, p3

    move-object v3, v5

    move-object/from16 v10, v16

    move/from16 v13, v17

    move-wide/from16 v4, v19

    const-wide v11, 0x10900000001L

    goto/16 :goto_68

    :cond_f3
    move-wide/from16 v19, v4

    move-object v5, v3

    .line 206
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v4, v19

    const-wide v11, 0x10900000001L

    goto/16 :goto_47

    :cond_104
    move-wide/from16 v19, v4

    .line 210
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 211
    :try_start_109
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1c8

    .line 212
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    .line 213
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_120
    if-ge v6, v5, :cond_1c8

    const-wide v9, 0x20b00000002L

    .line 215
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 216
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 217
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    .line 218
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v11

    const-wide v12, 0x10900000001L

    .line 220
    invoke-virtual {v1, v12, v13, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const/4 v14, 0x0

    :goto_144
    if-ge v14, v11, :cond_1b0

    .line 222
    invoke-virtual {v10, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    .line 223
    iget-object v12, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v12}, Lcom/android/server/am/ActivityManagerService;->getProcessNamesLOSP()Lcom/android/internal/app/ProcessMap;

    move-result-object v12

    invoke-virtual {v12, v9, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_16f

    if-eqz v12, :cond_164

    .line 225
    invoke-virtual {v12}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v12
    :try_end_162
    .catchall {:try_start_109 .. :try_end_162} :catchall_177

    if-nez v12, :cond_16f

    :cond_164
    move-object/from16 v16, v3

    move-object/from16 p3, v4

    move v15, v5

    const-wide v4, 0x10300000002L

    goto :goto_19f

    :cond_16f
    move-object/from16 v16, v3

    const-wide v12, 0x20b00000002L

    goto :goto_17b

    :catchall_177
    move-exception v0

    move-object/from16 v16, v3

    goto :goto_1d1

    .line 228
    :goto_17b
    :try_start_17b
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v12, 0x10500000001L

    .line 229
    invoke-virtual {v1, v12, v13, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 231
    invoke-virtual {v10, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object/from16 p3, v4

    move v15, v5

    const-wide v4, 0x10300000002L

    .line 230
    invoke-virtual {v1, v4, v5, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 232
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_19f
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, p3

    move-object/from16 v2, p4

    move v5, v15

    move-object/from16 v3, v16

    const-wide v12, 0x10900000001L

    goto :goto_144

    :catchall_1ae
    move-exception v0

    goto :goto_1d1

    :cond_1b0
    move-object/from16 v16, v3

    move-object/from16 p3, v4

    move v15, v5

    const-wide v4, 0x10300000002L

    .line 234
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, p3

    move-object/from16 v2, p4

    move v5, v15

    move-object/from16 v3, v16

    goto/16 :goto_120

    :cond_1c8
    move-object/from16 v16, v3

    .line 237
    monitor-exit v16
    :try_end_1cb
    .catchall {:try_start_17b .. :try_end_1cb} :catchall_1ae

    move-wide/from16 v2, v19

    .line 239
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void

    .line 237
    :goto_1d1
    :try_start_1d1
    monitor-exit v16
    :try_end_1d2
    .catchall {:try_start_1d1 .. :try_end_1d2} :catchall_1ae

    throw v0
.end method

.method public dumpLPr(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/lang/String;)Z
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    .line 244
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 245
    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v5

    .line 246
    :try_start_d
    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a4

    .line 248
    iget-object v6, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    .line 249
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v9

    move/from16 v10, p3

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_27
    if-ge v11, v9, :cond_a1

    .line 251
    invoke-virtual {v6, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 252
    invoke-virtual {v6, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/SparseArray;

    .line 253
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v15

    const/4 v7, 0x0

    :goto_3a
    if-ge v7, v15, :cond_9c

    .line 255
    invoke-virtual {v14, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    move-wide/from16 v16, v3

    .line 256
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getProcessNamesLOSP()Lcom/android/internal/app/ProcessMap;

    move-result-object v3

    invoke-virtual {v3, v13, v8}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_60

    if-eqz v3, :cond_97

    .line 258
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_60

    goto :goto_97

    :catchall_5d
    move-exception v0

    goto/16 :goto_22f

    :cond_60
    if-nez v12, :cond_6e

    if-eqz v10, :cond_67

    .line 262
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 264
    :cond_67
    const-string v3, "  Time since processes crashed:"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v10, 0x1

    const/4 v12, 0x1

    .line 267
    :cond_6e
    const-string v3, "    Process "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 268
    const-string v3, " uid "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 269
    const-string v3, ": last crashed "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v14, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v16, v3

    invoke-static {v3, v4, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 271
    const-string v3, " ago"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_97
    :goto_97
    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v3, v16

    goto :goto_3a

    :cond_9c
    move-wide/from16 v16, v3

    add-int/lit8 v11, v11, 0x1

    goto :goto_27

    :cond_a1
    :goto_a1
    move-wide/from16 v16, v3

    goto :goto_a7

    :cond_a4
    move/from16 v10, p3

    goto :goto_a1

    .line 276
    :goto_a7
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_13f

    .line 278
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    .line 279
    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    .line 280
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_bf
    if-ge v6, v4, :cond_13f

    .line 282
    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 283
    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    .line 284
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v11

    const/4 v12, 0x0

    :goto_d2
    if-ge v12, v11, :cond_13c

    .line 286
    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 287
    iget-object v14, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v14}, Lcom/android/server/am/ActivityManagerService;->getProcessNamesLOSP()Lcom/android/internal/app/ProcessMap;

    move-result-object v14

    invoke-virtual {v14, v8, v13}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_f3

    if-eqz v14, :cond_139

    .line 289
    invoke-virtual {v14}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v14

    invoke-virtual {v14, v2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f3

    goto :goto_139

    :cond_f3
    if-nez v7, :cond_101

    if-eqz v10, :cond_fa

    .line 293
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 295
    :cond_fa
    const-string v7, "  First time processes crashed and counts:"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v7, 0x1

    const/4 v10, 0x1

    .line 298
    :cond_101
    const-string v14, "    Process "

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 299
    const-string v14, " uid "

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 300
    const-string v13, ": first crashed "

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    iget-object v13, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    sub-long v13, v16, v13

    invoke-static {v13, v14, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 302
    const-string v13, " ago; crashes since then: "

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    iget-object v13, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_139
    :goto_139
    add-int/lit8 v12, v12, 0x1

    goto :goto_d2

    :cond_13c
    add-int/lit8 v6, v6, 0x1

    goto :goto_bf

    .line 306
    :cond_13f
    monitor-exit v5
    :try_end_140
    .catchall {:try_start_d .. :try_end_140} :catchall_5d

    .line 308
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 309
    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_22e

    .line 311
    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    .line 312
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_156
    if-ge v5, v4, :cond_22e

    .line 314
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 315
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    .line 316
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    const/4 v11, 0x0

    :goto_169
    if-ge v11, v9, :cond_228

    .line 318
    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 319
    iget-object v13, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityManagerService;->getProcessNamesLOSP()Lcom/android/internal/app/ProcessMap;

    move-result-object v13

    invoke-virtual {v13, v7, v12}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_18b

    if-eqz v13, :cond_222

    .line 321
    invoke-virtual {v13}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v13

    invoke-virtual {v13, v2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_18b

    goto/16 :goto_222

    :cond_18b
    if-nez v6, :cond_199

    if-eqz v10, :cond_192

    .line 325
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 327
    :cond_192
    const-string v6, "  Bad processes:"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x1

    const/4 v10, 0x1

    .line 330
    :cond_199
    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/AppErrors$BadProcessInfo;

    .line 331
    const-string v14, "    Bad process "

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 332
    const-string v14, " uid "

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 333
    const-string v12, ": crashed at time "

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    invoke-virtual {v1, v14, v15}, Ljava/io/PrintWriter;->println(J)V

    .line 334
    iget-object v12, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    if-eqz v12, :cond_1c7

    .line 335
    const-string v12, "      Short msg: "

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v12, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    :cond_1c7
    iget-object v12, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    if-eqz v12, :cond_1d5

    .line 338
    const-string v12, "      Long msg: "

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v12, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    :cond_1d5
    iget-object v12, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    if-eqz v12, :cond_222

    .line 341
    const-string v12, "      Stack:"

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 343
    :goto_1e0
    iget-object v15, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v12, v15, :cond_208

    .line 344
    iget-object v15, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v15, v12}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v0, 0xa

    if-ne v15, v0, :cond_203

    .line 345
    const-string v0, "        "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 346
    iget-object v0, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    sub-int v15, v12, v14

    invoke-virtual {v1, v0, v14, v15}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 347
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v14, v12, 0x1

    :cond_203
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    goto :goto_1e0

    .line 351
    :cond_208
    iget-object v0, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v14, v0, :cond_222

    .line 352
    const-string v0, "        "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 353
    iget-object v0, v13, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v12, v14

    invoke-virtual {v1, v0, v14, v12}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 354
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    :cond_222
    :goto_222
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_169

    :cond_228
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_156

    :cond_22e
    return v10

    .line 306
    :goto_22f
    :try_start_22f
    monitor-exit v5
    :try_end_230
    .catchall {:try_start_22f .. :try_end_230} :catchall_5d

    throw v0
.end method

.method public generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .registers 7

    .line 825
    new-instance p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    invoke-direct {p0}, Landroid/app/ActivityManager$ProcessErrorStateInfo;-><init>()V

    .line 827
    iput p2, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    .line 828
    iget-object p2, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    .line 829
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p2

    iput p2, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    .line 830
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput p1, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->uid:I

    .line 831
    iput-object p3, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    .line 832
    iput-object p4, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    .line 833
    iput-object p5, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    .line 834
    iput-object p6, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->stackTrace:Ljava/lang/String;

    return-object p0
.end method

.method public final getVisibleUserId(I)I
    .registers 3

    .line 1204
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1205
    iget-object p0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result p0

    return p0

    :cond_f
    return p1
.end method

.method public final handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z
    .registers 22

    if-eqz p1, :cond_6

    .line 762
    iget-object v0, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    :goto_4
    move-object v2, v0

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    :goto_8
    if-eqz p1, :cond_10

    .line 763
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    move v3, v0

    goto :goto_12

    :cond_10
    move/from16 v3, p8

    :goto_12
    if-eqz p1, :cond_1a

    .line 764
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move v10, v0

    goto :goto_1c

    :cond_1a
    move/from16 v10, p9

    .line 766
    :goto_1c
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v11, p2, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    new-instance v9, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;

    move-object v6, p1

    move-object v7, p3

    move-object/from16 v8, p4

    move-object v4, v2

    move v5, v3

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/AppErrors;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v9, v1

    move-object v2, v4

    move v3, v5

    move-object v4, v7

    move-object v5, v8

    move-object v8, v11

    move-wide/from16 v6, p6

    move-object v1, v0

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/ActivityTaskManagerInternal;->handleAppCrashInActivityController(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public final handleAppCrashLSPB(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p6

    .line 897
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 901
    iget-object v14, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    .line 902
    iget v15, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    .line 903
    iget v1, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    .line 904
    iget-boolean v3, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->isolated:Z

    .line 905
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v4

    .line 906
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v5

    .line 907
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 908
    iget-object v8, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 909
    invoke-virtual {v0, v1}, Lcom/android/server/am/AppErrors;->getVisibleUserId(I)I

    move-result v11

    .line 908
    const-string v12, "anr_show_background"

    const/4 v13, 0x0

    invoke-static {v8, v12, v13, v11}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_32

    const/16 v16, 0x1

    goto :goto_34

    :cond_32
    move/from16 v16, v13

    .line 911
    :goto_34
    iget-boolean v8, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->isolated:Z

    if-nez v8, :cond_49

    .line 912
    iget-object v8, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v8, v14, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 913
    iget-object v12, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v12, v14, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    goto :goto_4b

    :cond_49
    const/4 v8, 0x0

    move-object v12, v8

    .line 919
    :goto_4b
    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v13, v9, v10}, Lcom/android/server/am/ProcessServiceRecord;->incServiceCrashCountLocked(J)Z

    move-result v17

    if-eqz v8, :cond_64

    .line 922
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    sget v8, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    move-object/from16 v20, v12

    int-to-long v11, v8

    add-long v18, v18, v11

    cmp-long v8, v9, v18

    if-gez v8, :cond_66

    const/4 v8, 0x1

    goto :goto_67

    :cond_64
    move-object/from16 v20, v12

    :cond_66
    const/4 v8, 0x0

    :goto_67
    if-nez v8, :cond_6f

    .line 923
    invoke-virtual {v0, v2, v9, v10}, Lcom/android/server/am/AppErrors;->isProcOverCrashLimitLBp(Lcom/android/server/am/ProcessRecord;J)Z

    move-result v11

    if-eqz v11, :cond_73

    :cond_6f
    move-object/from16 v18, v14

    const/4 v13, 0x1

    goto :goto_b1

    .line 971
    :cond_73
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-object/from16 v4, p2

    invoke-virtual {v1, v5, v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->finishTopCrashedActivities(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)I

    move-result v1

    if-eqz v7, :cond_81

    .line 974
    iput v1, v7, Lcom/android/server/am/AppErrorDialog$Data;->taskId:I

    :cond_81
    if-eqz v7, :cond_a8

    if-eqz v20, :cond_a8

    .line 977
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sget v1, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    move-object/from16 v18, v14

    int-to-long v13, v1

    add-long/2addr v11, v13

    cmp-long v1, v9, v11

    if-gez v1, :cond_a0

    const/4 v13, 0x1

    .line 978
    iput-boolean v13, v7, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    move-object v8, v5

    move-object v11, v6

    move/from16 v4, v17

    move-object/from16 v14, v18

    :goto_9c
    move/from16 v18, v3

    goto/16 :goto_174

    :cond_a0
    move-object v8, v5

    move-object v11, v6

    move/from16 v4, v17

    move-object/from16 v14, v18

    const/4 v13, 0x1

    goto :goto_9c

    :cond_a8
    const/4 v13, 0x1

    move/from16 v18, v3

    move-object v8, v5

    move-object v11, v6

    move/from16 v4, v17

    goto/16 :goto_174

    .line 927
    :goto_b1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Process "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, v18

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " has crashed too many times, killing! Reason: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_ca

    .line 928
    const-string v8, "crashed quickly"

    goto :goto_cd

    :cond_ca
    const-string/jumbo v8, "over process crash limit"

    :goto_cd
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 927
    const-string v11, "ActivityManager"

    invoke-static {v11, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v8, v14, v11}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v11, 0x7550

    .line 929
    invoke-static {v11, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 931
    iget-object v8, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v8, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onHandleAppCrash(Lcom/android/server/wm/WindowProcessController;)V

    if-nez v4, :cond_166

    .line 937
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v4, v8, v14}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v8, 0x753f

    invoke-static {v8, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    if-nez v3, :cond_128

    .line 942
    iget v4, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    new-instance v8, Lcom/android/server/am/AppErrors$BadProcessInfo;

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v18, v3

    move v3, v13

    move-object/from16 v13, p5

    invoke-direct/range {v8 .. v13}, Lcom/android/server/am/AppErrors$BadProcessInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v14, v4, v8}, Lcom/android/server/am/AppErrors;->markBadProcess(Ljava/lang/String;ILcom/android/server/am/AppErrors$BadProcessInfo;)V

    .line 944
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget v8, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-virtual {v4, v14, v8}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 945
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    iget v8, v2, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-virtual {v4, v14, v8}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    goto :goto_12b

    :cond_128
    move/from16 v18, v3

    move v3, v13

    .line 947
    :goto_12b
    invoke-virtual {v6, v3}, Lcom/android/server/am/ProcessErrorStateRecord;->setBad(Z)V

    .line 948
    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessRecord;->setRemoved(Z)V

    .line 949
    const-class v4, Lcom/android/server/usage/AppStandbyInternal;

    .line 950
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usage/AppStandbyInternal;

    if-eqz v4, :cond_149

    .line 956
    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_144

    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_145

    :cond_144
    move-object v8, v14

    :goto_145
    const/4 v11, 0x4

    .line 952
    invoke-interface {v4, v8, v1, v11}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;II)V

    .line 962
    :cond_149
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    move-object v4, v5

    const/4 v5, 0x4

    move-object v8, v6

    const-string v6, "crash"

    move v13, v3

    const/4 v3, 0x0

    move-object v11, v8

    move-object v8, v4

    move/from16 v4, v17

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z

    .line 964
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V

    if-nez v16, :cond_16d

    return v3

    :cond_166
    move/from16 v18, v3

    move-object v8, v5

    move-object v11, v6

    move/from16 v4, v17

    const/4 v3, 0x0

    .line 969
    :cond_16d
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V

    :goto_174
    if-eqz v7, :cond_17a

    if-eqz v4, :cond_17a

    .line 983
    iput-boolean v13, v7, Lcom/android/server/am/AppErrorDialog$Data;->isRestartableForService:Z

    .line 990
    :cond_17a
    invoke-virtual {v8}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result v1

    if-eqz v1, :cond_190

    invoke-virtual {v8}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result v1

    if-eqz v1, :cond_190

    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, v13

    if-nez v1, :cond_190

    .line 991
    invoke-virtual {v8}, Lcom/android/server/wm/WindowProcessController;->clearPackagePreferredForHomeActivities()V

    :cond_190
    if-nez v18, :cond_1a7

    .line 997
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v14, v15, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 998
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v14, v15, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 999
    invoke-virtual {v0, v14, v15, v9, v10}, Lcom/android/server/am/AppErrors;->updateProcessCrashCountLBp(Ljava/lang/String;IJ)V

    .line 1002
    :cond_1a7
    invoke-virtual {v11}, Lcom/android/server/am/ProcessErrorStateRecord;->getCrashHandler()Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_1b8

    .line 1003
    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessErrorStateRecord;->getCrashHandler()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1b8
    return v13
.end method

.method public handleDismissAnrDialogs(Lcom/android/server/am/ProcessRecord;)V
    .registers 6

    .line 1176
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 1177
    :try_start_6
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 1180
    iget-object p0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    .line 1181
    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->getAnrData()Lcom/android/server/am/AppNotRespondingDialog$Data;

    move-result-object v2

    const/4 v3, 0x2

    .line 1180
    invoke-virtual {p0, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1184
    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/ErrorDialogController;->hasAnrDialogs()Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_30

    const/4 p0, 0x0

    .line 1185
    invoke-virtual {v1, p0}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 1186
    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotRespondingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V

    .line 1187
    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/ErrorDialogController;->clearAnrDialogs()V

    goto :goto_30

    :catchall_2e
    move-exception p0

    goto :goto_3a

    .line 1189
    :cond_30
    :goto_30
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {p0, v2}, Lcom/android/server/am/ProcessErrorStateRecord;->setAnrData(Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    .line 1190
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_6 .. :try_end_36} :catchall_2e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :goto_3a
    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_2e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public handleShowAnrUi(Landroid/os/Message;)V
    .registers 13

    .line 1115
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/AppNotRespondingDialog$Data;

    .line 1116
    iget-object v0, p1, Lcom/android/server/am/AppNotRespondingDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_10

    .line 1118
    const-string p0, "ActivityManager"

    const-string p1, "handleShowAnrUi: proc is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1121
    :cond_10
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1

    .line 1122
    :try_start_16
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 1123
    invoke-virtual {v2, p1}, Lcom/android/server/am/ProcessErrorStateRecord;->setAnrData(Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    .line 1124
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2a

    .line 1125
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPackageListWithVersionCode()Ljava/util/List;

    move-result-object v3

    goto :goto_2b

    :catchall_27
    move-exception p0

    goto/16 :goto_fb

    :cond_2a
    move-object v3, v4

    .line 1127
    :goto_2b
    invoke-virtual {v2}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/ErrorDialogController;->hasAnrDialogs()Z

    move-result v5

    const/16 v6, 0x13d

    if-eqz v5, :cond_58

    .line 1128
    const-string p1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App already has anr dialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    iget-object p0, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/4 p1, -0x2

    invoke-static {p0, v6, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 1131
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_16 .. :try_end_54} :catchall_27

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 1134
    :cond_58
    :try_start_58
    iget v5, v0, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    invoke-virtual {p0, v5}, Lcom/android/server/am/AppErrors;->getVisibleUserId(I)I

    move-result v5

    .line 1135
    iget-object v7, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "anr_show_background"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_70

    move v7, v8

    goto :goto_71

    :cond_70
    move v7, v9

    .line 1137
    :goto_71
    iget-object v10, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v10, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->canShowErrorDialogs(I)Z

    move-result v5

    if-nez v5, :cond_86

    if-eqz v7, :cond_7e

    goto :goto_86

    .line 1159
    :cond_7e
    iget-object p1, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-static {p1, v6, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    move v9, v8

    goto :goto_e7

    .line 1138
    :cond_86
    :goto_86
    invoke-virtual {v2}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/ErrorDialogController;->getAnrController()Landroid/app/AnrController;

    move-result-object v5

    if-nez v5, :cond_98

    .line 1140
    invoke-virtual {v2}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/am/ErrorDialogController;->showAnrDialogs(Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    goto :goto_e7

    .line 1142
    :cond_98
    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1143
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1144
    invoke-interface {v5, v6, v7}, Landroid/app/AnrController;->onAnrDelayCompleted(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_c4

    .line 1147
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ANR delay completed. Showing ANR dialog for package: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    invoke-virtual {v2}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/am/ErrorDialogController;->showAnrDialogs(Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    goto :goto_e7

    .line 1151
    :cond_c4
    const-string p1, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ANR delay completed. Cancelling ANR dialog for package: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    invoke-virtual {v2, v9}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 1154
    invoke-virtual {v2, v4}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotRespondingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V

    .line 1155
    invoke-virtual {v2}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/ErrorDialogController;->clearAnrDialogs()V

    .line 1164
    :goto_e7
    monitor-exit v1
    :try_end_e8
    .catchall {:try_start_58 .. :try_end_e8} :catchall_27

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    if-eqz v9, :cond_f2

    .line 1166
    iget-object p1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;)V

    :cond_f2
    if-eqz v3, :cond_fa

    .line 1170
    iget-object p0, p0, Lcom/android/server/am/AppErrors;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    const/4 p1, 0x4

    invoke-virtual {p0, v3, p1}, Lcom/android/server/PackageWatchdog;->notifyPackageFailure(Ljava/util/List;I)V

    :cond_fa
    return-void

    .line 1164
    :goto_fb
    :try_start_fb
    monitor-exit v1
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_27

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public handleShowAppErrorUi(Landroid/os/Message;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1028
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/AppErrorDialog$Data;

    .line 1031
    iget-object v2, v0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v2

    .line 1032
    :try_start_e
    iget-object v3, v1, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 1033
    iget-object v4, v1, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    if-nez v3, :cond_23

    .line 1035
    const-string v0, "ActivityManager"

    const-string v1, "handleShowAppErrorUi: proc is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_20

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_20
    move-exception v0

    goto/16 :goto_19d

    .line 1038
    :cond_23
    :try_start_23
    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 1039
    iget v6, v3, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    .line 1040
    invoke-virtual {v5}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ErrorDialogController;->hasCrashDialogs()Z

    move-result v7

    if-eqz v7, :cond_53

    .line 1041
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "App already has crash dialog: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_4e

    .line 1043
    sget v0, Lcom/android/server/am/AppErrorDialog;->ALREADY_SHOWING:I

    invoke-virtual {v4, v0}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 1045
    :cond_4e
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_23 .. :try_end_4f} :catchall_20

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 1047
    :cond_53
    :try_start_53
    iget v7, v3, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    const/16 v8, 0x2710

    const/4 v10, 0x0

    if-lt v7, v8, :cond_68

    .line 1049
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v7

    sget v8, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v7, v8, :cond_68

    const/4 v7, 0x1

    goto :goto_69

    :cond_68
    move v7, v10

    .line 1050
    :goto_69
    iget-object v8, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v8}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v8

    array-length v11, v8

    move v12, v10

    :goto_73
    if-ge v12, v11, :cond_80

    aget v13, v8, v12

    if-eq v6, v13, :cond_7b

    const/4 v13, 0x1

    goto :goto_7c

    :cond_7b
    move v13, v10

    :goto_7c
    and-int/2addr v7, v13

    add-int/lit8 v12, v12, 0x1

    goto :goto_73

    .line 1053
    :cond_80
    invoke-virtual {v0, v6}, Lcom/android/server/am/AppErrors;->getVisibleUserId(I)I

    move-result v8

    .line 1054
    const-class v11, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v11}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/UserManagerInternal;

    .line 1055
    invoke-virtual {v11, v8}, Lcom/android/server/pm/UserManagerInternal;->isVisibleBackgroundFullUser(I)Z

    move-result v11

    .line 1056
    iget-object v12, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "anr_show_background"

    invoke-static {v12, v13, v10, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    if-eqz v12, :cond_a0

    const/4 v12, 0x1

    goto :goto_a1

    :cond_a0
    move v12, v10

    :goto_a1
    if-eqz v7, :cond_ce

    if-nez v12, :cond_ce

    if-nez v11, :cond_ce

    .line 1059
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping crash dialog of "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": background"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_c9

    .line 1061
    sget v0, Lcom/android/server/am/AppErrorDialog;->BACKGROUND_USER:I

    invoke-virtual {v4, v0}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 1063
    :cond_c9
    monitor-exit v2
    :try_end_ca
    .catchall {:try_start_53 .. :try_end_ca} :catchall_20

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 1066
    :cond_ce
    :try_start_ce
    iget-object v7, v0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_d1
    .catchall {:try_start_ce .. :try_end_d1} :catchall_20

    .line 1067
    :try_start_d1
    iget-boolean v11, v3, Lcom/android/server/am/psc/ProcessRecordInternal;->isolated:Z

    if-nez v11, :cond_e5

    .line 1068
    iget-object v11, v0, Lcom/android/server/am/AppErrors;->mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v13, v3, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    iget v14, v3, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-virtual {v11, v13, v14}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    goto :goto_e6

    :catchall_e2
    move-exception v0

    goto/16 :goto_19b

    :cond_e5
    const/4 v11, 0x0

    .line 1071
    :goto_e6
    iget-object v13, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 1072
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "show_first_crash_dialog"

    .line 1071
    invoke-static {v13, v14, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_f7

    const/4 v13, 0x1

    goto :goto_f8

    :cond_f7
    move v13, v10

    .line 1074
    :goto_f8
    iget-object v14, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 1075
    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "show_first_crash_dialog_dev_option"

    .line 1074
    invoke-static {v14, v15, v10, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    if-eqz v14, :cond_109

    const/4 v14, 0x1

    goto :goto_10a

    :cond_109
    move v14, v10

    .line 1079
    :goto_10a
    iget-object v15, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1080
    iget-object v9, v0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    if-eqz v9, :cond_11e

    iget-object v10, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1081
    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11e

    const/4 v9, 0x1

    goto :goto_11f

    :cond_11e
    const/4 v9, 0x0

    .line 1082
    :goto_11f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    if-eqz v11, :cond_13a

    .line 1084
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object/from16 v18, v5

    sget v5, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    move/from16 v19, v9

    move-wide/from16 v20, v10

    int-to-long v9, v5

    add-long v10, v20, v9

    cmp-long v5, v16, v10

    if-gez v5, :cond_13e

    const/4 v9, 0x1

    goto :goto_13f

    :cond_13a
    move-object/from16 v18, v5

    move/from16 v19, v9

    :cond_13e
    const/4 v9, 0x0

    .line 1085
    :goto_13f
    iget-object v5, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v5, v8}, Lcom/android/server/wm/ActivityTaskManagerInternal;->canShowErrorDialogs(I)Z

    move-result v5

    if-nez v5, :cond_14b

    if-eqz v12, :cond_18e

    :cond_14b
    if-nez v19, :cond_18e

    if-nez v9, :cond_18e

    if-nez v13, :cond_157

    if-nez v14, :cond_157

    iget-boolean v5, v1, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    if-eqz v5, :cond_18e

    .line 1088
    :cond_157
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Showing crash dialog for package "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " u"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/am/ErrorDialogController;->showCrashDialogs(Lcom/android/server/am/AppErrorDialog$Data;)V

    .line 1090
    iget-boolean v1, v3, Lcom/android/server/am/psc/ProcessRecordInternal;->isolated:Z

    if-nez v1, :cond_195

    .line 1091
    iget-object v0, v0, Lcom/android/server/am/AppErrors;->mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v1, v3, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    iget v3, v3, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_195

    :cond_18e
    if-eqz v4, :cond_195

    .line 1097
    sget v0, Lcom/android/server/am/AppErrorDialog;->CANT_SHOW:I

    invoke-virtual {v4, v0}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 1100
    :cond_195
    :goto_195
    monitor-exit v7
    :try_end_196
    .catchall {:try_start_d1 .. :try_end_196} :catchall_e2

    .line 1101
    :try_start_196
    monitor-exit v2
    :try_end_197
    .catchall {:try_start_196 .. :try_end_197} :catchall_20

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 1100
    :goto_19b
    :try_start_19b
    monitor-exit v7
    :try_end_19c
    .catchall {:try_start_19b .. :try_end_19c} :catchall_e2

    :try_start_19c
    throw v0

    .line 1101
    :goto_19d
    monitor-exit v2
    :try_end_19e
    .catchall {:try_start_19c .. :try_end_19e} :catchall_20

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0
.end method

.method public isBadProcess(Ljava/lang/String;I)Z
    .registers 3

    .line 365
    iget-object p0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final isProcOverCrashLimitLBp(Lcom/android/server/am/ProcessRecord;J)Z
    .registers 8

    .line 1021
    iget-object p0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    iget-object v0, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    .line 1022
    iget-boolean p1, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->isolated:Z

    if-nez p1, :cond_2f

    if-eqz p0, :cond_2f

    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    .line 1023
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_RESET_INTERVAL:J

    add-long/2addr v0, v2

    cmp-long p1, p2, v0

    if-gez p1, :cond_2f

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    .line 1024
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget p1, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_LIMIT:I

    if-lt p0, p1, :cond_2f

    const/4 p0, 0x1

    return p0

    :cond_2f
    const/4 p0, 0x0

    return p0
.end method

.method public killAppAtUserRequestLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 12

    .line 473
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v0

    .line 477
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1

    .line 478
    :try_start_c
    invoke-virtual {v0}, Lcom/android/server/am/ErrorDialogController;->hasDebugWaitingDialog()Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0xd

    const/4 v3, 0x1

    :goto_15
    move v6, v2

    move v7, v3

    goto :goto_1b

    :cond_18
    const/4 v2, 0x6

    const/4 v3, 0x0

    goto :goto_15

    .line 482
    :goto_1b
    invoke-virtual {v0}, Lcom/android/server/am/ErrorDialogController;->clearAllErrorDialogs()V

    .line 483
    const-string/jumbo v8, "user-terminated"

    const-string/jumbo v9, "user request after error"

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/AppErrors;->killAppImmediateLSP(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Ljava/lang/String;)V

    .line 485
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_2e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_2e
    move-exception v0

    move-object p0, v0

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public final killAppImmediateLSP(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 491
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    const/4 v1, 0x0

    .line 492
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashing(Z)V

    const/4 v2, 0x0

    .line 493
    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V

    .line 494
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 495
    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotRespondingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V

    .line 496
    iget-object v0, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    if-lez v0, :cond_33

    .line 497
    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v1, :cond_33

    .line 498
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    .line 499
    :try_start_26
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/AppErrors;->handleAppCrashLSPB(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    .line 501
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_2f

    const/4 p0, 0x1

    .line 502
    invoke-virtual {v3, p5, p2, p3, p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->killLocked(Ljava/lang/String;IIZ)V

    return-void

    :catchall_2f
    move-exception v0

    move-object p0, v0

    .line 501
    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_2f

    throw p0

    :cond_33
    return-void
.end method

.method public final synthetic lambda$handleAppCrashInActivityController$1(Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11

    .line 768
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v1, "ActivityManager"

    if-eqz v0, :cond_32

    const-string v0, "Native crash"

    iget-object p1, p1, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 769
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 770
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Skip killing native crashed app "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") during testing"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 773
    :cond_32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Force-killing crashed app "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " at watcher\'s request"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x4

    if-eqz p4, :cond_61

    move-object p3, p4

    move-object p4, p5

    move-object p5, p6

    move-object p6, p7

    const/4 p7, 0x0

    move-object p2, p0

    .line 775
    invoke-virtual/range {p2 .. p7}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result p0

    if-nez p0, :cond_60

    .line 776
    const-string p0, "crash"

    const/4 p2, 0x1

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/am/psc/ProcessRecordInternal;->killLocked(Ljava/lang/String;IZ)V

    :cond_60
    return-void

    :cond_61
    move p2, p3

    .line 780
    invoke-static {p2}, Landroid/os/Process;->killProcess(I)V

    .line 782
    invoke-static {p1}, Landroid/app/ApplicationExitInfo;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object p1

    .line 781
    invoke-static {p8, p2, p1}, Lcom/android/server/am/ProcessList;->killProcessGroup(IILjava/lang/String;)V

    .line 783
    iget-object p0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 p6, 0x0

    const-string p7, "crash"

    const/4 p5, 0x4

    move p4, p8

    move-object p2, p0

    invoke-virtual/range {p2 .. p7}, Lcom/android/server/am/ProcessList;->noteAppKill(IIIILjava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$scheduleAppCrashLocked$0(Lcom/android/server/am/ProcessRecord;)V
    .registers 11

    .line 567
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 568
    :try_start_6
    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_23

    .line 569
    :try_start_c
    const-string v7, "forced"

    const-string/jumbo v8, "killed for invalid state"

    const/16 v5, 0xd

    const/16 v6, 0xe

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/AppErrors;->killAppImmediateLSP(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Ljava/lang/String;)V

    .line 572
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_26

    :try_start_1b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 573
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_23

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_23
    move-exception v0

    move-object p0, v0

    goto :goto_2d

    :catchall_26
    move-exception v0

    move-object p0, v0

    .line 572
    :try_start_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_26

    :try_start_29
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    .line 573
    :goto_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_23

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public loadAppsNotReportingCrashesFromConfig(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_1d

    .line 461
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 462
    array-length v0, p1

    if-lez v0, :cond_1d

    .line 463
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 464
    :try_start_e
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    .line 465
    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 466
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1a

    throw p0

    :cond_1d
    return-void
.end method

.method public final makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .registers 16

    .line 795
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1

    .line 796
    :try_start_6
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    const/4 v2, 0x1

    .line 797
    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashing(Z)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    .line 798
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object p0

    move-object v2, v3

    move-object v3, v4

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    invoke-virtual {v0, p0}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V

    .line 801
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->startAppProblemLSP()V

    .line 802
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->stopFreezingActivities()V

    .line 803
    iget-object p0, v2, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter p0
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_39

    .line 804
    :try_start_2c
    const-string v4, "force-crash"

    move-object v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/AppErrors;->handleAppCrashLSPB(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result p1

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_3c

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_39

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return p1

    :catchall_39
    move-exception v0

    move-object p0, v0

    goto :goto_40

    :catchall_3c
    move-exception v0

    move-object p1, v0

    .line 806
    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3c

    :try_start_3f
    throw p1

    .line 807
    :goto_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_3f .. :try_end_41} :catchall_39

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public markBadProcess(Ljava/lang/String;ILcom/android/server/am/AppErrors$BadProcessInfo;)V
    .registers 7

    .line 396
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 397
    :try_start_3
    new-instance v1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 398
    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ProcessMap;->putAll(Lcom/android/internal/app/ProcessMap;)V

    .line 399
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 400
    iput-object v1, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 401
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public final resetProcessCrashMapLBp(Landroid/util/SparseArray;ZII)V
    .registers 7

    .line 437
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_6
    if-ltz p0, :cond_2b

    .line 439
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    if-nez p2, :cond_1f

    const/4 v1, -0x1

    if-ne p4, v1, :cond_18

    .line 442
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-ne v0, p3, :cond_28

    goto :goto_25

    .line 446
    :cond_18
    invoke-static {p4, p3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    if-ne v0, v1, :cond_28

    goto :goto_25

    .line 450
    :cond_1f
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p4, :cond_28

    .line 454
    :goto_25
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_28
    add-int/lit8 p0, p0, -0x1

    goto :goto_6

    :cond_2b
    return-void
.end method

.method public resetProcessCrashTime(Ljava/lang/String;I)V
    .registers 5

    .line 405
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 406
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 407
    iget-object p0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 408
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public resetProcessCrashTime(ZII)V
    .registers 8

    .line 412
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 413
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    .line 414
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_f
    if-ltz v2, :cond_29

    .line 415
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 416
    invoke-virtual {p0, v3, p1, p2, p3}, Lcom/android/server/am/AppErrors;->resetProcessCrashMapLBp(Landroid/util/SparseArray;ZII)V

    .line 417
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_26

    .line 418
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_26

    :catchall_24
    move-exception p0

    goto :goto_4e

    :cond_26
    :goto_26
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    .line 422
    :cond_29
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    .line 423
    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    .line 424
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_35
    if-ltz v2, :cond_4c

    .line 425
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 426
    invoke-virtual {p0, v3, p1, p2, p3}, Lcom/android/server/am/AppErrors;->resetProcessCrashMapLBp(Landroid/util/SparseArray;ZII)V

    .line 427
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_49

    .line 428
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_49
    add-int/lit8 v2, v2, -0x1

    goto :goto_35

    .line 431
    :cond_4c
    monitor-exit v0

    return-void

    :goto_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_24

    throw p0
.end method

.method public resetState()V
    .registers 3

    .line 158
    const-string v0, "ActivityManager"

    const-string v1, "Resetting AppErrors"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_a
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 161
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->clear()V

    .line 162
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->clear()V

    .line 163
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->clear()V

    .line 164
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->clear()V

    .line 165
    new-instance v1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 166
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_a .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public scheduleAppCrashLocked(IILjava/lang/String;ILjava/lang/String;ZILandroid/os/Bundle;)V
    .registers 15

    .line 523
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    .line 524
    :goto_8
    :try_start_8
    iget-object v4, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService$PidMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_40

    .line 525
    iget-object v4, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    if-ltz p1, :cond_24

    .line 526
    iget v5, v4, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    if-eq v5, p1, :cond_24

    goto :goto_3d

    :catchall_21
    move-exception p0

    goto/16 :goto_c5

    .line 529
    :cond_24
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    if-ne v5, p2, :cond_2c

    move-object v1, v4

    goto :goto_40

    .line 533
    :cond_2c
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    if-ltz p4, :cond_3c

    iget v5, v4, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    if-ne v5, p4, :cond_3d

    :cond_3c
    move-object v1, v4

    :cond_3d
    :goto_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 538
    :cond_40
    :goto_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_8 .. :try_end_41} :catchall_21

    if-nez v1, :cond_72

    .line 541
    const-string p0, "ActivityManager"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "crashApplication: nothing for uid="

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " initialPid="

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " packageName="

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " userId="

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_72
    const/4 p1, 0x5

    if-ne p7, p1, :cond_a6

    .line 549
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getProcessPackageNames()[Ljava/lang/String;

    move-result-object p1

    .line 550
    :goto_79
    array-length p3, p1

    if-ge v2, p3, :cond_a6

    .line 551
    iget-object p3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    aget-object p4, p1, v2

    iget v0, v1, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    invoke-virtual {p3, p4, v0}, Landroid/content/pm/PackageManagerInternal;->isPackageStateProtected(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_a3

    .line 552
    const-string p0, "ActivityManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "crashApplication: Can not crash protected package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a3
    add-int/lit8 v2, v2, 0x1

    goto :goto_79

    .line 558
    :cond_a6
    iget-object p1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerService;->getCachedAppOptimizer()Lcom/android/server/am/CachedAppOptimizer;

    move-result-object p1

    const/16 p3, 0xc

    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeProcess(II)V

    .line 560
    invoke-virtual {v1, p5, p7, p8}, Lcom/android/server/am/ProcessRecord;->scheduleCrashLocked(Ljava/lang/String;ILandroid/os/Bundle;)V

    if-eqz p6, :cond_c4

    .line 565
    iget-object p1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance p2, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v1}, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppErrors;Lcom/android/server/am/ProcessRecord;)V

    const-wide/16 p3, 0x1388

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c4
    return-void

    .line 538
    :goto_c5
    :try_start_c5
    monitor-exit v0
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_21

    throw p0
.end method

.method public sendRecoverableCrashToAppExitInfo(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .registers 4

    if-eqz p1, :cond_27

    if-eqz p2, :cond_27

    .line 581
    const-string v0, "Native crash"

    iget-object p2, p2, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 582
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    goto :goto_27

    .line 583
    :cond_f
    iget-object p2, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter p2

    .line 584
    :try_start_15
    iget-object p0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList;->noteAppRecoverableCrash(Lcom/android/server/am/ProcessRecord;)V

    .line 585
    monitor-exit p2
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_21

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_21
    move-exception p0

    :try_start_22
    monitor-exit p2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_27
    :goto_27
    return-void
.end method

.method public final stopReportingCrashesLBp(Lcom/android/server/am/ProcessRecord;)V
    .registers 3

    .line 1106
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    if-nez v0, :cond_b

    .line 1107
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    .line 1109
    :cond_b
    iget-object p0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final updateProcessCrashCountLBp(Ljava/lang/String;IJ)V
    .registers 11

    .line 1010
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    const/4 v1, 0x1

    if-eqz v0, :cond_32

    .line 1011
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-wide v4, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_RESET_INTERVAL:J

    add-long/2addr v2, v4

    cmp-long v2, v2, p3

    if-gez v2, :cond_1b

    goto :goto_32

    .line 1014
    :cond_1b
    new-instance p3, Landroid/util/Pair;

    iget-object p4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Long;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p3, p4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_40

    .line 1012
    :cond_32
    :goto_32
    new-instance v0, Landroid/util/Pair;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-direct {v0, p3, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p3, v0

    .line 1016
    :goto_40
    iget-object p0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
