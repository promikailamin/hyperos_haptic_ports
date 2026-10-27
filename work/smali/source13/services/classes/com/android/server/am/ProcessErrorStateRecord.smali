.class Lcom/android/server/am/ProcessErrorStateRecord;
.super Ljava/lang/Object;
.source "ProcessErrorStateRecord.java"


# static fields
.field private static final FDA_TAG:Ljava/lang/String; = "FDAoptimizationImpl"


# instance fields
.field private mAnrAnnotation:Ljava/lang/String;

.field private mAnrData:Lcom/android/server/am/AppNotRespondingDialog$Data;

.field final mApp:Lcom/android/server/am/ProcessRecord;

.field private mBad:Z

.field private mCrashHandler:Ljava/lang/Runnable;

.field private mCrashing:Z

.field private mCrashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

.field private mDefered:Z

.field private final mDialogController:Lcom/android/server/am/ErrorDialogController;

.field private mErrorReportReceiver:Landroid/content/ComponentName;

.field private mForceCrashReport:Z

.field private mNotResponding:Z

.field private mNotRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

.field private final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .registers 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 267
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 268
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 269
    new-instance v0, Lcom/android/server/am/ErrorDialogController;

    invoke-direct {v0, p1}, Lcom/android/server/am/ErrorDialogController;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 270
    return-void
.end method

.method private getShowBackground()Z
    .registers 4

    .line 779
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "anr_show_background"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v2, 0x1

    :cond_12
    return v2
.end method

.method private isInterestingForBackgroundTraces()Z
    .registers 4

    .line 760
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_c

    .line 761
    return v2

    .line 773
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 774
    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    :cond_28
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 775
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->hasTopUi()Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->hasOverlayUi()Z

    move-result v0

    if-eqz v0, :cond_3d

    goto :goto_3f

    :cond_3d
    const/4 v2, 0x0

    goto :goto_40

    :cond_3f
    :goto_3f
    nop

    .line 773
    :goto_40
    return v2
.end method

.method private isPerfettoDumpEnabled(Z)Z
    .registers 3
    .param p1, "isSilentAnr"    # Z

    .line 733
    invoke-static {}, Lcom/android/server/am/trace/SmartTraceUtils;->isPerfettoDumpEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz p1, :cond_10

    if-eqz p1, :cond_12

    .line 734
    invoke-static {}, Lcom/android/server/am/trace/SmartTraceUtils;->isPerfettoDumpEnabledOnBgApp()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 733
    :goto_13
    return v0
.end method

.method private isSmartTraceEnabled(Z)Z
    .registers 3
    .param p1, "isSilentAnr"    # Z

    .line 728
    invoke-static {}, Lcom/android/server/am/trace/SmartTraceUtils;->isSmartTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz p1, :cond_10

    if-eqz p1, :cond_12

    .line 729
    invoke-static {}, Lcom/android/server/am/trace/SmartTraceUtils;->isSmartTraceEnabledOnBgApp()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 728
    :goto_13
    return v0
.end method

.method static synthetic lambda$appNotResponding$1(IILjava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/server/am/ProcessRecord;)V
    .registers 9
    .param p0, "pid"    # I
    .param p1, "ppid"    # I
    .param p2, "firstPids"    # Ljava/util/ArrayList;
    .param p3, "lastPids"    # Landroid/util/SparseArray;
    .param p4, "r"    # Lcom/android/server/am/ProcessRecord;

    .line 380
    if-eqz p4, :cond_8d

    invoke-virtual {p4}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_8d

    .line 381
    invoke-virtual {p4}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    .line 382
    .local v0, "myPid":I
    if-lez v0, :cond_8d

    if-eq v0, p0, :cond_8d

    if-eq v0, p1, :cond_8d

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v1, :cond_8d

    .line 385
    invoke-static {}, Lcom/android/server/am/ProcessListStub;->get()Lcom/android/server/am/ProcessListStub;

    move-result-object v1

    invoke-interface {v1, p4}, Lcom/android/server/am/ProcessListStub;->isNeedTraceProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    const-string v2, "ActivityManager"

    if-eqz v1, :cond_44

    .line 386
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    if-eqz v1, :cond_8d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding persistent proc: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    .line 388
    :cond_44
    iget-object v1, p4, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 389
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    if-eqz v1, :cond_8d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding likely IME: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    .line 392
    :cond_6e
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 393
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    if-eqz v1, :cond_8d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding ANR proc: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .end local v0    # "myPid":I
    :cond_8d
    :goto_8d
    return-void
.end method

.method private makeAppNotRespondingLSP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "activity"    # Ljava/lang/String;
    .param p2, "shortMsg"    # Ljava/lang/String;
    .param p3, "longMsg"    # Ljava/lang/String;

    .line 715
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 718
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    if-eqz v0, :cond_1b

    .line 719
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget-object v2, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x2

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 723
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->startAppProblemLSP()V

    .line 724
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->stopFreezingActivities()V

    .line 725
    return-void
.end method

.method private shouldDeferAppNotResponding(Z)Z
    .registers 3
    .param p1, "isSilentAnr"    # Z

    .line 738
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessErrorStateRecord;->isSmartTraceEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_f

    .line 739
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessErrorStateRecord;->isPerfettoDumpEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 738
    :goto_10
    return v0
.end method


