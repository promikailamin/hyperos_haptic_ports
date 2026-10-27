.class Lcom/android/server/am/AppErrors;
.super Ljava/lang/Object;
.source "AppErrors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppErrors$BadProcessInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private mAppsNotReportingCrashes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBadProcessLock:Ljava/lang/Object;

.field private volatile mBadProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/server/am/AppErrors$BadProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mPackageWatchdog:Lcom/android/server/PackageWatchdog;

.field private final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field private final mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/PackageWatchdog;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "watchdog"    # Lcom/android/server/PackageWatchdog;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    .line 98
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    .line 104
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

    .line 111
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    .line 132
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 143
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->assertRuntimeOverlayThemable()V

    .line 147
    iput-object p2, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 148
    iget-object v0, p2, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 149
    iput-object p1, p0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 150
    iput-object p3, p0, Lcom/android/server/am/AppErrors;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    .line 151
    return-void
.end method

.method private crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;II)V
    .registers 29
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I

    .line 577
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 578
    .local v14, "timeMillis":J
    iget-object v10, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 579
    .local v10, "shortMsg":Ljava/lang/String;
    iget-object v0, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    .line 580
    .local v0, "longMsg":Ljava/lang/String;
    iget-object v9, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 581
    .local v9, "stackTrace":Ljava/lang/String;
    if-eqz v10, :cond_2e

    if-eqz v0, :cond_2e

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_36

    .line 583
    :cond_2e
    if-eqz v10, :cond_34

    .line 584
    move-object v0, v10

    move-object/from16 v16, v0

    goto :goto_36

    .line 583
    :cond_34
    move-object/from16 v16, v0

    .line 587
    .end local v0    # "longMsg":Ljava/lang/String;
    .local v16, "longMsg":Ljava/lang/String;
    :goto_36
    const/4 v0, 0x0

    if-eqz v12, :cond_6c

    .line 588
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPackageListWithVersionCode()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/PackageWatchdog;->onPackageFailure(Ljava/util/List;I)V

    .line 591
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_46
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 592
    iget-object v2, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    if-eqz v13, :cond_5b

    const-string v3, "Native crash"

    iget-object v4, v13, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 593
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 594
    const/4 v3, 0x5

    goto :goto_5c

    .line 595
    :cond_5b
    const/4 v3, 0x4

    :goto_5c
    const-string v4, "crash"

    .line 592
    invoke-virtual {v2, v12, v3, v0, v4}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    .line 598
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_46 .. :try_end_62} :catchall_66

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_6c

    :catchall_66
    move-exception v0

    :try_start_67
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 601
    :cond_6c
    :goto_6c
    if-eqz v12, :cond_77

    .line 602
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->computeRelaunchReason()I

    move-result v1

    goto :goto_78

    :cond_77
    move v1, v0

    :goto_78
    move v7, v1

    .line 604
    .local v7, "relaunchReason":I
    new-instance v1, Lcom/android/server/am/AppErrorResult;

    invoke-direct {v1}, Lcom/android/server/am/AppErrorResult;-><init>()V

    move-object v8, v1

    .line 606
    .local v8, "result":Lcom/android/server/am/AppErrorResult;
    iget-object v6, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_82
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_25c

    .line 611
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v10

    move-object/from16 v5, v16

    move-object/from16 v17, v6

    move-object v6, v9

    move v13, v7

    move-object/from16 v18, v8

    .end local v7    # "relaunchReason":I
    .end local v8    # "result":Lcom/android/server/am/AppErrorResult;
    .local v13, "relaunchReason":I
    .local v18, "result":Lcom/android/server/am/AppErrorResult;
    move-wide v7, v14

    move-object/from16 v19, v9

    .end local v9    # "stackTrace":Ljava/lang/String;
    .local v19, "stackTrace":Ljava/lang/String;
    move/from16 v9, p3

    move-object/from16 v20, v10

    .end local v10    # "shortMsg":Ljava/lang/String;
    .local v20, "shortMsg":Ljava/lang/String;
    move/from16 v10, p4

    :try_start_9d
    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/AppErrors;->handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z

    move-result v1
    :try_end_a1
    .catchall {:try_start_9d .. :try_end_a1} :catchall_255

    if-eqz v1, :cond_b0

    .line 613
    :try_start_a3
    monitor-exit v17
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 659
    :catchall_a8
    move-exception v0

    move-object/from16 v9, p2

    move v10, v13

    move-object/from16 v8, v18

    goto/16 :goto_265

    .line 618
    :cond_b0
    const/4 v1, 0x2

    if-ne v13, v1, :cond_b8

    .line 619
    :try_start_b3
    monitor-exit v17
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_a8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 626
    :cond_b8
    if-eqz v12, :cond_c5

    :try_start_ba
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v1

    if-eqz v1, :cond_c5

    .line 627
    monitor-exit v17
    :try_end_c1
    .catchall {:try_start_ba .. :try_end_c1} :catchall_a8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 631
    :cond_c5
    if-eqz v12, :cond_d2

    .line 632
    :try_start_c7
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/BatteryStatsService;->noteProcessCrash(Ljava/lang/String;I)V
    :try_end_d2
    .catchall {:try_start_c7 .. :try_end_d2} :catchall_a8

    .line 635
    :cond_d2
    :try_start_d2
    new-instance v1, Lcom/android/server/am/AppErrorDialog$Data;

    invoke-direct {v1}, Lcom/android/server/am/AppErrorDialog$Data;-><init>()V
    :try_end_d7
    .catchall {:try_start_d2 .. :try_end_d7} :catchall_255

    move-object v7, v1

    .line 636
    .local v7, "data":Lcom/android/server/am/AppErrorDialog$Data;
    move-object/from16 v8, v18

    .end local v18    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v8    # "result":Lcom/android/server/am/AppErrorResult;
    :try_start_da
    iput-object v8, v7, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    .line 637
    iput-object v12, v7, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;
    :try_end_de
    .catchall {:try_start_da .. :try_end_de} :catchall_250

    .line 639
    move-object/from16 v9, p2

    move v10, v13

    .end local v13    # "relaunchReason":I
    .local v10, "relaunchReason":I
    :try_start_e1
    iput-object v9, v7, Lcom/android/server/am/AppErrorDialog$Data;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 643
    if-eqz v12, :cond_24b

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    move-object/from16 v4, v16

    move-object/from16 v5, v19

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v1

    if-nez v1, :cond_f8

    goto/16 :goto_24b

    .line 648
    :cond_f8
    invoke-static {}, Lcom/android/server/am/ProcessRecordStub;->get()Lcom/android/server/am/ProcessRecordStub;

    move-result-object v1

    invoke-interface {v1, v12}, Lcom/android/server/am/ProcessRecordStub;->skipAppErrorDialog(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_10f

    .line 649
    const-string v0, "ActivityManager"

    const-string/jumbo v1, "skip app error for subscreenui"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    monitor-exit v17
    :try_end_10b
    .catchall {:try_start_e1 .. :try_end_10b} :catchall_26a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 653
    :cond_10f
    :try_start_10f
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 654
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 656
    iget v2, v7, Lcom/android/server/am/AppErrorDialog$Data;->taskId:I

    move v13, v2

    .line 657
    .local v13, "taskId":I
    iput-object v7, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 658
    iget-object v2, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 659
    nop

    .end local v1    # "msg":Landroid/os/Message;
    .end local v7    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    monitor-exit v17
    :try_end_124
    .catchall {:try_start_10f .. :try_end_124} :catchall_26a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 661
    invoke-virtual {v8}, Lcom/android/server/am/AppErrorResult;->get()I

    move-result v1

    .line 663
    .local v1, "res":I
    const/4 v7, 0x0

    .line 664
    .local v7, "appErrorIntent":Landroid/content/Intent;
    iget-object v2, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/16 v3, 0x13c

    invoke-static {v2, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 665
    const/4 v2, 0x6

    if-eq v1, v2, :cond_13d

    const/4 v2, 0x7

    if-ne v1, v2, :cond_13a

    goto :goto_13d

    :cond_13a
    move/from16 v17, v1

    goto :goto_140

    .line 666
    :cond_13d
    :goto_13d
    const/4 v1, 0x1

    move/from16 v17, v1

    .line 668
    .end local v1    # "res":I
    .local v17, "res":I
    :goto_140
    packed-switch v17, :pswitch_data_26c

    :pswitch_143
    goto/16 :goto_233

    .line 707
    :pswitch_145
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 709
    const/high16 v0, 0x10000000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 710
    goto/16 :goto_233

    .line 670
    :pswitch_173
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v1

    .line 671
    :try_start_176
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/AppErrors;->stopReportingCrashesLBp(Lcom/android/server/am/ProcessRecord;)V

    .line 672
    monitor-exit v1

    .line 673
    goto/16 :goto_233

    .line 672
    :catchall_17c
    move-exception v0

    monitor-exit v1
    :try_end_17e
    .catchall {:try_start_176 .. :try_end_17e} :catchall_17c

    throw v0

    .line 675
    :pswitch_17f
    iget-object v6, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_182
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 676
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x4

    const-string v0, "crash"
    :try_end_18e
    .catchall {:try_start_182 .. :try_end_18e} :catchall_1c6

    move-object/from16 v2, p1

    move-object/from16 v18, v6

    move-object v6, v0

    :try_start_193
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z

    .line 678
    monitor-exit v18
    :try_end_197
    .catchall {:try_start_193 .. :try_end_197} :catchall_1ce

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 679
    const/4 v0, -0x1

    if-eq v13, v0, :cond_233

    .line 681
    :try_start_19d
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 682
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 681
    invoke-virtual {v0, v13, v1}, Lcom/android/server/am/ActivityManagerService;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_1aa
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19d .. :try_end_1aa} :catch_1ab

    goto :goto_1c4

    .line 683
    :catch_1ab
    move-exception v0

    .line 686
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not restart taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 687
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1c4
    goto/16 :goto_233

    .line 678
    :catchall_1c6
    move-exception v0

    move-object/from16 v18, v6

    :goto_1c9
    :try_start_1c9
    monitor-exit v18
    :try_end_1ca
    .catchall {:try_start_1c9 .. :try_end_1ca} :catchall_1ce

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_1ce
    move-exception v0

    goto :goto_1c9

    .line 712
    :pswitch_1d0
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v1

    :try_start_1d3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 713
    invoke-virtual {v11, v12, v14, v15, v9}, Lcom/android/server/am/AppErrors;->createAppErrorIntentLOSP(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    move-result-object v0

    move-object v7, v0

    .line 714
    monitor-exit v1
    :try_end_1dc
    .catchall {:try_start_1d3 .. :try_end_1dc} :catchall_1e0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_233

    :catchall_1e0
    move-exception v0

    :try_start_1e1
    monitor-exit v1
    :try_end_1e2
    .catchall {:try_start_1e1 .. :try_end_1e2} :catchall_1e0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    .line 691
    :pswitch_1e6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v21

    .line 694
    .local v21, "orig":J
    :try_start_1ea
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onHandleAppCrash(Lcom/android/server/wm/WindowProcessController;)V

    .line 695
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v1

    if-nez v1, :cond_229

    .line 696
    iget-object v6, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6
    :try_end_1fe
    .catchall {:try_start_1ea .. :try_end_1fe} :catchall_22e

    :try_start_1fe
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 697
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const-string v18, "crash"
    :try_end_20a
    .catchall {:try_start_1fe .. :try_end_20a} :catchall_21f

    move-object/from16 v2, p1

    move-object/from16 v23, v6

    move-object/from16 v6, v18

    :try_start_210
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z

    .line 699
    monitor-exit v23
    :try_end_214
    .catchall {:try_start_210 .. :try_end_214} :catchall_227

    :try_start_214
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 700
    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V
    :try_end_21e
    .catchall {:try_start_214 .. :try_end_21e} :catchall_22e

    goto :goto_229

    .line 699
    :catchall_21f
    move-exception v0

    move-object/from16 v23, v6

    :goto_222
    :try_start_222
    monitor-exit v23
    :try_end_223
    .catchall {:try_start_222 .. :try_end_223} :catchall_227

    :try_start_223
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .end local v7    # "appErrorIntent":Landroid/content/Intent;
    .end local v8    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v10    # "relaunchReason":I
    .end local v13    # "taskId":I
    .end local v14    # "timeMillis":J
    .end local v16    # "longMsg":Ljava/lang/String;
    .end local v17    # "res":I
    .end local v19    # "stackTrace":Ljava/lang/String;
    .end local v20    # "shortMsg":Ljava/lang/String;
    .end local v21    # "orig":J
    .end local p0    # "this":Lcom/android/server/am/AppErrors;
    .end local p1    # "r":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "crashInfo":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local p3    # "callingPid":I
    .end local p4    # "callingUid":I
    throw v0
    :try_end_227
    .catchall {:try_start_223 .. :try_end_227} :catchall_22e

    .restart local v7    # "appErrorIntent":Landroid/content/Intent;
    .restart local v8    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v10    # "relaunchReason":I
    .restart local v13    # "taskId":I
    .restart local v14    # "timeMillis":J
    .restart local v16    # "longMsg":Ljava/lang/String;
    .restart local v17    # "res":I
    .restart local v19    # "stackTrace":Ljava/lang/String;
    .restart local v20    # "shortMsg":Ljava/lang/String;
    .restart local v21    # "orig":J
    .restart local p0    # "this":Lcom/android/server/am/AppErrors;
    .restart local p1    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "crashInfo":Landroid/app/ApplicationErrorReport$CrashInfo;
    .restart local p3    # "callingPid":I
    .restart local p4    # "callingUid":I
    :catchall_227
    move-exception v0

    goto :goto_222

    .line 703
    :cond_229
    :goto_229
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 704
    nop

    .line 705
    goto :goto_233

    .line 703
    :catchall_22e
    move-exception v0

    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 704
    throw v0

    .line 718
    .end local v21    # "orig":J
    :cond_233
    :goto_233
    if-eqz v7, :cond_24a

    .line 720
    :try_start_235
    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    iget v2, v12, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_241
    .catch Landroid/content/ActivityNotFoundException; {:try_start_235 .. :try_end_241} :catch_242

    .line 723
    goto :goto_24a

    .line 721
    :catch_242
    move-exception v0

    .line 722
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "ActivityManager"

    const-string v2, "bug report receiver dissappeared"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 725
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_24a
    :goto_24a
    return-void

    .line 644
    .end local v13    # "taskId":I
    .end local v17    # "res":I
    .local v7, "data":Lcom/android/server/am/AppErrorDialog$Data;
    :cond_24b
    :goto_24b
    :try_start_24b
    monitor-exit v17
    :try_end_24c
    .catchall {:try_start_24b .. :try_end_24c} :catchall_26a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 659
    .end local v7    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .end local v10    # "relaunchReason":I
    .local v13, "relaunchReason":I
    :catchall_250
    move-exception v0

    move-object/from16 v9, p2

    move v10, v13

    .end local v13    # "relaunchReason":I
    .restart local v10    # "relaunchReason":I
    goto :goto_265

    .end local v8    # "result":Lcom/android/server/am/AppErrorResult;
    .end local v10    # "relaunchReason":I
    .restart local v13    # "relaunchReason":I
    .restart local v18    # "result":Lcom/android/server/am/AppErrorResult;
    :catchall_255
    move-exception v0

    move-object/from16 v9, p2

    move v10, v13

    move-object/from16 v8, v18

    .end local v13    # "relaunchReason":I
    .end local v18    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v8    # "result":Lcom/android/server/am/AppErrorResult;
    .restart local v10    # "relaunchReason":I
    goto :goto_265

    .end local v19    # "stackTrace":Ljava/lang/String;
    .end local v20    # "shortMsg":Ljava/lang/String;
    .local v7, "relaunchReason":I
    .restart local v9    # "stackTrace":Ljava/lang/String;
    .local v10, "shortMsg":Ljava/lang/String;
    :catchall_25c
    move-exception v0

    move-object/from16 v17, v6

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move-object v9, v13

    move v10, v7

    .end local v7    # "relaunchReason":I
    .end local v9    # "stackTrace":Ljava/lang/String;
    .local v10, "relaunchReason":I
    .restart local v19    # "stackTrace":Ljava/lang/String;
    .restart local v20    # "shortMsg":Ljava/lang/String;
    :goto_265
    :try_start_265
    monitor-exit v17
    :try_end_266
    .catchall {:try_start_265 .. :try_end_266} :catchall_26a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_26a
    move-exception v0

    goto :goto_265

    :pswitch_data_26c
    .packed-switch 0x1
        :pswitch_1e6
        :pswitch_1d0
        :pswitch_17f
        :pswitch_143
        :pswitch_173
        :pswitch_143
        :pswitch_143
        :pswitch_145
    .end packed-switch
.end method

.method private createAppErrorReportLOSP(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;
    .registers 10
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "timeMillis"    # J
    .param p4, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 826
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 827
    .local v0, "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getErrorReportReceiver()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 828
    return-object v2

    .line 831
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->isCrashing()Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->isNotResponding()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 832
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->isForceCrashReport()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 833
    return-object v2

    .line 836
    :cond_1d
    new-instance v1, Landroid/app/ApplicationErrorReport;

    invoke-direct {v1}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 837
    .local v1, "report":Landroid/app/ApplicationErrorReport;
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v3, v1, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 838
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getErrorReportReceiver()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 839
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v3, v1, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 840
    iput-wide p2, v1, Landroid/app/ApplicationErrorReport;->time:J

    .line 841
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_42

    move v3, v4

    goto :goto_43

    :cond_42
    const/4 v3, 0x0

    :goto_43
    iput-boolean v3, v1, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 843
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->isCrashing()Z

    move-result v3

    if-nez v3, :cond_7d

    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->isForceCrashReport()Z

    move-result v3

    if-eqz v3, :cond_52

    goto :goto_7d

    .line 846
    :cond_52
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->isNotResponding()Z

    move-result v3

    if-eqz v3, :cond_81

    .line 847
    nop

    .line 848
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getNotRespondingReport()Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v3

    .line 849
    .local v3, "anrReport":Landroid/app/ActivityManager$ProcessErrorStateInfo;
    if-nez v3, :cond_60

    .line 851
    return-object v2

    .line 853
    :cond_60
    const/4 v2, 0x2

    iput v2, v1, Landroid/app/ApplicationErrorReport;->type:I

    .line 854
    new-instance v2, Landroid/app/ApplicationErrorReport$AnrInfo;

    invoke-direct {v2}, Landroid/app/ApplicationErrorReport$AnrInfo;-><init>()V

    iput-object v2, v1, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    .line 856
    iget-object v2, v1, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v4, v3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    iput-object v4, v2, Landroid/app/ApplicationErrorReport$AnrInfo;->activity:Ljava/lang/String;

    .line 857
    iget-object v2, v1, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v4, v3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    iput-object v4, v2, Landroid/app/ApplicationErrorReport$AnrInfo;->cause:Ljava/lang/String;

    .line 858
    iget-object v2, v1, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v4, v3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    iput-object v4, v2, Landroid/app/ApplicationErrorReport$AnrInfo;->info:Ljava/lang/String;

    goto :goto_81

    .line 844
    .end local v3    # "anrReport":Landroid/app/ActivityManager$ProcessErrorStateInfo;
    :cond_7d
    :goto_7d
    iput v4, v1, Landroid/app/ApplicationErrorReport;->type:I

    .line 845
    iput-object p4, v1, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 861
    :cond_81
    :goto_81
    return-object v1
.end method

.method private handleAppCrashInActivityController(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JII)Z
    .registers 31
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;
    .param p5, "stackTrace"    # Ljava/lang/String;
    .param p6, "timeMillis"    # J
    .param p8, "callingPid"    # I
    .param p9, "callingUid"    # I

    .line 733
    move-object/from16 v10, p1

    if-eqz v10, :cond_7

    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    move-object v3, v0

    .line 734
    .local v3, "name":Ljava/lang/String;
    if-eqz v10, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    move v4, v0

    goto :goto_13

    :cond_11
    move/from16 v4, p8

    .line 735
    .local v4, "pid":I
    :goto_13
    if-eqz v10, :cond_1b

    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move v9, v0

    goto :goto_1d

    :cond_1b
    move/from16 v9, p9

    .line 737
    .local v9, "uid":I
    :goto_1d
    move-object/from16 v11, p0

    iget-object v0, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-object/from16 v15, p2

    iget-object v14, v15, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    new-instance v20, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda0;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppErrors;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v13, v3

    move-object v0, v14

    move v14, v4

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-wide/from16 v17, p6

    move-object/from16 v19, v0

    invoke-virtual/range {v12 .. v20}, Lcom/android/server/wm/ActivityTaskManagerInternal;->handleAppCrashInActivityController(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method private handleAppCrashLSPB(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .registers 34
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "shortMsg"    # Ljava/lang/String;
    .param p4, "longMsg"    # Ljava/lang/String;
    .param p5, "stackTrace"    # Ljava/lang/String;
    .param p6, "data"    # Lcom/android/server/am/AppErrorDialog$Data;

    .line 867
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 868
    .local v9, "now":J
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 870
    invoke-virtual {v2}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v2

    .line 868
    const-string v3, "anr_show_background"

    const/4 v11, 0x0

    invoke-static {v1, v3, v11, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_23

    const/4 v1, 0x1

    goto :goto_24

    :cond_23
    move v1, v11

    :goto_24
    move v13, v1

    .line 874
    .local v13, "showBackground":Z
    iget-object v14, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 875
    .local v14, "processName":Ljava/lang/String;
    iget v15, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 876
    .local v15, "uid":I
    iget v6, v7, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 877
    .local v6, "userId":I
    iget-boolean v5, v7, Lcom/android/server/am/ProcessRecord;->isolated:Z

    .line 878
    .local v5, "isolated":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v16

    .line 879
    .local v16, "persistent":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v4

    .line 880
    .local v4, "proc":Lcom/android/server/wm/WindowProcessController;
    iget-object v2, v7, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 882
    .local v2, "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    iget-boolean v1, v7, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v1, :cond_50

    .line 883
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, v14, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 884
    .local v1, "crashTime":Ljava/lang/Long;
    iget-object v3, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3, v14, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    move-object/from16 v17, v1

    move-object/from16 v18, v3

    .local v3, "crashTimePersistent":Ljava/lang/Long;
    goto :goto_56

    .line 886
    .end local v1    # "crashTime":Ljava/lang/Long;
    .end local v3    # "crashTimePersistent":Ljava/lang/Long;
    :cond_50
    const/4 v1, 0x0

    move-object v3, v1

    .restart local v3    # "crashTimePersistent":Ljava/lang/Long;
    move-object/from16 v17, v1

    move-object/from16 v18, v3

    .line 890
    .end local v3    # "crashTimePersistent":Ljava/lang/Long;
    .local v17, "crashTime":Ljava/lang/Long;
    .local v18, "crashTimePersistent":Ljava/lang/Long;
    :goto_56
    iget-object v1, v7, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v1, v9, v10}, Lcom/android/server/am/ProcessServiceRecord;->incServiceCrashCountLocked(J)Z

    move-result v19

    .line 892
    .local v19, "tryAgain":Z
    if-eqz v17, :cond_6d

    .line 893
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    sget v1, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    int-to-long v11, v1

    add-long v20, v20, v11

    cmp-long v1, v9, v20

    if-gez v1, :cond_6d

    const/4 v1, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v1, 0x0

    :goto_6e
    move v11, v1

    .line 894
    .local v11, "quickCrash":Z
    if-nez v11, :cond_d4

    invoke-direct {v0, v7, v9, v10}, Lcom/android/server/am/AppErrors;->isProcOverCrashLimitLBp(Lcom/android/server/am/ProcessRecord;J)Z

    move-result v1

    if-eqz v1, :cond_7d

    move-object/from16 v12, p2

    move-object/from16 v23, v2

    goto/16 :goto_d8

    .line 942
    :cond_7d
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-object/from16 v12, p2

    invoke-virtual {v1, v4, v12}, Lcom/android/server/wm/ActivityTaskManagerInternal;->finishTopCrashedActivities(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)I

    move-result v1

    .line 944
    .local v1, "affectedTaskId":I
    if-eqz v8, :cond_8b

    .line 945
    iput v1, v8, Lcom/android/server/am/AppErrorDialog$Data;->taskId:I

    .line 947
    :cond_8b
    if-eqz v8, :cond_c1

    if-eqz v18, :cond_c1

    .line 948
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    sget v3, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    move/from16 v22, v1

    move-object/from16 v23, v2

    .end local v1    # "affectedTaskId":I
    .end local v2    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .local v22, "affectedTaskId":I
    .local v23, "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    int-to-long v1, v3

    add-long v20, v20, v1

    cmp-long v1, v9, v20

    if-gez v1, :cond_b2

    .line 949
    const/4 v1, 0x1

    iput-boolean v1, v8, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    move/from16 v24, v5

    move-wide/from16 v25, v9

    move/from16 v20, v11

    move/from16 v21, v15

    move-object/from16 v11, v23

    move-object/from16 v23, v4

    move v9, v6

    goto/16 :goto_1cf

    .line 948
    :cond_b2
    move/from16 v24, v5

    move-wide/from16 v25, v9

    move/from16 v20, v11

    move/from16 v21, v15

    move-object/from16 v11, v23

    move-object/from16 v23, v4

    move v9, v6

    goto/16 :goto_1cf

    .line 947
    .end local v22    # "affectedTaskId":I
    .end local v23    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .restart local v1    # "affectedTaskId":I
    .restart local v2    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    :cond_c1
    move/from16 v22, v1

    move-object/from16 v23, v2

    .end local v1    # "affectedTaskId":I
    .end local v2    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .restart local v22    # "affectedTaskId":I
    .restart local v23    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    move/from16 v24, v5

    move-wide/from16 v25, v9

    move/from16 v20, v11

    move/from16 v21, v15

    move-object/from16 v11, v23

    move-object/from16 v23, v4

    move v9, v6

    goto/16 :goto_1cf

    .line 894
    .end local v22    # "affectedTaskId":I
    .end local v23    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .restart local v2    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    :cond_d4
    move-object/from16 v12, p2

    move-object/from16 v23, v2

    .line 898
    .end local v2    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .restart local v23    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    :goto_d8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has crashed too many times, killing! Reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 899
    if-eqz v11, :cond_f2

    const-string v2, "crashed quickly"

    goto :goto_f5

    :cond_f2
    const-string/jumbo v2, "over process crash limit"

    :goto_f5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 898
    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const/16 v1, 0x7550

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    .line 901
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v3, v21

    const/16 v20, 0x1

    aput-object v14, v3, v20

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x2

    aput-object v20, v3, v21

    .line 900
    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 902
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onHandleAppCrash(Lcom/android/server/wm/WindowProcessController;)V

    .line 903
    if-nez v16, :cond_1ba

    .line 908
    const/16 v1, 0x753f

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v20, 0x0

    aput-object v3, v2, v20

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v20, 0x1

    aput-object v3, v2, v20

    aput-object v14, v2, v21

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 910
    if-nez v5, :cond_172

    .line 913
    iget v2, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v3, Lcom/android/server/am/AppErrors$BadProcessInfo;

    move-object v1, v3

    move v12, v2

    move/from16 v20, v11

    move/from16 v21, v15

    move-object/from16 v11, v23

    move-object v15, v3

    .end local v15    # "uid":I
    .end local v23    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .local v11, "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .local v20, "quickCrash":Z
    .local v21, "uid":I
    move-wide v2, v9

    move-object/from16 v23, v4

    .end local v4    # "proc":Lcom/android/server/wm/WindowProcessController;
    .local v23, "proc":Lcom/android/server/wm/WindowProcessController;
    move-object/from16 v4, p3

    move/from16 v24, v5

    .end local v5    # "isolated":Z
    .local v24, "isolated":Z
    move-object/from16 v5, p4

    move-wide/from16 v25, v9

    move v9, v6

    .end local v6    # "userId":I
    .local v9, "userId":I
    .local v25, "now":J
    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppErrors$BadProcessInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v14, v12, v15}, Lcom/android/server/am/AppErrors;->markBadProcess(Ljava/lang/String;ILcom/android/server/am/AppErrors$BadProcessInfo;)V

    .line 915
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    iget v2, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v14, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 916
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    iget v2, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v14, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    goto :goto_17f

    .line 910
    .end local v20    # "quickCrash":Z
    .end local v21    # "uid":I
    .end local v24    # "isolated":Z
    .end local v25    # "now":J
    .restart local v4    # "proc":Lcom/android/server/wm/WindowProcessController;
    .restart local v5    # "isolated":Z
    .restart local v6    # "userId":I
    .local v9, "now":J
    .local v11, "quickCrash":Z
    .restart local v15    # "uid":I
    .local v23, "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    :cond_172
    move/from16 v24, v5

    move-wide/from16 v25, v9

    move/from16 v20, v11

    move/from16 v21, v15

    move-object/from16 v11, v23

    move-object/from16 v23, v4

    move v9, v6

    .line 918
    .end local v4    # "proc":Lcom/android/server/wm/WindowProcessController;
    .end local v5    # "isolated":Z
    .end local v6    # "userId":I
    .end local v15    # "uid":I
    .local v9, "userId":I
    .local v11, "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .restart local v20    # "quickCrash":Z
    .restart local v21    # "uid":I
    .local v23, "proc":Lcom/android/server/wm/WindowProcessController;
    .restart local v24    # "isolated":Z
    .restart local v25    # "now":J
    :goto_17f
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Lcom/android/server/am/ProcessErrorStateRecord;->setBad(Z)V

    .line 919
    invoke-virtual {v7, v1}, Lcom/android/server/am/ProcessRecord;->setRemoved(Z)V

    .line 920
    const-class v1, Lcom/android/server/usage/AppStandbyInternal;

    .line 921
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/server/usage/AppStandbyInternal;

    .line 922
    .local v10, "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    if-eqz v10, :cond_1a0

    .line 923
    nop

    .line 927
    iget-object v1, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_19b

    iget-object v1, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_19c

    :cond_19b
    move-object v1, v14

    :goto_19c
    const/4 v2, 0x4

    .line 923
    invoke-interface {v10, v1, v9, v2}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;II)V

    .line 933
    :cond_1a0
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v3, 0x0

    const/4 v5, 0x4

    const-string v6, "crash"

    move-object/from16 v2, p1

    move/from16 v4, v19

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z

    .line 935
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V

    .line 936
    if-nez v13, :cond_1c8

    .line 937
    return v2

    .line 903
    .end local v10    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    .end local v20    # "quickCrash":Z
    .end local v21    # "uid":I
    .end local v24    # "isolated":Z
    .end local v25    # "now":J
    .restart local v4    # "proc":Lcom/android/server/wm/WindowProcessController;
    .restart local v5    # "isolated":Z
    .restart local v6    # "userId":I
    .local v9, "now":J
    .local v11, "quickCrash":Z
    .restart local v15    # "uid":I
    .local v23, "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    :cond_1ba
    move/from16 v24, v5

    move-wide/from16 v25, v9

    move/from16 v20, v11

    move/from16 v21, v15

    move-object/from16 v11, v23

    const/4 v2, 0x0

    move-object/from16 v23, v4

    move v9, v6

    .line 940
    .end local v4    # "proc":Lcom/android/server/wm/WindowProcessController;
    .end local v5    # "isolated":Z
    .end local v6    # "userId":I
    .end local v15    # "uid":I
    .local v9, "userId":I
    .local v11, "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .restart local v20    # "quickCrash":Z
    .restart local v21    # "uid":I
    .local v23, "proc":Lcom/android/server/wm/WindowProcessController;
    .restart local v24    # "isolated":Z
    .restart local v25    # "now":J
    :cond_1c8
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->resumeTopActivities(Z)V

    .line 953
    :goto_1cf
    if-eqz v8, :cond_1d6

    if-eqz v19, :cond_1d6

    .line 954
    const/4 v1, 0x1

    iput-boolean v1, v8, Lcom/android/server/am/AppErrorDialog$Data;->isRestartableForService:Z

    .line 961
    :cond_1d6
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result v1

    if-eqz v1, :cond_1ed

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result v1

    if-eqz v1, :cond_1ed

    iget-object v1, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_1ed

    .line 962
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowProcessController;->clearPackagePreferredForHomeActivities()V

    .line 965
    :cond_1ed
    if-nez v24, :cond_209

    .line 968
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move/from16 v3, v21

    .end local v21    # "uid":I
    .local v3, "uid":I
    invoke-virtual {v1, v14, v3, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 969
    iget-object v1, v0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v14, v3, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 970
    move-wide/from16 v1, v25

    .end local v25    # "now":J
    .local v1, "now":J
    invoke-direct {v0, v14, v3, v1, v2}, Lcom/android/server/am/AppErrors;->updateProcessCrashCountLBp(Ljava/lang/String;IJ)V

    goto :goto_20d

    .line 965
    .end local v1    # "now":J
    .end local v3    # "uid":I
    .restart local v21    # "uid":I
    .restart local v25    # "now":J
    :cond_209
    move/from16 v3, v21

    move-wide/from16 v1, v25

    .line 973
    .end local v21    # "uid":I
    .end local v25    # "now":J
    .restart local v1    # "now":J
    .restart local v3    # "uid":I
    :goto_20d
    invoke-virtual {v11}, Lcom/android/server/am/ProcessErrorStateRecord;->getCrashHandler()Ljava/lang/Runnable;

    move-result-object v4

    if-eqz v4, :cond_21e

    .line 974
    iget-object v4, v0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessErrorStateRecord;->getCrashHandler()Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 976
    :cond_21e
    const/4 v4, 0x1

    return v4
.end method

.method private isProcOverCrashLimitLBp(Lcom/android/server/am/ProcessRecord;J)Z
    .registers 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "now"    # J

    .line 992
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 993
    .local v0, "crashCount":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v1, :cond_2f

    if-eqz v0, :cond_2f

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 994
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-wide v3, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_RESET_INTERVAL:J

    add-long/2addr v1, v3

    cmp-long v1, p2, v1

    if-gez v1, :cond_2f

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 995
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_LIMIT:I

    if-lt v1, v2, :cond_2f

    const/4 v1, 0x1

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    .line 993
    :goto_30
    return v1
.end method

.method private killAppImmediateLSP(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reasonCode"    # I
    .param p3, "subReason"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "killReason"    # Ljava/lang/String;

    .line 470
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 471
    .local v0, "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashing(Z)V

    .line 472
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V

    .line 473
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 474
    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotRespondingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V

    .line 475
    iget-object v1, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    .line 476
    .local v1, "pid":I
    if-lez v1, :cond_32

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v1, v2, :cond_32

    .line 477
    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 478
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p4

    :try_start_26
    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/AppErrors;->handleAppCrashLSPB(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    .line 480
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_2f

    .line 481
    const/4 v2, 0x1

    invoke-virtual {p1, p5, p2, p3, v2}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    goto :goto_32

    .line 480
    :catchall_2f
    move-exception v3

    :try_start_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v3

    .line 483
    :cond_32
    :goto_32
    return-void
.end method

.method private makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z
    .registers 16
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "shortMsg"    # Ljava/lang/String;
    .param p3, "longMsg"    # Ljava/lang/String;
    .param p4, "stackTrace"    # Ljava/lang/String;
    .param p5, "data"    # Lcom/android/server/am/AppErrorDialog$Data;

    .line 765
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 766
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 767
    .local v1, "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashing(Z)V

    .line 768
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V

    .line 771
    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->startAppProblemLSP()V

    .line 772
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->stopFreezingActivities()V

    .line 773
    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_3c

    .line 774
    :try_start_27
    const-string v5, "force-crash"

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/AppErrors;->handleAppCrashLSPB(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v3

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_27 .. :try_end_34} :catchall_39

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_3c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return v3

    .line 776
    :catchall_39
    move-exception v3

    :try_start_3a
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    .end local p0    # "this":Lcom/android/server/am/AppErrors;
    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "shortMsg":Ljava/lang/String;
    .end local p3    # "longMsg":Ljava/lang/String;
    .end local p4    # "stackTrace":Ljava/lang/String;
    .end local p5    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    :try_start_3b
    throw v3

    .line 777
    .end local v1    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .restart local p0    # "this":Lcom/android/server/am/AppErrors;
    .restart local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "shortMsg":Ljava/lang/String;
    .restart local p3    # "longMsg":Ljava/lang/String;
    .restart local p4    # "stackTrace":Ljava/lang/String;
    .restart local p5    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method private resetProcessCrashMapLBp(Landroid/util/SparseArray;ZII)V
    .registers 9
    .param p2, "resetEntireUser"    # Z
    .param p3, "appId"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "*>;ZII)V"
        }
    .end annotation

    .line 416
    .local p1, "ba":Landroid/util/SparseArray;, "Landroid/util/SparseArray<*>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_31

    .line 417
    const/4 v1, 0x0

    .line 418
    .local v1, "remove":Z
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 419
    .local v2, "entUid":I
    if-nez p2, :cond_22

    .line 420
    const/4 v3, -0x1

    if-ne p4, v3, :cond_1a

    .line 421
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-ne v3, p3, :cond_29

    .line 422
    const/4 v1, 0x1

    goto :goto_29

    .line 425
    :cond_1a
    invoke-static {p4, p3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    if-ne v2, v3, :cond_29

    .line 426
    const/4 v1, 0x1

    goto :goto_29

    .line 429
    :cond_22
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p4, :cond_29

    .line 430
    const/4 v1, 0x1

    .line 432
    :cond_29
    :goto_29
    if-eqz v1, :cond_2e

    .line 433
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 416
    .end local v1    # "remove":Z
    .end local v2    # "entUid":I
    :cond_2e
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 436
    .end local v0    # "i":I
    :cond_31
    return-void
.end method

.method private stopReportingCrashesLBp(Lcom/android/server/am/ProcessRecord;)V
    .registers 4
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 1077
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    if-nez v0, :cond_b

    .line 1078
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    .line 1080
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1081
    return-void
.end method

.method private updateProcessCrashCountLBp(Ljava/lang/String;IJ)V
    .registers 11
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "now"    # J

    .line 981
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 982
    .local v0, "count":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    if-eqz v0, :cond_33

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-wide v4, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_RESET_INTERVAL:J

    add-long/2addr v2, v4

    cmp-long v2, v2, p3

    if-gez v2, :cond_1b

    goto :goto_33

    .line 985
    :cond_1b
    new-instance v2, Landroid/util/Pair;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_41

    .line 983
    :cond_33
    :goto_33
    new-instance v2, Landroid/util/Pair;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    .line 987
    :goto_41
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 988
    return-void
.end method


# virtual methods
.method clearBadProcess(Ljava/lang/String;I)V
    .registers 6
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 366
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 367
    :try_start_3
    new-instance v1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 368
    .local v1, "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ProcessMap;->putAll(Lcom/android/internal/app/ProcessMap;)V

    .line 369
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 370
    iput-object v1, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 371
    .end local v1    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    monitor-exit v0

    .line 372
    return-void

    .line 371
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method crashApplication(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 564
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 565
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 567
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 569
    .local v2, "origId":J
    :try_start_c
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/am/AppErrors;->crashApplicationInner(Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;II)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_14

    .line 571
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 572
    nop

    .line 573
    return-void

    .line 571
    :catchall_14
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 572
    throw v4
.end method

.method createAppErrorIntentLOSP(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;
    .registers 8
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "timeMillis"    # J
    .param p4, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 812
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppErrors;->createAppErrorReportLOSP(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/app/ApplicationErrorReport;

    move-result-object v0

    .line 813
    .local v0, "report":Landroid/app/ApplicationErrorReport;
    if-nez v0, :cond_8

    .line 814
    const/4 v1, 0x0

    return-object v1

    .line 816
    :cond_8
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.APP_ERROR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 817
    .local v1, "result":Landroid/content/Intent;
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessErrorStateRecord;->getErrorReportReceiver()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 818
    const-string v2, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 819
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 820
    return-object v1
.end method

.method dumpDebugLPr(Landroid/util/proto/ProtoOutputStream;JLjava/lang/String;)V
    .registers 33
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "dumpPackage"    # Ljava/lang/String;

    .line 168
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    iget-object v4, v1, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 169
    .local v4, "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 170
    return-void

    .line 173
    :cond_1f
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 174
    .local v5, "token":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 175
    .local v7, "now":J
    const-wide v9, 0x10300000001L

    invoke-virtual {v2, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 177
    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12b

    .line 178
    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 179
    .local v0, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v15

    .line 180
    .local v15, "processCount":I
    const/16 v16, 0x0

    move/from16 v11, v16

    .local v11, "ip":I
    :goto_45
    if-ge v11, v15, :cond_120

    .line 181
    const-wide v9, 0x20b00000003L

    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 182
    .local v9, "btoken":J
    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 183
    .local v12, "pname":Ljava/lang/String;
    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Landroid/util/SparseArray;

    .line 184
    .local v13, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v14

    .line 186
    .local v14, "uidCount":I
    move-wide/from16 v19, v7

    const-wide v7, 0x10900000001L

    .end local v7    # "now":J
    .local v19, "now":J
    invoke-virtual {v2, v7, v8, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 187
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_6d
    if-ge v7, v14, :cond_109

    .line 188
    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 189
    .local v8, "puid":I
    move-object/from16 v16, v0

    .end local v0    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .local v16, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getProcessNamesLOSP()Lcom/android/internal/app/ProcessMap;

    move-result-object v0

    invoke-virtual {v0, v12, v8}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 190
    .local v0, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v3, :cond_a9

    if-eqz v0, :cond_9c

    .line 191
    move-object/from16 v21, v4

    .end local v4    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .local v21, "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ab

    .line 192
    move-wide/from16 v26, v5

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move/from16 v25, v14

    move/from16 v24, v15

    goto :goto_f7

    .line 190
    .end local v21    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v4    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    :cond_9c
    move-object/from16 v21, v4

    .end local v4    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v21    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    move-wide/from16 v26, v5

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move/from16 v25, v14

    move/from16 v24, v15

    goto :goto_f7

    .end local v21    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v4    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    :cond_a9
    move-object/from16 v21, v4

    .line 194
    .end local v4    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v21    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    :cond_ab
    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppErrors$BadProcessInfo;

    .line 195
    .local v4, "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move/from16 v25, v14

    move/from16 v24, v15

    const-wide v12, 0x20b00000002L

    .end local v12    # "pname":Ljava/lang/String;
    .end local v13    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v14    # "uidCount":I
    .end local v15    # "processCount":I
    .local v22, "pname":Ljava/lang/String;
    .local v23, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .local v24, "processCount":I
    .local v25, "uidCount":I
    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 196
    .local v14, "etoken":J
    const-wide v12, 0x10500000001L

    invoke-virtual {v2, v12, v13, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 197
    iget-wide v12, v4, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    move-wide/from16 v26, v5

    const-wide v5, 0x10300000002L

    .end local v5    # "token":J
    .local v26, "token":J
    invoke-virtual {v2, v5, v6, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 198
    const-wide v12, 0x10900000003L

    iget-object v5, v4, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v2, v12, v13, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 199
    const-wide v5, 0x10900000004L

    iget-object v12, v4, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    invoke-virtual {v2, v5, v6, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 200
    const-wide v5, 0x10900000005L

    iget-object v12, v4, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v2, v5, v6, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 201
    invoke-virtual {v2, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 187
    .end local v0    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    .end local v8    # "puid":I
    .end local v14    # "etoken":J
    :goto_f7
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v16

    move-object/from16 v4, v21

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move/from16 v15, v24

    move/from16 v14, v25

    move-wide/from16 v5, v26

    goto/16 :goto_6d

    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v21    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v22    # "pname":Ljava/lang/String;
    .end local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v24    # "processCount":I
    .end local v25    # "uidCount":I
    .end local v26    # "token":J
    .local v0, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .local v4, "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v5    # "token":J
    .restart local v12    # "pname":Ljava/lang/String;
    .restart local v13    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .local v14, "uidCount":I
    .restart local v15    # "processCount":I
    :cond_109
    move-object/from16 v16, v0

    move-object/from16 v21, v4

    move-wide/from16 v26, v5

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move/from16 v25, v14

    move/from16 v24, v15

    .line 203
    .end local v0    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v4    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v5    # "token":J
    .end local v7    # "i":I
    .end local v12    # "pname":Ljava/lang/String;
    .end local v13    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v14    # "uidCount":I
    .end local v15    # "processCount":I
    .restart local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .restart local v21    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v22    # "pname":Ljava/lang/String;
    .restart local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v24    # "processCount":I
    .restart local v25    # "uidCount":I
    .restart local v26    # "token":J
    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 180
    .end local v9    # "btoken":J
    .end local v22    # "pname":Ljava/lang/String;
    .end local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v25    # "uidCount":I
    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v7, v19

    goto/16 :goto_45

    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v19    # "now":J
    .end local v21    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v24    # "processCount":I
    .end local v26    # "token":J
    .restart local v0    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .restart local v4    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v5    # "token":J
    .local v7, "now":J
    .restart local v15    # "processCount":I
    :cond_120
    move-object/from16 v16, v0

    move-object/from16 v21, v4

    move-wide/from16 v26, v5

    move-wide/from16 v19, v7

    move/from16 v24, v15

    .end local v0    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v4    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v5    # "token":J
    .end local v7    # "now":J
    .end local v15    # "processCount":I
    .restart local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .restart local v19    # "now":J
    .restart local v21    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v24    # "processCount":I
    .restart local v26    # "token":J
    goto :goto_131

    .line 177
    .end local v11    # "ip":I
    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v19    # "now":J
    .end local v21    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v24    # "processCount":I
    .end local v26    # "token":J
    .restart local v4    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v5    # "token":J
    .restart local v7    # "now":J
    :cond_12b
    move-object/from16 v21, v4

    move-wide/from16 v26, v5

    move-wide/from16 v19, v7

    .line 207
    .end local v4    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v5    # "token":J
    .end local v7    # "now":J
    .restart local v19    # "now":J
    .restart local v21    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v26    # "token":J
    :goto_131
    iget-object v4, v1, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v4

    .line 208
    :try_start_134
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0
    :try_end_13e
    .catchall {:try_start_134 .. :try_end_13e} :catchall_206

    if-nez v0, :cond_1ff

    .line 209
    :try_start_140
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 210
    .local v0, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 211
    .local v5, "procCount":I
    const/4 v6, 0x0

    .local v6, "ip":I
    :goto_14b
    if-ge v6, v5, :cond_1f9

    .line 212
    const-wide v7, 0x20b00000002L

    invoke-virtual {v2, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    move-wide v7, v9

    .line 213
    .local v7, "ctoken":J
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 214
    .local v9, "pname":Ljava/lang/String;
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    .line 215
    .local v10, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 217
    .local v11, "uidCount":I
    const-wide v12, 0x10900000001L

    invoke-virtual {v2, v12, v13, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 218
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_170
    if-ge v14, v11, :cond_1e5

    .line 219
    invoke-virtual {v10, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    .line 220
    .local v15, "puid":I
    iget-object v12, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v12}, Lcom/android/server/am/ActivityManagerService;->getProcessNamesLOSP()Lcom/android/internal/app/ProcessMap;

    move-result-object v12

    invoke-virtual {v12, v9, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ProcessRecord;

    .line 221
    .local v12, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v3, :cond_1a6

    if-eqz v12, :cond_19b

    .line 222
    invoke-virtual {v12}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v13

    invoke-virtual {v13, v3}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1a6

    .line 223
    move-object v13, v0

    move-object/from16 v16, v9

    move-object/from16 v24, v10

    const-wide v9, 0x10300000002L

    goto :goto_1d6

    .line 221
    :cond_19b
    move-object v13, v0

    move-object/from16 v16, v9

    move-object/from16 v24, v10

    const-wide v9, 0x10300000002L

    goto :goto_1d6

    .line 225
    :cond_1a6
    move-object v13, v0

    const-wide v0, 0x20b00000002L

    .end local v0    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .local v13, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v17

    move-wide/from16 v22, v17

    .line 226
    .local v22, "etoken":J
    const-wide v0, 0x10500000001L

    invoke-virtual {v2, v0, v1, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 227
    nop

    .line 228
    invoke-virtual {v10, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 227
    move-object/from16 v16, v9

    move-object/from16 v24, v10

    const-wide v9, 0x10300000002L

    .end local v9    # "pname":Ljava/lang/String;
    .end local v10    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .local v16, "pname":Ljava/lang/String;
    .local v24, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    invoke-virtual {v2, v9, v10, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 229
    move-wide/from16 v0, v22

    .end local v22    # "etoken":J
    .local v0, "etoken":J
    invoke-virtual {v2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 218
    .end local v0    # "etoken":J
    .end local v12    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "puid":I
    :goto_1d6
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    move-object v0, v13

    move-object/from16 v9, v16

    move-object/from16 v10, v24

    const-wide v12, 0x10900000001L

    goto :goto_170

    .end local v13    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v16    # "pname":Ljava/lang/String;
    .end local v24    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .local v0, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v9    # "pname":Ljava/lang/String;
    .restart local v10    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    :cond_1e5
    move-object v13, v0

    move-object/from16 v16, v9

    move-object/from16 v24, v10

    const-wide v9, 0x10300000002L

    .line 231
    .end local v0    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v9    # "pname":Ljava/lang/String;
    .end local v10    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .end local v14    # "i":I
    .restart local v13    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v16    # "pname":Ljava/lang/String;
    .restart local v24    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    invoke-virtual {v2, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_1f2
    .catchall {:try_start_140 .. :try_end_1f2} :catchall_1fb

    .line 211
    .end local v7    # "ctoken":J
    .end local v11    # "uidCount":I
    .end local v16    # "pname":Ljava/lang/String;
    .end local v24    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    move-object v0, v13

    goto/16 :goto_14b

    .end local v13    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v0    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    :cond_1f9
    move-object v13, v0

    .end local v0    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v13    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    goto :goto_1ff

    .line 234
    .end local v5    # "procCount":I
    .end local v6    # "ip":I
    .end local v13    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    :catchall_1fb
    move-exception v0

    move-wide/from16 v5, v26

    goto :goto_209

    :cond_1ff
    :goto_1ff
    :try_start_1ff
    monitor-exit v4
    :try_end_200
    .catchall {:try_start_1ff .. :try_end_200} :catchall_206

    .line 236
    move-wide/from16 v5, v26

    .end local v26    # "token":J
    .local v5, "token":J
    invoke-virtual {v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 237
    return-void

    .line 234
    .end local v5    # "token":J
    .restart local v26    # "token":J
    :catchall_206
    move-exception v0

    move-wide/from16 v5, v26

    .end local v26    # "token":J
    .restart local v5    # "token":J
    :goto_209
    :try_start_209
    monitor-exit v4
    :try_end_20a
    .catchall {:try_start_209 .. :try_end_20a} :catchall_20b

    throw v0

    :catchall_20b
    move-exception v0

    goto :goto_209
.end method

.method dumpLPr(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/lang/String;)Z
    .registers 25
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "needSep"    # Z
    .param p4, "dumpPackage"    # Ljava/lang/String;

    .line 241
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 242
    .local v4, "now":J
    iget-object v6, v1, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v6

    .line 243
    :try_start_d
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_294

    if-nez v0, :cond_c8

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "printed":Z
    :try_start_1a
    iget-object v7, v1, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    .line 246
    .local v7, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_c1

    .line 247
    .local v8, "processCount":I
    const/4 v9, 0x0

    move v10, v9

    move/from16 v9, p3

    .end local p3    # "needSep":Z
    .local v9, "needSep":Z
    .local v10, "ip":I
    :goto_28
    if-ge v10, v8, :cond_bc

    .line 248
    :try_start_2a
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 249
    .local v11, "pname":Ljava/lang/String;
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    .line 250
    .local v12, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v13

    .line 251
    .local v13, "uidCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3b
    if-ge v14, v13, :cond_b4

    .line 252
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    .line 253
    .local v15, "puid":I
    move-object/from16 v16, v7

    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .local v16, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    iget-object v7, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getProcessNamesLOSP()Lcom/android/internal/app/ProcessMap;

    move-result-object v7

    invoke-virtual {v7, v11, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 254
    .local v7, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v3, :cond_63

    if-eqz v7, :cond_60

    .line 255
    move/from16 v17, v8

    .end local v8    # "processCount":I
    .local v17, "processCount":I
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_65

    .line 256
    goto :goto_a7

    .line 254
    .end local v17    # "processCount":I
    .restart local v8    # "processCount":I
    :cond_60
    move/from16 v17, v8

    .end local v8    # "processCount":I
    .restart local v17    # "processCount":I
    goto :goto_a7

    .end local v17    # "processCount":I
    .restart local v8    # "processCount":I
    :cond_63
    move/from16 v17, v8

    .line 258
    .end local v8    # "processCount":I
    .restart local v17    # "processCount":I
    :cond_65
    if-nez v0, :cond_7a

    .line 259
    if-eqz v9, :cond_6c

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_6c
    .catchall {:try_start_2a .. :try_end_6c} :catchall_17e

    .line 260
    :cond_6c
    const/4 v8, 0x1

    .line 261
    .end local v9    # "needSep":Z
    .local v8, "needSep":Z
    :try_start_6d
    const-string v9, "  Time since processes crashed:"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_72
    .catchall {:try_start_6d .. :try_end_72} :catchall_74

    .line 262
    const/4 v0, 0x1

    goto :goto_7b

    .line 303
    .end local v0    # "printed":Z
    .end local v7    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v10    # "ip":I
    .end local v11    # "pname":Ljava/lang/String;
    .end local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .end local v13    # "uidCount":I
    .end local v14    # "i":I
    .end local v15    # "puid":I
    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v17    # "processCount":I
    :catchall_74
    move-exception v0

    move-wide/from16 v17, v4

    move v9, v8

    goto/16 :goto_299

    .line 258
    .end local v8    # "needSep":Z
    .restart local v0    # "printed":Z
    .restart local v7    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v9    # "needSep":Z
    .restart local v10    # "ip":I
    .restart local v11    # "pname":Ljava/lang/String;
    .restart local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .restart local v13    # "uidCount":I
    .restart local v14    # "i":I
    .restart local v15    # "puid":I
    .restart local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v17    # "processCount":I
    :cond_7a
    move v8, v9

    .line 264
    .end local v9    # "needSep":Z
    .restart local v8    # "needSep":Z
    :goto_7b
    :try_start_7b
    const-string v9, "    Process "

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 265
    const-string v9, " uid "

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(I)V

    .line 266
    const-string v9, ": last crashed "

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v18
    :try_end_9a
    .catchall {:try_start_7b .. :try_end_9a} :catchall_ae

    move-object/from16 p3, v7

    move v9, v8

    .end local v7    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "needSep":Z
    .restart local v9    # "needSep":Z
    .local p3, "r":Lcom/android/server/am/ProcessRecord;
    sub-long v7, v4, v18

    :try_start_9f
    invoke-static {v7, v8, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 268
    const-string v7, " ago"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_a7
    .catchall {:try_start_9f .. :try_end_a7} :catchall_17e

    .line 251
    .end local v15    # "puid":I
    .end local p3    # "r":Lcom/android/server/am/ProcessRecord;
    :goto_a7
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v7, v16

    move/from16 v8, v17

    goto :goto_3b

    .line 303
    .end local v0    # "printed":Z
    .end local v9    # "needSep":Z
    .end local v10    # "ip":I
    .end local v11    # "pname":Ljava/lang/String;
    .end local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .end local v13    # "uidCount":I
    .end local v14    # "i":I
    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v17    # "processCount":I
    .restart local v8    # "needSep":Z
    :catchall_ae
    move-exception v0

    move v9, v8

    move-wide/from16 v17, v4

    .end local v8    # "needSep":Z
    .restart local v9    # "needSep":Z
    goto/16 :goto_299

    .line 251
    .restart local v0    # "printed":Z
    .local v7, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .local v8, "processCount":I
    .restart local v10    # "ip":I
    .restart local v11    # "pname":Ljava/lang/String;
    .restart local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .restart local v13    # "uidCount":I
    .restart local v14    # "i":I
    :cond_b4
    move-object/from16 v16, v7

    move/from16 v17, v8

    .line 247
    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v8    # "processCount":I
    .end local v11    # "pname":Ljava/lang/String;
    .end local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    .end local v13    # "uidCount":I
    .end local v14    # "i":I
    .restart local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v17    # "processCount":I
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_28

    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v17    # "processCount":I
    .restart local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v8    # "processCount":I
    :cond_bc
    move-object/from16 v16, v7

    move/from16 v17, v8

    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v8    # "processCount":I
    .restart local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .restart local v17    # "processCount":I
    goto :goto_ca

    .line 303
    .end local v0    # "printed":Z
    .end local v9    # "needSep":Z
    .end local v10    # "ip":I
    .end local v16    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v17    # "processCount":I
    .local p3, "needSep":Z
    :catchall_c1
    move-exception v0

    move/from16 v9, p3

    move-wide/from16 v17, v4

    goto/16 :goto_299

    .line 243
    :cond_c8
    move/from16 v9, p3

    .line 273
    .end local p3    # "needSep":Z
    .restart local v9    # "needSep":Z
    :goto_ca
    :try_start_ca
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0
    :try_end_d4
    .catchall {:try_start_ca .. :try_end_d4} :catchall_290

    if-nez v0, :cond_183

    .line 274
    const/4 v0, 0x0

    .line 275
    .restart local v0    # "printed":Z
    :try_start_d7
    iget-object v7, v1, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    .line 276
    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    .line 277
    .local v7, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 278
    .restart local v8    # "processCount":I
    const/4 v10, 0x0

    .restart local v10    # "ip":I
    :goto_e2
    if-ge v10, v8, :cond_179

    .line 279
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 280
    .restart local v11    # "pname":Ljava/lang/String;
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    .line 281
    .local v12, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v13

    .line 282
    .restart local v13    # "uidCount":I
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_f5
    if-ge v14, v13, :cond_171

    .line 283
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    .line 284
    .restart local v15    # "puid":I
    move-object/from16 p3, v7

    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    .local p3, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    iget-object v7, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getProcessNamesLOSP()Lcom/android/internal/app/ProcessMap;

    move-result-object v7

    invoke-virtual {v7, v11, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 285
    .local v7, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v3, :cond_11d

    if-eqz v7, :cond_11a

    .line 286
    move/from16 v16, v8

    .end local v8    # "processCount":I
    .local v16, "processCount":I
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11f

    .line 287
    goto :goto_16a

    .line 285
    .end local v16    # "processCount":I
    .restart local v8    # "processCount":I
    :cond_11a
    move/from16 v16, v8

    .end local v8    # "processCount":I
    .restart local v16    # "processCount":I
    goto :goto_16a

    .end local v16    # "processCount":I
    .restart local v8    # "processCount":I
    :cond_11d
    move/from16 v16, v8

    .line 289
    .end local v8    # "processCount":I
    .restart local v16    # "processCount":I
    :cond_11f
    if-nez v0, :cond_12e

    .line 290
    if-eqz v9, :cond_126

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_126
    .catchall {:try_start_d7 .. :try_end_126} :catchall_17e

    .line 291
    :cond_126
    const/4 v8, 0x1

    .line 292
    .end local v9    # "needSep":Z
    .local v8, "needSep":Z
    :try_start_127
    const-string v9, "  First time processes crashed and counts:"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_12c
    .catchall {:try_start_127 .. :try_end_12c} :catchall_74

    .line 293
    const/4 v0, 0x1

    goto :goto_12f

    .line 289
    .end local v8    # "needSep":Z
    .restart local v9    # "needSep":Z
    :cond_12e
    move v8, v9

    .line 295
    .end local v9    # "needSep":Z
    .restart local v8    # "needSep":Z
    :goto_12f
    :try_start_12f
    const-string v9, "    Process "

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 296
    const-string v9, " uid "

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(I)V

    .line 297
    const-string v9, ": first crashed "

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v17
    :try_end_152
    .catchall {:try_start_12f .. :try_end_152} :catchall_ae

    move-object/from16 v19, v7

    move v9, v8

    .end local v7    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "needSep":Z
    .restart local v9    # "needSep":Z
    .local v19, "r":Lcom/android/server/am/ProcessRecord;
    sub-long v7, v4, v17

    :try_start_157
    invoke-static {v7, v8, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 299
    const-string v7, " ago; crashes since then: "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_16a
    .catchall {:try_start_157 .. :try_end_16a} :catchall_17e

    .line 282
    .end local v15    # "puid":I
    .end local v19    # "r":Lcom/android/server/am/ProcessRecord;
    :goto_16a
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v7, p3

    move/from16 v8, v16

    goto :goto_f5

    .end local v16    # "processCount":I
    .end local p3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    .local v7, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    .local v8, "processCount":I
    :cond_171
    move-object/from16 p3, v7

    move/from16 v16, v8

    .line 278
    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    .end local v8    # "processCount":I
    .end local v11    # "pname":Ljava/lang/String;
    .end local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    .end local v13    # "uidCount":I
    .end local v14    # "i":I
    .restart local v16    # "processCount":I
    .restart local p3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_e2

    .end local v16    # "processCount":I
    .end local p3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    .restart local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    .restart local v8    # "processCount":I
    :cond_179
    move-object/from16 p3, v7

    move/from16 v16, v8

    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    .end local v8    # "processCount":I
    .restart local v16    # "processCount":I
    .restart local p3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    goto :goto_183

    .line 303
    .end local v0    # "printed":Z
    .end local v10    # "ip":I
    .end local v16    # "processCount":I
    .end local p3    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    :catchall_17e
    move-exception v0

    move-wide/from16 v17, v4

    goto/16 :goto_299

    :cond_183
    :goto_183
    :try_start_183
    monitor-exit v6
    :try_end_184
    .catchall {:try_start_183 .. :try_end_184} :catchall_290

    .line 305
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 306
    .local v0, "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_28b

    .line 307
    const/4 v6, 0x0

    .line 308
    .local v6, "printed":Z
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    .line 309
    .local v7, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 310
    .restart local v8    # "processCount":I
    const/4 v10, 0x0

    .restart local v10    # "ip":I
    :goto_19a
    if-ge v10, v8, :cond_286

    .line 311
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 312
    .restart local v11    # "pname":Ljava/lang/String;
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    .line 313
    .local v12, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v13

    .line 314
    .restart local v13    # "uidCount":I
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_1ad
    if-ge v14, v13, :cond_27a

    .line 315
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    .line 316
    .restart local v15    # "puid":I
    move-object/from16 v16, v0

    .end local v0    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .local v16, "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getProcessNamesLOSP()Lcom/android/internal/app/ProcessMap;

    move-result-object v0

    invoke-virtual {v0, v11, v15}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 317
    .local v0, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v3, :cond_1d3

    if-eqz v0, :cond_1cf

    .line 318
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d3

    .line 314
    .end local v0    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "puid":I
    :cond_1cf
    move-wide/from16 v17, v4

    goto/16 :goto_26e

    .line 321
    .restart local v0    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v15    # "puid":I
    :cond_1d3
    if-nez v6, :cond_1e1

    .line 322
    if-eqz v9, :cond_1da

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 323
    :cond_1da
    const/4 v9, 0x1

    .line 324
    const-string v1, "  Bad processes:"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    const/4 v6, 0x1

    .line 327
    :cond_1e1
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppErrors$BadProcessInfo;

    .line 328
    .local v1, "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    move-object/from16 p3, v0

    .end local v0    # "r":Lcom/android/server/am/ProcessRecord;
    .local p3, "r":Lcom/android/server/am/ProcessRecord;
    const-string v0, "    Bad process "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 329
    const-string v0, " uid "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(I)V

    .line 330
    const-string v0, ": crashed at time "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v17, v4

    .end local v4    # "now":J
    .local v17, "now":J
    iget-wide v3, v1, Lcom/android/server/am/AppErrors$BadProcessInfo;->time:J

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 331
    iget-object v0, v1, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    if-eqz v0, :cond_213

    .line 332
    const-string v0, "      Short msg: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/am/AppErrors$BadProcessInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    :cond_213
    iget-object v0, v1, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    if-eqz v0, :cond_221

    .line 335
    const-string v0, "      Long msg: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/am/AppErrors$BadProcessInfo;->longMsg:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    :cond_221
    iget-object v0, v1, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    if-eqz v0, :cond_26e

    .line 338
    const-string v0, "      Stack:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, "lastPos":I
    const/4 v3, 0x0

    .local v3, "pos":I
    :goto_22c
    iget-object v4, v1, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_252

    .line 341
    iget-object v4, v1, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_24f

    .line 342
    const-string v4, "        "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 343
    iget-object v4, v1, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    sub-int v5, v3, v0

    invoke-virtual {v2, v4, v0, v5}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 344
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 345
    add-int/lit8 v0, v3, 0x1

    .line 340
    :cond_24f
    add-int/lit8 v3, v3, 0x1

    goto :goto_22c

    .line 348
    .end local v3    # "pos":I
    :cond_252
    iget-object v3, v1, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_26e

    .line 349
    const-string v3, "        "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 350
    iget-object v3, v1, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/AppErrors$BadProcessInfo;->stack:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    .line 351
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 314
    .end local v0    # "lastPos":I
    .end local v1    # "info":Lcom/android/server/am/AppErrors$BadProcessInfo;
    .end local v15    # "puid":I
    .end local p3    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_26e
    :goto_26e
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p4

    move-object/from16 v0, v16

    move-wide/from16 v4, v17

    goto/16 :goto_1ad

    .end local v16    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v17    # "now":J
    .local v0, "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v4    # "now":J
    :cond_27a
    move-object/from16 v16, v0

    move-wide/from16 v17, v4

    .line 310
    .end local v0    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v4    # "now":J
    .end local v11    # "pname":Ljava/lang/String;
    .end local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v13    # "uidCount":I
    .end local v14    # "i":I
    .restart local v16    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v17    # "now":J
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p4

    goto/16 :goto_19a

    .end local v16    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v17    # "now":J
    .restart local v0    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v4    # "now":J
    :cond_286
    move-object/from16 v16, v0

    move-wide/from16 v17, v4

    .end local v0    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v4    # "now":J
    .restart local v16    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v17    # "now":J
    goto :goto_28f

    .line 306
    .end local v6    # "printed":Z
    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppErrors$BadProcessInfo;>;>;"
    .end local v8    # "processCount":I
    .end local v10    # "ip":I
    .end local v16    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v17    # "now":J
    .restart local v0    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v4    # "now":J
    :cond_28b
    move-object/from16 v16, v0

    move-wide/from16 v17, v4

    .line 357
    .end local v0    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v4    # "now":J
    .restart local v16    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .restart local v17    # "now":J
    :goto_28f
    return v9

    .line 303
    .end local v16    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    .end local v17    # "now":J
    .restart local v4    # "now":J
    :catchall_290
    move-exception v0

    move-wide/from16 v17, v4

    .end local v4    # "now":J
    .restart local v17    # "now":J
    goto :goto_299

    .end local v9    # "needSep":Z
    .end local v17    # "now":J
    .restart local v4    # "now":J
    .local p3, "needSep":Z
    :catchall_294
    move-exception v0

    move-wide/from16 v17, v4

    move/from16 v9, p3

    .end local v4    # "now":J
    .end local p3    # "needSep":Z
    .restart local v9    # "needSep":Z
    .restart local v17    # "now":J
    :goto_299
    :try_start_299
    monitor-exit v6
    :try_end_29a
    .catchall {:try_start_299 .. :try_end_29a} :catchall_29b

    throw v0

    :catchall_29b
    move-exception v0

    goto :goto_299
.end method

.method generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .registers 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "condition"    # I
    .param p3, "activity"    # Ljava/lang/String;
    .param p4, "shortMsg"    # Ljava/lang/String;
    .param p5, "longMsg"    # Ljava/lang/String;
    .param p6, "stackTrace"    # Ljava/lang/String;

    .line 795
    new-instance v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$ProcessErrorStateInfo;-><init>()V

    .line 797
    .local v0, "report":Landroid/app/ActivityManager$ProcessErrorStateInfo;
    iput p2, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    .line 798
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    .line 799
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    iput v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    .line 800
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->uid:I

    .line 801
    iput-object p3, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    .line 802
    iput-object p4, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    .line 803
    iput-object p5, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    .line 804
    iput-object p6, v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->stackTrace:Ljava/lang/String;

    .line 806
    return-object v0
.end method

.method handleDismissAnrDialogs(Lcom/android/server/am/ProcessRecord;)V
    .registers 7
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 1147
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1148
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 1151
    .local v1, "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    .line 1152
    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->getAnrData()Lcom/android/server/am/AppNotRespondingDialog$Data;

    move-result-object v4

    .line 1151
    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1155
    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ErrorDialogController;->hasAnrDialogs()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2d

    .line 1156
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 1157
    invoke-virtual {v1, v3}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotRespondingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V

    .line 1158
    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ErrorDialogController;->clearAnrDialogs()V

    .line 1160
    :cond_2d
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessErrorStateRecord;->setAnrData(Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    .line 1161
    .end local v1    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_37

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1162
    return-void

    .line 1161
    :catchall_37
    move-exception v1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method handleShowAnrUi(Landroid/os/Message;)V
    .registers 18
    .param p1, "msg"    # Landroid/os/Message;

    .line 1084
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 1085
    .local v2, "packageList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    const/4 v3, 0x0

    .line 1086
    .local v3, "doKill":Z
    move-object/from16 v4, p1

    iget-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/server/am/AppNotRespondingDialog$Data;

    .line 1087
    .local v5, "data":Lcom/android/server/am/AppNotRespondingDialog$Data;
    iget-object v6, v5, Lcom/android/server/am/AppNotRespondingDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    .line 1088
    .local v6, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v6, :cond_18

    .line 1089
    const-string v0, "ActivityManager"

    const-string/jumbo v7, "handleShowAnrUi: proc is null"

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    return-void

    .line 1092
    :cond_18
    iget-object v7, v1, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v7

    :try_start_1b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1093
    iget-object v0, v6, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 1094
    .local v0, "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    invoke-virtual {v0, v5}, Lcom/android/server/am/ProcessErrorStateRecord;->setAnrData(Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    .line 1095
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v8

    if-nez v8, :cond_2e

    .line 1096
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getPackageListWithVersionCode()Ljava/util/List;

    move-result-object v8

    move-object v2, v8

    .line 1098
    :cond_2e
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/am/ErrorDialogController;->hasAnrDialogs()Z

    move-result v8

    const/16 v9, 0x13d

    if-eqz v8, :cond_5d

    .line 1099
    const-string v8, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "App already has anr dialog: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    iget-object v8, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/4 v10, -0x2

    invoke-static {v8, v9, v10}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 1102
    monitor-exit v7
    :try_end_59
    .catchall {:try_start_1b .. :try_end_59} :catchall_108

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 1105
    :cond_5d
    :try_start_5d
    iget-object v8, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "anr_show_background"

    iget-object v11, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 1107
    invoke-virtual {v11}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v11

    .line 1105
    const/4 v12, 0x0

    invoke-static {v8, v10, v12, v11}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_76

    const/4 v8, 0x1

    goto :goto_77

    :cond_76
    move v8, v12

    .line 1108
    .local v8, "showBackground":Z
    :goto_77
    iget-object v10, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v10}, Lcom/android/server/wm/ActivityTaskManagerInternal;->canShowErrorDialogs()Z

    move-result v10

    if-nez v10, :cond_8c

    if-eqz v8, :cond_84

    goto :goto_8c

    .line 1130
    :cond_84
    iget-object v10, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    const/4 v11, -0x1

    invoke-static {v10, v9, v11}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 1133
    const/4 v3, 0x1

    goto :goto_f4

    .line 1109
    :cond_8c
    :goto_8c
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/am/ErrorDialogController;->getAnrController()Landroid/app/AnrController;

    move-result-object v9

    .line 1110
    .local v9, "anrController":Landroid/app/AnrController;
    if-nez v9, :cond_9e

    .line 1111
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/android/server/am/ErrorDialogController;->showAnrDialogs(Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    goto :goto_f3

    .line 1113
    :cond_9e
    iget-object v10, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1114
    .local v10, "packageName":Ljava/lang/String;
    iget-object v11, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1115
    .local v11, "uid":I
    invoke-interface {v9, v10, v11}, Landroid/app/AnrController;->onAnrDelayCompleted(Ljava/lang/String;I)Z

    move-result v13

    .line 1117
    .local v13, "showDialog":Z
    if-eqz v13, :cond_cc

    .line 1118
    const-string v12, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ANR delay completed. Showing ANR dialog for package: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v12

    invoke-virtual {v12, v5}, Lcom/android/server/am/ErrorDialogController;->showAnrDialogs(Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    goto :goto_f3

    .line 1122
    :cond_cc
    const-string v14, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ANR delay completed. Cancelling ANR dialog for package: "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v14, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 1125
    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotRespondingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V

    .line 1126
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/am/ErrorDialogController;->clearAnrDialogs()V

    .line 1129
    .end local v9    # "anrController":Landroid/app/AnrController;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "uid":I
    .end local v13    # "showDialog":Z
    :goto_f3
    nop

    .line 1135
    .end local v0    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .end local v8    # "showBackground":Z
    :goto_f4
    monitor-exit v7
    :try_end_f5
    .catchall {:try_start_5d .. :try_end_f5} :catchall_108

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1136
    if-eqz v3, :cond_ff

    .line 1137
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;)V

    .line 1140
    :cond_ff
    if-eqz v2, :cond_107

    .line 1141
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    const/4 v7, 0x4

    invoke-virtual {v0, v2, v7}, Lcom/android/server/PackageWatchdog;->onPackageFailure(Ljava/util/List;I)V

    .line 1144
    :cond_107
    return-void

    .line 1135
    :catchall_108
    move-exception v0

    :try_start_109
    monitor-exit v7
    :try_end_10a
    .catchall {:try_start_109 .. :try_end_10a} :catchall_108

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0
.end method

.method handleShowAppErrorUi(Landroid/os/Message;)V
    .registers 25
    .param p1, "msg"    # Landroid/os/Message;

    .line 999
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/server/am/AppErrorDialog$Data;

    .line 1000
    .local v3, "data":Lcom/android/server/am/AppErrorDialog$Data;
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "anr_show_background"

    iget-object v5, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 1002
    invoke-virtual {v5}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v5

    .line 1000
    const/4 v6, 0x0

    invoke-static {v0, v4, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    move v0, v6

    :goto_23
    move v5, v0

    .line 1005
    .local v5, "showBackground":Z
    iget-object v7, v1, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v7

    :try_start_27
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1006
    iget-object v0, v3, Lcom/android/server/am/AppErrorDialog$Data;->proc:Lcom/android/server/am/ProcessRecord;

    move-object v8, v0

    .line 1007
    .local v8, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v0, v3, Lcom/android/server/am/AppErrorDialog$Data;->result:Lcom/android/server/am/AppErrorResult;

    move-object v9, v0

    .line 1008
    .local v9, "res":Lcom/android/server/am/AppErrorResult;
    if-nez v8, :cond_3f

    .line 1009
    const-string v0, "ActivityManager"

    const-string/jumbo v4, "handleShowAppErrorUi: proc is null"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    monitor-exit v7
    :try_end_3b
    .catchall {:try_start_27 .. :try_end_3b} :catchall_1c3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 1012
    :cond_3f
    :try_start_3f
    iget-object v0, v8, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    move-object v10, v0

    .line 1013
    .local v10, "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    iget v0, v8, Lcom/android/server/am/ProcessRecord;->userId:I

    move v11, v0

    .line 1014
    .local v11, "userId":I
    invoke-virtual {v10}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ErrorDialogController;->hasCrashDialogs()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 1015
    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App already has crash dialog: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    if-eqz v9, :cond_6e

    .line 1017
    sget v0, Lcom/android/server/am/AppErrorDialog;->ALREADY_SHOWING:I

    invoke-virtual {v9, v0}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 1019
    :cond_6e
    monitor-exit v7
    :try_end_6f
    .catchall {:try_start_3f .. :try_end_6f} :catchall_1c3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 1021
    :cond_73
    :try_start_73
    iget v0, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v12, 0x2710

    if-lt v0, v12, :cond_87

    .line 1023
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    sget v12, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v12, :cond_87

    const/4 v0, 0x1

    goto :goto_88

    :cond_87
    move v0, v6

    .line 1024
    .local v0, "isBackground":Z
    :goto_88
    iget-object v12, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v12}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v12

    array-length v13, v12

    move v14, v0

    move v0, v6

    .end local v0    # "isBackground":Z
    .local v14, "isBackground":Z
    :goto_93
    if-ge v0, v13, :cond_a3

    aget v15, v12, v0

    .line 1025
    .local v15, "profileId":I
    if-eq v11, v15, :cond_9c

    const/16 v16, 0x1

    goto :goto_9e

    :cond_9c
    move/from16 v16, v6

    :goto_9e
    and-int v14, v14, v16

    .line 1024
    .end local v15    # "profileId":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_93

    .line 1027
    :cond_a3
    if-eqz v14, :cond_d1

    if-nez v5, :cond_d1

    .line 1028
    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping crash dialog of "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": background"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    if-eqz v9, :cond_cc

    .line 1030
    sget v0, Lcom/android/server/am/AppErrorDialog;->BACKGROUND_USER:I

    invoke-virtual {v9, v0}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 1032
    :cond_cc
    monitor-exit v7
    :try_end_cd
    .catchall {:try_start_73 .. :try_end_cd} :catchall_1c3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 1034
    :cond_d1
    const/4 v12, 0x0

    .line 1035
    .local v12, "crashShowErrorTime":Ljava/lang/Long;
    :try_start_d2
    iget-object v13, v1, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_1c3

    .line 1036
    :try_start_d5
    iget-boolean v0, v8, Lcom/android/server/am/ProcessRecord;->isolated:Z
    :try_end_d7
    .catchall {:try_start_d5 .. :try_end_d7} :catchall_1bc

    if-nez v0, :cond_ec

    .line 1037
    :try_start_d9
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v15, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v4, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v15, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_e5
    .catchall {:try_start_d9 .. :try_end_e5} :catchall_e7

    move-object v12, v0

    goto :goto_ec

    .line 1071
    :catchall_e7
    move-exception v0

    move/from16 v22, v14

    goto/16 :goto_1bf

    .line 1040
    :cond_ec
    :goto_ec
    :try_start_ec
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 1041
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "show_first_crash_dialog"

    .line 1040
    invoke-static {v0, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_fd

    const/4 v0, 0x1

    goto :goto_fe

    :cond_fd
    move v0, v6

    .line 1043
    .local v0, "showFirstCrash":Z
    :goto_fe
    iget-object v4, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    .line 1044
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v15, "show_first_crash_dialog_dev_option"

    iget-object v6, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 1047
    invoke-virtual {v6}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v6

    .line 1043
    const/4 v2, 0x0

    invoke-static {v4, v15, v2, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_118

    const/4 v4, 0x1

    goto :goto_119

    :cond_118
    move v4, v2

    .line 1048
    .local v4, "showFirstCrashDevOption":Z
    :goto_119
    iget-object v6, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1049
    .local v6, "packageName":Ljava/lang/String;
    iget-object v15, v1, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;
    :try_end_11f
    .catchall {:try_start_ec .. :try_end_11f} :catchall_1bc

    if-eqz v15, :cond_12d

    :try_start_121
    iget-object v2, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1050
    invoke-virtual {v15, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_129
    .catchall {:try_start_121 .. :try_end_129} :catchall_e7

    if-eqz v2, :cond_12d

    const/4 v2, 0x1

    goto :goto_12e

    :cond_12d
    const/4 v2, 0x0

    .line 1051
    .local v2, "crashSilenced":Z
    :goto_12e
    :try_start_12e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 1052
    .local v18, "now":J
    if-eqz v12, :cond_146

    .line 1053
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    sget v15, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I
    :try_end_13a
    .catchall {:try_start_12e .. :try_end_13a} :catchall_1bc

    move/from16 v22, v14

    .end local v14    # "isBackground":Z
    .local v22, "isBackground":Z
    int-to-long v14, v15

    add-long v20, v20, v14

    cmp-long v14, v18, v20

    if-gez v14, :cond_148

    const/16 v16, 0x1

    goto :goto_14a

    .line 1052
    .end local v22    # "isBackground":Z
    .restart local v14    # "isBackground":Z
    :cond_146
    move/from16 v22, v14

    .line 1053
    .end local v14    # "isBackground":Z
    .restart local v22    # "isBackground":Z
    :cond_148
    const/16 v16, 0x0

    :goto_14a
    move/from16 v14, v16

    .line 1054
    .local v14, "shouldThottle":Z
    :try_start_14c
    iget-object v15, v1, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v15}, Lcom/android/server/wm/ActivityTaskManagerInternal;->canShowErrorDialogs()Z

    move-result v15

    if-nez v15, :cond_15e

    if-eqz v5, :cond_159

    goto :goto_15e

    :cond_159
    move/from16 v16, v0

    move/from16 v17, v2

    goto :goto_1af

    :cond_15e
    :goto_15e
    if-nez v2, :cond_1ab

    if-nez v14, :cond_1ab

    if-nez v0, :cond_16a

    if-nez v4, :cond_16a

    iget-boolean v15, v3, Lcom/android/server/am/AppErrorDialog$Data;->repeating:Z

    if-eqz v15, :cond_159

    .line 1057
    :cond_16a
    const-string v15, "ActivityManager"

    move/from16 v16, v0

    .end local v0    # "showFirstCrash":Z
    .local v16, "showFirstCrash":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v2

    .end local v2    # "crashSilenced":Z
    .local v17, "crashSilenced":Z
    const-string v2, "Showing crash dialog for package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " u"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    invoke-static {}, Lcom/android/server/am/AppErrorsStub;->getInstance()Lcom/android/server/am/AppErrorsStub;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/am/AppErrors;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v10, v3}, Lcom/android/server/am/AppErrorsStub;->handleShowAppErrorUI(Landroid/content/Context;Lcom/android/server/am/ProcessErrorStateRecord;Lcom/android/server/am/AppErrorDialog$Data;)V

    .line 1061
    iget-boolean v0, v8, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_1b6

    .line 1062
    iget-object v0, v1, Lcom/android/server/am/AppErrors;->mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

    iget-object v2, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v15, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v15, v1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b6

    .line 1054
    .end local v16    # "showFirstCrash":Z
    .end local v17    # "crashSilenced":Z
    .restart local v0    # "showFirstCrash":Z
    .restart local v2    # "crashSilenced":Z
    :cond_1ab
    move/from16 v16, v0

    move/from16 v17, v2

    .line 1067
    .end local v0    # "showFirstCrash":Z
    .end local v2    # "crashSilenced":Z
    .restart local v16    # "showFirstCrash":Z
    .restart local v17    # "crashSilenced":Z
    :goto_1af
    if-eqz v9, :cond_1b6

    .line 1068
    sget v0, Lcom/android/server/am/AppErrorDialog;->CANT_SHOW:I

    invoke-virtual {v9, v0}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 1071
    .end local v4    # "showFirstCrashDevOption":Z
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v14    # "shouldThottle":Z
    .end local v16    # "showFirstCrash":Z
    .end local v17    # "crashSilenced":Z
    .end local v18    # "now":J
    :cond_1b6
    :goto_1b6
    monitor-exit v13
    :try_end_1b7
    .catchall {:try_start_14c .. :try_end_1b7} :catchall_1c1

    .line 1072
    .end local v8    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v9    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v10    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .end local v12    # "crashShowErrorTime":Ljava/lang/Long;
    .end local v22    # "isBackground":Z
    :try_start_1b7
    monitor-exit v7
    :try_end_1b8
    .catchall {:try_start_1b7 .. :try_end_1b8} :catchall_1c3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1073
    return-void

    .line 1071
    .restart local v8    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v9    # "res":Lcom/android/server/am/AppErrorResult;
    .restart local v10    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .restart local v12    # "crashShowErrorTime":Ljava/lang/Long;
    .local v14, "isBackground":Z
    :catchall_1bc
    move-exception v0

    move/from16 v22, v14

    .end local v14    # "isBackground":Z
    .restart local v22    # "isBackground":Z
    :goto_1bf
    :try_start_1bf
    monitor-exit v13
    :try_end_1c0
    .catchall {:try_start_1bf .. :try_end_1c0} :catchall_1c1

    .end local v3    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .end local v5    # "showBackground":Z
    .end local p0    # "this":Lcom/android/server/am/AppErrors;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_1c0
    throw v0

    .restart local v3    # "data":Lcom/android/server/am/AppErrorDialog$Data;
    .restart local v5    # "showBackground":Z
    .restart local p0    # "this":Lcom/android/server/am/AppErrors;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_1c1
    move-exception v0

    goto :goto_1bf

    .line 1072
    .end local v8    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v9    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v10    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .end local v11    # "userId":I
    .end local v12    # "crashShowErrorTime":Ljava/lang/Long;
    .end local v22    # "isBackground":Z
    :catchall_1c3
    move-exception v0

    monitor-exit v7
    :try_end_1c5
    .catchall {:try_start_1c0 .. :try_end_1c5} :catchall_1c3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0
.end method

.method isBadProcess(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 362
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method killAppAtUserRequestLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 12
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 452
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v0

    .line 454
    .local v0, "controller":Lcom/android/server/am/ErrorDialogController;
    const/4 v1, 0x6

    .line 455
    .local v1, "reasonCode":I
    const/4 v2, 0x0

    .line 456
    .local v2, "subReason":I
    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v3

    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 457
    invoke-virtual {v0}, Lcom/android/server/am/ErrorDialogController;->hasDebugWaitingDialog()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 458
    const/16 v1, 0xd

    .line 459
    const/4 v2, 0x1

    .line 461
    :cond_17
    invoke-virtual {v0}, Lcom/android/server/am/ErrorDialogController;->clearAllErrorDialogs()V

    .line 462
    const-string/jumbo v8, "user-terminated"

    const-string/jumbo v9, "user request after error"

    move-object v4, p0

    move-object v5, p1

    move v6, v1

    move v7, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/AppErrors;->killAppImmediateLSP(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Ljava/lang/String;)V

    .line 464
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_2c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 465
    return-void

    .line 464
    :catchall_2c
    move-exception v4

    :try_start_2d
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v4
.end method

.method synthetic lambda$handleAppCrashInActivityController$1$com-android-server-am-AppErrors(Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 21
    .param p1, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p5, "shortMsg"    # Ljava/lang/String;
    .param p6, "longMsg"    # Ljava/lang/String;
    .param p7, "stackTrace"    # Ljava/lang/String;
    .param p8, "uid"    # I

    .line 739
    move-object v0, p2

    move v7, p3

    move-object/from16 v8, p4

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v2, "ActivityManager"

    if-eqz v1, :cond_3f

    move-object v9, p1

    iget-object v1, v9, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 740
    const-string v3, "Native crash"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 741
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip killing native crashed app "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") during testing"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, p0

    move/from16 v10, p8

    goto :goto_94

    .line 739
    :cond_3f
    move-object v9, p1

    .line 744
    :cond_40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Force-killing crashed app "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " at watcher\'s request"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    if-eqz v8, :cond_7d

    .line 746
    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppErrors;->makeAppCrashingLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/AppErrorDialog$Data;)Z

    move-result v1

    if-nez v1, :cond_79

    .line 747
    const/4 v1, 0x4

    const/4 v2, 0x1

    const-string v3, "crash"

    invoke-virtual {v8, v3, v1, v2}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IZ)V

    move-object v11, p0

    move/from16 v10, p8

    goto :goto_94

    .line 746
    :cond_79
    move-object v11, p0

    move/from16 v10, p8

    goto :goto_94

    .line 751
    :cond_7d
    invoke-static {p3}, Landroid/os/Process;->killProcess(I)V

    .line 752
    move/from16 v10, p8

    invoke-static {v10, p3}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    .line 753
    move-object v11, p0

    iget-object v1, v11, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v6, "crash"

    move v2, p3

    move/from16 v3, p8

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->noteAppKill(IIIILjava/lang/String;)V

    .line 759
    :goto_94
    return-void
.end method

.method synthetic lambda$scheduleAppCrashLocked$0$com-android-server-am-AppErrors(Lcom/android/server/am/ProcessRecord;)V
    .registers 10
    .param p1, "p"    # Lcom/android/server/am/ProcessRecord;

    .line 544
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 545
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_29

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 546
    const/16 v4, 0xd

    const/16 v5, 0xe

    const-string v6, "forced"

    const-string/jumbo v7, "killed for invalid state"

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/AppErrors;->killAppImmediateLSP(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;Ljava/lang/String;)V

    .line 549
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_23

    :try_start_1b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 550
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_29

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 551
    return-void

    .line 549
    :catchall_23
    move-exception v2

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    :try_start_25
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .end local p0    # "this":Lcom/android/server/am/AppErrors;
    .end local p1    # "p":Lcom/android/server/am/ProcessRecord;
    throw v2

    .line 550
    .restart local p0    # "this":Lcom/android/server/am/AppErrors;
    .restart local p1    # "p":Lcom/android/server/am/ProcessRecord;
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_29

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method loadAppsNotReportingCrashesFromConfig(Ljava/lang/String;)V
    .registers 5
    .param p1, "appsNotReportingCrashesConfig"    # Ljava/lang/String;

    .line 439
    if-eqz p1, :cond_1d

    .line 440
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_1d

    .line 442
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v1

    .line 443
    :try_start_e
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    .line 444
    invoke-static {v2, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 445
    monitor-exit v1

    goto :goto_1d

    :catchall_1a
    move-exception v2

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1a

    throw v2

    .line 448
    .end local v0    # "split":[Ljava/lang/String;
    :cond_1d
    :goto_1d
    return-void
.end method

.method markBadProcess(Ljava/lang/String;ILcom/android/server/am/AppErrors$BadProcessInfo;)V
    .registers 7
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "info"    # Lcom/android/server/am/AppErrors$BadProcessInfo;

    .line 375
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 376
    :try_start_3
    new-instance v1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 377
    .local v1, "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ProcessMap;->putAll(Lcom/android/internal/app/ProcessMap;)V

    .line 378
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 379
    iput-object v1, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 380
    .end local v1    # "badProcesses":Lcom/android/internal/app/ProcessMap;, "Lcom/android/internal/app/ProcessMap<Lcom/android/server/am/AppErrors$BadProcessInfo;>;"
    monitor-exit v0

    .line 381
    return-void

    .line 380
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method resetProcessCrashTime(Ljava/lang/String;I)V
    .registers 5
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 384
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 385
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 386
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 387
    monitor-exit v0

    .line 388
    return-void

    .line 387
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method resetProcessCrashTime(ZII)V
    .registers 10
    .param p1, "resetEntireUser"    # Z
    .param p2, "appId"    # I
    .param p3, "userId"    # I

    .line 391
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 392
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    .line 393
    .local v1, "pTimeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "ip":I
    :goto_f
    if-ltz v2, :cond_26

    .line 394
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 395
    .local v3, "ba":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    invoke-direct {p0, v3, p1, p2, p3}, Lcom/android/server/am/AppErrors;->resetProcessCrashMapLBp(Landroid/util/SparseArray;ZII)V

    .line 396
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_23

    .line 397
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 393
    .end local v3    # "ba":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Long;>;"
    :cond_23
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    .line 401
    .end local v2    # "ip":I
    :cond_26
    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    .line 402
    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    .line 403
    .local v2, "pCountMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "ip":I
    :goto_32
    if-ltz v3, :cond_49

    .line 404
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 405
    .local v4, "ba":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    invoke-direct {p0, v4, p1, p2, p3}, Lcom/android/server/am/AppErrors;->resetProcessCrashMapLBp(Landroid/util/SparseArray;ZII)V

    .line 406
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_46

    .line 407
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 403
    .end local v4    # "ba":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    :cond_46
    add-int/lit8 v3, v3, -0x1

    goto :goto_32

    .line 410
    .end local v1    # "pTimeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Ljava/lang/Long;>;>;"
    .end local v2    # "pCountMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Integer;>;>;>;"
    .end local v3    # "ip":I
    :cond_49
    monitor-exit v0

    .line 411
    return-void

    .line 410
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method public resetState()V
    .registers 3

    .line 155
    const-string v0, "ActivityManager"

    const-string v1, "Resetting AppErrors"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/android/server/am/AppErrors;->mBadProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_a
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mAppsNotReportingCrashes:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 158
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->clear()V

    .line 159
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashTimesPersistent:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->clear()V

    .line 160
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashShowDialogTimes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->clear()V

    .line 161
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mProcessCrashCounts:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->clear()V

    .line 162
    new-instance v1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppErrors;->mBadProcesses:Lcom/android/internal/app/ProcessMap;

    .line 163
    monitor-exit v0

    .line 164
    return-void

    .line 163
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_a .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method scheduleAppCrashLocked(IILjava/lang/String;ILjava/lang/String;ZILandroid/os/Bundle;)V
    .registers 15
    .param p1, "uid"    # I
    .param p2, "initialPid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "force"    # Z
    .param p7, "exceptionTypeId"    # I
    .param p8, "extras"    # Landroid/os/Bundle;

    .line 496
    const/4 v0, 0x0

    .line 502
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v1, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1

    .line 503
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    :try_start_7
    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService$PidMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_3c

    .line 504
    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 505
    .local v3, "p":Lcom/android/server/am/ProcessRecord;
    if-ltz p1, :cond_20

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v4, p1, :cond_20

    .line 506
    goto :goto_39

    .line 508
    :cond_20
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    if-ne v4, p2, :cond_28

    .line 509
    move-object v0, v3

    .line 510
    goto :goto_3c

    .line 512
    :cond_28
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    if-ltz p4, :cond_38

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, p4, :cond_39

    .line 514
    :cond_38
    move-object v0, v3

    .line 503
    .end local v3    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_39
    :goto_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 517
    .end local v2    # "i":I
    :cond_3c
    :goto_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_7 .. :try_end_3d} :catchall_c2

    .line 519
    if-nez v0, :cond_76

    .line 520
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "crashApplication: nothing for uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " initialPid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    return-void

    .line 527
    :cond_76
    const/4 v1, 0x5

    if-ne p7, v1, :cond_ad

    .line 528
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v1

    .line 529
    .local v1, "packages":[Ljava/lang/String;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_7e
    array-length v3, v1

    if-ge v2, v3, :cond_ad

    .line 530
    iget-object v3, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    aget-object v4, v1, v2

    iget v5, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManagerInternal;->isPackageStateProtected(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 531
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "crashApplication: Can not crash protected package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    return-void

    .line 529
    :cond_aa
    add-int/lit8 v2, v2, 0x1

    goto :goto_7e

    .line 537
    .end local v1    # "packages":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_ad
    invoke-virtual {v0, p5, p7, p8}, Lcom/android/server/am/ProcessRecord;->scheduleCrashLocked(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 538
    if-eqz p6, :cond_c1

    .line 541
    move-object v1, v0

    .line 542
    .local v1, "p":Lcom/android/server/am/ProcessRecord;
    iget-object v2, p0, Lcom/android/server/am/AppErrors;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v3, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1}, Lcom/android/server/am/AppErrors$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/AppErrors;Lcom/android/server/am/ProcessRecord;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 554
    .end local v1    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_c1
    return-void

    .line 517
    :catchall_c2
    move-exception v2

    :try_start_c3
    monitor-exit v1
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c2

    throw v2
.end method
