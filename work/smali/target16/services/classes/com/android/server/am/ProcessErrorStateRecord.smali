.class public Lcom/android/server/am/ProcessErrorStateRecord;
.super Ljava/lang/Object;
.source "ProcessErrorStateRecord.java"


# instance fields
.field public mAnrAnnotation:Ljava/lang/String;

.field public mAnrData:Lcom/android/server/am/AppNotRespondingDialog$Data;

.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public mBad:Z

.field public mCrashHandler:Ljava/lang/Runnable;

.field public mCrashing:Z

.field public mCrashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

.field public final mDialogController:Lcom/android/server/am/ErrorDialogController;

.field public mErrorReportReceiver:Landroid/content/ComponentName;

.field public mForceCrashReport:Z

.field public mNotResponding:Z

.field public mNotRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public static synthetic $r8$lambda$DQtvmgZQqXnoidXVW34IrZY3fRc(Lcom/android/server/am/ProcessErrorStateRecord;Lcom/android/internal/os/anr/AnrLatencyTracker;ZZ)Ljava/util/ArrayList;
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ProcessErrorStateRecord;->lambda$appNotResponding$3(Lcom/android/internal/os/anr/AnrLatencyTracker;ZZ)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UZsvWrZWqF35aEeDlou4DCgPwfE(Lcom/android/server/am/ProcessErrorStateRecord;Lcom/android/internal/os/anr/AnrLatencyTracker;Ljava/lang/String;Lcom/android/internal/os/TimeoutRecord;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ProcessErrorStateRecord;->lambda$appNotResponding$0(Lcom/android/internal/os/anr/AnrLatencyTracker;Ljava/lang/String;Lcom/android/internal/os/TimeoutRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hmeP4SgVM-wKLFwe9elqPdGyiMo(Lcom/android/server/am/ProcessErrorStateRecord;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->lambda$appNotResponding$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$iJnj86igrSWbTddnzSwFSnBtv04(Lcom/android/server/am/ProcessErrorStateRecord;Lcom/android/internal/os/anr/AnrLatencyTracker;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessErrorStateRecord;->lambda$appNotResponding$1(Lcom/android/internal/os/anr/AnrLatencyTracker;)V

    return-void
.end method

.method public static synthetic $r8$lambda$octgrxhn64OYe5xL8BSfI8AJY_I(IILjava/util/ArrayList;Landroid/util/SparseBooleanArray;Lcom/android/server/am/ProcessRecord;)V
    .registers 6

    if-eqz p4, :cond_38

    .line 415
    invoke-virtual {p4}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 416
    invoke-virtual {p4}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    if-lez v0, :cond_38

    if-eq v0, p0, :cond_38

    if-eq v0, p1, :cond_38

    .line 417
    sget p0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, p0, :cond_38

    .line 418
    invoke-virtual {p4}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result p0

    if-eqz p0, :cond_24

    .line 419
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 421
    :cond_24
    iget-object p0, p4, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->isTreatLikeActivity()Z

    move-result p0

    if-eqz p0, :cond_34

    .line 422
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_34
    const/4 p0, 0x1

    .line 425
    invoke-virtual {p3, v0, p0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_38
    return-void
.end method

.method public static synthetic $r8$lambda$vKPqVnKM_ciYlH8ksjOKVnMry5I(Lcom/android/server/am/ProcessErrorStateRecord;Lcom/android/internal/os/TimeoutRecord;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessErrorStateRecord;->lambda$appNotResponding$4(Lcom/android/internal/os/TimeoutRecord;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .registers 3

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 266
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 267
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 268
    new-instance v0, Lcom/android/server/am/ErrorDialogController;

    invoke-direct {v0, p1}, Lcom/android/server/am/ErrorDialogController;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    return-void
.end method


# virtual methods
.method public appNotResponding(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLcom/android/internal/os/TimeoutRecord;Ljava/util/concurrent/ExecutorService;ZZLjava/util/concurrent/Future;)V
    .registers 61

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-object/from16 v2, p2

    move-object/from16 v7, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v0, p7

    .line 298
    iget-object v9, v4, Lcom/android/internal/os/TimeoutRecord;->mReason:Ljava/lang/String;

    .line 299
    iget-object v14, v4, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    .line 302
    new-instance v15, Ljava/util/ArrayList;

    const/4 v8, 0x5

    invoke-direct {v15, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 303
    new-instance v8, Landroid/util/SparseBooleanArray;

    const/16 v10, 0x14

    invoke-direct {v8, v10}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 306
    iget-object v10, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result v10

    if-eqz v10, :cond_46

    .line 307
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping debugged app ANR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 311
    :cond_46
    iget-object v10, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v10

    new-instance v11, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;

    invoke-direct {v11, v1, v14, v9, v4}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ProcessErrorStateRecord;Lcom/android/internal/os/anr/AnrLatencyTracker;Ljava/lang/String;Lcom/android/internal/os/TimeoutRecord;)V

    invoke-virtual {v10, v9, v11}, Lcom/android/server/wm/WindowProcessController;->appEarlyNotResponding(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 326
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 328
    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->isMonitorCpuUsage()Z

    move-result v12

    const/16 v36, 0x0

    if-eqz v12, :cond_6c

    .line 329
    new-instance v12, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda1;

    invoke-direct {v12, v1, v14}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ProcessErrorStateRecord;Lcom/android/internal/os/anr/AnrLatencyTracker;)V

    invoke-interface {v0, v12}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v12

    move-object/from16 v21, v12

    goto :goto_6e

    :cond_6c
    move-object/from16 v21, v36

    .line 341
    :goto_6e
    invoke-virtual {v14}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnAMSLockStarted()V

    .line 342
    iget-object v12, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v12

    .line 343
    :try_start_77
    invoke-virtual {v14}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnAMSLockEnded()V

    .line 345
    iget-object v13, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v13}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v13

    .line 347
    invoke-virtual {v1, v9}, Lcom/android/server/am/ProcessErrorStateRecord;->setAnrAnnotation(Ljava/lang/String;)V

    .line 349
    const-string/jumbo v16, "stability_anr.value_total_anrs"

    invoke-static/range {v16 .. v16}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v1, v9}, Lcom/android/server/am/ProcessErrorStateRecord;->skipAnrLocked(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_a2

    .line 351
    invoke-virtual {v14}, Lcom/android/internal/os/anr/AnrLatencyTracker;->anrSkippedProcessErrorStateRecordAppNotResponding()V

    .line 352
    const-string/jumbo v0, "stability_anr.value_skipped_anrs"

    invoke-static {v0}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    .line 353
    monitor-exit v12
    :try_end_99
    .catchall {:try_start_77 .. :try_end_99} :catchall_9d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_9d
    move-exception v0

    move-object/from16 v18, v12

    goto/16 :goto_5e3

    .line 357
    :cond_a2
    :try_start_a2
    invoke-virtual {v14}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnProcLockStarted()V

    move-wide/from16 v16, v10

    .line 358
    iget-object v10, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v10
    :try_end_ad
    .catchall {:try_start_a2 .. :try_end_ad} :catchall_9d

    .line 359
    :try_start_ad
    invoke-virtual {v14}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnProcLockEnded()V

    const/4 v11, 0x1

    .line 360
    invoke-virtual {v1, v11}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V
    :try_end_b4
    .catchall {:try_start_ad .. :try_end_b4} :catchall_5db

    move-object/from16 v18, v12

    .line 363
    :try_start_b6
    iget-wide v11, v4, Lcom/android/internal/os/TimeoutRecord;->mEndUptimeMillis:J

    const-wide/16 v22, 0x0

    cmp-long v20, v11, v22

    if-lez v20, :cond_d4

    sub-long v11, v16, v11

    .line 365
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Ljava/time/Instant;->minusMillis(J)Ljava/time/Instant;

    move-result-object v4

    .line 366
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v4

    goto :goto_d6

    :catchall_d1
    move-exception v0

    goto/16 :goto_5de

    :cond_d4
    move-object/from16 v4, v36

    .line 369
    :goto_d6
    iget-object v11, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 372
    invoke-virtual {v11}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v11

    .line 371
    invoke-static {v11, v4}, Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;->withProcessFrozenStateAndTimestamp(ZLjava/time/ZonedDateTime;)Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;

    move-result-object v4

    .line 373
    monitor-exit v10
    :try_end_e3
    .catchall {:try_start_b6 .. :try_end_e3} :catchall_d1

    :try_start_e3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 376
    iget-object v10, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v10, v10, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v12, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v37, v4

    iget-object v4, v12, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 377
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v10, v11, v4, v12, v9}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v10, 0x7538

    .line 376
    invoke-static {v10, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 379
    iget-object v4, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    if-eqz v4, :cond_133

    .line 380
    invoke-virtual {v4}, Lcom/android/server/am/TraceErrorLogger;->isAddErrorIdEnabled()Z

    move-result v4

    if-eqz v4, :cond_133

    .line 381
    iget-object v4, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    invoke-virtual {v4}, Lcom/android/server/am/TraceErrorLogger;->generateErrorId()Ljava/util/UUID;

    move-result-object v4

    .line 382
    iget-object v10, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    iget-object v11, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11, v13, v4}, Lcom/android/server/am/TraceErrorLogger;->addProcessInfoAndErrorIdToTrace(Ljava/lang/String;ILjava/util/UUID;)V

    .line 384
    iget-object v10, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    invoke-virtual {v10, v9, v4}, Lcom/android/server/am/TraceErrorLogger;->addSubjectToTrace(Ljava/lang/String;Ljava/util/UUID;)V

    goto :goto_135

    :catchall_130
    move-exception v0

    goto/16 :goto_5e3

    :cond_133
    move-object/from16 v4, v36

    .line 393
    :goto_135
    iget-object v10, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    const/16 v11, 0x178

    invoke-static {v11, v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;)V

    .line 397
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->isSilentAnr()Z

    move-result v10

    if-nez v10, :cond_181

    if-nez p8, :cond_181

    if-eqz v3, :cond_15a

    .line 406
    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v12

    if-lez v12, :cond_15a

    .line 407
    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v12

    goto :goto_15b

    :cond_15a
    move v12, v13

    :goto_15b
    if-eq v12, v13, :cond_164

    .line 409
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_164
    sget v11, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v11, v13, :cond_171

    if-eq v11, v12, :cond_171

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    :cond_171
    iget-object v11, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    move-object/from16 v38, v4

    new-instance v4, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;

    invoke-direct {v4, v13, v12, v15, v8}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;-><init>(IILjava/util/ArrayList;Landroid/util/SparseBooleanArray;)V

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v4}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    goto :goto_184

    :cond_181
    move-object/from16 v38, v4

    const/4 v12, 0x0

    .line 432
    :goto_184
    monitor-exit v18
    :try_end_185
    .catchall {:try_start_e3 .. :try_end_185} :catchall_130

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move-wide/from16 v17, v16

    .line 434
    invoke-virtual {v1, v13}, Lcom/android/server/am/ProcessErrorStateRecord;->buildMemoryHeadersFor(I)Ljava/util/LinkedHashMap;

    move-result-object v16

    .line 437
    invoke-virtual {v14}, Lcom/android/internal/os/anr/AnrLatencyTracker;->criticalEventLogStarted()V

    .line 439
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v4

    iget-object v11, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 440
    invoke-virtual {v11}, Lcom/android/server/am/ProcessRecord;->getProcessClassEnum()I

    move-result v11

    iget-object v12, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v24, v8

    iget-object v8, v12, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    iget v12, v12, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    .line 439
    invoke-virtual {v4, v11, v8, v12}, Lcom/android/server/criticalevents/CriticalEventLog;->logLinesForTraceFile(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 441
    invoke-virtual {v14}, Lcom/android/internal/os/anr/AnrLatencyTracker;->criticalEventLogEnded()V

    .line 442
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v8

    iget-object v11, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessRecord;->getProcessClassEnum()I

    move-result v11

    iget-object v12, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    move/from16 v25, v10

    move v10, v11

    iget-object v11, v12, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    move-object/from16 v26, v4

    iget v4, v12, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    iget v12, v12, Lcom/android/server/am/ProcessRecord;->mPid:I

    move/from16 v42, v13

    move-wide/from16 v40, v17

    move/from16 v43, v25

    move v13, v12

    move v12, v4

    const/4 v4, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/criticalevents/CriticalEventLog;->logAnr(Ljava/lang/String;ILjava/lang/String;II)V

    .line 446
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 448
    const-string v10, "ANR in "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_1f0

    .line 450
    const-string v10, " ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    :cond_1f0
    const-string v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    const-string v10, "PID: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v42

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_213

    .line 455
    const-string v11, "Reason: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_213
    if-eqz v7, :cond_228

    .line 458
    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_228

    .line 459
    const-string v11, "Parent: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_228
    if-eqz v38, :cond_23b

    .line 462
    const-string v11, "ErrorId: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    :cond_23b
    const-string v11, "Frozen: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v11, v11, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    iget-object v11, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v11, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getAnrController(Landroid/content/pm/ApplicationInfo;)Landroid/app/AnrController;

    move-result-object v11

    if-eqz v11, :cond_285

    .line 473
    iget-object v12, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 474
    iget v13, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 475
    invoke-interface {v11, v12, v13}, Landroid/app/AnrController;->getAnrDelayMillis(Ljava/lang/String;I)J

    move-result-wide v4

    .line 478
    invoke-interface {v11, v12, v13}, Landroid/app/AnrController;->onAnrDelayStarted(Ljava/lang/String;I)V

    .line 479
    const-string v13, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ANR delay of "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms started for "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_287

    :cond_285
    move-wide/from16 v4, v22

    .line 482
    :goto_287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 484
    invoke-virtual {v14}, Lcom/android/internal/os/anr/AnrLatencyTracker;->currentPsiStateCalled()V

    .line 485
    invoke-static {}, Lcom/android/server/ResourcePressureUtil;->currentPsiState()Ljava/lang/String;

    move-result-object v6

    .line 486
    invoke-virtual {v14}, Lcom/android/internal/os/anr/AnrLatencyTracker;->currentPsiStateReturned()V

    .line 487
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    new-instance v6, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v12, 0x1

    invoke-direct {v6, v12}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    .line 497
    new-instance v13, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;

    move-wide/from16 v48, v4

    move/from16 v4, v43

    move-wide/from16 v42, v48

    move/from16 v12, p8

    invoke-direct {v13, v1, v14, v4, v12}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ProcessErrorStateRecord;Lcom/android/internal/os/anr/AnrLatencyTracker;ZZ)V

    .line 498
    invoke-interface {v0, v13}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v5

    .line 534
    new-instance v12, Ljava/io/StringWriter;

    invoke-direct {v12}, Ljava/io/StringWriter;-><init>()V

    .line 536
    new-instance v13, Ljava/util/concurrent/atomic/AtomicLong;

    move/from16 v25, v4

    move-object/from16 p8, v5

    const-wide/16 v4, -0x1

    invoke-direct {v13, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    move-object/from16 v19, v14

    move-object v14, v9

    if-eqz v25, :cond_2ca

    move-object/from16 v9, v36

    :goto_2c7
    const/16 v39, 0x1

    goto :goto_2cc

    :cond_2ca
    move-object v9, v6

    goto :goto_2c7

    :goto_2cc
    move v4, v10

    if-eqz v25, :cond_2e0

    move-object/from16 v10, v36

    :goto_2d1
    move-object/from16 v20, p6

    move-object/from16 v18, p10

    move-object/from16 v17, v0

    move-object v5, v8

    move-object/from16 v44, v11

    move-object v8, v15

    move-object/from16 v15, v26

    move-object/from16 v11, p8

    goto :goto_2e3

    :cond_2e0
    move-object/from16 v10, v24

    goto :goto_2d1

    .line 537
    :goto_2e3
    invoke-static/range {v8 .. v20}, Lcom/android/server/am/StackTracesDumpHelper;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Ljava/util/concurrent/Future;Ljava/io/StringWriter;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Future;Lcom/android/internal/os/anr/AnrLatencyTracker;Lcom/android/internal/os/TimeoutRecord;)Ljava/io/File;

    move-result-object v26

    move-object v9, v14

    .line 543
    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->isMonitorCpuUsage()Z

    move-result v0

    if-eqz v0, :cond_325

    .line 546
    :try_start_2ee
    invoke-interface/range {v21 .. v21}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_2f1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2ee .. :try_end_2f1} :catch_2fb
    .catch Ljava/lang/InterruptedException; {:try_start_2ee .. :try_end_2f1} :catch_2f2

    goto :goto_307

    :catch_2f2
    move-exception v0

    .line 550
    const-string v8, "ActivityManager"

    const-string v10, "Interrupted while updating the CPU stats"

    invoke-static {v8, v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_307

    :catch_2fb
    move-exception v0

    .line 548
    const-string v8, "ActivityManager"

    const-string v10, "Failed to update the CPU stats"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v8, v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 552
    :goto_307
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 553
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    move-wide/from16 v10, v40

    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/am/AppProfiler;->printCurrentCpuState(Ljava/lang/StringBuilder;J)V

    .line 554
    monitor-enter v6

    .line 555
    :try_start_316
    invoke-virtual {v6}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    monitor-exit v6
    :try_end_31e
    .catchall {:try_start_316 .. :try_end_31e} :catchall_322

    .line 557
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_327

    :catchall_322
    move-exception v0

    .line 556
    :try_start_323
    monitor-exit v6
    :try_end_324
    .catchall {:try_start_323 .. :try_end_324} :catchall_322

    throw v0

    :cond_325
    move-wide/from16 v10, v40

    .line 559
    :goto_327
    invoke-virtual {v12}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    .line 561
    monitor-enter v6

    .line 562
    :try_start_32f
    invoke-virtual {v6, v10, v11}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    monitor-exit v6
    :try_end_337
    .catchall {:try_start_32f .. :try_end_337} :catchall_5d8

    .line 565
    const-string v0, "ActivityManager"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v26, :cond_349

    const/4 v0, 0x3

    .line 568
    invoke-static {v4, v0}, Landroid/os/Process;->sendSignal(II)V

    :cond_346
    :goto_346
    move-object/from16 v4, v26

    goto :goto_36f

    .line 569
    :cond_349
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    cmp-long v0, v10, v22

    if-lez v0, :cond_346

    .line 574
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v29

    .line 575
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v6, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v8, v6, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    .line 576
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getProcessPackageNames()[Ljava/lang/String;

    move-result-object v25

    const-wide/16 v27, 0x0

    move-object/from16 v22, v0

    move/from16 v23, v4

    move/from16 v24, v8

    .line 575
    invoke-virtual/range {v22 .. v30}, Lcom/android/server/am/AppExitInfoTracker;->scheduleLogAnrTrace(II[Ljava/lang/String;Ljava/io/File;JJ)V

    goto :goto_346

    .line 583
    :goto_36f
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 584
    iget-object v6, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    const/high16 v8, 0x42c80000    # 100.0f

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v6, :cond_3f9

    iget-object v6, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_3f9

    if-eqz v0, :cond_3f9

    .line 585
    iget-object v6, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v11, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v11, v11, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    const/16 v12, 0x3e8

    .line 586
    invoke-virtual {v0, v6, v12, v11}, Landroid/content/pm/PackageManagerInternal;->getIncrementalStatesInfo(Ljava/lang/String;II)Landroid/content/pm/IncrementalStatesInfo;

    move-result-object v0

    if-eqz v0, :cond_39f

    .line 589
    invoke-virtual {v0}, Landroid/content/pm/IncrementalStatesInfo;->getProgress()F

    move-result v10

    .line 591
    :cond_39f
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3f9

    .line 592
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3f9

    .line 593
    invoke-static {v0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3f9

    .line 595
    const-string v6, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "App ANR on incremental package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " which is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float v12, v10, v8

    float-to-int v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "% loaded."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const-string v6, "incremental"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_3f9

    .line 600
    new-instance v11, Landroid/os/incremental/IncrementalManager;

    .line 601
    invoke-static {v6}, Landroid/os/incremental/IIncrementalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/incremental/IIncrementalService;

    move-result-object v6

    invoke-direct {v11, v6}, Landroid/os/incremental/IncrementalManager;-><init>(Landroid/os/incremental/IIncrementalService;)V

    .line 602
    invoke-virtual {v11, v0}, Landroid/os/incremental/IncrementalManager;->getMetrics(Ljava/lang/String;)Landroid/os/incremental/IncrementalMetrics;

    move-result-object v0

    move/from16 v18, v10

    goto :goto_3fd

    :cond_3f9
    move/from16 v18, v10

    move-object/from16 v0, v36

    :goto_3fd
    if-eqz v0, :cond_40f

    .line 608
    const-string v6, "Package is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float v8, v8, v18

    float-to-int v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "% loaded.\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    :cond_40f
    iget-object v6, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    move-object v14, v9

    iget v9, v6, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    iget-object v10, v6, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    if-nez p1, :cond_41d

    .line 612
    const-string/jumbo v8, "unknown"

    move-object v11, v8

    goto :goto_41f

    :cond_41d
    move-object/from16 v11, p1

    .line 614
    :goto_41f
    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v8, 0x2

    if-eqz v6, :cond_432

    iget-object v6, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v6

    if-eqz v6, :cond_430

    move v13, v8

    goto :goto_433

    :cond_430
    const/4 v13, 0x1

    goto :goto_433

    :cond_432
    const/4 v13, 0x0

    .line 618
    :goto_433
    iget-object v6, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v6

    if-eqz v6, :cond_43e

    move-object v12, v14

    move v14, v8

    goto :goto_440

    :cond_43e
    move-object v12, v14

    const/4 v14, 0x1

    .line 620
    :goto_440
    iget-object v6, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 621
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getProcessClassEnum()I

    move-result v15

    .line 622
    iget-object v6, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_455

    iget-object v6, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_452
    move-object/from16 v16, v6

    goto :goto_458

    :cond_455
    const-string v6, ""

    goto :goto_452

    :goto_458
    if-eqz v0, :cond_45d

    const/16 v17, 0x1

    goto :goto_45f

    :cond_45d
    const/16 v17, 0x0

    :goto_45f
    if-eqz v0, :cond_466

    .line 624
    invoke-virtual {v0}, Landroid/os/incremental/IncrementalMetrics;->getMillisSinceOldestPendingRead()J

    move-result-wide v19

    goto :goto_468

    :cond_466
    const-wide/16 v19, -0x1

    :goto_468
    const/4 v6, -0x1

    if-eqz v0, :cond_470

    .line 626
    invoke-virtual {v0}, Landroid/os/incremental/IncrementalMetrics;->getStorageHealthStatusCode()I

    move-result v21

    goto :goto_472

    :cond_470
    move/from16 v21, v6

    :goto_472
    if-eqz v0, :cond_479

    .line 628
    invoke-virtual {v0}, Landroid/os/incremental/IncrementalMetrics;->getDataLoaderStatusCode()I

    move-result v22

    goto :goto_47b

    :cond_479
    move/from16 v22, v6

    :goto_47b
    if-eqz v0, :cond_486

    .line 630
    invoke-virtual {v0}, Landroid/os/incremental/IncrementalMetrics;->getReadLogsEnabled()Z

    move-result v23

    if-eqz v23, :cond_486

    const/16 v23, 0x1

    goto :goto_488

    :cond_486
    const/16 v23, 0x0

    :goto_488
    if-eqz v0, :cond_48f

    .line 631
    invoke-virtual {v0}, Landroid/os/incremental/IncrementalMetrics;->getMillisSinceLastDataLoaderBind()J

    move-result-wide v24

    goto :goto_491

    :cond_48f
    const-wide/16 v24, -0x1

    :goto_491
    if-eqz v0, :cond_498

    .line 633
    invoke-virtual {v0}, Landroid/os/incremental/IncrementalMetrics;->getDataLoaderBindDelayMillis()J

    move-result-wide v26

    goto :goto_49a

    :cond_498
    const-wide/16 v26, -0x1

    :goto_49a
    if-eqz v0, :cond_4a1

    .line 635
    invoke-virtual {v0}, Landroid/os/incremental/IncrementalMetrics;->getTotalDelayedReads()I

    move-result v28

    goto :goto_4a3

    :cond_4a1
    move/from16 v28, v6

    :goto_4a3
    if-eqz v0, :cond_4aa

    .line 637
    invoke-virtual {v0}, Landroid/os/incremental/IncrementalMetrics;->getTotalFailedReads()I

    move-result v29

    goto :goto_4ac

    :cond_4aa
    move/from16 v29, v6

    :goto_4ac
    if-eqz v0, :cond_4b2

    .line 639
    invoke-virtual {v0}, Landroid/os/incremental/IncrementalMetrics;->getLastReadErrorUid()I

    move-result v6

    :cond_4b2
    move/from16 v30, v6

    if-eqz v0, :cond_4bb

    .line 641
    invoke-virtual {v0}, Landroid/os/incremental/IncrementalMetrics;->getMillisSinceLastReadError()J

    move-result-wide v34

    goto :goto_4bd

    :cond_4bb
    const-wide/16 v34, -0x1

    :goto_4bd
    if-eqz v0, :cond_4c4

    .line 643
    invoke-virtual {v0}, Landroid/os/incremental/IncrementalMetrics;->getLastReadErrorNumber()I

    move-result v6

    goto :goto_4c5

    :cond_4c4
    const/4 v6, 0x0

    :goto_4c5
    if-eqz v0, :cond_4ce

    .line 645
    invoke-virtual {v0}, Landroid/os/incremental/IncrementalMetrics;->getTotalDelayedReadsDurationMillis()J

    move-result-wide v31

    :goto_4cb
    move/from16 v33, v8

    goto :goto_4d1

    :cond_4ce
    const-wide/16 v31, -0x1

    goto :goto_4cb

    :goto_4d1
    const/16 v8, 0x4f

    move/from16 v48, v33

    move/from16 v33, v6

    move/from16 v6, v48

    move-wide/from16 v48, v34

    move-wide/from16 v34, v31

    move-wide/from16 v31, v48

    .line 611
    invoke-static/range {v8 .. v35}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ZFJIIZJJIIIJIJ)V

    move-object v9, v12

    move/from16 v10, v18

    if-eqz v3, :cond_4ed

    .line 648
    iget-object v3, v3, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    move-object/from16 v36, v3

    check-cast v36, Lcom/android/server/am/ProcessRecord;

    :cond_4ed
    move-object v3, v2

    move-object/from16 v8, v36

    .line 649
    iget-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v11, v3

    const-string v3, "anr"

    move-object/from16 v26, v4

    iget-object v4, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    move-object v12, v5

    iget-object v5, v4, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    .line 650
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v13, Ljava/lang/Float;

    invoke-direct {v13, v10}, Ljava/lang/Float;-><init>(F)V

    move-object v14, v9

    const/4 v9, 0x0

    move-object v10, v12

    const/4 v12, 0x0

    move-object/from16 v17, v10

    move-object v10, v11

    move-object/from16 v45, v14

    move-object/from16 v11, v26

    move-object/from16 v16, v37

    move-object/from16 v15, v38

    move-wide/from16 v46, v42

    move-object v14, v0

    move v0, v6

    move-object/from16 v6, p1

    .line 649
    invoke-virtual/range {v2 .. v16}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/Float;Landroid/os/incremental/IncrementalMetrics;Ljava/util/UUID;Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;)V

    .line 654
    iget-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda4;

    move-object/from16 v5, p6

    invoke-direct {v4, v1, v5}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/ProcessErrorStateRecord;Lcom/android/internal/os/TimeoutRecord;)V

    new-instance v7, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda5;

    invoke-direct {v7, v1}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/ProcessErrorStateRecord;)V

    invoke-virtual {v2, v3, v4, v7}, Lcom/android/server/wm/WindowProcessController;->appNotResponding(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_53a

    return-void

    .line 673
    :cond_53a
    iget-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    .line 676
    :try_start_540
    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    if-eqz v3, :cond_553

    .line 677
    iget-object v4, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v4, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    iget v4, v4, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-virtual {v3, v7, v4}, Lcom/android/server/am/BatteryStatsService;->noteProcessAnr(Ljava/lang/String;I)V

    goto :goto_553

    :catchall_550
    move-exception v0

    goto/16 :goto_5d3

    .line 680
    :cond_553
    :goto_553
    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->isSilentAnr()Z

    move-result v3

    if-eqz v3, :cond_573

    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result v3

    if-nez v3, :cond_573

    .line 682
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    const-string v1, "bg anr"

    .line 683
    invoke-virtual {v5}, Lcom/android/internal/os/TimeoutRecord;->getAppExitInfoAnrSubreason()I

    move-result v3

    const/4 v4, 0x6

    const/4 v12, 0x1

    .line 682
    invoke-virtual {v0, v1, v4, v3, v12}, Lcom/android/server/am/psc/ProcessRecordInternal;->killLocked(Ljava/lang/String;IIZ)V

    .line 687
    monitor-exit v2
    :try_end_56f
    .catchall {:try_start_540 .. :try_end_56f} :catchall_550

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 690
    :cond_573
    :try_start_573
    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v3
    :try_end_579
    .catchall {:try_start_573 .. :try_end_579} :catchall_550

    move-object/from16 v9, v45

    if-eqz v9, :cond_591

    .line 693
    :try_start_57d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ANR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_593

    :catchall_58f
    move-exception v0

    goto :goto_5ce

    :cond_591
    const-string v4, "ANR"

    :goto_593
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 692
    invoke-virtual {v1, v6, v4, v5}, Lcom/android/server/am/ProcessErrorStateRecord;->makeAppNotRespondingLSP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    iget-object v4, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    move-object/from16 v5, v44

    invoke-virtual {v4, v5}, Lcom/android/server/am/ErrorDialogController;->setAnrController(Landroid/app/AnrController;)V

    .line 695
    monitor-exit v3
    :try_end_5a2
    .catchall {:try_start_57d .. :try_end_5a2} :catchall_58f

    :try_start_5a2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 699
    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    if-eqz v3, :cond_5c9

    .line 701
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 702
    iput v0, v3, Landroid/os/Message;->what:I

    .line 703
    new-instance v0, Lcom/android/server/am/AppNotRespondingDialog$Data;

    iget-object v4, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v5, p2

    move/from16 v6, p5

    move/from16 v7, p9

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/server/am/AppNotRespondingDialog$Data;-><init>(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ApplicationInfo;ZZ)V

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 706
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    move-wide/from16 v4, v46

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 708
    :cond_5c9
    monitor-exit v2
    :try_end_5ca
    .catchall {:try_start_5a2 .. :try_end_5ca} :catchall_550

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 695
    :goto_5ce
    :try_start_5ce
    monitor-exit v3
    :try_end_5cf
    .catchall {:try_start_5ce .. :try_end_5cf} :catchall_58f

    :try_start_5cf
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    .line 708
    :goto_5d3
    monitor-exit v2
    :try_end_5d4
    .catchall {:try_start_5cf .. :try_end_5d4} :catchall_550

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_5d8
    move-exception v0

    .line 563
    :try_start_5d9
    monitor-exit v6
    :try_end_5da
    .catchall {:try_start_5d9 .. :try_end_5da} :catchall_5d8

    throw v0

    :catchall_5db
    move-exception v0

    move-object/from16 v18, v12

    .line 373
    :goto_5de
    :try_start_5de
    monitor-exit v10
    :try_end_5df
    .catchall {:try_start_5de .. :try_end_5df} :catchall_d1

    :try_start_5df
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    .line 432
    :goto_5e3
    monitor-exit v18
    :try_end_5e4
    .catchall {:try_start_5df .. :try_end_5e4} :catchall_130

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public final buildMemoryHeadersFor(I)Ljava/util/LinkedHashMap;
    .registers 5

    const/4 p0, 0x0

    .line 770
    const-string v0, "ActivityManager"

    if-gtz p1, :cond_1a

    .line 771
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Memory header requested with invalid pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 774
    :cond_1a
    invoke-static {p1}, Lcom/android/internal/os/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(I)Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;

    move-result-object v1

    if-nez v1, :cond_35

    .line 776
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get memory snapshot for pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 780
    :cond_35
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 781
    iget p1, v1, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->rssHighWaterMarkInKilobytes:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RssHwmKb"

    invoke-virtual {p0, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    iget p1, v1, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->rssInKilobytes:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RssKb"

    invoke-virtual {p0, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    iget p1, v1, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->anonRssInKilobytes:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RssAnonKb"

    invoke-virtual {p0, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    iget p1, v1, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->rssShmemKilobytes:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RssShmemKb"

    invoke-virtual {p0, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    iget p1, v1, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->swapInKilobytes:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "VmSwapKb"

    invoke-virtual {p0, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .registers 5

    .line 814
    iget-object p3, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter p3

    .line 815
    :try_start_6
    iget-boolean p4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    if-nez p4, :cond_26

    iget-object p4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    invoke-virtual {p4}, Lcom/android/server/am/ErrorDialogController;->hasCrashDialogs()Z

    move-result p4

    if-nez p4, :cond_26

    iget-boolean p4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    if-nez p4, :cond_26

    iget-object p4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 816
    invoke-virtual {p4}, Lcom/android/server/am/ErrorDialogController;->hasAnrDialogs()Z

    move-result p4

    if-nez p4, :cond_26

    iget-boolean p4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mBad:Z

    if-eqz p4, :cond_b4

    goto :goto_26

    :catchall_23
    move-exception p0

    goto/16 :goto_b9

    .line 817
    :cond_26
    :goto_26
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 818
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " mCrashing="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 819
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    invoke-virtual {p4}, Lcom/android/server/am/ErrorDialogController;->getCrashDialogs()Ljava/util/List;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 820
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " mNotResponding="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 821
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    invoke-virtual {p4}, Lcom/android/server/am/ErrorDialogController;->getAnrDialogs()Ljava/util/List;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 822
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " bad="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mBad:Z

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 825
    iget-object p2, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    if-eqz p2, :cond_b1

    .line 826
    const-string p2, " errorReportReceiver="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 827
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 829
    :cond_b1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 831
    :cond_b4
    monitor-exit p3
    :try_end_b5
    .catchall {:try_start_6 .. :try_end_b5} :catchall_23

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :goto_b9
    :try_start_b9
    monitor-exit p3
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_23

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public getAnrAnnotation()Ljava/lang/String;
    .registers 1

    .line 221
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mAnrAnnotation:Ljava/lang/String;

    return-object p0
.end method

.method public getAnrData()Lcom/android/server/am/AppNotRespondingDialog$Data;
    .registers 1

    .line 261
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mAnrData:Lcom/android/server/am/AppNotRespondingDialog$Data;

    return-object p0
.end method

.method public getCrashHandler()Ljava/lang/Runnable;
    .registers 1

    .line 201
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashHandler:Ljava/lang/Runnable;

    return-object p0
.end method

.method public getCrashingReport()Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .registers 1

    .line 211
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    return-object p0
.end method

.method public getDialogController()Lcom/android/server/am/ErrorDialogController;
    .registers 1

    .line 251
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    return-object p0
.end method

.method public getErrorReportReceiver()Landroid/content/ComponentName;
    .registers 1

    .line 241
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getNotRespondingReport()Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .registers 1

    .line 231
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    return-object p0
.end method

.method public final getShowBackground()Z
    .registers 4

    .line 762
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 766
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    .line 763
    const-string v1, "anr_show_background"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    return v2
.end method

.method public isBad()Z
    .registers 1

    .line 159
    iget-boolean p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mBad:Z

    return p0
.end method

.method public isCrashing()Z
    .registers 1

    .line 169
    iget-boolean p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    return p0
.end method

.method public isForceCrashReport()Z
    .registers 1

    .line 180
    iget-boolean p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mForceCrashReport:Z

    return p0
.end method

.method public final isInterestingForBackgroundTraces()Z
    .registers 4

    .line 743
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_c

    return v2

    .line 756
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 757
    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    :cond_28
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 758
    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getHasTopUi()Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/psc/ProcessRecordInternal;->getHasOverlayUi()Z

    move-result p0

    if-eqz p0, :cond_39

    goto :goto_3b

    :cond_39
    const/4 p0, 0x0

    return p0

    :cond_3b
    :goto_3b
    return v2
.end method

.method public isMonitorCpuUsage()Z
    .registers 1

    .line 801
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    const/4 p0, 0x1

    return p0
.end method

.method public isNotResponding()Z
    .registers 1

    .line 190
    iget-boolean p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    return p0
.end method

.method public isSilentAnr()Z
    .registers 2

    .line 795
    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->getShowBackground()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isInterestingForBackgroundTraces()Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$appNotResponding$0(Lcom/android/internal/os/anr/AnrLatencyTracker;Ljava/lang/String;Lcom/android/internal/os/TimeoutRecord;)V
    .registers 6

    .line 312
    invoke-virtual {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnAMSLockStarted()V

    .line 313
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 314
    :try_start_9
    invoke-virtual {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnAMSLockEnded()V

    .line 316
    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessErrorStateRecord;->setAnrAnnotation(Ljava/lang/String;)V

    .line 318
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    const-string p1, "anr"

    .line 319
    invoke-virtual {p3}, Lcom/android/internal/os/TimeoutRecord;->getAppExitInfoAnrSubreason()I

    move-result p2

    const/4 p3, 0x1

    const/4 v1, 0x6

    .line 318
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/am/psc/ProcessRecordInternal;->killLocked(Ljava/lang/String;IIZ)V

    .line 323
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_21

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_21
    move-exception p0

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$appNotResponding$1(Lcom/android/internal/os/anr/AnrLatencyTracker;)V
    .registers 2

    .line 331
    invoke-virtual {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->updateCpuStatsNowCalled()V

    .line 332
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 333
    invoke-virtual {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->updateCpuStatsNowReturned()V

    return-void
.end method

.method public final synthetic lambda$appNotResponding$3(Lcom/android/internal/os/anr/AnrLatencyTracker;ZZ)Ljava/util/ArrayList;
    .registers 7

    .line 500
    invoke-virtual {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->nativePidCollectionStarted()V

    .line 504
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemExt()Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_19
    if-nez p2, :cond_21

    if-eqz p3, :cond_1e

    goto :goto_21

    .line 515
    :cond_1e
    sget-object p0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    goto :goto_42

    :cond_21
    :goto_21
    move p2, v1

    .line 508
    :goto_22
    sget-object p3, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    array-length v0, p3

    if-ge p2, v0, :cond_41

    .line 509
    aget-object p3, p3, p2

    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3e

    const/4 p2, 0x1

    .line 510
    new-array p2, p2, [Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    aput-object p0, p2, v1

    move-object p0, p2

    goto :goto_42

    :cond_3e
    add-int/lit8 p2, p2, 0x1

    goto :goto_22

    :cond_41
    move-object p0, v2

    :goto_42
    if-nez p0, :cond_46

    move-object p0, v2

    goto :goto_4a

    .line 519
    :cond_46
    invoke-static {p0}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object p0

    :goto_4a
    if-eqz p0, :cond_61

    .line 523
    new-instance v2, Ljava/util/ArrayList;

    array-length p2, p0

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 524
    array-length p2, p0

    :goto_53
    if-ge v1, p2, :cond_61

    aget p3, p0, v1

    .line 525
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 528
    :cond_61
    invoke-virtual {p1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->nativePidCollectionEnded()V

    return-object v2
.end method

.method public final synthetic lambda$appNotResponding$4(Lcom/android/internal/os/TimeoutRecord;)V
    .registers 6

    .line 656
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 658
    :try_start_6
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    const-string v1, "anr"

    .line 659
    invoke-virtual {p1}, Lcom/android/internal/os/TimeoutRecord;->getAppExitInfoAnrSubreason()I

    move-result p1

    const/4 v2, 0x1

    const/4 v3, 0x6

    .line 658
    invoke-virtual {p0, v1, v3, p1, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->killLocked(Ljava/lang/String;IIZ)V

    .line 663
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_18
    move-exception p0

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$appNotResponding$5()V
    .registers 3

    .line 666
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 667
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 668
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_14
    move-exception p0

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final makeAppNotRespondingLSP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const/4 v0, 0x1

    .line 713
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 716
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    if-eqz v1, :cond_17

    .line 717
    iget-object v2, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x2

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 721
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->startAppProblemLSP()V

    .line 722
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->stopFreezingActivities()V

    return-void
.end method

.method public onCleanupApplicationRecordLSP()V
    .registers 2

    .line 807
    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ErrorDialogController;->clearAllErrorDialogs()V

    const/4 v0, 0x0

    .line 809
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashing(Z)V

    .line 810
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    return-void
.end method

.method public setAnrAnnotation(Ljava/lang/String;)V
    .registers 2

    .line 226
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mAnrAnnotation:Ljava/lang/String;

    return-void
.end method

.method public setAnrData(Lcom/android/server/am/AppNotRespondingDialog$Data;)V
    .registers 2

    .line 256
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mAnrData:Lcom/android/server/am/AppNotRespondingDialog$Data;

    return-void
.end method

.method public setBad(Z)V
    .registers 2

    .line 164
    iput-boolean p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mBad:Z

    return-void
.end method

.method public setCrashHandler(Ljava/lang/Runnable;)V
    .registers 2

    .line 206
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashHandler:Ljava/lang/Runnable;

    return-void
.end method

.method public setCrashing(Z)V
    .registers 2

    .line 174
    iput-boolean p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    .line 175
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setCrashing(Z)V

    return-void
.end method

.method public setCrashingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V
    .registers 2

    .line 216
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    return-void
.end method

.method public setForceCrashReport(Z)V
    .registers 2

    .line 185
    iput-boolean p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mForceCrashReport:Z

    return-void
.end method

.method public setNotResponding(Z)V
    .registers 2

    .line 195
    iput-boolean p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    .line 196
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setNotResponding(Z)V

    return-void
.end method

.method public setNotRespondingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V
    .registers 2

    .line 236
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    return-void
.end method

.method public skipAnrLocked(Ljava/lang/String;)Z
    .registers 7

    .line 274
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isShuttingDown()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, " "

    const-string v3, "ActivityManager"

    if-eqz v0, :cond_2a

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "During shutdown skipping ANR: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 277
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isNotResponding()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping duplicate ANR: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 280
    :cond_4b
    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isCrashing()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Crashing app skipping ANR: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 283
    :cond_6c
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilledByAm()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App already killed by AM skipping ANR: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 286
    :cond_8f
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilled()Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping died app ANR: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_b2
    const/4 p0, 0x0

    return p0
.end method

.method public startAppProblemLSP()V
    .registers 7

    const/4 v0, 0x0

    .line 729
    iput-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    .line 731
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_2e

    aget v3, v0, v2

    .line 732
    iget-object v4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v5, v4, Lcom/android/server/am/psc/ProcessRecordInternal;->userId:I

    if-ne v5, v3, :cond_2b

    .line 733
    iget-object v3, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v3, v4, v5}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 737
    :cond_2e
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getBroadcastQueue()Lcom/android/server/am/BroadcastQueue;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, p0}, Lcom/android/server/am/BroadcastQueue;->onApplicationProblemLocked(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method
