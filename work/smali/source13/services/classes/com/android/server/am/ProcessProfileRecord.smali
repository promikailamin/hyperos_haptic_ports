.class final Lcom/android/server/am/ProcessProfileRecord;
.super Ljava/lang/Object;
.source "ProcessProfileRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessProfileRecord$HostingComponentType;
    }
.end annotation


# static fields
.field static final HOSTING_COMPONENT_TYPE_ACTIVITY:I = 0x10

.field static final HOSTING_COMPONENT_TYPE_BACKUP:I = 0x4

.field static final HOSTING_COMPONENT_TYPE_BOUND_SERVICE:I = 0x200

.field static final HOSTING_COMPONENT_TYPE_BROADCAST_RECEIVER:I = 0x20

.field static final HOSTING_COMPONENT_TYPE_EMPTY:I = 0x0

.field static final HOSTING_COMPONENT_TYPE_FOREGROUND_SERVICE:I = 0x100

.field static final HOSTING_COMPONENT_TYPE_INSTRUMENTATION:I = 0x8

.field static final HOSTING_COMPONENT_TYPE_PERSISTENT:I = 0x2

.field static final HOSTING_COMPONENT_TYPE_PROVIDER:I = 0x40

.field static final HOSTING_COMPONENT_TYPE_STARTED_SERVICE:I = 0x80

.field static final HOSTING_COMPONENT_TYPE_SYSTEM:I = 0x1


# instance fields
.field final mApp:Lcom/android/server/am/ProcessRecord;

.field private mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

.field final mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private mCurProcBatteryStats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

.field private mCurRawAdj:I

.field private mCurrentHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mHistoricalHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mInitialIdlePss:J

.field private mLastCachedPss:J

.field private mLastCachedSwapPss:J

.field final mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private mLastLowMemory:J

.field private mLastMemInfo:Landroid/os/Debug$MemoryInfo;

.field private mLastMemInfoTime:J

.field private mLastPss:J

.field private mLastPssTime:J

.field private mLastRequestedGc:J

.field private mLastRss:J

.field private mLastStateTime:J

.field private mLastSwapPss:J

.field private mNextPssTime:J

.field private mPendingUiClean:Z

.field private mPid:I

.field private final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field private final mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

.field final mProfilerLock:Ljava/lang/Object;

.field private mPssProcState:I

.field private mPssStatType:I

.field private mReportLowMemory:Z

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mSetAdj:I

.field private mSetProcState:I

.field private mThread:Landroid/app/IApplicationThread;

.field private mTrimMemoryLevel:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .registers 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-direct {v0}, Lcom/android/server/am/ProcessList$ProcStateMemTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    .line 207
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    .line 219
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 224
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 281
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurrentHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 284
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mHistoricalHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 290
    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 291
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 292
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 293
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    .line 294
    return-void
.end method

.method private static abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V
    .registers 2
    .param p0, "tracker"    # Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    .line 654
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 655
    return-void
.end method

.method private static commitNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V
    .registers 4
    .param p0, "tracker"    # Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    .line 645
    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    if-ltz v0, :cond_1b

    .line 646
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    iget v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    iget v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    aput v2, v0, v1

    .line 647
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    iget v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    iget v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    aput v2, v0, v1

    .line 648
    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    .line 649
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 651
    :cond_1b
    return-void
.end method

