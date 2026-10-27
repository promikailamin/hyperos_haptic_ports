.class public final Lcom/android/server/am/ProcessProfileRecord;
.super Ljava/lang/Object;
.source "ProcessProfileRecord.java"

# interfaces
.implements Lcom/android/server/am/psc/ProcessRecordInternal$StartedServiceObserver;


# instance fields
.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

.field public final mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

.field public mCurProcBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

.field public mCurRawAdj:I

.field public mCurrentHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mHistoricalHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mLastCachedPss:J

.field public mLastCachedRss:J

.field public mLastCachedSwapPss:J

.field public final mLastCpuDelayTime:Ljava/util/concurrent/atomic/AtomicLong;

.field public final mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

.field public mLastLowMemory:J

.field public mLastMemInfo:Landroid/os/Debug$MemoryInfo;

.field public mLastMemInfoTime:J

.field public mLastPss:J

.field public mLastPssTime:J

.field public mLastRequestedGc:J

.field public mLastRss:J

.field public mLastStateTime:J

.field public mLastSwapPss:J

.field public mNextPssTime:J

.field public mPendingUiClean:Z

.field public mPid:I

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public final mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

.field public final mProfilerLock:Ljava/lang/Object;

.field public mPssProcState:I

.field public mPssStatType:I

.field public mReportLowMemory:Z

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public mSetAdj:I

.field public mSetProcState:I

.field public mThread:Landroid/app/IApplicationThread;

.field public mTrimMemoryLevel:I