# virtual methods
.method appNotResponding(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLjava/lang/String;Z)V
    .registers 87
    .param p1, "activityShortComponentName"    # Ljava/lang/String;
    .param p2, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "parentShortComponentName"    # Ljava/lang/String;
    .param p4, "parentProcess"    # Lcom/android/server/wm/WindowProcessController;
    .param p5, "aboveSystem"    # Z
    .param p6, "annotation"    # Ljava/lang/String;
    .param p7, "onlyDumpSelf"    # Z

    .line 276
    move-object/from16 v1, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    move-object/from16 v13, p3

    move-object/from16 v12, p4

    move-object/from16 v11, p6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v44

    .line 278
    .local v44, "appNotRespondingStartTime":J
    new-instance v0, Ljava/util/ArrayList;

    const/4 v8, 0x5

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v10, v0

    .line 279
    .local v10, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/util/SparseArray;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    move-object v9, v0

    .line 281
    .local v9, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/android/server/am/ScoutAnrInfo;

    invoke-direct {v0}, Lcom/android/server/am/ScoutAnrInfo;-><init>()V

    move-object v7, v0

    .line 282
    .local v7, "anrInfo":Lcom/android/server/am/ScoutAnrInfo;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isInterestingForBackgroundTraces()Z

    move-result v0

    const/4 v6, 0x1

    xor-int/2addr v0, v6

    invoke-virtual {v7, v0}, Lcom/android/server/am/ScoutAnrInfo;->setBgAnr(Z)V

    .line 283
    invoke-static {}, Lcom/android/server/am/ProcessRecordStub;->get()Lcom/android/server/am/ProcessRecordStub;

    move-result-object v0

    const-string v2, "ActivityManager"

    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-interface {v0, v2, v3, v7}, Lcom/android/server/am/ProcessRecordStub;->scoutAppUpdateAnrInfo(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ScoutAnrInfo;)V

    .line 286
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    new-instance v2, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, v11}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ProcessErrorStateRecord;Ljava/lang/String;)V

    invoke-virtual {v0, v11, v2}, Lcom/android/server/wm/WindowProcessController;->appEarlyNotResponding(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 294
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 295
    .local v4, "anrTime":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isMonitorCpuUsage()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 296
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 300
    :cond_56
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    .line 302
    .local v3, "pid":I
    iget-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_5f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 304
    invoke-virtual {v1, v11}, Lcom/android/server/am/ProcessErrorStateRecord;->setAnrAnnotation(Ljava/lang/String;)V

    .line 307
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isShuttingDown()Z

    move-result v0
    :try_end_6d
    .catchall {:try_start_5f .. :try_end_6d} :catchall_af2

    if-eqz v0, :cond_a8

    .line 308
    :try_start_6f
    const-string v0, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "During shutdown skipping ANR: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    monitor-exit v2
    :try_end_92
    .catchall {:try_start_6f .. :try_end_92} :catchall_96

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 399
    :catchall_96
    move-exception v0

    move/from16 v20, v3

    move-wide/from16 v52, v4

    move-object/from16 v61, v7

    move-object/from16 v72, v9

    move-object/from16 v60, v10

    move-object v4, v11

    move-object v9, v14

    move-object v7, v15

    move/from16 v10, p5

    goto/16 :goto_b02

    .line 310
    :cond_a8
    :try_start_a8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isNotResponding()Z

    move-result v0
    :try_end_ac
    .catchall {:try_start_a8 .. :try_end_ac} :catchall_af2

    if-eqz v0, :cond_d5

    .line 311
    :try_start_ae
    const-string v0, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping duplicate ANR: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    monitor-exit v2
    :try_end_d1
    .catchall {:try_start_ae .. :try_end_d1} :catchall_96

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 313
    :cond_d5
    :try_start_d5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isCrashing()Z

    move-result v0
    :try_end_d9
    .catchall {:try_start_d5 .. :try_end_d9} :catchall_af2

    if-eqz v0, :cond_102

    .line 314
    :try_start_db
    const-string v0, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Crashing app skipping ANR: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    monitor-exit v2
    :try_end_fe
    .catchall {:try_start_db .. :try_end_fe} :catchall_96

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 316
    :cond_102
    :try_start_102
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v0
    :try_end_108
    .catchall {:try_start_102 .. :try_end_108} :catchall_af2

    if-eqz v0, :cond_131

    .line 317
    :try_start_10a
    const-string v0, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App already killed by AM skipping ANR: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    monitor-exit v2
    :try_end_12d
    .catchall {:try_start_10a .. :try_end_12d} :catchall_96

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 319
    :cond_131
    :try_start_131
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v0
    :try_end_137
    .catchall {:try_start_131 .. :try_end_137} :catchall_af2

    if-eqz v0, :cond_160

    .line 320
    :try_start_139
    const-string v0, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping died app ANR: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    monitor-exit v2
    :try_end_15c
    .catchall {:try_start_139 .. :try_end_15c} :catchall_96

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 325
    :cond_160
    :try_start_160
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceStub;->get()Lcom/android/server/am/ActivityManagerServiceStub;

    move-result-object v0

    iget-object v8, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v8, v6, v11}, Lcom/android/server/am/ActivityManagerServiceStub;->skipFrozenAppAnr(Landroid/content/pm/ApplicationInfo;ILjava/lang/String;)Z

    move-result v0
    :try_end_170
    .catchall {:try_start_160 .. :try_end_170} :catchall_af2

    if-eqz v0, :cond_177

    .line 326
    :try_start_172
    monitor-exit v2
    :try_end_173
    .catchall {:try_start_172 .. :try_end_173} :catchall_96

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 328
    :cond_177
    :try_start_177
    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I
    :try_end_179
    .catchall {:try_start_177 .. :try_end_179} :catchall_af2

    if-ne v3, v0, :cond_1ad

    :try_start_17b
    const-string v0, "Input dispatching timed out"

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1ad

    .line 329
    const-string v0, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Anr info: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-static {}, Lcom/android/server/am/ProcessRecordStub;->get()Lcom/android/server/am/ProcessRecordStub;

    move-result-object v16

    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    const/16 v20, 0x4e20

    const/16 v21, 0x1

    move-object/from16 v17, v0

    move-wide/from16 v18, v4

    invoke-interface/range {v16 .. v21}, Lcom/android/server/am/ProcessRecordStub;->dumpPeriodHistoryMessage(Lcom/android/server/am/ProcessRecord;JIZ)V
    :try_end_1ac
    .catchall {:try_start_17b .. :try_end_1ac} :catchall_96

    goto :goto_1be

    .line 333
    :cond_1ad
    :try_start_1ad
    invoke-static {}, Lcom/android/server/am/ProcessRecordStub;->get()Lcom/android/server/am/ProcessRecordStub;

    move-result-object v16

    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    const/16 v20, 0x4e20

    const/16 v21, 0x0

    move-object/from16 v17, v0

    move-wide/from16 v18, v4

    invoke-interface/range {v16 .. v21}, Lcom/android/server/am/ProcessRecordStub;->dumpPeriodHistoryMessage(Lcom/android/server/am/ProcessRecord;JIZ)V

    .line 340
    :goto_1be
    iget-object v6, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v6
    :try_end_1c1
    .catchall {:try_start_1ad .. :try_end_1c1} :catchall_af2

    :try_start_1c1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 341
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 342
    monitor-exit v6
    :try_end_1c9
    .catchall {:try_start_1c1 .. :try_end_1c9} :catchall_adb

    :try_start_1c9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 345
    const/4 v6, 0x5

    new-array v8, v6, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v0, 0x0

    aput-object v6, v8, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v17, 0x1

    aput-object v6, v8, v17

    iget-object v6, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v0, 0x2

    aput-object v6, v8, v0

    iget-object v6, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 346
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v0, 0x3

    aput-object v6, v8, v0

    const/4 v6, 0x4

    aput-object v11, v8, v6

    .line 345
    const/16 v6, 0x7538

    invoke-static {v6, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 348
    iget-object v6, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;
    :try_end_202
    .catchall {:try_start_1c9 .. :try_end_202} :catchall_af2

    if-eqz v6, :cond_22b

    :try_start_204
    iget-object v6, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    .line 349
    invoke-virtual {v6}, Lcom/android/server/am/TraceErrorLogger;->isAddErrorIdEnabled()Z

    move-result v6

    if-eqz v6, :cond_22b

    .line 350
    iget-object v6, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    invoke-virtual {v6}, Lcom/android/server/am/TraceErrorLogger;->generateErrorId()Ljava/util/UUID;

    move-result-object v6

    .line 351
    .local v6, "errorId":Ljava/util/UUID;
    iget-object v8, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v0, v6}, Lcom/android/server/am/TraceErrorLogger;->addErrorIdToTrace(Ljava/lang/String;Ljava/util/UUID;)V

    .line 352
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    invoke-virtual {v0, v11, v6}, Lcom/android/server/am/TraceErrorLogger;->addSubjectToTrace(Ljava/lang/String;Ljava/util/UUID;)V
    :try_end_228
    .catchall {:try_start_204 .. :try_end_228} :catchall_96

    move-object/from16 v57, v6

    goto :goto_22f

    .line 354
    .end local v6    # "errorId":Ljava/util/UUID;
    :cond_22b
    const/4 v0, 0x0

    move-object v6, v0

    move-object/from16 v57, v6

    .line 361
    .local v57, "errorId":Ljava/util/UUID;
    :goto_22f
    const/16 v0, 0x178

    :try_start_231
    iget-object v6, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;)V

    .line 365
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isSilentAnr()Z

    move-result v0
    :try_end_243
    .catchall {:try_start_231 .. :try_end_243} :catchall_af2

    move v8, v0

    .line 369
    .local v8, "isSilentAnr":Z
    if-nez v8, :cond_2a7

    if-nez p7, :cond_2a7

    .line 370
    move v0, v3

    .line 371
    .local v0, "parentPid":I
    if-eqz v12, :cond_256

    :try_start_24b
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v6

    if-lez v6, :cond_256

    .line 372
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v6

    move v0, v6

    .line 374
    :cond_256
    if-eq v0, v3, :cond_25f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_25f
    .catchall {:try_start_24b .. :try_end_25f} :catchall_96

    .line 376
    :cond_25f
    :try_start_25f
    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I
    :try_end_261
    .catchall {:try_start_25f .. :try_end_261} :catchall_295

    if-eq v6, v3, :cond_270

    :try_start_263
    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v6, v0, :cond_270

    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_270
    .catchall {:try_start_263 .. :try_end_270} :catchall_96

    .line 378
    :cond_270
    move v6, v0

    .line 379
    .local v6, "ppid":I
    move/from16 v16, v0

    .end local v0    # "parentPid":I
    .local v16, "parentPid":I
    :try_start_273
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;
    :try_end_277
    .catchall {:try_start_273 .. :try_end_277} :catchall_295

    move-wide/from16 v18, v4

    .end local v4    # "anrTime":J
    .local v18, "anrTime":J
    :try_start_279
    new-instance v4, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3, v6, v10, v9}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda1;-><init>(IILjava/util/ArrayList;Landroid/util/SparseArray;)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V
    :try_end_282
    .catchall {:try_start_279 .. :try_end_282} :catchall_283

    goto :goto_2a9

    .line 399
    .end local v6    # "ppid":I
    .end local v8    # "isSilentAnr":Z
    .end local v16    # "parentPid":I
    .end local v57    # "errorId":Ljava/util/UUID;
    :catchall_283
    move-exception v0

    move/from16 v20, v3

    move-object/from16 v61, v7

    move-object/from16 v72, v9

    move-object/from16 v60, v10

    move-object v4, v11

    move-object v9, v14

    move-object v7, v15

    move-wide/from16 v52, v18

    move/from16 v10, p5

    goto/16 :goto_b02

    .end local v18    # "anrTime":J
    .restart local v4    # "anrTime":J
    :catchall_295
    move-exception v0

    move/from16 v20, v3

    move-wide/from16 v52, v4

    move-object/from16 v61, v7

    move-object/from16 v72, v9

    move-object/from16 v60, v10

    move-object v4, v11

    move-object v9, v14

    move-object v7, v15

    move/from16 v10, p5

    .end local v4    # "anrTime":J
    .restart local v18    # "anrTime":J
    goto/16 :goto_b02

    .line 369
    .end local v18    # "anrTime":J
    .restart local v4    # "anrTime":J
    .restart local v8    # "isSilentAnr":Z
    .restart local v57    # "errorId":Ljava/util/UUID;
    :cond_2a7
    move-wide/from16 v18, v4

    .line 399
    .end local v4    # "anrTime":J
    .restart local v18    # "anrTime":J
    :goto_2a9
    :try_start_2a9
    monitor-exit v2
    :try_end_2aa
    .catchall {:try_start_2a9 .. :try_end_2aa} :catchall_aca

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 403
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 404
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getProcessClassEnum()I

    move-result v2

    iget-object v4, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 403
    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/criticalevents/CriticalEventLog;->logLinesForTraceFile(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v58

    .line 405
    .local v58, "criticalEventLog":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v2

    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getProcessClassEnum()I

    move-result v4

    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v6, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    move v12, v3

    .end local v3    # "pid":I
    .local v12, "pid":I
    move-object/from16 v3, p6

    move-wide/from16 v59, v18

    .end local v18    # "anrTime":J
    .local v59, "anrTime":J
    move-object/from16 v16, v9

    move/from16 v9, v17

    .end local v9    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .local v16, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    move-object/from16 v61, v7

    .end local v7    # "anrInfo":Lcom/android/server/am/ScoutAnrInfo;
    .local v61, "anrInfo":Lcom/android/server/am/ScoutAnrInfo;
    move v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/criticalevents/CriticalEventLog;->logAnr(Ljava/lang/String;ILjava/lang/String;II)V

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v0

    .line 410
    .local v7, "info":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 411
    const-string v0, "ANR in "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    if-eqz v15, :cond_310

    .line 413
    const-string v0, " ("

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    :cond_310
    const-string v0, "\n"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    const-string v0, "PID: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    if-eqz v11, :cond_335

    .line 418
    const-string v0, "Reason: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    :cond_335
    if-eqz v13, :cond_34c

    .line 421
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34c

    .line 422
    const-string v0, "Parent: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    :cond_34c
    if-eqz v57, :cond_361

    .line 425
    const-string v0, "ErrorId: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {v57 .. v57}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    :cond_361
    const-string v0, "Frozen: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, v14}, Lcom/android/server/wm/ActivityTaskManagerService;->getAnrController(Landroid/content/pm/ApplicationInfo;)Landroid/app/AnrController;

    move-result-object v6

    .line 434
    .local v6, "anrController":Landroid/app/AnrController;
    const-wide/16 v2, 0x0

    .line 435
    .local v2, "anrDialogDelayMs":J
    if-eqz v6, :cond_3b6

    .line 436
    iget-object v0, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 437
    .local v0, "packageName":Ljava/lang/String;
    iget v4, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 438
    .local v4, "uid":I
    invoke-interface {v6, v0, v4}, Landroid/app/AnrController;->getAnrDelayMillis(Ljava/lang/String;I)J

    move-result-wide v2

    .line 441
    invoke-interface {v6, v0, v4}, Landroid/app/AnrController;->onAnrDelayStarted(Ljava/lang/String;I)V

    .line 442
    const-string v5, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v4

    .end local v4    # "uid":I
    .local v17, "uid":I
    const-string v4, "ANR delay of "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v9, "ms started for "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v4, v2

    goto :goto_3b7

    .line 435
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v17    # "uid":I
    :cond_3b6
    move-wide v4, v2

    .line 445
    .end local v2    # "anrDialogDelayMs":J
    .local v4, "anrDialogDelayMs":J
    :goto_3b7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v0

    .line 446
    .local v9, "report":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/server/MemoryPressureUtil;->currentPsiState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    move-object v3, v0

    .line 448
    .local v3, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    const/16 v17, 0x0

    .line 449
    .local v17, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v1, v8}, Lcom/android/server/am/ProcessErrorStateRecord;->isSmartTraceEnabled(Z)Z

    move-result v62

    .line 451
    .local v62, "smTraceEnabled":Z
    iget-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v2

    :try_start_3d4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isDefered()Z

    move-result v0

    move/from16 v63, v0

    .line 453
    .local v63, "isDefered":Z
    monitor-exit v2
    :try_end_3de
    .catchall {:try_start_3d4 .. :try_end_3de} :catchall_aa8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 455
    const/4 v0, 0x0

    .line 456
    .local v0, "nativeProc":[Ljava/lang/String;
    if-nez v8, :cond_407

    if-eqz p7, :cond_3e7

    goto :goto_407

    .line 471
    :cond_3e7
    if-eqz v62, :cond_3f8

    invoke-static {}, Lcom/android/server/am/trace/SmartTraceUtils;->isDumpPredefinedPidsEnabled()Z

    move-result v18

    if-eqz v18, :cond_3f0

    goto :goto_3f8

    :cond_3f0
    move-object/from16 v64, v0

    move-object/from16 v20, v3

    move-wide/from16 v26, v4

    goto/16 :goto_470

    .line 472
    :cond_3f8
    :goto_3f8
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    invoke-static {}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v64, v0

    move-object/from16 v20, v3

    move-wide/from16 v26, v4

    goto/16 :goto_470

    .line 457
    :cond_407
    :goto_407
    const/16 v18, 0x0

    move/from16 v2, v18

    .local v2, "i":I
    :goto_40b
    move-object/from16 v18, v0

    .end local v0    # "nativeProc":[Ljava/lang/String;
    .local v18, "nativeProc":[Ljava/lang/String;
    sget-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    array-length v0, v0

    if-ge v2, v0, :cond_436

    .line 458
    sget-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    aget-object v0, v0, v2

    move-object/from16 v20, v3

    .end local v3    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .local v20, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42f

    .line 459
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/16 v21, 0x0

    aput-object v0, v3, v21

    move-object v0, v3

    .line 460
    .end local v18    # "nativeProc":[Ljava/lang/String;
    .restart local v0    # "nativeProc":[Ljava/lang/String;
    goto :goto_43a

    .line 457
    .end local v0    # "nativeProc":[Ljava/lang/String;
    .restart local v18    # "nativeProc":[Ljava/lang/String;
    :cond_42f
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v18

    move-object/from16 v3, v20

    goto :goto_40b

    .end local v20    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .restart local v3    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    :cond_436
    move-object/from16 v20, v3

    .end local v3    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .restart local v20    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    move-object/from16 v0, v18

    .line 463
    .end local v2    # "i":I
    .end local v18    # "nativeProc":[Ljava/lang/String;
    .restart local v0    # "nativeProc":[Ljava/lang/String;
    :goto_43a
    if-nez v0, :cond_43e

    const/4 v2, 0x0

    goto :goto_442

    :cond_43e
    invoke-static {v0}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v2

    .line 464
    .local v2, "pids":[I
    :goto_442
    if-eqz v2, :cond_468

    .line 465
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v18, v0

    .end local v0    # "nativeProc":[Ljava/lang/String;
    .restart local v18    # "nativeProc":[Ljava/lang/String;
    array-length v0, v2

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v3

    .line 466
    .end local v17    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v0, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v3, v2

    move-wide/from16 v26, v4

    const/4 v4, 0x0

    .end local v4    # "anrDialogDelayMs":J
    .local v26, "anrDialogDelayMs":J
    :goto_451
    if-ge v4, v3, :cond_463

    aget v5, v2, v4

    .line 467
    .local v5, "i":I
    move-object/from16 v21, v2

    .end local v2    # "pids":[I
    .local v21, "pids":[I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    .end local v5    # "i":I
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v21

    goto :goto_451

    .end local v21    # "pids":[I
    .restart local v2    # "pids":[I
    :cond_463
    move-object/from16 v21, v2

    .end local v2    # "pids":[I
    .restart local v21    # "pids":[I
    move-object/from16 v17, v0

    goto :goto_46e

    .line 464
    .end local v18    # "nativeProc":[Ljava/lang/String;
    .end local v21    # "pids":[I
    .end local v26    # "anrDialogDelayMs":J
    .local v0, "nativeProc":[Ljava/lang/String;
    .restart local v2    # "pids":[I
    .restart local v4    # "anrDialogDelayMs":J
    .restart local v17    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_468
    move-object/from16 v18, v0

    move-object/from16 v21, v2

    move-wide/from16 v26, v4

    .line 470
    .end local v0    # "nativeProc":[Ljava/lang/String;
    .end local v2    # "pids":[I
    .end local v4    # "anrDialogDelayMs":J
    .restart local v18    # "nativeProc":[Ljava/lang/String;
    .restart local v26    # "anrDialogDelayMs":J
    :goto_46e
    move-object/from16 v64, v18

    .line 476
    .end local v18    # "nativeProc":[Ljava/lang/String;
    .local v64, "nativeProc":[Ljava/lang/String;
    :goto_470
    if-nez v17, :cond_47c

    .line 477
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v0

    move-object/from16 v5, v17

    goto :goto_47e

    .line 476
    :cond_47c
    move-object/from16 v5, v17

    .line 481
    .end local v17    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v5, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_47e
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v0

    .line 482
    .local v4, "binderFirstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v0

    .line 484
    .local v3, "binderNativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/android/server/am/ProcessRecordStub;->get()Lcom/android/server/am/ProcessRecordStub;

    move-result-object v2

    const-string v0, "ActivityManager"

    sget v17, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v13, 0x0

    move-object/from16 v66, v3

    move-object/from16 v65, v20

    .end local v3    # "binderNativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v20    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .local v65, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .local v66, "binderNativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object v3, v0

    move-object/from16 v69, v4

    move-wide/from16 v67, v26

    .end local v4    # "binderFirstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v26    # "anrDialogDelayMs":J
    .local v67, "anrDialogDelayMs":J
    .local v69, "binderFirstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move v4, v12

    move-object/from16 v70, v5

    .end local v5    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v70, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move/from16 v5, v17

    move-object/from16 v71, v6

    .end local v6    # "anrController":Landroid/app/AnrController;
    .local v71, "anrController":Landroid/app/AnrController;
    move-object/from16 v6, p6

    move-object v13, v7

    .end local v7    # "info":Ljava/lang/StringBuilder;
    .local v13, "info":Ljava/lang/StringBuilder;
    move-object v7, v10

    move v14, v8

    .end local v8    # "isSilentAnr":Z
    .local v14, "isSilentAnr":Z
    move-object/from16 v8, v70

    move-object v15, v9

    move-object/from16 v72, v16

    const/4 v0, 0x1

    .end local v9    # "report":Ljava/lang/StringBuilder;
    .end local v16    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .local v15, "report":Ljava/lang/StringBuilder;
    .local v72, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    move-object/from16 v9, v61

    move-object/from16 v73, v10

    .end local v10    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v73, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v10, v69

    move-object/from16 v74, v13

    move-object v13, v11

    .end local v13    # "info":Ljava/lang/StringBuilder;
    .local v74, "info":Ljava/lang/StringBuilder;
    move-object/from16 v11, v66

    invoke-interface/range {v2 .. v11}, Lcom/android/server/am/ProcessRecordStub;->scoutAppCheckBinderCallChain(Ljava/lang/String;IILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/am/ScoutAnrInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 486
    invoke-static {}, Lcom/android/server/am/ProcessRecordStub;->get()Lcom/android/server/am/ProcessRecordStub;

    move-result-object v2

    const-string v3, "ActivityManager"

    move-object/from16 v10, v61

    .end local v61    # "anrInfo":Lcom/android/server/am/ScoutAnrInfo;
    .local v10, "anrInfo":Lcom/android/server/am/ScoutAnrInfo;
    invoke-interface {v2, v3, v10}, Lcom/android/server/am/ProcessRecordStub;->scoutAppCheckDumpKernelTrace(Ljava/lang/String;Lcom/android/server/am/ScoutAnrInfo;)V

    .line 491
    new-instance v51, Ljava/io/StringWriter;

    invoke-direct/range {v51 .. v51}, Ljava/io/StringWriter;-><init>()V

    .line 493
    .local v51, "tracesFileException":Ljava/io/StringWriter;
    const/4 v2, 0x2

    new-array v11, v2, [J

    .line 499
    .local v11, "offsets":[J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v75

    .line 500
    .local v75, "tracesFileTime":J
    const/4 v2, 0x0

    .line 501
    .local v2, "tracesFile":Ljava/io/File;
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceStub;->get()Lcom/android/server/am/ActivityManagerServiceStub;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerServiceStub;->checkFirstDumpAnrStatus()Z

    move-result v3

    if-eqz v3, :cond_526

    .line 502
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceStub;->get()Lcom/android/server/am/ActivityManagerServiceStub;

    move-result-object v46

    .line 503
    if-eqz v14, :cond_4e8

    const/16 v48, 0x0

    goto :goto_4ea

    :cond_4e8
    move-object/from16 v48, v65

    :goto_4ea
    if-eqz v14, :cond_4ef

    const/16 v49, 0x0

    goto :goto_4f1

    :cond_4ef
    move-object/from16 v49, v72

    :goto_4f1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 504
    invoke-virtual {v10}, Lcom/android/server/am/ScoutAnrInfo;->getBinderTransInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    .line 502
    move-object/from16 v47, v73

    move-object/from16 v50, v70

    move-object/from16 v52, v11

    move-object/from16 v54, v58

    move-object/from16 v55, v69

    move-object/from16 v56, v66

    invoke-virtual/range {v46 .. v56}, Lcom/android/server/am/ActivityManagerServiceStub;->dumpFirstAnr(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/io/StringWriter;[JLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v2

    move-object v5, v2

    move-object/from16 v7, v66

    move-object/from16 v8, v69

    move-object/from16 v6, v70

    move-object/from16 v9, v73

    goto :goto_56e

    .line 507
    :cond_526
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceStub;->get()Lcom/android/server/am/ActivityManagerServiceStub;

    move-result-object v3

    move-object/from16 v7, v66

    move-object/from16 v8, v69

    move-object/from16 v6, v70

    move-object/from16 v9, v73

    .end local v66    # "binderNativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v69    # "binderFirstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v70    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v73    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v6, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v7, "binderNativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v8, "binderFirstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v9, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3, v9, v6, v8, v7}, Lcom/android/server/am/ActivityManagerServiceStub;->addBinderPids2PidsList(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 510
    nop

    .line 511
    if-eqz v14, :cond_53b

    const/16 v17, 0x0

    goto :goto_53d

    :cond_53b
    move-object/from16 v17, v65

    :goto_53d
    if-eqz v14, :cond_542

    const/16 v18, 0x0

    goto :goto_544

    :cond_542
    move-object/from16 v18, v72

    :goto_544
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 512
    invoke-virtual {v10}, Lcom/android/server/am/ScoutAnrInfo;->getBinderTransInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 510
    move-object/from16 v16, v9

    move-object/from16 v19, v6

    move-object/from16 v20, v51

    move-object/from16 v21, v11

    move-object/from16 v23, v58

    invoke-static/range {v16 .. v23}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/io/StringWriter;[JLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    move-object v5, v2

    .line 515
    .end local v2    # "tracesFile":Ljava/io/File;
    .local v5, "tracesFile":Ljava/io/File;
    :goto_56e
    const-string v2, "FDAoptimizationImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the time of dump tracesFile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    sub-long v0, v16, v75

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long v47, v0, v2

    .line 521
    .local v47, "dueTime":J
    if-eqz v62, :cond_5d9

    if-eqz v5, :cond_5d9

    .line 522
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 523
    .local v0, "time":J
    invoke-static {v12, v9, v6, v5}, Lcom/android/server/am/trace/SmartTraceUtils;->dumpStackTraces(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/io/File;)V

    .line 524
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, p0

    move-object/from16 v16, v5

    .end local v5    # "tracesFile":Ljava/io/File;
    .local v16, "tracesFile":Ljava/io/File;
    iget-object v5, v4, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " hit anr, dumpStackTraces cost "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 525
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    move-object/from16 v70, v6

    .end local v6    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v70    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sub-long v5, v17, v0

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "  ms"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 524
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5df

    .line 521
    .end local v0    # "time":J
    .end local v16    # "tracesFile":Ljava/io/File;
    .end local v70    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v5    # "tracesFile":Ljava/io/File;
    .restart local v6    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5d9
    move-object/from16 v4, p0

    move-object/from16 v16, v5

    move-object/from16 v70, v6

    .line 528
    .end local v5    # "tracesFile":Ljava/io/File;
    .end local v6    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v16    # "tracesFile":Ljava/io/File;
    .restart local v70    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_5df
    invoke-direct {v4, v14}, Lcom/android/server/am/ProcessErrorStateRecord;->isPerfettoDumpEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_5ea

    if-nez v63, :cond_5ea

    .line 529
    invoke-static {}, Lcom/android/server/am/trace/SmartTraceUtils;->traceStart()Z

    .line 532
    :cond_5ea
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isMonitorCpuUsage()Z

    move-result v0

    if-eqz v0, :cond_60b

    .line 533
    iget-object v0, v4, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 534
    iget-object v0, v4, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    move-wide/from16 v5, v59

    .end local v59    # "anrTime":J
    .local v5, "anrTime":J
    invoke-virtual {v0, v15, v5, v6}, Lcom/android/server/am/AppProfiler;->printCurrentCpuState(Ljava/lang/StringBuilder;J)V

    .line 535
    invoke-virtual/range {v65 .. v65}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v74

    .end local v74    # "info":Ljava/lang/StringBuilder;
    .local v1, "info":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_60f

    .line 532
    .end local v1    # "info":Ljava/lang/StringBuilder;
    .end local v5    # "anrTime":J
    .restart local v59    # "anrTime":J
    .restart local v74    # "info":Ljava/lang/StringBuilder;
    :cond_60b
    move-wide/from16 v5, v59

    move-object/from16 v1, v74

    .line 538
    .end local v59    # "anrTime":J
    .end local v74    # "info":Ljava/lang/StringBuilder;
    .restart local v1    # "info":Ljava/lang/StringBuilder;
    .restart local v5    # "anrTime":J
    :goto_60f
    invoke-virtual/range {v51 .. v51}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    .line 540
    move-object/from16 v3, v65

    .end local v65    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .local v3, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    invoke-virtual {v3, v5, v6}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    invoke-direct {v4, v14}, Lcom/android/server/am/ProcessErrorStateRecord;->shouldDeferAppNotResponding(Z)Z

    move-result v0

    if-eqz v0, :cond_708

    .line 542
    if-nez v63, :cond_6bf

    .line 543
    const-string v0, "ActivityManager"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 545
    .local v17, "now":J
    const-wide/16 v19, 0x0

    .line 546
    .local v19, "delay":J
    cmp-long v0, v47, v17

    if-gez v0, :cond_641

    .line 547
    const-wide/16 v19, 0x7d0

    move/from16 v49, v14

    move-wide/from16 v13, v19

    goto :goto_647

    .line 549
    :cond_641
    sub-long v19, v47, v17

    move/from16 v49, v14

    move-wide/from16 v13, v19

    .line 551
    .end local v14    # "isSilentAnr":Z
    .end local v19    # "delay":J
    .local v13, "delay":J
    .local v49, "isSilentAnr":Z
    :goto_647
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v65, v3

    .end local v3    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .restart local v65    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    const-string v3, "Defer to handle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v4, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ANR, delay "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v0, v4, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mAnrHelper:Lcom/android/server/am/AnrHelper;

    iget-object v3, v4, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v50, v65

    .end local v65    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .local v50, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    move-object/from16 v27, v15

    move-object v15, v4

    .end local v15    # "report":Ljava/lang/StringBuilder;
    .local v27, "report":Ljava/lang/StringBuilder;
    move-object/from16 v4, p1

    move-wide/from16 v52, v5

    move-object/from16 v54, v16

    .end local v5    # "anrTime":J
    .end local v16    # "tracesFile":Ljava/io/File;
    .local v52, "anrTime":J
    .local v54, "tracesFile":Ljava/io/File;
    move-object/from16 v5, p2

    move-object/from16 v55, v70

    .end local v70    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v55, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v6, p3

    move-object/from16 v56, v7

    .end local v7    # "binderNativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v56, "binderNativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v7, p4

    move-object/from16 v59, v8

    .end local v8    # "binderFirstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v59, "binderFirstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move/from16 v8, p5

    move-object/from16 v60, v9

    .end local v9    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v60, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v9, p6

    move-object/from16 v61, v10

    move-object/from16 v65, v11

    .end local v10    # "anrInfo":Lcom/android/server/am/ScoutAnrInfo;
    .end local v11    # "offsets":[J
    .restart local v61    # "anrInfo":Lcom/android/server/am/ScoutAnrInfo;
    .local v65, "offsets":[J
    move-wide v10, v13

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/am/AnrHelper;->deferAppNotResponding(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLjava/lang/String;J)V

    .line 556
    iget-object v2, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v2

    :try_start_6a5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 557
    const/4 v0, 0x1

    invoke-virtual {v15, v0}, Lcom/android/server/am/ProcessErrorStateRecord;->setDefered(Z)V

    .line 558
    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 559
    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotRespondingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V

    .line 560
    monitor-exit v2
    :try_end_6b5
    .catchall {:try_start_6a5 .. :try_end_6b5} :catchall_6b9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 561
    return-void

    .line 560
    :catchall_6b9
    move-exception v0

    :try_start_6ba
    monitor-exit v2
    :try_end_6bb
    .catchall {:try_start_6ba .. :try_end_6bb} :catchall_6b9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    .line 563
    .end local v13    # "delay":J
    .end local v17    # "now":J
    .end local v27    # "report":Ljava/lang/StringBuilder;
    .end local v49    # "isSilentAnr":Z
    .end local v50    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .end local v52    # "anrTime":J
    .end local v54    # "tracesFile":Ljava/io/File;
    .end local v55    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v56    # "binderNativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v59    # "binderFirstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v60    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v61    # "anrInfo":Lcom/android/server/am/ScoutAnrInfo;
    .end local v65    # "offsets":[J
    .restart local v3    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .restart local v5    # "anrTime":J
    .restart local v7    # "binderNativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v8    # "binderFirstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v9    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v10    # "anrInfo":Lcom/android/server/am/ScoutAnrInfo;
    .restart local v11    # "offsets":[J
    .restart local v14    # "isSilentAnr":Z
    .restart local v15    # "report":Ljava/lang/StringBuilder;
    .restart local v16    # "tracesFile":Ljava/io/File;
    .restart local v70    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_6bf
    move-object/from16 v50, v3

    move-wide/from16 v52, v5

    move-object/from16 v56, v7

    move-object/from16 v59, v8

    move-object/from16 v60, v9

    move-object/from16 v61, v10

    move-object/from16 v65, v11

    move/from16 v49, v14

    move-object/from16 v27, v15

    move-object/from16 v54, v16

    move-object/from16 v55, v70

    const/4 v0, 0x0

    move-object v15, v4

    .end local v3    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .end local v5    # "anrTime":J
    .end local v7    # "binderNativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "binderFirstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10    # "anrInfo":Lcom/android/server/am/ScoutAnrInfo;
    .end local v11    # "offsets":[J
    .end local v14    # "isSilentAnr":Z
    .end local v15    # "report":Ljava/lang/StringBuilder;
    .end local v16    # "tracesFile":Ljava/io/File;
    .end local v70    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v27    # "report":Ljava/lang/StringBuilder;
    .restart local v49    # "isSilentAnr":Z
    .restart local v50    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .restart local v52    # "anrTime":J
    .restart local v54    # "tracesFile":Ljava/io/File;
    .restart local v55    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v56    # "binderNativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v59    # "binderFirstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v60    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v61    # "anrInfo":Lcom/android/server/am/ScoutAnrInfo;
    .restart local v65    # "offsets":[J
    iget-object v2, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v2

    :try_start_6da
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 564
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Lcom/android/server/am/ProcessErrorStateRecord;->setDefered(Z)V

    .line 565
    monitor-exit v2
    :try_end_6e2
    .catchall {:try_start_6da .. :try_end_6e2} :catchall_702

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 566
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has been defered, handle anr right now  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_729

    .line 565
    :catchall_702
    move-exception v0

    :try_start_703
    monitor-exit v2
    :try_end_704
    .catchall {:try_start_703 .. :try_end_704} :catchall_702

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    .line 569
    .end local v27    # "report":Ljava/lang/StringBuilder;
    .end local v49    # "isSilentAnr":Z
    .end local v50    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .end local v52    # "anrTime":J
    .end local v54    # "tracesFile":Ljava/io/File;
    .end local v55    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v56    # "binderNativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v59    # "binderFirstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v60    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v61    # "anrInfo":Lcom/android/server/am/ScoutAnrInfo;
    .end local v65    # "offsets":[J
    .restart local v3    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .restart local v5    # "anrTime":J
    .restart local v7    # "binderNativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v8    # "binderFirstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v9    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v10    # "anrInfo":Lcom/android/server/am/ScoutAnrInfo;
    .restart local v11    # "offsets":[J
    .restart local v14    # "isSilentAnr":Z
    .restart local v15    # "report":Ljava/lang/StringBuilder;
    .restart local v16    # "tracesFile":Ljava/io/File;
    .restart local v70    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_708
    move-object/from16 v50, v3

    move-wide/from16 v52, v5

    move-object/from16 v56, v7

    move-object/from16 v59, v8

    move-object/from16 v60, v9

    move-object/from16 v61, v10

    move-object/from16 v65, v11

    move/from16 v49, v14

    move-object/from16 v27, v15

    move-object/from16 v54, v16

    move-object/from16 v55, v70

    const/4 v0, 0x0

    move-object v15, v4

    .end local v3    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .end local v5    # "anrTime":J
    .end local v7    # "binderNativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "binderFirstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10    # "anrInfo":Lcom/android/server/am/ScoutAnrInfo;
    .end local v11    # "offsets":[J
    .end local v14    # "isSilentAnr":Z
    .end local v15    # "report":Ljava/lang/StringBuilder;
    .end local v16    # "tracesFile":Ljava/io/File;
    .end local v70    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v27    # "report":Ljava/lang/StringBuilder;
    .restart local v49    # "isSilentAnr":Z
    .restart local v50    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .restart local v52    # "anrTime":J
    .restart local v54    # "tracesFile":Ljava/io/File;
    .restart local v55    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v56    # "binderNativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v59    # "binderFirstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v60    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v61    # "anrInfo":Lcom/android/server/am/ScoutAnrInfo;
    .restart local v65    # "offsets":[J
    const-string v2, "ActivityManager"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :goto_729
    if-nez v54, :cond_731

    .line 574
    const/4 v2, 0x3

    invoke-static {v12, v2}, Landroid/os/Process;->sendSignal(II)V

    const/4 v4, 0x0

    goto :goto_75d

    .line 575
    :cond_731
    const/4 v2, 0x1

    aget-wide v3, v65, v2

    const-wide/16 v5, 0x0

    cmp-long v2, v3, v5

    if-lez v2, :cond_75c

    .line 577
    iget-object v2, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v3, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v4, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 578
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v19

    const/4 v4, 0x0

    aget-wide v21, v65, v4

    const/4 v5, 0x1

    aget-wide v23, v65, v5

    .line 577
    move-object/from16 v16, v2

    move/from16 v17, v12

    move/from16 v18, v3

    move-object/from16 v20, v54

    invoke-virtual/range {v16 .. v24}, Lcom/android/server/am/AppExitInfoTracker;->scheduleLogAnrTrace(II[Ljava/lang/String;Ljava/io/File;JJ)V

    goto :goto_75d

    .line 575
    :cond_75c
    const/4 v4, 0x0

    .line 582
    :goto_75d
    const/high16 v2, 0x3f800000    # 1.0f

    .line 583
    .local v2, "loadingProgress":F
    const/4 v3, 0x0

    .line 584
    .local v3, "incrementalMetrics":Landroid/os/incremental/IncrementalMetrics;
    iget-object v5, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v14

    .line 585
    .local v14, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    iget-object v5, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    const/high16 v6, 0x42c80000    # 100.0f

    if-eqz v5, :cond_7ef

    iget-object v5, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_7ef

    if-eqz v14, :cond_7ef

    .line 586
    iget-object v5, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v7, 0x3e8

    iget-object v8, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v8, v8, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 587
    invoke-virtual {v14, v5, v7, v8}, Landroid/content/pm/PackageManagerInternal;->getIncrementalStatesInfo(Ljava/lang/String;II)Landroid/content/pm/IncrementalStatesInfo;

    move-result-object v5

    .line 589
    .local v5, "incrementalStatesInfo":Landroid/content/pm/IncrementalStatesInfo;
    if-eqz v5, :cond_78e

    .line 590
    invoke-virtual {v5}, Landroid/content/pm/IncrementalStatesInfo;->getProgress()F

    move-result v2

    .line 592
    :cond_78e
    iget-object v7, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v7

    .line 593
    .local v7, "codePath":Ljava/lang/String;
    if-eqz v7, :cond_7ef

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7ef

    .line 594
    invoke-static {v7}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7ef

    .line 596
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "App ANR on incremental package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " which is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    mul-float v10, v2, v6

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "% loaded."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const-string/jumbo v8, "incremental"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    .line 600
    .local v8, "incrementalService":Landroid/os/IBinder;
    if-eqz v8, :cond_7ef

    .line 601
    new-instance v9, Landroid/os/incremental/IncrementalManager;

    .line 602
    invoke-static {v8}, Landroid/os/incremental/IIncrementalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/incremental/IIncrementalService;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/os/incremental/IncrementalManager;-><init>(Landroid/os/incremental/IIncrementalService;)V

    .line 603
    .local v9, "incrementalManager":Landroid/os/incremental/IncrementalManager;
    invoke-virtual {v9, v7}, Landroid/os/incremental/IncrementalManager;->getMetrics(Ljava/lang/String;)Landroid/os/incremental/IncrementalMetrics;

    move-result-object v3

    move v13, v2

    move-object/from16 v66, v3

    goto :goto_7f2

    .line 607
    .end local v5    # "incrementalStatesInfo":Landroid/content/pm/IncrementalStatesInfo;
    .end local v7    # "codePath":Ljava/lang/String;
    .end local v8    # "incrementalService":Landroid/os/IBinder;
    .end local v9    # "incrementalManager":Landroid/os/incremental/IncrementalManager;
    :cond_7ef
    move v13, v2

    move-object/from16 v66, v3

    .end local v2    # "loadingProgress":F
    .end local v3    # "incrementalMetrics":Landroid/os/incremental/IncrementalMetrics;
    .local v13, "loadingProgress":F
    .local v66, "incrementalMetrics":Landroid/os/incremental/IncrementalMetrics;
    :goto_7f2
    if-eqz v66, :cond_805

    .line 609
    const-string v2, "Package is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-float/2addr v6, v13

    float-to-int v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "% loaded.\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    :cond_805
    const/16 v16, 0x4f

    iget-object v2, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 613
    move-object/from16 v69, v27

    .end local v27    # "report":Ljava/lang/StringBuilder;
    .local v69, "report":Ljava/lang/StringBuilder;
    if-nez p1, :cond_819

    const-string/jumbo v5, "unknown"

    move-object/from16 v19, v5

    goto :goto_81b

    :cond_819
    move-object/from16 v19, p1

    .line 615
    :goto_81b
    iget-object v5, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_831

    iget-object v5, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v5

    if-eqz v5, :cond_82e

    .line 616
    const/16 v21, 0x2

    goto :goto_833

    .line 617
    :cond_82e
    const/16 v21, 0x1

    goto :goto_833

    .line 618
    :cond_831
    move/from16 v21, v4

    .line 619
    :goto_833
    iget-object v5, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v5

    if-eqz v5, :cond_83e

    .line 620
    const/16 v22, 0x2

    goto :goto_840

    .line 621
    :cond_83e
    const/16 v22, 0x1

    :goto_840
    iget-object v5, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 622
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getProcessClassEnum()I

    move-result v23

    .line 623
    iget-object v5, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_853

    iget-object v5, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_855

    :cond_853
    const-string v5, ""

    :goto_855
    move-object/from16 v24, v5

    if-eqz v66, :cond_85c

    const/16 v25, 0x1

    goto :goto_85e

    :cond_85c
    move/from16 v25, v4

    .line 625
    :goto_85e
    const-wide/16 v5, -0x1

    if-eqz v66, :cond_869

    invoke-virtual/range {v66 .. v66}, Landroid/os/incremental/IncrementalMetrics;->getMillisSinceOldestPendingRead()J

    move-result-wide v7

    move-wide/from16 v27, v7

    goto :goto_86b

    .line 626
    :cond_869
    move-wide/from16 v27, v5

    .line 627
    :goto_86b
    const/4 v7, -0x1

    if-eqz v66, :cond_875

    invoke-virtual/range {v66 .. v66}, Landroid/os/incremental/IncrementalMetrics;->getStorageHealthStatusCode()I

    move-result v8

    move/from16 v29, v8

    goto :goto_877

    .line 628
    :cond_875
    move/from16 v29, v7

    .line 629
    :goto_877
    if-eqz v66, :cond_880

    invoke-virtual/range {v66 .. v66}, Landroid/os/incremental/IncrementalMetrics;->getDataLoaderStatusCode()I

    move-result v8

    move/from16 v30, v8

    goto :goto_882

    .line 630
    :cond_880
    move/from16 v30, v7

    :goto_882
    if-eqz v66, :cond_88d

    .line 631
    invoke-virtual/range {v66 .. v66}, Landroid/os/incremental/IncrementalMetrics;->getReadLogsEnabled()Z

    move-result v8

    if-eqz v8, :cond_88d

    const/16 v31, 0x1

    goto :goto_88f

    :cond_88d
    move/from16 v31, v4

    .line 632
    :goto_88f
    if-eqz v66, :cond_898

    invoke-virtual/range {v66 .. v66}, Landroid/os/incremental/IncrementalMetrics;->getMillisSinceLastDataLoaderBind()J

    move-result-wide v8

    move-wide/from16 v32, v8

    goto :goto_89a

    .line 633
    :cond_898
    move-wide/from16 v32, v5

    .line 634
    :goto_89a
    if-eqz v66, :cond_8a3

    invoke-virtual/range {v66 .. v66}, Landroid/os/incremental/IncrementalMetrics;->getDataLoaderBindDelayMillis()J

    move-result-wide v8

    move-wide/from16 v34, v8

    goto :goto_8a5

    .line 635
    :cond_8a3
    move-wide/from16 v34, v5

    .line 636
    :goto_8a5
    if-eqz v66, :cond_8ae

    invoke-virtual/range {v66 .. v66}, Landroid/os/incremental/IncrementalMetrics;->getTotalDelayedReads()I

    move-result v8

    move/from16 v36, v8

    goto :goto_8b0

    .line 637
    :cond_8ae
    move/from16 v36, v7

    .line 638
    :goto_8b0
    if-eqz v66, :cond_8b9

    invoke-virtual/range {v66 .. v66}, Landroid/os/incremental/IncrementalMetrics;->getTotalFailedReads()I

    move-result v8

    move/from16 v37, v8

    goto :goto_8bb

    .line 639
    :cond_8b9
    move/from16 v37, v7

    .line 640
    :goto_8bb
    if-eqz v66, :cond_8c4

    invoke-virtual/range {v66 .. v66}, Landroid/os/incremental/IncrementalMetrics;->getLastReadErrorUid()I

    move-result v7

    move/from16 v38, v7

    goto :goto_8c6

    .line 641
    :cond_8c4
    move/from16 v38, v7

    .line 642
    :goto_8c6
    if-eqz v66, :cond_8cf

    invoke-virtual/range {v66 .. v66}, Landroid/os/incremental/IncrementalMetrics;->getMillisSinceLastReadError()J

    move-result-wide v7

    move-wide/from16 v39, v7

    goto :goto_8d1

    .line 643
    :cond_8cf
    move-wide/from16 v39, v5

    .line 644
    :goto_8d1
    if-eqz v66, :cond_8da

    invoke-virtual/range {v66 .. v66}, Landroid/os/incremental/IncrementalMetrics;->getLastReadErrorNumber()I

    move-result v4

    move/from16 v41, v4

    goto :goto_8dc

    .line 645
    :cond_8da
    move/from16 v41, v4

    .line 646
    :goto_8dc
    if-eqz v66, :cond_8e5

    invoke-virtual/range {v66 .. v66}, Landroid/os/incremental/IncrementalMetrics;->getTotalDelayedReadsDurationMillis()J

    move-result-wide v4

    move-wide/from16 v42, v4

    goto :goto_8e7

    .line 647
    :cond_8e5
    move-wide/from16 v42, v5

    .line 612
    :goto_8e7
    move/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v20, p6

    move/from16 v26, v13

    invoke-static/range {v16 .. v43}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ZFJIIZJJIIIJIJ)V

    .line 648
    move/from16 v20, v12

    move-object/from16 v12, p4

    .end local v12    # "pid":I
    .local v20, "pid":I
    if-eqz v12, :cond_8fd

    .line 649
    iget-object v0, v12, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    goto :goto_8fe

    :cond_8fd
    nop

    :goto_8fe
    move-object v8, v0

    .line 650
    .local v8, "parentPr":Lcom/android/server/am/ProcessRecord;
    iget-object v2, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "anr"

    iget-object v4, v15, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v9, 0x0

    .line 651
    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v0, 0x0

    new-instance v11, Ljava/lang/Float;

    invoke-direct {v11, v13}, Ljava/lang/Float;-><init>(F)V

    .line 650
    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v16, v11

    move-object/from16 v11, v54

    move-object v12, v0

    move-object/from16 v21, v1

    move/from16 v22, v13

    move-object/from16 v1, p6

    .end local v1    # "info":Ljava/lang/StringBuilder;
    .end local v13    # "loadingProgress":F
    .local v21, "info":Ljava/lang/StringBuilder;
    .local v22, "loadingProgress":F
    move-object/from16 v13, v16

    move-object/from16 v24, v14

    move/from16 v23, v49

    .end local v14    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v49    # "isSilentAnr":Z
    .local v23, "isSilentAnr":Z
    .local v24, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    move-object/from16 v14, v66

    move-object v1, v15

    move-object/from16 v15, v57

    invoke-virtual/range {v2 .. v15}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/Float;Landroid/os/incremental/IncrementalMetrics;Ljava/util/UUID;)V

    .line 655
    invoke-static {}, Lcom/android/server/am/ProcessRecordStub;->get()Lcom/android/server/am/ProcessRecordStub;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 656
    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x0

    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 657
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v18

    .line 655
    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move-object/from16 v15, p6

    move-object/from16 v16, v54

    move-object/from16 v19, v61

    invoke-interface/range {v9 .. v19}, Lcom/android/server/am/ProcessRecordStub;->onANR(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Lcom/android/server/am/ScoutAnrInfo;)V

    .line 658
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/ProcessErrorStateRecord;)V

    new-instance v4, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;

    invoke-direct {v4, v1}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ProcessErrorStateRecord;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/WindowProcessController;->appNotResponding(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_96d

    .line 669
    return-void

    .line 672
    :cond_96d
    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_970
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 675
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;
    :try_end_977
    .catchall {:try_start_970 .. :try_end_977} :catchall_a94

    if-eqz v0, :cond_998

    .line 676
    :try_start_979
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v2, v4}, Lcom/android/server/am/BatteryStatsService;->noteProcessAnr(Ljava/lang/String;I)V
    :try_end_988
    .catchall {:try_start_979 .. :try_end_988} :catchall_989

    goto :goto_998

    .line 707
    :catchall_989
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-object/from16 v4, p6

    move-wide/from16 v11, v67

    move-object/from16 v5, v71

    goto/16 :goto_aa1

    .line 679
    :cond_998
    :goto_998
    :try_start_998
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isSilentAnr()Z

    move-result v0
    :try_end_99c
    .catchall {:try_start_998 .. :try_end_99c} :catchall_a94

    const/4 v2, 0x6

    if-eqz v0, :cond_9b4

    :try_start_99f
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isDebugging()Z

    move-result v0

    if-nez v0, :cond_9b4

    .line 680
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    const-string v4, "bg anr"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v2, v5}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IZ)V

    .line 681
    monitor-exit v3
    :try_end_9b0
    .catchall {:try_start_99f .. :try_end_9b0} :catchall_989

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 684
    :cond_9b4
    :try_start_9b4
    invoke-static {}, Lcom/android/server/am/ProcessRecordStub;->get()Lcom/android/server/am/ProcessRecordStub;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-interface {v0, v4}, Lcom/android/server/am/ProcessRecordStub;->skipAppErrorDialog(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0
    :try_end_9be
    .catchall {:try_start_9b4 .. :try_end_9be} :catchall_a94

    if-eqz v0, :cond_9ce

    .line 685
    :try_start_9c0
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v4, "skip anr"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v2, v5}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IZ)V

    .line 686
    monitor-exit v3
    :try_end_9ca
    .catchall {:try_start_9c0 .. :try_end_9ca} :catchall_989

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 690
    :cond_9ce
    :try_start_9ce
    iget-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v2
    :try_end_9d1
    .catchall {:try_start_9ce .. :try_end_9d1} :catchall_a94

    :try_start_9d1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V
    :try_end_9d4
    .catchall {:try_start_9d1 .. :try_end_9d4} :catchall_a80

    .line 692
    nop

    .line 693
    move-object/from16 v4, p6

    if-eqz v4, :cond_9fa

    :try_start_9d9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ANR "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_9ec
    .catchall {:try_start_9d9 .. :try_end_9ec} :catchall_9ed

    goto :goto_9fc

    .line 695
    :catchall_9ed
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-wide/from16 v11, v67

    move-object/from16 v5, v71

    goto/16 :goto_a8d

    .line 693
    :cond_9fa
    :try_start_9fa
    const-string v0, "ANR"

    :goto_9fc
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_a00
    .catchall {:try_start_9fa .. :try_end_a00} :catchall_a78

    .line 692
    move-object/from16 v7, p1

    :try_start_a02
    invoke-direct {v1, v7, v0, v5}, Lcom/android/server/am/ProcessErrorStateRecord;->makeAppNotRespondingLSP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;
    :try_end_a07
    .catchall {:try_start_a02 .. :try_end_a07} :catchall_a76

    move-object/from16 v5, v71

    .end local v71    # "anrController":Landroid/app/AnrController;
    .local v5, "anrController":Landroid/app/AnrController;
    :try_start_a09
    invoke-virtual {v0, v5}, Lcom/android/server/am/ErrorDialogController;->setAnrController(Landroid/app/AnrController;)V

    .line 695
    monitor-exit v2
    :try_end_a0d
    .catchall {:try_start_a09 .. :try_end_a0d} :catchall_a6e

    :try_start_a0d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 699
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_a36

    .line 701
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 702
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    .line 703
    new-instance v2, Lcom/android/server/am/AppNotRespondingDialog$Data;

    iget-object v6, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;
    :try_end_a21
    .catchall {:try_start_a0d .. :try_end_a21} :catchall_a66

    move-object/from16 v9, p2

    move/from16 v10, p5

    :try_start_a25
    invoke-direct {v2, v6, v9, v10}, Lcom/android/server/am/AppNotRespondingDialog$Data;-><init>(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ApplicationInfo;Z)V

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 705
    iget-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;
    :try_end_a2e
    .catchall {:try_start_a25 .. :try_end_a2e} :catchall_a34

    move-wide/from16 v11, v67

    .end local v67    # "anrDialogDelayMs":J
    .local v11, "anrDialogDelayMs":J
    :try_start_a30
    invoke-virtual {v2, v0, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_a3c

    .line 707
    .end local v0    # "msg":Landroid/os/Message;
    .end local v11    # "anrDialogDelayMs":J
    .restart local v67    # "anrDialogDelayMs":J
    :catchall_a34
    move-exception v0

    goto :goto_a6b

    .line 699
    :cond_a36
    move-object/from16 v9, p2

    move/from16 v10, p5

    move-wide/from16 v11, v67

    .line 707
    .end local v67    # "anrDialogDelayMs":J
    .restart local v11    # "anrDialogDelayMs":J
    :goto_a3c
    monitor-exit v3
    :try_end_a3d
    .catchall {:try_start_a30 .. :try_end_a3d} :catchall_aa6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 709
    const-string v0, "FDAoptimizationImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "the time of appNotResponding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    sub-long v13, v13, v44

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    return-void

    .line 707
    .end local v11    # "anrDialogDelayMs":J
    .restart local v67    # "anrDialogDelayMs":J
    :catchall_a66
    move-exception v0

    move-object/from16 v9, p2

    move/from16 v10, p5

    :goto_a6b
    move-wide/from16 v11, v67

    .end local v67    # "anrDialogDelayMs":J
    .restart local v11    # "anrDialogDelayMs":J
    goto :goto_aa1

    .line 695
    .end local v11    # "anrDialogDelayMs":J
    .restart local v67    # "anrDialogDelayMs":J
    :catchall_a6e
    move-exception v0

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-wide/from16 v11, v67

    .end local v67    # "anrDialogDelayMs":J
    .restart local v11    # "anrDialogDelayMs":J
    goto :goto_a8d

    .end local v5    # "anrController":Landroid/app/AnrController;
    .end local v11    # "anrDialogDelayMs":J
    .restart local v67    # "anrDialogDelayMs":J
    .restart local v71    # "anrController":Landroid/app/AnrController;
    :catchall_a76
    move-exception v0

    goto :goto_a7b

    :catchall_a78
    move-exception v0

    move-object/from16 v7, p1

    :goto_a7b
    move-object/from16 v9, p2

    move/from16 v10, p5

    goto :goto_a89

    :catchall_a80
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-object/from16 v4, p6

    :goto_a89
    move-wide/from16 v11, v67

    move-object/from16 v5, v71

    .end local v67    # "anrDialogDelayMs":J
    .end local v71    # "anrController":Landroid/app/AnrController;
    .restart local v5    # "anrController":Landroid/app/AnrController;
    .restart local v11    # "anrDialogDelayMs":J
    :goto_a8d
    :try_start_a8d
    monitor-exit v2
    :try_end_a8e
    .catchall {:try_start_a8d .. :try_end_a8e} :catchall_a92

    :try_start_a8e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .end local v5    # "anrController":Landroid/app/AnrController;
    .end local v8    # "parentPr":Lcom/android/server/am/ProcessRecord;
    .end local v11    # "anrDialogDelayMs":J
    .end local v20    # "pid":I
    .end local v21    # "info":Ljava/lang/StringBuilder;
    .end local v22    # "loadingProgress":F
    .end local v23    # "isSilentAnr":Z
    .end local v24    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v44    # "appNotRespondingStartTime":J
    .end local v47    # "dueTime":J
    .end local v50    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .end local v51    # "tracesFileException":Ljava/io/StringWriter;
    .end local v52    # "anrTime":J
    .end local v54    # "tracesFile":Ljava/io/File;
    .end local v55    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v56    # "binderNativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v57    # "errorId":Ljava/util/UUID;
    .end local v58    # "criticalEventLog":Ljava/lang/String;
    .end local v59    # "binderFirstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v60    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v61    # "anrInfo":Lcom/android/server/am/ScoutAnrInfo;
    .end local v62    # "smTraceEnabled":Z
    .end local v63    # "isDefered":Z
    .end local v64    # "nativeProc":[Ljava/lang/String;
    .end local v65    # "offsets":[J
    .end local v66    # "incrementalMetrics":Landroid/os/incremental/IncrementalMetrics;
    .end local v69    # "report":Ljava/lang/StringBuilder;
    .end local v72    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v75    # "tracesFileTime":J
    .end local p0    # "this":Lcom/android/server/am/ProcessErrorStateRecord;
    .end local p1    # "activityShortComponentName":Ljava/lang/String;
    .end local p2    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .end local p3    # "parentShortComponentName":Ljava/lang/String;
    .end local p4    # "parentProcess":Lcom/android/server/wm/WindowProcessController;
    .end local p5    # "aboveSystem":Z
    .end local p6    # "annotation":Ljava/lang/String;
    .end local p7    # "onlyDumpSelf":Z
    throw v0

    .restart local v5    # "anrController":Landroid/app/AnrController;
    .restart local v8    # "parentPr":Lcom/android/server/am/ProcessRecord;
    .restart local v11    # "anrDialogDelayMs":J
    .restart local v20    # "pid":I
    .restart local v21    # "info":Ljava/lang/StringBuilder;
    .restart local v22    # "loadingProgress":F
    .restart local v23    # "isSilentAnr":Z
    .restart local v24    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .restart local v44    # "appNotRespondingStartTime":J
    .restart local v47    # "dueTime":J
    .restart local v50    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .restart local v51    # "tracesFileException":Ljava/io/StringWriter;
    .restart local v52    # "anrTime":J
    .restart local v54    # "tracesFile":Ljava/io/File;
    .restart local v55    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v56    # "binderNativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v57    # "errorId":Ljava/util/UUID;
    .restart local v58    # "criticalEventLog":Ljava/lang/String;
    .restart local v59    # "binderFirstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v60    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v61    # "anrInfo":Lcom/android/server/am/ScoutAnrInfo;
    .restart local v62    # "smTraceEnabled":Z
    .restart local v63    # "isDefered":Z
    .restart local v64    # "nativeProc":[Ljava/lang/String;
    .restart local v65    # "offsets":[J
    .restart local v66    # "incrementalMetrics":Landroid/os/incremental/IncrementalMetrics;
    .restart local v69    # "report":Ljava/lang/StringBuilder;
    .restart local v72    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v75    # "tracesFileTime":J
    .restart local p0    # "this":Lcom/android/server/am/ProcessErrorStateRecord;
    .restart local p1    # "activityShortComponentName":Ljava/lang/String;
    .restart local p2    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .restart local p3    # "parentShortComponentName":Ljava/lang/String;
    .restart local p4    # "parentProcess":Lcom/android/server/wm/WindowProcessController;
    .restart local p5    # "aboveSystem":Z
    .restart local p6    # "annotation":Ljava/lang/String;
    .restart local p7    # "onlyDumpSelf":Z
    :catchall_a92
    move-exception v0

    goto :goto_a8d

    .line 707
    .end local v5    # "anrController":Landroid/app/AnrController;
    .end local v11    # "anrDialogDelayMs":J
    .restart local v67    # "anrDialogDelayMs":J
    .restart local v71    # "anrController":Landroid/app/AnrController;
    :catchall_a94
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-object/from16 v4, p6

    move-wide/from16 v11, v67

    move-object/from16 v5, v71

    .end local v67    # "anrDialogDelayMs":J
    .end local v71    # "anrController":Landroid/app/AnrController;
    .restart local v5    # "anrController":Landroid/app/AnrController;
    .restart local v11    # "anrDialogDelayMs":J
    :goto_aa1
    monitor-exit v3
    :try_end_aa2
    .catchall {:try_start_a8e .. :try_end_aa2} :catchall_aa6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_aa6
    move-exception v0

    goto :goto_aa1

    .line 453
    .end local v5    # "anrController":Landroid/app/AnrController;
    .end local v11    # "anrDialogDelayMs":J
    .end local v20    # "pid":I
    .end local v21    # "info":Ljava/lang/StringBuilder;
    .end local v22    # "loadingProgress":F
    .end local v23    # "isSilentAnr":Z
    .end local v24    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v47    # "dueTime":J
    .end local v50    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .end local v51    # "tracesFileException":Ljava/io/StringWriter;
    .end local v52    # "anrTime":J
    .end local v54    # "tracesFile":Ljava/io/File;
    .end local v55    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v56    # "binderNativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v60    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v63    # "isDefered":Z
    .end local v64    # "nativeProc":[Ljava/lang/String;
    .end local v65    # "offsets":[J
    .end local v66    # "incrementalMetrics":Landroid/os/incremental/IncrementalMetrics;
    .end local v69    # "report":Ljava/lang/StringBuilder;
    .end local v72    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v75    # "tracesFileTime":J
    .local v3, "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .local v4, "anrDialogDelayMs":J
    .local v6, "anrController":Landroid/app/AnrController;
    .local v7, "info":Ljava/lang/StringBuilder;
    .local v8, "isSilentAnr":Z
    .local v9, "report":Ljava/lang/StringBuilder;
    .local v10, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v12    # "pid":I
    .local v16, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .local v17, "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v59, "anrTime":J
    :catchall_aa8
    move-exception v0

    move-object/from16 v50, v3

    move-object/from16 v21, v7

    move/from16 v23, v8

    move-object/from16 v69, v9

    move/from16 v20, v12

    move-object v9, v14

    move-object v7, v15

    move-object/from16 v72, v16

    move-wide/from16 v52, v59

    move-object/from16 v60, v10

    move/from16 v10, p5

    move-wide/from16 v77, v4

    move-object v5, v6

    move-object v4, v11

    move-wide/from16 v11, v77

    .end local v3    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .end local v4    # "anrDialogDelayMs":J
    .end local v6    # "anrController":Landroid/app/AnrController;
    .end local v7    # "info":Ljava/lang/StringBuilder;
    .end local v8    # "isSilentAnr":Z
    .end local v9    # "report":Ljava/lang/StringBuilder;
    .end local v10    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12    # "pid":I
    .end local v16    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v59    # "anrTime":J
    .restart local v5    # "anrController":Landroid/app/AnrController;
    .restart local v11    # "anrDialogDelayMs":J
    .restart local v20    # "pid":I
    .restart local v21    # "info":Ljava/lang/StringBuilder;
    .restart local v23    # "isSilentAnr":Z
    .restart local v50    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .restart local v52    # "anrTime":J
    .restart local v60    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v69    # "report":Ljava/lang/StringBuilder;
    .restart local v72    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    :goto_ac3
    :try_start_ac3
    monitor-exit v2
    :try_end_ac4
    .catchall {:try_start_ac3 .. :try_end_ac4} :catchall_ac8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :catchall_ac8
    move-exception v0

    goto :goto_ac3

    .line 399
    .end local v5    # "anrController":Landroid/app/AnrController;
    .end local v11    # "anrDialogDelayMs":J
    .end local v17    # "nativePids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v20    # "pid":I
    .end local v21    # "info":Ljava/lang/StringBuilder;
    .end local v23    # "isSilentAnr":Z
    .end local v50    # "processCpuTracker":Lcom/android/internal/os/ProcessCpuTracker;
    .end local v52    # "anrTime":J
    .end local v57    # "errorId":Ljava/util/UUID;
    .end local v58    # "criticalEventLog":Ljava/lang/String;
    .end local v60    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v61    # "anrInfo":Lcom/android/server/am/ScoutAnrInfo;
    .end local v62    # "smTraceEnabled":Z
    .end local v69    # "report":Ljava/lang/StringBuilder;
    .end local v72    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .local v3, "pid":I
    .local v7, "anrInfo":Lcom/android/server/am/ScoutAnrInfo;
    .local v9, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v10    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v18, "anrTime":J
    :catchall_aca
    move-exception v0

    move/from16 v20, v3

    move-object/from16 v61, v7

    move-object/from16 v72, v9

    move-object/from16 v60, v10

    move-object v4, v11

    move-object v9, v14

    move-object v7, v15

    move-wide/from16 v52, v18

    move/from16 v10, p5

    .end local v3    # "pid":I
    .end local v7    # "anrInfo":Lcom/android/server/am/ScoutAnrInfo;
    .end local v9    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v10    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18    # "anrTime":J
    .restart local v20    # "pid":I
    .restart local v52    # "anrTime":J
    .restart local v60    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v61    # "anrInfo":Lcom/android/server/am/ScoutAnrInfo;
    .restart local v72    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    goto :goto_b02

    .line 342
    .end local v20    # "pid":I
    .end local v52    # "anrTime":J
    .end local v60    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v61    # "anrInfo":Lcom/android/server/am/ScoutAnrInfo;
    .end local v72    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v3    # "pid":I
    .local v4, "anrTime":J
    .restart local v7    # "anrInfo":Lcom/android/server/am/ScoutAnrInfo;
    .restart local v9    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v10    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_adb
    move-exception v0

    move/from16 v20, v3

    move-wide/from16 v52, v4

    move-object/from16 v61, v7

    move-object/from16 v72, v9

    move-object/from16 v60, v10

    move-object v4, v11

    move-object v9, v14

    move-object v7, v15

    move/from16 v10, p5

    .end local v3    # "pid":I
    .end local v4    # "anrTime":J
    .end local v7    # "anrInfo":Lcom/android/server/am/ScoutAnrInfo;
    .end local v9    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v10    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v20    # "pid":I
    .restart local v52    # "anrTime":J
    .restart local v60    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v61    # "anrInfo":Lcom/android/server/am/ScoutAnrInfo;
    .restart local v72    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    :goto_aeb
    :try_start_aeb
    monitor-exit v6
    :try_end_aec
    .catchall {:try_start_aeb .. :try_end_aec} :catchall_af0

    :try_start_aec
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .end local v20    # "pid":I
    .end local v44    # "appNotRespondingStartTime":J
    .end local v52    # "anrTime":J
    .end local v60    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v61    # "anrInfo":Lcom/android/server/am/ScoutAnrInfo;
    .end local v72    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local p0    # "this":Lcom/android/server/am/ProcessErrorStateRecord;
    .end local p1    # "activityShortComponentName":Ljava/lang/String;
    .end local p2    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .end local p3    # "parentShortComponentName":Ljava/lang/String;
    .end local p4    # "parentProcess":Lcom/android/server/wm/WindowProcessController;
    .end local p5    # "aboveSystem":Z
    .end local p6    # "annotation":Ljava/lang/String;
    .end local p7    # "onlyDumpSelf":Z
    throw v0

    .restart local v20    # "pid":I
    .restart local v44    # "appNotRespondingStartTime":J
    .restart local v52    # "anrTime":J
    .restart local v60    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v61    # "anrInfo":Lcom/android/server/am/ScoutAnrInfo;
    .restart local v72    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local p0    # "this":Lcom/android/server/am/ProcessErrorStateRecord;
    .restart local p1    # "activityShortComponentName":Ljava/lang/String;
    .restart local p2    # "aInfo":Landroid/content/pm/ApplicationInfo;
    .restart local p3    # "parentShortComponentName":Ljava/lang/String;
    .restart local p4    # "parentProcess":Lcom/android/server/wm/WindowProcessController;
    .restart local p5    # "aboveSystem":Z
    .restart local p6    # "annotation":Ljava/lang/String;
    .restart local p7    # "onlyDumpSelf":Z
    :catchall_af0
    move-exception v0

    goto :goto_aeb

    .line 399
    .end local v20    # "pid":I
    .end local v52    # "anrTime":J
    .end local v60    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v61    # "anrInfo":Lcom/android/server/am/ScoutAnrInfo;
    .end local v72    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v3    # "pid":I
    .restart local v4    # "anrTime":J
    .restart local v7    # "anrInfo":Lcom/android/server/am/ScoutAnrInfo;
    .restart local v9    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v10    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_af2
    move-exception v0

    move/from16 v20, v3

    move-wide/from16 v52, v4

    move-object/from16 v61, v7

    move-object/from16 v72, v9

    move-object/from16 v60, v10

    move-object v4, v11

    move-object v9, v14

    move-object v7, v15

    move/from16 v10, p5

    .end local v3    # "pid":I
    .end local v4    # "anrTime":J
    .end local v7    # "anrInfo":Lcom/android/server/am/ScoutAnrInfo;
    .end local v9    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v10    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v20    # "pid":I
    .restart local v52    # "anrTime":J
    .restart local v60    # "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v61    # "anrInfo":Lcom/android/server/am/ScoutAnrInfo;
    .restart local v72    # "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    :goto_b02
    monitor-exit v2
    :try_end_b03
    .catchall {:try_start_aec .. :try_end_b03} :catchall_b07

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_b07
    move-exception v0

    goto :goto_b02
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "nowUptime"    # J

    .line 809
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 810
    iget-boolean v1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    invoke-virtual {v1}, Lcom/android/server/am/ErrorDialogController;->hasCrashDialogs()Z

    move-result v1

    if-nez v1, :cond_22

    iget-boolean v1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 811
    invoke-virtual {v1}, Lcom/android/server/am/ErrorDialogController;->hasAnrDialogs()Z

    move-result v1

    if-nez v1, :cond_22

    iget-boolean v1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mBad:Z

    if-eqz v1, :cond_ba

    .line 812
    :cond_22
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 813
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCrashing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 814
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    invoke-virtual {v2}, Lcom/android/server/am/ErrorDialogController;->getCrashDialogs()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 815
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mNotResponding="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 816
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    invoke-virtual {v2}, Lcom/android/server/am/ErrorDialogController;->getAnrDialogs()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 817
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " bad="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mBad:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 820
    iget-object v1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    if-eqz v1, :cond_b7

    .line 821
    const-string v1, " errorReportReceiver="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 822
    iget-object v1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 824
    :cond_b7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 826
    :cond_ba
    monitor-exit v0
    :try_end_bb
    .catchall {:try_start_3 .. :try_end_bb} :catchall_bf

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 827
    return-void

    .line 826
    :catchall_bf
    move-exception v1

    :try_start_c0
    monitor-exit v0
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_bf

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method getAnrAnnotation()Ljava/lang/String;
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mAnrAnnotation:Ljava/lang/String;

    return-object v0
.end method

.method getAnrData()Lcom/android/server/am/AppNotRespondingDialog$Data;
    .registers 2

    .line 262
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mAnrData:Lcom/android/server/am/AppNotRespondingDialog$Data;

    return-object v0
.end method

.method getCrashHandler()Ljava/lang/Runnable;
    .registers 2

    .line 202
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashHandler:Ljava/lang/Runnable;

    return-object v0
.end method

.method getCrashingReport()Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .registers 2

    .line 212
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    return-object v0
.end method

.method getDialogController()Lcom/android/server/am/ErrorDialogController;
    .registers 2

    .line 252
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    return-object v0
.end method

.method getErrorReportReceiver()Landroid/content/ComponentName;
    .registers 2

    .line 242
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    return-object v0
.end method

.method getNotRespondingReport()Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .registers 2

    .line 232
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    return-object v0
.end method

.method isBad()Z
    .registers 2

    .line 150
    iget-boolean v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mBad:Z

    return v0
.end method

.method isCrashing()Z
    .registers 2

    .line 160
    iget-boolean v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    return v0
.end method

.method isDefered()Z
    .registers 2

    .line 192
    iget-boolean v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDefered:Z

    return v0
.end method

.method isForceCrashReport()Z
    .registers 2

    .line 171
    iget-boolean v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mForceCrashReport:Z

    return v0
.end method

.method isMonitorCpuUsage()Z
    .registers 2

    .line 796
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    const/4 v0, 0x1

    return v0
.end method

.method isNotResponding()Z
    .registers 2

    .line 181
    iget-boolean v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    return v0
.end method

.method isSilentAnr()Z
    .registers 2

    .line 790
    invoke-direct {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->getShowBackground()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isInterestingForBackgroundTraces()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method synthetic lambda$appNotResponding$0$com-android-server-am-ProcessErrorStateRecord(Ljava/lang/String;)V
    .registers 7
    .param p1, "annotation"    # Ljava/lang/String;

    .line 287
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 289
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessErrorStateRecord;->setAnrAnnotation(Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    const-string v2, "anr"

    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IZ)V

    .line 291
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 292
    return-void

    .line 291
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method synthetic lambda$appNotResponding$2$com-android-server-am-ProcessErrorStateRecord()V
    .registers 6

    .line 660
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 661
    iget-object v1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    const-string v2, "anr"

    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IZ)V

    .line 662
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 663
    return-void

    .line 662
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method synthetic lambda$appNotResponding$3$com-android-server-am-ProcessErrorStateRecord()V
    .registers 4

    .line 665
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 666
    iget-object v1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v2, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 667
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 668
    return-void

    .line 667
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method onCleanupApplicationRecordLSP()V
    .registers 2

    .line 802
    invoke-virtual {p0}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ErrorDialogController;->clearAllErrorDialogs()V

    .line 804
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashing(Z)V

    .line 805
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 806
    return-void
.end method

.method setAnrAnnotation(Ljava/lang/String;)V
    .registers 2
    .param p1, "anrAnnotation"    # Ljava/lang/String;

    .line 227
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mAnrAnnotation:Ljava/lang/String;

    .line 228
    return-void
.end method

.method setAnrData(Lcom/android/server/am/AppNotRespondingDialog$Data;)V
    .registers 2
    .param p1, "data"    # Lcom/android/server/am/AppNotRespondingDialog$Data;

    .line 257
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mAnrData:Lcom/android/server/am/AppNotRespondingDialog$Data;

    .line 258
    return-void
.end method

.method setBad(Z)V
    .registers 2
    .param p1, "bad"    # Z

    .line 155
    iput-boolean p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mBad:Z

    .line 156
    return-void
.end method

.method setCrashHandler(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "crashHandler"    # Ljava/lang/Runnable;

    .line 207
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashHandler:Ljava/lang/Runnable;

    .line 208
    return-void
.end method

.method setCrashing(Z)V
    .registers 3
    .param p1, "crashing"    # Z

    .line 165
    iput-boolean p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    .line 166
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setCrashing(Z)V

    .line 167
    return-void
.end method

.method setCrashingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V
    .registers 2
    .param p1, "crashingReport"    # Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 217
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 218
    return-void
.end method

.method setDefered(Z)V
    .registers 2
    .param p1, "defer"    # Z

    .line 197
    iput-boolean p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDefered:Z

    .line 198
    return-void
.end method

.method setErrorReportReceiver(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "errorReportReceiver"    # Landroid/content/ComponentName;

    .line 247
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    .line 248
    return-void
.end method

.method setForceCrashReport(Z)V
    .registers 2
    .param p1, "forceCrashReport"    # Z

    .line 176
    iput-boolean p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mForceCrashReport:Z

    .line 177
    return-void
.end method

.method setNotResponding(Z)V
    .registers 3
    .param p1, "notResponding"    # Z

    .line 186
    iput-boolean p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    .line 187
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setNotResponding(Z)V

    .line 188
    return-void
.end method

.method setNotRespondingReport(Landroid/app/ActivityManager$ProcessErrorStateInfo;)V
    .registers 2
    .param p1, "notRespondingReport"    # Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 237
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 238
    return-void
.end method

.method startAppProblemLSP()V
    .registers 8

    .line 746
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    .line 748
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_30

    aget v3, v0, v2

    .line 749
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, v3, :cond_2d

    .line 750
    iget-object v4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v4, v5, v6}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    .line 748
    .end local v3    # "userId":I
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 754
    :cond_30
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 755
    return-void
.end method