.method static synthetic lambda$onProcessInactive$3(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .registers 3
    .param p0, "origBase"    # Lcom/android/internal/app/procstats/ProcessState;
    .param p1, "holder"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 375
    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_d

    .line 376
    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 378
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 379
    iput-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 380
    return-void
.end method


# virtual methods
.method abortNextPssTime()V
    .registers 2

    .line 636
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {v0}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    .line 637
    return-void
.end method

.method addHostingComponentType(I)V
    .registers 4
    .param p1, "type"    # I

    .line 701
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurrentHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    or-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 702
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mHistoricalHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    or-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 703
    return-void
.end method

.method addPss(JJJZIJ)V
    .registers 28
    .param p1, "pss"    # J
    .param p3, "uss"    # J
    .param p5, "rss"    # J
    .param p7, "always"    # Z
    .param p8, "type"    # I
    .param p9, "duration"    # J

    .line 569
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v2, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 570
    :try_start_9
    iget-object v0, v1, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    move-object v15, v0

    .line 571
    .local v15, "tracker":Lcom/android/internal/app/procstats/ProcessState;
    if-eqz v15, :cond_31

    .line 572
    iget-object v0, v1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v0

    move-object/from16 v16, v0

    .line 573
    .local v16, "pkgList":Lcom/android/server/am/PackageList;
    monitor-enter v16
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_33

    .line 574
    nop

    .line 575
    :try_start_18
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v14

    .line 574
    move-object v3, v15

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p9

    invoke-virtual/range {v3 .. v14}, Lcom/android/internal/app/procstats/ProcessState;->addPss(JJJZIJLandroid/util/ArrayMap;)V

    .line 576
    monitor-exit v16

    goto :goto_31

    :catchall_2e
    move-exception v0

    monitor-exit v16
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_2e

    .end local p0    # "this":Lcom/android/server/am/ProcessProfileRecord;
    .end local p1    # "pss":J
    .end local p3    # "uss":J
    .end local p5    # "rss":J
    .end local p7    # "always":Z
    .end local p8    # "type":I
    .end local p9    # "duration":J
    :try_start_30
    throw v0

    .line 578
    .end local v15    # "tracker":Lcom/android/internal/app/procstats/ProcessState;
    .end local v16    # "pkgList":Lcom/android/server/am/PackageList;
    .restart local p0    # "this":Lcom/android/server/am/ProcessProfileRecord;
    .restart local p1    # "pss":J
    .restart local p3    # "uss":J
    .restart local p5    # "rss":J
    .restart local p7    # "always":Z
    .restart local p8    # "type":I
    .restart local p9    # "duration":J
    :cond_31
    :goto_31
    monitor-exit v2

    .line 579
    return-void

    .line 578
    :catchall_33
    move-exception v0

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_33

    throw v0
.end method

.method clearHostingComponentType(I)V
    .registers 5
    .param p1, "type"    # I

    .line 706
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurrentHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    not-int v2, p1

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 707
    return-void
.end method

.method commitNextPssTime()V
    .registers 2

    .line 631
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {v0}, Lcom/android/server/am/ProcessProfileRecord;->commitNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    .line 632
    return-void
.end method

.method computeNextPssTime(IZZJ)J
    .registers 12
    .param p1, "procState"    # I
    .param p2, "test"    # Z
    .param p3, "sleeping"    # Z
    .param p4, "now"    # J

    .line 641
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    move v0, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ProcessList;->computeNextPssTime(ILcom/android/server/am/ProcessList$ProcStateMemTracker;ZZJ)J

    move-result-wide v0

    return-wide v0
.end method

.method dumpCputime(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 763
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 764
    .local v0, "lastCpuTime":J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 765
    const-string/jumbo v2, "lastCpuTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 766
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 767
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_27

    .line 768
    const-string v2, " timeUsed="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 769
    iget-object v2, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 771
    :cond_27
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 772
    return-void
.end method

.method dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "nowUptime"    # J

    .line 719
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 720
    :try_start_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 721
    const-string/jumbo v1, "lastPssTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 722
    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    invoke-static {v1, v2, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 723
    const-string v1, " pssProcState="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 724
    iget v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 725
    const-string v1, " pssStatType="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 726
    iget v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssStatType:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 727
    const-string v1, " nextPssTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 728
    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mNextPssTime:J

    invoke-static {v1, v2, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 729
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 730
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 731
    const-string/jumbo v1, "lastPss="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 732
    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    const-wide/16 v3, 0x400

    mul-long/2addr v1, v3

    invoke-static {p1, v1, v2}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 733
    const-string v1, " lastSwapPss="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 734
    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastSwapPss:J

    mul-long/2addr v1, v3

    invoke-static {p1, v1, v2}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 735
    const-string v1, " lastCachedPss="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 736
    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedPss:J

    mul-long/2addr v1, v3

    invoke-static {p1, v1, v2}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 737
    const-string v1, " lastCachedSwapPss="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 738
    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedSwapPss:J

    mul-long/2addr v1, v3

    invoke-static {p1, v1, v2}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 739
    const-string v1, " lastRss="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 740
    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    mul-long/2addr v1, v3

    invoke-static {p1, v1, v2}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 741
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 742
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 743
    const-string/jumbo v1, "trimMemoryLevel="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 744
    iget v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mTrimMemoryLevel:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 745
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "procStateMemTracker: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 746
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->dumpLine(Ljava/io/PrintWriter;)V

    .line 747
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 748
    const-string/jumbo v1, "lastRequestedGc="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 749
    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    invoke-static {v1, v2, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 750
    const-string v1, " lastLowMemory="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 751
    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastLowMemory:J

    invoke-static {v1, v2, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 752
    const-string v1, " reportLowMemory="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 753
    iget-boolean v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mReportLowMemory:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 754
    monitor-exit v0
    :try_end_b1
    .catchall {:try_start_3 .. :try_end_b1} :catchall_d5

    .line 755
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 756
    const-string v0, "currentHostingComponentTypes=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 757
    invoke-virtual {p0}, Lcom/android/server/am/ProcessProfileRecord;->getCurrentHostingComponentTypes()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 758
    const-string v0, " historicalHostingComponentTypes=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 759
    invoke-virtual {p0}, Lcom/android/server/am/ProcessProfileRecord;->getHistoricalHostingComponentTypes()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 760
    return-void

    .line 754
    :catchall_d5
    move-exception v1

    :try_start_d6
    monitor-exit v0
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d5

    throw v1
.end method

.method getBaseProcessTracker()Lcom/android/internal/app/procstats/ProcessState;
    .registers 2

    .line 302
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    return-object v0
.end method

.method getCurProcBatteryStats()Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .registers 2

    .line 531
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurProcBatteryStats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    return-object v0
.end method

.method getCurRawAdj()I
    .registers 2

    .line 684
    iget v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurRawAdj:I

    return v0
.end method

.method getCurrentHostingComponentTypes()I
    .registers 2

    .line 710
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurrentHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method getHistoricalHostingComponentTypes()I
    .registers 2

    .line 714
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mHistoricalHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method getInitialIdlePss()J
    .registers 3

    .line 411
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mInitialIdlePss:J

    return-wide v0
.end method

.method getLastCachedPss()J
    .registers 3

    .line 431
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedPss:J

    return-wide v0
.end method

.method getLastCachedSwapPss()J
    .registers 3

    .line 451
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedSwapPss:J

    return-wide v0
.end method

.method getLastLowMemory()J
    .registers 3

    .line 550
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastLowMemory:J

    return-wide v0
.end method

.method getLastMemInfo()Landroid/os/Debug$MemoryInfo;
    .registers 2

    .line 471
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastMemInfo:Landroid/os/Debug$MemoryInfo;

    return-object v0
.end method

.method getLastMemInfoTime()J
    .registers 3

    .line 481
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastMemInfoTime:J

    return-wide v0
.end method

.method getLastPss()J
    .registers 3

    .line 421
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    return-wide v0
.end method

.method getLastPssTime()J
    .registers 3

    .line 391
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    return-wide v0
.end method

.method getLastRequestedGc()J
    .registers 3

    .line 540
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    return-wide v0
.end method

.method getLastRss()J
    .registers 3

    .line 461
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    return-wide v0
.end method

.method getLastStateTime()J
    .registers 3

    .line 689
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastStateTime:J

    return-wide v0
.end method

.method getLastSwapPss()J
    .registers 3

    .line 441
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastSwapPss:J

    return-wide v0
.end method

.method getNextPssTime()J
    .registers 3

    .line 401
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mNextPssTime:J

    return-wide v0
.end method

.method getPid()I
    .registers 2

    .line 659
    iget v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    return v0
.end method

.method getPssProcState()I
    .registers 2

    .line 491
    iget v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    return v0
.end method

.method getPssStatType()I
    .registers 2

    .line 501
    iget v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssStatType:I

    return v0
.end method

.method getReportLowMemory()Z
    .registers 2

    .line 560
    iget-boolean v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mReportLowMemory:Z

    return v0
.end method

.method getSetAdj()I
    .registers 2

    .line 679
    iget v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mSetAdj:I

    return v0
.end method

.method getSetProcState()I
    .registers 2

    .line 674
    iget v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mSetProcState:I

    return v0
.end method

.method getThread()Landroid/app/IApplicationThread;
    .registers 2

    .line 669
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    return-object v0
.end method

.method getTrimMemoryLevel()I
    .registers 2

    .line 511
    iget v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mTrimMemoryLevel:I

    return v0
.end method

.method hasPendingUiClean()Z
    .registers 2

    .line 521
    iget-boolean v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mPendingUiClean:Z

    return v0
.end method

.method init(J)V
    .registers 3
    .param p1, "now"    # J

    .line 297
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mNextPssTime:J

    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    .line 298
    return-void
.end method

.method synthetic lambda$onProcessActive$0$com-android-server-am-ProcessProfileRecord(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .registers 11
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "holder"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 322
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 324
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v5

    iget-wide v6, p2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 322
    const/4 v1, 0x3

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method synthetic lambda$onProcessActive$1$com-android-server-am-ProcessProfileRecord(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/ProcessStatsService;Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .registers 14
    .param p1, "origBase"    # Lcom/android/internal/app/procstats/ProcessState;
    .param p2, "tracker"    # Lcom/android/server/am/ProcessStatsService;
    .param p3, "baseProcessTracker"    # Lcom/android/internal/app/procstats/ProcessState;
    .param p4, "pkgName"    # Ljava/lang/String;
    .param p5, "holder"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 336
    iget-object v0, p5, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v0, :cond_d

    iget-object v0, p5, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p1, :cond_d

    .line 337
    iget-object v0, p5, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 339
    :cond_d
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v5, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v1, p2

    move-object v2, p5

    move-object v3, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessStatsService;->updateProcessStateHolderLocked(Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;Ljava/lang/String;IJLjava/lang/String;)V

    .line 341
    iget-object v0, p5, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p3, :cond_2c

    .line 342
    iget-object v0, p5, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    .line 344
    :cond_2c
    return-void
.end method

.method synthetic lambda$onProcessInactive$2$com-android-server-am-ProcessProfileRecord(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .registers 11
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "holder"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 366
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 368
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v5

    iget-wide v6, p2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 366
    const/4 v1, 0x3

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method synthetic lambda$reportCachedKill$4$com-android-server-am-ProcessProfileRecord(Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .registers 11
    .param p1, "holder"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 601
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 603
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 604
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedPss:J

    iget-wide v7, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 601
    const/16 v1, 0x11

    invoke-static/range {v1 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method onProcessActive(Landroid/app/IApplicationThread;Lcom/android/server/am/ProcessStatsService;)V
    .registers 17
    .param p1, "thread"    # Landroid/app/IApplicationThread;
    .param p2, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    .line 311
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v9, p2

    iget-object v0, v1, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_6b

    .line 312
    iget-object v10, v1, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v10

    .line 313
    :try_start_b
    iget-object v11, v9, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_68

    .line 314
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/am/ProcessProfileRecord;->getBaseProcessTracker()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v0

    move-object v12, v0

    .line 315
    .local v12, "origBase":Lcom/android/internal/app/procstats/ProcessState;
    iget-object v0, v1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v0

    move-object v13, v0

    .line 316
    .local v13, "pkgList":Lcom/android/server/am/PackageList;
    if-eqz v12, :cond_3e

    .line 317
    monitor-enter v13
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_65

    .line 318
    const/4 v4, -0x1

    .line 319
    :try_start_1e
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 320
    invoke-virtual {v13}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v8

    .line 318
    move-object v3, v12

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 321
    new-instance v0, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ProcessProfileRecord;)V

    invoke-virtual {v13, v0}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/BiConsumer;)V

    .line 327
    monitor-exit v13
    :try_end_37
    .catchall {:try_start_1e .. :try_end_37} :catchall_3b

    .line 328
    :try_start_37
    invoke-virtual {v12}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_65

    goto :goto_3e

    .line 327
    :catchall_3b
    move-exception v0

    :try_start_3c
    monitor-exit v13
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    .end local p0    # "this":Lcom/android/server/am/ProcessProfileRecord;
    .end local p1    # "thread":Landroid/app/IApplicationThread;
    .end local p2    # "tracker":Lcom/android/server/am/ProcessStatsService;
    :try_start_3d
    throw v0

    .line 330
    .restart local p0    # "this":Lcom/android/server/am/ProcessProfileRecord;
    .restart local p1    # "thread":Landroid/app/IApplicationThread;
    .restart local p2    # "tracker":Lcom/android/server/am/ProcessStatsService;
    :cond_3e
    :goto_3e
    iget-object v0, v1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 331
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-wide v6, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v3, v1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v3

    .line 333
    .local v3, "baseProcessTracker":Lcom/android/internal/app/procstats/ProcessState;
    invoke-virtual {p0, v3}, Lcom/android/server/am/ProcessProfileRecord;->setBaseProcessTracker(Lcom/android/internal/app/procstats/ProcessState;)V

    .line 334
    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    .line 335
    new-instance v4, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v12, v9, v3}, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ProcessProfileRecord;Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/ProcessStatsService;Lcom/android/internal/app/procstats/ProcessState;)V

    invoke-virtual {v13, v4}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/BiConsumer;)V

    .line 345
    iput-object v2, v1, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 346
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "baseProcessTracker":Lcom/android/internal/app/procstats/ProcessState;
    .end local v12    # "origBase":Lcom/android/internal/app/procstats/ProcessState;
    .end local v13    # "pkgList":Lcom/android/server/am/PackageList;
    monitor-exit v11
    :try_end_63
    .catchall {:try_start_3d .. :try_end_63} :catchall_65

    .line 347
    :try_start_63
    monitor-exit v10
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_68

    goto :goto_71

    .line 346
    :catchall_65
    move-exception v0

    :try_start_66
    monitor-exit v11
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    .end local p0    # "this":Lcom/android/server/am/ProcessProfileRecord;
    .end local p1    # "thread":Landroid/app/IApplicationThread;
    .end local p2    # "tracker":Lcom/android/server/am/ProcessStatsService;
    :try_start_67
    throw v0

    .line 347
    .restart local p0    # "this":Lcom/android/server/am/ProcessProfileRecord;
    .restart local p1    # "thread":Landroid/app/IApplicationThread;
    .restart local p2    # "tracker":Lcom/android/server/am/ProcessStatsService;
    :catchall_68
    move-exception v0

    monitor-exit v10
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_68

    throw v0

    .line 349
    :cond_6b
    iget-object v3, v1, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 350
    :try_start_6e
    iput-object v2, v1, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 351
    monitor-exit v3

    .line 353
    :goto_71
    return-void

    .line 351
    :catchall_72
    move-exception v0

    monitor-exit v3
    :try_end_74
    .catchall {:try_start_6e .. :try_end_74} :catchall_72

    throw v0
.end method

.method onProcessInactive(Lcom/android/server/am/ProcessStatsService;)V
    .registers 13
    .param p1, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    .line 356
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    :try_start_3
    iget-object v1, p1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_54

    .line 358
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/am/ProcessProfileRecord;->getBaseProcessTracker()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v2

    .line 359
    .local v2, "origBase":Lcom/android/internal/app/procstats/ProcessState;
    const/4 v9, 0x0

    if-eqz v2, :cond_41

    .line 360
    iget-object v3, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v3

    move-object v10, v3

    .line 361
    .local v10, "pkgList":Lcom/android/server/am/PackageList;
    monitor-enter v10
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_51

    .line 362
    const/4 v4, -0x1

    .line 363
    :try_start_16
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 364
    invoke-virtual {v10}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v8

    .line 362
    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 365
    new-instance v3, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/ProcessProfileRecord;)V

    invoke-virtual {v10, v3}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/BiConsumer;)V

    .line 371
    monitor-exit v10
    :try_end_2f
    .catchall {:try_start_16 .. :try_end_2f} :catchall_3e

    .line 372
    :try_start_2f
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 373
    invoke-virtual {p0, v9}, Lcom/android/server/am/ProcessProfileRecord;->setBaseProcessTracker(Lcom/android/internal/app/procstats/ProcessState;)V

    .line 374
    new-instance v3, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda3;

    invoke-direct {v3, v2}, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/app/procstats/ProcessState;)V

    invoke-virtual {v10, v3}, Lcom/android/server/am/PackageList;->forEachPackageProcessStats(Ljava/util/function/Consumer;)V
    :try_end_3d
    .catchall {:try_start_2f .. :try_end_3d} :catchall_51

    goto :goto_41

    .line 371
    :catchall_3e
    move-exception v3

    :try_start_3f
    monitor-exit v10
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    .end local p0    # "this":Lcom/android/server/am/ProcessProfileRecord;
    .end local p1    # "tracker":Lcom/android/server/am/ProcessStatsService;
    :try_start_40
    throw v3

    .line 382
    .end local v10    # "pkgList":Lcom/android/server/am/PackageList;
    .restart local p0    # "this":Lcom/android/server/am/ProcessProfileRecord;
    .restart local p1    # "tracker":Lcom/android/server/am/ProcessStatsService;
    :cond_41
    :goto_41
    iput-object v9, p0, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 383
    .end local v2    # "origBase":Lcom/android/internal/app/procstats/ProcessState;
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_51

    .line 384
    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_54

    .line 385
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurrentHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 386
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mHistoricalHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 387
    return-void

    .line 383
    :catchall_51
    move-exception v2

    :try_start_52
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    .end local p0    # "this":Lcom/android/server/am/ProcessProfileRecord;
    .end local p1    # "tracker":Lcom/android/server/am/ProcessStatsService;
    :try_start_53
    throw v2

    .line 384
    .restart local p0    # "this":Lcom/android/server/am/ProcessProfileRecord;
    .restart local p1    # "tracker":Lcom/android/server/am/ProcessStatsService;
    :catchall_54
    move-exception v1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_54

    throw v1
.end method

.method reportCachedKill()V
    .registers 7

    .line 594
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 595
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    .line 596
    .local v1, "tracker":Lcom/android/internal/app/procstats/ProcessState;
    if-eqz v1, :cond_28

    .line 597
    iget-object v2, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v2

    .line 598
    .local v2, "pkgList":Lcom/android/server/am/PackageList;
    monitor-enter v2
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_2a

    .line 599
    :try_start_12
    invoke-virtual {v2}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedPss:J

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/internal/app/procstats/ProcessState;->reportCachedKill(Landroid/util/ArrayMap;J)V

    .line 600
    new-instance v3, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/ProcessProfileRecord;)V

    invoke-virtual {v2, v3}, Lcom/android/server/am/PackageList;->forEachPackageProcessStats(Ljava/util/function/Consumer;)V

    .line 608
    monitor-exit v2

    goto :goto_28

    :catchall_25
    move-exception v3

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_25

    .end local p0    # "this":Lcom/android/server/am/ProcessProfileRecord;
    :try_start_27
    throw v3

    .line 610
    .end local v1    # "tracker":Lcom/android/internal/app/procstats/ProcessState;
    .end local v2    # "pkgList":Lcom/android/server/am/PackageList;
    .restart local p0    # "this":Lcom/android/server/am/ProcessProfileRecord;
    :cond_28
    :goto_28
    monitor-exit v0

    .line 611
    return-void

    .line 610
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method reportExcessiveCpu()V
    .registers 5

    .line 582
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 583
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    .line 584
    .local v1, "tracker":Lcom/android/internal/app/procstats/ProcessState;
    if-eqz v1, :cond_1e

    .line 585
    iget-object v2, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v2

    .line 586
    .local v2, "pkgList":Lcom/android/server/am/PackageList;
    monitor-enter v2
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_20

    .line 587
    :try_start_12
    invoke-virtual {v2}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/app/procstats/ProcessState;->reportExcessiveCpu(Landroid/util/ArrayMap;)V

    .line 588
    monitor-exit v2

    goto :goto_1e

    :catchall_1b
    move-exception v3

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1b

    .end local p0    # "this":Lcom/android/server/am/ProcessProfileRecord;
    :try_start_1d
    throw v3

    .line 590
    .end local v1    # "tracker":Lcom/android/internal/app/procstats/ProcessState;
    .end local v2    # "pkgList":Lcom/android/server/am/PackageList;
    .restart local p0    # "this":Lcom/android/server/am/ProcessProfileRecord;
    :cond_1e
    :goto_1e
    monitor-exit v0

    .line 591
    return-void

    .line 590
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_20

    throw v1
.end method

.method setBaseProcessTracker(Lcom/android/internal/app/procstats/ProcessState;)V
    .registers 2
    .param p1, "baseProcessTracker"    # Lcom/android/internal/app/procstats/ProcessState;

    .line 307
    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    .line 308
    return-void
.end method

.method setCurProcBatteryStats(Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;)V
    .registers 2
    .param p1, "curProcBatteryStats"    # Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 535
    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurProcBatteryStats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 536
    return-void
.end method

.method setInitialIdlePss(J)V
    .registers 3
    .param p1, "initialIdlePss"    # J

    .line 416
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mInitialIdlePss:J

    .line 417
    return-void
.end method

.method setLastCachedPss(J)V
    .registers 3
    .param p1, "lastCachedPss"    # J

    .line 436
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedPss:J

    .line 437
    return-void
.end method

.method setLastCachedSwapPss(J)V
    .registers 3
    .param p1, "lastCachedSwapPss"    # J

    .line 456
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedSwapPss:J

    .line 457
    return-void
.end method

.method setLastLowMemory(J)V
    .registers 3
    .param p1, "lastLowMemory"    # J

    .line 555
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastLowMemory:J

    .line 556
    return-void
.end method

.method setLastMemInfo(Landroid/os/Debug$MemoryInfo;)V
    .registers 2
    .param p1, "lastMemInfo"    # Landroid/os/Debug$MemoryInfo;

    .line 476
    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastMemInfo:Landroid/os/Debug$MemoryInfo;

    .line 477
    return-void
.end method

.method setLastMemInfoTime(J)V
    .registers 3
    .param p1, "lastMemInfoTime"    # J

    .line 486
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastMemInfoTime:J

    .line 487
    return-void
.end method

.method setLastPss(J)V
    .registers 3
    .param p1, "lastPss"    # J

    .line 426
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    .line 427
    return-void
.end method

.method setLastPssTime(J)V
    .registers 3
    .param p1, "lastPssTime"    # J

    .line 396
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    .line 397
    return-void
.end method

.method setLastRequestedGc(J)V
    .registers 3
    .param p1, "lastRequestedGc"    # J

    .line 545
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    .line 546
    return-void
.end method

.method setLastRss(J)V
    .registers 3
    .param p1, "lastRss"    # J

    .line 466
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    .line 467
    return-void
.end method

.method setLastSwapPss(J)V
    .registers 3
    .param p1, "lastSwapPss"    # J

    .line 446
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastSwapPss:J

    .line 447
    return-void
.end method

.method setNextPssTime(J)V
    .registers 3
    .param p1, "nextPssTime"    # J

    .line 406
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mNextPssTime:J

    .line 407
    return-void
.end method

.method setPendingUiClean(Z)V
    .registers 3
    .param p1, "pendingUiClean"    # Z

    .line 526
    iput-boolean p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPendingUiClean:Z

    .line 527
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setPendingUiClean(Z)V

    .line 528
    return-void
.end method

.method setPid(I)V
    .registers 2
    .param p1, "pid"    # I

    .line 664
    iput p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    .line 665
    return-void
.end method

.method setProcessTrackerState(II)V
    .registers 12
    .param p1, "procState"    # I
    .param p2, "memFactor"    # I

    .line 614
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 615
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    .line 616
    .local v1, "tracker":Lcom/android/internal/app/procstats/ProcessState;
    if-eqz v1, :cond_2b

    .line 617
    const/16 v2, 0x14

    if-eq p1, v2, :cond_2b

    .line 618
    iget-object v2, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v2

    move-object v8, v2

    .line 619
    .local v8, "pkgList":Lcom/android/server/am/PackageList;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 620
    .local v5, "now":J
    monitor-enter v8
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_2d

    .line 621
    nop

    .line 622
    :try_start_1c
    invoke-virtual {v8}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v7

    .line 621
    move-object v2, v1

    move v3, p1

    move v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 623
    monitor-exit v8

    goto :goto_2b

    :catchall_28
    move-exception v2

    monitor-exit v8
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_28

    .end local p0    # "this":Lcom/android/server/am/ProcessProfileRecord;
    .end local p1    # "procState":I
    .end local p2    # "memFactor":I
    :try_start_2a
    throw v2

    .line 626
    .end local v1    # "tracker":Lcom/android/internal/app/procstats/ProcessState;
    .end local v5    # "now":J
    .end local v8    # "pkgList":Lcom/android/server/am/PackageList;
    .restart local p0    # "this":Lcom/android/server/am/ProcessProfileRecord;
    .restart local p1    # "procState":I
    .restart local p2    # "memFactor":I
    :cond_2b
    :goto_2b
    monitor-exit v0

    .line 627
    return-void

    .line 626
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method setPssProcState(I)V
    .registers 2
    .param p1, "pssProcState"    # I

    .line 496
    iput p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    .line 497
    return-void
.end method

.method setPssStatType(I)V
    .registers 2
    .param p1, "pssStatType"    # I

    .line 506
    iput p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssStatType:I

    .line 507
    return-void
.end method

.method setReportLowMemory(Z)V
    .registers 2
    .param p1, "reportLowMemory"    # Z

    .line 565
    iput-boolean p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mReportLowMemory:Z

    .line 566
    return-void
.end method

.method setTrimMemoryLevel(I)V
    .registers 2
    .param p1, "trimMemoryLevel"    # I

    .line 516
    iput p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mTrimMemoryLevel:I

    .line 517
    return-void
.end method

.method updateProcState(Lcom/android/server/am/ProcessStateRecord;)V
    .registers 4
    .param p1, "state"    # Lcom/android/server/am/ProcessStateRecord;

    .line 694
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mSetProcState:I

    .line 695
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mSetAdj:I

    .line 696
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurRawAdj:I

    .line 697
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getLastStateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastStateTime:J

    .line 698
    return-void
.end method