# direct methods
.method public static synthetic $r8$lambda$IUdC3S34rs87Xa1P5tzUxV1FgmY(Lcom/android/server/am/ProcessProfileRecord;Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/ProcessStatsService;ILcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/ProcessProfileRecord;->lambda$onProcessActive$0(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/ProcessStatsService;ILcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JxHNnB95IHo4uPFFKjkpWwJexpY(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .registers 3

    .line 322
    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v0, :cond_9

    if-eq v0, p0, :cond_9

    .line 323
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    :cond_9
    const/4 p0, 0x0

    .line 325
    iput-object p0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 326
    iput-object p0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .registers 5

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-direct {v0}, Lcom/android/server/am/ProcessList$ProcStateMemTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    const/16 v0, 0x14

    .line 133
    iput v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    .line 145
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 150
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 155
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuDelayTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 212
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurrentHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 215
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mHistoricalHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 221
    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 222
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 223
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 224
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object p1, p1, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    return-void
.end method

.method public static abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V
    .registers 2

    const/4 v0, -0x1

    .line 585
    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    return-void
.end method

.method public static commitNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V
    .registers 5

    .line 576
    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    if-ltz v0, :cond_15

    .line 577
    iget-object v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    iget v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    aput v2, v1, v0

    .line 578
    iget-object v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    iget v3, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    aput v3, v1, v0

    .line 579
    iput v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    const/4 v0, -0x1

    .line 580
    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    :cond_15
    return-void
.end method

.method public static getUidForAttribution(Lcom/android/server/am/ProcessRecord;)I
    .registers 2

    .line 596
    iget v0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-static {v0}, Landroid/os/Process;->isIsolatedUid(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 597
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    return p0

    .line 599
    :cond_d
    iget p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    return p0
.end method


# virtual methods
.method public abortNextPssTime()V
    .registers 1

    .line 563
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {p0}, Lcom/android/server/am/ProcessProfileRecord;->abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    return-void
.end method

.method public addHostingComponentType(I)V
    .registers 4

    .line 647
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurrentHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    or-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 648
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mHistoricalHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public addPss(JJJZIJ)V
    .registers 25

    .line 516
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 517
    :try_start_7
    iget-object v2, p0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v2, :cond_2c

    .line 519
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object p0

    .line 520
    monitor-enter p0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_29

    .line 522
    :try_start_12
    invoke-virtual {p0}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v13

    move-wide v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    .line 521
    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/app/procstats/ProcessState;->addPss(JJJZIJLandroid/util/ArrayMap;)V

    .line 523
    monitor-exit p0

    goto :goto_2c

    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_26

    :try_start_28
    throw v0

    :catchall_29
    move-exception v0

    move-object p0, v0

    goto :goto_2e

    .line 525
    :cond_2c
    :goto_2c
    monitor-exit v1

    return-void

    :goto_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_29

    throw p0
.end method

.method public clearHostingComponentType(I)V
    .registers 3

    .line 652
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurrentHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    not-int p1, p1

    and-int/2addr p1, v0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public commitNextPssTime()V
    .registers 1

    .line 558
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {p0}, Lcom/android/server/am/ProcessProfileRecord;->commitNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    return-void
.end method

.method public computeNextPssTime(IZZJ)J
    .registers 14

    .line 568
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v2, v0, Lcom/android/server/am/ActivityManagerService;->mBootCompletedTimestamp:J

    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v4, v0, Lcom/android/server/am/ActivityManagerService;->mLastIdleTime:J

    .line 571
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_MIN_INTERVAL:J

    add-long v6, v2, v4

    move v0, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .line 568
    invoke-static/range {v0 .. v7}, Lcom/android/server/am/ProcessList;->computeNextPssTime(ILcom/android/server/am/ProcessList$ProcStateMemTracker;ZZJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public dumpCputime(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 728
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 729
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 730
    const-string/jumbo p2, "lastCpuTime="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 731
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_27

    .line 733
    const-string p2, " timeUsed="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 734
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 736
    :cond_27
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .registers 11

    .line 665
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 667
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    move-result v1

    const-wide/16 v2, 0x400

    if-eqz v1, :cond_7d

    .line 668
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 669
    const-string/jumbo v1, "lastPssTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 670
    iget-wide v4, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    invoke-static {v4, v5, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 671
    const-string v1, " pssProcState="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 672
    iget v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 673
    const-string v1, " pssStatType="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 674
    iget v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssStatType:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 675
    const-string v1, " nextPssTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 676
    iget-wide v4, p0, Lcom/android/server/am/ProcessProfileRecord;->mNextPssTime:J

    invoke-static {v4, v5, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 677
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 678
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 679
    const-string/jumbo v1, "lastPss="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 680
    iget-wide v4, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    mul-long/2addr v4, v2

    invoke-static {p1, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 681
    const-string v1, " lastSwapPss="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 682
    iget-wide v4, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastSwapPss:J

    mul-long/2addr v4, v2

    invoke-static {p1, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 683
    const-string v1, " lastCachedPss="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 684
    iget-wide v4, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedPss:J

    mul-long/2addr v4, v2

    invoke-static {p1, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 685
    const-string v1, " lastCachedSwapPss="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 686
    iget-wide v4, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedSwapPss:J

    mul-long/2addr v4, v2

    invoke-static {p1, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 687
    const-string v1, " lastRss="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 688
    iget-wide v4, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    mul-long/2addr v4, v2

    invoke-static {p1, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    goto :goto_c6

    :catchall_7a
    move-exception p0

    goto/16 :goto_12c

    .line 690
    :cond_7d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 691
    const-string/jumbo v1, "lastRssTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 692
    iget-wide v4, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    invoke-static {v4, v5, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 693
    const-string v1, " rssProcState="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 694
    iget v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 695
    const-string v1, " rssStatType="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 696
    iget v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssStatType:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 697
    const-string v1, " nextRssTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 698
    iget-wide v4, p0, Lcom/android/server/am/ProcessProfileRecord;->mNextPssTime:J

    invoke-static {v4, v5, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 699
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 700
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 701
    const-string/jumbo v1, "lastRss="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 702
    iget-wide v4, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    mul-long/2addr v4, v2

    invoke-static {p1, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 703
    const-string v1, " lastCachedRss="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 704
    iget-wide v4, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedRss:J

    mul-long/2addr v4, v2

    invoke-static {p1, v4, v5}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 706
    :goto_c6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 707
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 708
    const-string/jumbo v1, "trimMemoryLevel="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 709
    iget v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mTrimMemoryLevel:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 710
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "procStateMemTracker: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 711
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mProcStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->dumpLine(Ljava/io/PrintWriter;)V

    .line 712
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 713
    const-string/jumbo v1, "lastRequestedGc="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 714
    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    invoke-static {v1, v2, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 715
    const-string v1, " lastLowMemory="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 716
    iget-wide v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastLowMemory:J

    invoke-static {v1, v2, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 717
    const-string p3, " reportLowMemory="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 718
    iget-boolean p3, p0, Lcom/android/server/am/ProcessProfileRecord;->mReportLowMemory:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 719
    monitor-exit v0
    :try_end_108
    .catchall {:try_start_3 .. :try_end_108} :catchall_7a

    .line 720
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 721
    const-string p2, "currentHostingComponentTypes=0x"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 722
    invoke-virtual {p0}, Lcom/android/server/am/ProcessProfileRecord;->getCurrentHostingComponentTypes()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 723
    const-string p2, " historicalHostingComponentTypes=0x"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 724
    invoke-virtual {p0}, Lcom/android/server/am/ProcessProfileRecord;->getHistoricalHostingComponentTypes()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 719
    :goto_12c
    :try_start_12c
    monitor-exit v0
    :try_end_12d
    .catchall {:try_start_12c .. :try_end_12d} :catchall_7a

    throw p0
.end method

.method public getBaseProcessTracker()Lcom/android/internal/app/procstats/ProcessState;
    .registers 1

    .line 233
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    return-object p0
.end method

.method public getCurProcBatteryStats()Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;
    .registers 1

    .line 478
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurProcBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    return-object p0
.end method

.method public getCurRawAdj()I
    .registers 1

    .line 630
    iget p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurRawAdj:I

    return p0
.end method

.method public getCurrentHostingComponentTypes()I
    .registers 1

    .line 656
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurrentHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public getHistoricalHostingComponentTypes()I
    .registers 1

    .line 660
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mHistoricalHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public getLastCachedPss()J
    .registers 3

    .line 368
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedPss:J

    return-wide v0
.end method

.method public getLastCachedRss()J
    .registers 3

    .line 378
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedRss:J

    return-wide v0
.end method

.method public getLastLowMemory()J
    .registers 3

    .line 497
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastLowMemory:J

    return-wide v0
.end method

.method public getLastMemInfo()Landroid/os/Debug$MemoryInfo;
    .registers 1

    .line 418
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastMemInfo:Landroid/os/Debug$MemoryInfo;

    return-object p0
.end method

.method public getLastMemInfoTime()J
    .registers 3

    .line 428
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastMemInfoTime:J

    return-wide v0
.end method

.method public getLastPss()J
    .registers 3

    .line 358
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    return-wide v0
.end method

.method public getLastPssTime()J
    .registers 3

    .line 338
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    return-wide v0
.end method

.method public getLastRequestedGc()J
    .registers 3

    .line 487
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    return-wide v0
.end method

.method public getLastRss()J
    .registers 3

    .line 408
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    return-wide v0
.end method

.method public getLastStateTime()J
    .registers 3

    .line 635
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastStateTime:J

    return-wide v0
.end method

.method public getLastSwapPss()J
    .registers 3

    .line 388
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastSwapPss:J

    return-wide v0
.end method

.method public getNextPssTime()J
    .registers 3

    .line 348
    iget-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mNextPssTime:J

    return-wide v0
.end method

.method public getPid()I
    .registers 1

    .line 605
    iget p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    return p0
.end method

.method public getPssProcState()I
    .registers 1

    .line 438
    iget p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    return p0
.end method

.method public getPssStatType()I
    .registers 1

    .line 448
    iget p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssStatType:I

    return p0
.end method

.method public getReportLowMemory()Z
    .registers 1

    .line 507
    iget-boolean p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mReportLowMemory:Z

    return p0
.end method

.method public getSetAdj()I
    .registers 1

    .line 625
    iget p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mSetAdj:I

    return p0
.end method

.method public getSetProcState()I
    .registers 1

    .line 620
    iget p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mSetProcState:I

    return p0
.end method

.method public getThread()Landroid/app/IApplicationThread;
    .registers 1

    .line 615
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    return-object p0
.end method

.method public getTrimMemoryLevel()I
    .registers 1

    .line 458
    iget p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mTrimMemoryLevel:I

    return p0
.end method

.method public hasPendingUiClean()Z
    .registers 1

    .line 468
    iget-boolean p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mPendingUiClean:Z

    return p0
.end method

.method public init(J)V
    .registers 3

    .line 228
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mNextPssTime:J

    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    return-void
.end method

.method public final synthetic lambda$onProcessActive$0(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/ProcessStatsService;ILcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .registers 14

    .line 289
    iget-object v0, p6, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v0, :cond_9

    if-eq v0, p1, :cond_9

    .line 290
    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 292
    :cond_9
    iget-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v4, p1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v6, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    move-object v0, p2

    move v3, p3

    move-object v2, p5

    move-object v1, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessStatsService;->updateProcessStateHolderLocked(Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;Ljava/lang/String;IJLjava/lang/String;)V

    .line 294
    iget-object p0, v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eq p0, p4, :cond_21

    .line 295
    invoke-virtual {p0}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    :cond_21
    return-void
.end method

.method public onHasStartedServicesChanged(Z)V
    .registers 3

    const/16 v0, 0x80

    if-eqz p1, :cond_8

    .line 742
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    return-void

    .line 744
    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    return-void
.end method

.method public onProcessActive(Landroid/app/IApplicationThread;Lcom/android/server/am/ProcessStatsService;)V
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    .line 268
    iget-object v0, v1, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_6c

    .line 269
    iget-object v7, v1, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v7

    move-object/from16 v3, p2

    .line 270
    :try_start_d
    iget-object v14, v3, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_66

    .line 271
    :try_start_10
    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getBaseProcessTracker()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v2

    .line 272
    iget-object v0, v1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v15

    if-eqz v2, :cond_38

    .line 274
    monitor-enter v15
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_33

    .line 276
    :try_start_1d
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 277
    invoke-virtual {v15}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v13

    const/4 v9, -0x1

    move-object v8, v2

    .line 275
    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 278
    monitor-exit v15
    :try_end_2f
    .catchall {:try_start_1d .. :try_end_2f} :catchall_35

    .line 279
    :try_start_2f
    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_38

    :catchall_33
    move-exception v0

    goto :goto_68

    :catchall_35
    move-exception v0

    .line 278
    :try_start_36
    monitor-exit v15
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    :try_start_37
    throw v0

    .line 281
    :cond_38
    :goto_38
    iget-object v0, v1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 282
    iget-object v4, v1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-static {v4}, Lcom/android/server/am/ProcessProfileRecord;->getUidForAttribution(Lcom/android/server/am/ProcessRecord;)I

    move-result v4

    .line 283
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v11, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v0, v1, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v13, v0, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    move-object v8, v3

    move v10, v4

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v5

    move v4, v10

    .line 286
    invoke-virtual {v1, v5}, Lcom/android/server/am/ProcessProfileRecord;->setBaseProcessTracker(Lcom/android/internal/app/procstats/ProcessState;)V

    .line 287
    invoke-virtual {v5}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    .line 288
    new-instance v0, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda1;

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ProcessProfileRecord;Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/ProcessStatsService;ILcom/android/internal/app/procstats/ProcessState;)V

    invoke-virtual {v15, v0}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/BiConsumer;)V

    .line 298
    iput-object v6, v1, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 299
    monitor-exit v14
    :try_end_64
    .catchall {:try_start_37 .. :try_end_64} :catchall_33

    .line 300
    :try_start_64
    monitor-exit v7
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_66

    return-void

    :catchall_66
    move-exception v0

    goto :goto_6a

    .line 299
    :goto_68
    :try_start_68
    monitor-exit v14
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_33

    :try_start_69
    throw v0

    .line 300
    :goto_6a
    monitor-exit v7
    :try_end_6b
    .catchall {:try_start_69 .. :try_end_6b} :catchall_66

    throw v0

    .line 302
    :cond_6c
    iget-object v2, v1, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 303
    :try_start_6f
    iput-object v6, v1, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 304
    monitor-exit v2

    return-void

    :catchall_73
    move-exception v0

    monitor-exit v2
    :try_end_75
    .catchall {:try_start_6f .. :try_end_75} :catchall_73

    throw v0
.end method

.method public onProcessFrozen()V
    .registers 6

    .line 242
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v1, :cond_24

    .line 245
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object p0

    .line 246
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 247
    monitor-enter p0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_22

    .line 248
    :try_start_16
    invoke-virtual {p0}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/app/procstats/ProcessState;->onProcessFrozen(JLandroid/util/ArrayMap;)V

    .line 249
    monitor-exit p0

    goto :goto_24

    :catchall_1f
    move-exception v1

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_1f

    :try_start_21
    throw v1

    :catchall_22
    move-exception p0

    goto :goto_26

    .line 251
    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_22

    throw p0
.end method

.method public onProcessInactive(Lcom/android/server/am/ProcessStatsService;)V
    .registers 12

    .line 309
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 310
    :try_start_3
    iget-object v2, p1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_4b

    .line 311
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/am/ProcessProfileRecord;->getBaseProcessTracker()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v3, :cond_3b

    .line 313
    iget-object v4, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v9

    .line 314
    monitor-enter v9
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_34

    .line 316
    :try_start_14
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 317
    invoke-virtual {v9}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v8

    const/4 v4, -0x1

    .line 315
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 318
    monitor-exit v9
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_37

    .line 319
    :try_start_25
    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 320
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessProfileRecord;->setBaseProcessTracker(Lcom/android/internal/app/procstats/ProcessState;)V

    .line 321
    new-instance p1, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda0;

    invoke-direct {p1, v3}, Lcom/android/server/am/ProcessProfileRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/procstats/ProcessState;)V

    invoke-virtual {v9, p1}, Lcom/android/server/am/PackageList;->forEachPackageProcessStats(Ljava/util/function/Consumer;)V
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_34

    goto :goto_3b

    :catchall_34
    move-exception v0

    move-object p0, v0

    goto :goto_4e

    :catchall_37
    move-exception v0

    move-object p0, v0

    .line 318
    :try_start_39
    monitor-exit v9
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_37

    :try_start_3a
    throw p0

    .line 329
    :cond_3b
    :goto_3b
    iput-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mThread:Landroid/app/IApplicationThread;

    .line 330
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_34

    .line 331
    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_4b

    .line 332
    iget-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurrentHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 333
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mHistoricalHostingComponentTypes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    :catchall_4b
    move-exception v0

    move-object p0, v0

    goto :goto_50

    .line 330
    :goto_4e
    :try_start_4e
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_34

    :try_start_4f
    throw p0

    .line 331
    :goto_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_4f .. :try_end_51} :catchall_4b

    throw p0
.end method

.method public onProcessUnfrozen()V
    .registers 6

    .line 255
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v1, :cond_24

    .line 258
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object p0

    .line 259
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 260
    monitor-enter p0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_22

    .line 261
    :try_start_16
    invoke-virtual {p0}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/app/procstats/ProcessState;->onProcessUnfrozen(JLandroid/util/ArrayMap;)V

    .line 262
    monitor-exit p0

    goto :goto_24

    :catchall_1f
    move-exception v1

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_1f

    :try_start_21
    throw v1

    :catchall_22
    move-exception p0

    goto :goto_26

    .line 264
    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_22

    throw p0
.end method

.method public reportExcessiveCpu()V
    .registers 4

    .line 529
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 530
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v1, :cond_20

    .line 532
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object p0

    .line 533
    monitor-enter p0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_1e

    .line 534
    :try_start_12
    invoke-virtual {p0}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/procstats/ProcessState;->reportExcessiveCpu(Landroid/util/ArrayMap;)V

    .line 535
    monitor-exit p0

    goto :goto_20

    :catchall_1b
    move-exception v1

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v1

    :catchall_1e
    move-exception p0

    goto :goto_22

    .line 537
    :cond_20
    :goto_20
    monitor-exit v0

    return-void

    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_1e

    throw p0
.end method

.method public setBaseProcessTracker(Lcom/android/internal/app/procstats/ProcessState;)V
    .registers 2

    .line 238
    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    return-void
.end method

.method public setCurProcBatteryStats(Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;)V
    .registers 2

    .line 482
    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurProcBatteryStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    return-void
.end method

.method public setLastCachedPss(J)V
    .registers 3

    .line 373
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedPss:J

    return-void
.end method

.method public setLastCachedRss(J)V
    .registers 3

    .line 383
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedRss:J

    return-void
.end method

.method public setLastCachedSwapPss(J)V
    .registers 3

    .line 403
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastCachedSwapPss:J

    return-void
.end method

.method public setLastLowMemory(J)V
    .registers 3

    .line 502
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastLowMemory:J

    return-void
.end method

.method public setLastMemInfo(Landroid/os/Debug$MemoryInfo;)V
    .registers 2

    .line 423
    iput-object p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastMemInfo:Landroid/os/Debug$MemoryInfo;

    return-void
.end method

.method public setLastMemInfoTime(J)V
    .registers 3

    .line 433
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastMemInfoTime:J

    return-void
.end method

.method public setLastPss(J)V
    .registers 3

    .line 363
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPss:J

    return-void
.end method

.method public setLastPssTime(J)V
    .registers 3

    .line 343
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastPssTime:J

    return-void
.end method

.method public setLastRequestedGc(J)V
    .registers 3

    .line 492
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRequestedGc:J

    return-void
.end method

.method public setLastRss(J)V
    .registers 3

    .line 413
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastRss:J

    return-void
.end method

.method public setLastSwapPss(J)V
    .registers 3

    .line 393
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastSwapPss:J

    return-void
.end method

.method public setNextPssTime(J)V
    .registers 3

    .line 353
    iput-wide p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mNextPssTime:J

    return-void
.end method

.method public setPendingUiClean(Z)V
    .registers 2

    .line 473
    iput-boolean p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPendingUiClean:Z

    .line 474
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setPendingUiClean(Z)V

    return-void
.end method

.method public setPid(I)V
    .registers 2

    .line 610
    iput p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPid:I

    return-void
.end method

.method public setProcessTrackerState(II)V
    .registers 11

    .line 541
    iget-object v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 542
    :try_start_7
    iget-object v2, p0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v2, :cond_2c

    const/16 v0, 0x14

    if-eq p1, v0, :cond_2c

    .line 545
    iget-object p0, p0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object p0

    .line 546
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 547
    monitor-enter p0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_29

    .line 549
    :try_start_1a
    invoke-virtual {p0}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v7

    move v3, p1

    move v4, p2

    .line 548
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 550
    monitor-exit p0

    goto :goto_2c

    :catchall_25
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_25

    :try_start_28
    throw p1

    :catchall_29
    move-exception v0

    move-object p0, v0

    goto :goto_2e

    .line 553
    :cond_2c
    :goto_2c
    monitor-exit v1

    return-void

    :goto_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_29

    throw p0
.end method

.method public setPssProcState(I)V
    .registers 2

    .line 443
    iput p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssProcState:I

    return-void
.end method

.method public setPssStatType(I)V
    .registers 2

    .line 453
    iput p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mPssStatType:I

    return-void
.end method

.method public setReportLowMemory(Z)V
    .registers 2

    .line 512
    iput-boolean p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mReportLowMemory:Z

    return-void
.end method

.method public setTrimMemoryLevel(I)V
    .registers 2

    .line 463
    iput p1, p0, Lcom/android/server/am/ProcessProfileRecord;->mTrimMemoryLevel:I

    return-void
.end method

.method public updateProcState(Lcom/android/server/am/psc/ProcessRecordInternal;)V
    .registers 4

    .line 640
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mSetProcState:I

    .line 641
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurAdj()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mSetAdj:I

    .line 642
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurRawAdj()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mCurRawAdj:I

    .line 643
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getLastStateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ProcessProfileRecord;->mLastStateTime:J

    return-void
.end method
