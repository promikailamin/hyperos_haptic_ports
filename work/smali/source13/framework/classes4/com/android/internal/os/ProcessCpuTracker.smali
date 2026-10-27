.class public Lcom/android/internal/os/ProcessCpuTracker;
.super Ljava/lang/Object;
.source "ProcessCpuTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ProcessCpuTracker$Stats;,
        Lcom/android/internal/os/ProcessCpuTracker$FilterStats;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist LOAD_AVERAGE_FORMAT:[I

.field private static final blacklist PROCESS_FULL_STATS_FORMAT:[I

.field static final blacklist PROCESS_FULL_STAT_MAJOR_FAULTS:I = 0x2

.field static final blacklist PROCESS_FULL_STAT_MINOR_FAULTS:I = 0x1

.field static final blacklist PROCESS_FULL_STAT_STIME:I = 0x4

.field static final blacklist PROCESS_FULL_STAT_UTIME:I = 0x3

.field static final blacklist PROCESS_FULL_STAT_VSIZE:I = 0x5

.field private static final blacklist PROCESS_STATS_FORMAT:[I

.field static final blacklist PROCESS_STAT_MAJOR_FAULTS:I = 0x1

.field static final blacklist PROCESS_STAT_MINOR_FAULTS:I = 0x0

.field static final blacklist PROCESS_STAT_STIME:I = 0x3

.field static final blacklist PROCESS_STAT_UTIME:I = 0x2

.field private static final blacklist SYSTEM_CPU_FORMAT:[I

.field private static final blacklist TAG:Ljava/lang/String; = "ProcessCpuTracker"

.field private static final blacklist localLOGV:Z = false

.field private static final blacklist sLoadComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBaseIdleTime:J

.field private blacklist mBaseIoWaitTime:J

.field private blacklist mBaseIrqTime:J

.field private blacklist mBaseSoftIrqTime:J

.field private blacklist mBaseSystemTime:J

.field private blacklist mBaseUserTime:J

.field private blacklist mCurPids:[I

.field private blacklist mCurThreadPids:[I

.field private blacklist mCurrentSampleRealTime:J

.field private blacklist mCurrentSampleTime:J

.field private blacklist mCurrentSampleWallTime:J

.field private blacklist mFirst:Z

.field private final blacklist mIncludeThreads:Z

.field private final blacklist mJiffyMillis:J

.field private blacklist mLastSampleRealTime:J

.field private blacklist mLastSampleTime:J

.field private blacklist mLastSampleWallTime:J

.field private blacklist mLoad1:F

.field private blacklist mLoad15:F

.field private blacklist mLoad5:F

.field private final blacklist mLoadAverageData:[F

.field private final blacklist mProcStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mProcessFullStatsData:[J

.field private final blacklist mProcessFullStatsStringData:[Ljava/lang/String;

.field private final blacklist mProcessStatsData:[J

.field private blacklist mRelIdleTime:I

.field private blacklist mRelIoWaitTime:I

.field private blacklist mRelIrqTime:I

.field private blacklist mRelSoftIrqTime:I

.field private blacklist mRelStatsAreGood:Z

.field private blacklist mRelSystemTime:I

.field private blacklist mRelUserTime:I

.field private final blacklist mSinglePidStatsData:[J

.field private final blacklist mSystemCpuData:[J

.field private final blacklist mWorkingProcs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWorkingProcsSorted:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 56
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    .line 86
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_4e

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_FULL_STATS_FORMAT:[I

    .line 121
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_80

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->SYSTEM_CPU_FORMAT:[I

    .line 134
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_94

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->LOAD_AVERAGE_FORMAT:[I

    .line 294
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker$1;

    invoke-direct {v0}, Lcom/android/internal/os/ProcessCpuTracker$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    return-void

    nop

    :array_2c
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
    .end array-data

    :array_4e
    .array-data 4
        0x20
        0x1220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
    .end array-data

    :array_80
    .array-data 4
        0x120
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
    .end array-data

    :array_94
    .array-data 4
        0x4020
        0x4020
        0x4020
    .end array-data
.end method

.method public constructor greylist <init>(Z)V
    .registers 6
    .param p1, "includeThreads"    # Z

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x4

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessStatsData:[J

    .line 84
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSinglePidStatsData:[J

    .line 118
    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsStringData:[Ljava/lang/String;

    .line 119
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsData:[J

    .line 132
    const/4 v0, 0x7

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSystemCpuData:[J

    .line 140
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoadAverageData:[F

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    .line 148
    iput v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    .line 149
    iput v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    .line 315
    iput-boolean p1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mIncludeThreads:Z

    .line 316
    sget v0, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    .line 317
    .local v0, "jiffyHz":J
    const-wide/16 v2, 0x3e8

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    .line 318
    return-void
.end method

.method private blacklist collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I
    .registers 34
    .param p1, "statsFile"    # Ljava/lang/String;
    .param p2, "parentPid"    # I
    .param p3, "first"    # Z
    .param p4, "curPids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ[I",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;)[I"
        }
    .end annotation

    .line 436
    .local p5, "allProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    move-object/from16 v6, p0

    move/from16 v7, p2

    move-object/from16 v8, p5

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    invoke-static {v9, v10}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v11

    .line 437
    .local v11, "pids":[I
    const/4 v12, 0x0

    if-nez v11, :cond_13

    move v0, v12

    goto :goto_14

    :cond_13
    array-length v0, v11

    :goto_14
    move v13, v0

    .line 438
    .local v13, "NP":I
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 439
    .local v0, "NS":I
    const/4 v1, 0x0

    .line 440
    .local v1, "curStatsIndex":I
    const/4 v2, 0x0

    move v14, v0

    move v15, v2

    .end local v0    # "NS":I
    .local v14, "NS":I
    .local v15, "i":I
    :goto_1d
    if-ge v15, v13, :cond_24c

    .line 441
    aget v4, v11, v15

    .line 442
    .local v4, "pid":I
    if-gez v4, :cond_2a

    .line 443
    move v13, v4

    .line 444
    move v9, v7

    move-object/from16 v19, v11

    const/4 v11, 0x1

    goto/16 :goto_256

    .line 446
    :cond_2a
    const/4 v0, 0x0

    if-ge v1, v14, :cond_34

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    goto :goto_35

    :cond_34
    move-object v2, v0

    :goto_35
    move-object v3, v2

    .line 448
    .local v3, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    const/16 v16, 0x2

    if-eqz v3, :cond_148

    iget v2, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    if-ne v2, v4, :cond_148

    .line 450
    iput-boolean v12, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    .line 451
    iput-boolean v12, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 452
    add-int/lit8 v18, v1, 0x1

    .line 457
    .end local v1    # "curStatsIndex":I
    .local v18, "curStatsIndex":I
    iget-boolean v1, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    if-eqz v1, :cond_130

    .line 458
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 460
    .local v1, "uptime":J
    iget-object v5, v6, Lcom/android/internal/os/ProcessCpuTracker;->mProcessStatsData:[J

    .line 461
    .local v5, "procStats":[J
    iget-object v12, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    move-wide/from16 v20, v1

    .end local v1    # "uptime":J
    .local v20, "uptime":J
    sget-object v1, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    invoke-static {v12, v1, v0, v5, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v0

    if-nez v0, :cond_69

    .line 463
    move-object/from16 v19, v11

    move/from16 v26, v13

    move/from16 v22, v14

    move/from16 v23, v15

    const/4 v11, 0x1

    goto/16 :goto_13c

    .line 466
    :cond_69
    const/4 v0, 0x0

    aget-wide v1, v5, v0

    .line 467
    .local v1, "minfaults":J
    const/4 v0, 0x1

    aget-wide v9, v5, v0

    .line 468
    .local v9, "majfaults":J
    aget-wide v22, v5, v16

    move-wide/from16 v24, v1

    .end local v1    # "minfaults":J
    .local v24, "minfaults":J
    iget-wide v0, v6, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    move/from16 v26, v13

    .end local v13    # "NP":I
    .local v26, "NP":I
    mul-long v12, v22, v0

    .line 469
    .local v12, "utime":J
    const/4 v2, 0x3

    aget-wide v16, v5, v2

    mul-long v1, v16, v0

    .line 471
    .local v1, "stime":J
    move/from16 v22, v14

    move/from16 v23, v15

    .end local v14    # "NS":I
    .end local v15    # "i":I
    .local v22, "NS":I
    .local v23, "i":I
    iget-wide v14, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    cmp-long v0, v12, v14

    if-nez v0, :cond_a7

    iget-wide v14, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    cmp-long v0, v1, v14

    if-nez v0, :cond_a7

    .line 472
    const/4 v0, 0x0

    iput v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 473
    iput v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 474
    iput v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 475
    iput v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 476
    iget-boolean v14, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    if-eqz v14, :cond_a2

    .line 477
    iput-boolean v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    move-object/from16 v19, v11

    const/4 v11, 0x1

    goto/16 :goto_13c

    .line 476
    :cond_a2
    move-object/from16 v19, v11

    const/4 v11, 0x1

    goto/16 :goto_13c

    .line 482
    :cond_a7
    iget-boolean v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    if-nez v0, :cond_af

    .line 483
    const/4 v14, 0x1

    iput-boolean v14, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->active:Z

    goto :goto_b0

    .line 482
    :cond_af
    const/4 v14, 0x1

    .line 486
    :goto_b0
    if-gez v7, :cond_f0

    .line 487
    iget-object v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    invoke-direct {v6, v3, v0}, Lcom/android/internal/os/ProcessCpuTracker;->getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V

    .line 488
    iget-object v0, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v0, :cond_e2

    .line 489
    iget-object v15, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    const/16 v16, 0x0

    iget-object v0, v6, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    iget-object v14, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-wide/from16 v7, v20

    move-wide/from16 v20, v9

    move-wide v9, v1

    .end local v1    # "stime":J
    .local v7, "uptime":J
    .local v9, "stime":J
    .local v20, "majfaults":J
    move-object v1, v15

    move v2, v4

    move-object v15, v3

    .end local v3    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v15, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move/from16 v3, v16

    move/from16 v27, v4

    .end local v4    # "pid":I
    .local v27, "pid":I
    move-object/from16 v4, v17

    move-object/from16 v16, v5

    move-object/from16 v19, v11

    const/4 v11, 0x1

    .end local v5    # "procStats":[J
    .end local v11    # "pids":[I
    .local v16, "procStats":[J
    .local v19, "pids":[I
    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    goto :goto_fd

    .line 488
    .end local v7    # "uptime":J
    .end local v15    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v16    # "procStats":[J
    .end local v19    # "pids":[I
    .end local v27    # "pid":I
    .restart local v1    # "stime":J
    .restart local v3    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v4    # "pid":I
    .restart local v5    # "procStats":[J
    .local v9, "majfaults":J
    .restart local v11    # "pids":[I
    .local v20, "uptime":J
    :cond_e2
    move-object v15, v3

    move/from16 v27, v4

    move-object/from16 v16, v5

    move-object/from16 v19, v11

    move v11, v14

    move-wide/from16 v7, v20

    move-wide/from16 v20, v9

    move-wide v9, v1

    .end local v1    # "stime":J
    .end local v3    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v4    # "pid":I
    .end local v5    # "procStats":[J
    .end local v11    # "pids":[I
    .restart local v7    # "uptime":J
    .local v9, "stime":J
    .restart local v15    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v16    # "procStats":[J
    .restart local v19    # "pids":[I
    .local v20, "majfaults":J
    .restart local v27    # "pid":I
    goto :goto_fd

    .line 486
    .end local v7    # "uptime":J
    .end local v15    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v16    # "procStats":[J
    .end local v19    # "pids":[I
    .end local v27    # "pid":I
    .restart local v1    # "stime":J
    .restart local v3    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v4    # "pid":I
    .restart local v5    # "procStats":[J
    .local v9, "majfaults":J
    .restart local v11    # "pids":[I
    .local v20, "uptime":J
    :cond_f0
    move-object v15, v3

    move/from16 v27, v4

    move-object/from16 v16, v5

    move-object/from16 v19, v11

    move v11, v14

    move-wide/from16 v7, v20

    move-wide/from16 v20, v9

    move-wide v9, v1

    .line 500
    .end local v1    # "stime":J
    .end local v3    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v4    # "pid":I
    .end local v5    # "procStats":[J
    .end local v11    # "pids":[I
    .restart local v7    # "uptime":J
    .local v9, "stime":J
    .restart local v15    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v16    # "procStats":[J
    .restart local v19    # "pids":[I
    .local v20, "majfaults":J
    .restart local v27    # "pid":I
    :goto_fd
    iget-wide v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    sub-long v1, v7, v0

    iput-wide v1, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    .line 501
    iput-wide v7, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    .line 502
    iget-wide v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    sub-long v0, v12, v0

    long-to-int v0, v0

    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 503
    iget-wide v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    sub-long v1, v9, v0

    long-to-int v0, v1

    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 504
    iput-wide v12, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    .line 505
    iput-wide v9, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    .line 506
    iget-wide v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    sub-long v1, v24, v0

    long-to-int v0, v1

    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 507
    iget-wide v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    sub-long v0, v20, v0

    long-to-int v0, v0

    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 508
    move-wide/from16 v0, v24

    .end local v24    # "minfaults":J
    .local v0, "minfaults":J
    iput-wide v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    .line 509
    move-wide/from16 v2, v20

    .end local v20    # "majfaults":J
    .local v2, "majfaults":J
    iput-wide v2, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    .line 510
    iput-boolean v11, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 511
    .end local v0    # "minfaults":J
    .end local v2    # "majfaults":J
    .end local v7    # "uptime":J
    .end local v9    # "stime":J
    .end local v12    # "utime":J
    .end local v16    # "procStats":[J
    goto :goto_13c

    .line 457
    .end local v19    # "pids":[I
    .end local v22    # "NS":I
    .end local v23    # "i":I
    .end local v26    # "NP":I
    .end local v27    # "pid":I
    .restart local v3    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v4    # "pid":I
    .restart local v11    # "pids":[I
    .restart local v13    # "NP":I
    .restart local v14    # "NS":I
    .local v15, "i":I
    :cond_130
    move/from16 v27, v4

    move-object/from16 v19, v11

    move/from16 v26, v13

    move/from16 v22, v14

    move/from16 v23, v15

    const/4 v11, 0x1

    move-object v15, v3

    .line 440
    .end local v3    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v4    # "pid":I
    .end local v11    # "pids":[I
    .end local v13    # "NP":I
    .end local v14    # "NS":I
    .end local v15    # "i":I
    .restart local v19    # "pids":[I
    .restart local v22    # "NS":I
    .restart local v23    # "i":I
    .restart local v26    # "NP":I
    :goto_13c
    move/from16 v9, p2

    move-object/from16 v8, p5

    move/from16 v1, v18

    move/from16 v14, v22

    move/from16 v15, v23

    goto/16 :goto_23f

    .line 448
    .end local v18    # "curStatsIndex":I
    .end local v19    # "pids":[I
    .end local v22    # "NS":I
    .end local v23    # "i":I
    .end local v26    # "NP":I
    .local v1, "curStatsIndex":I
    .restart local v3    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v4    # "pid":I
    .restart local v11    # "pids":[I
    .restart local v13    # "NP":I
    .restart local v14    # "NS":I
    .restart local v15    # "i":I
    :cond_148
    move/from16 v27, v4

    move-object/from16 v19, v11

    move/from16 v26, v13

    move/from16 v22, v14

    move/from16 v23, v15

    const/4 v11, 0x1

    move-object v15, v3

    .line 516
    .end local v3    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v4    # "pid":I
    .end local v11    # "pids":[I
    .end local v13    # "NP":I
    .end local v14    # "NS":I
    .local v15, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v19    # "pids":[I
    .restart local v22    # "NS":I
    .restart local v23    # "i":I
    .restart local v26    # "NP":I
    .restart local v27    # "pid":I
    if-eqz v15, :cond_17a

    iget v2, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    move/from16 v7, v27

    .end local v27    # "pid":I
    .local v7, "pid":I
    if-le v2, v7, :cond_15f

    move-object/from16 v8, p5

    goto :goto_17e

    .line 584
    :cond_15f
    const/4 v0, 0x0

    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 585
    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 586
    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 587
    iput v0, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 588
    iput-boolean v11, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    .line 589
    iput-boolean v11, v15, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 590
    move-object/from16 v8, p5

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 591
    add-int/lit8 v14, v22, -0x1

    .line 597
    .end local v22    # "NS":I
    .restart local v14    # "NS":I
    add-int/lit8 v0, v23, -0x1

    .line 598
    .end local v23    # "i":I
    .local v0, "i":I
    move/from16 v9, p2

    move v15, v0

    goto/16 :goto_23f

    .line 516
    .end local v0    # "i":I
    .end local v7    # "pid":I
    .end local v14    # "NS":I
    .restart local v22    # "NS":I
    .restart local v23    # "i":I
    .restart local v27    # "pid":I
    :cond_17a
    move-object/from16 v8, p5

    move/from16 v7, v27

    .line 518
    .end local v27    # "pid":I
    .restart local v7    # "pid":I
    :goto_17e
    new-instance v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget-boolean v3, v6, Lcom/android/internal/os/ProcessCpuTracker;->mIncludeThreads:Z

    move/from16 v9, p2

    invoke-direct {v2, v7, v9, v3}, Lcom/android/internal/os/ProcessCpuTracker$Stats;-><init>(IIZ)V

    move-object v10, v2

    .line 519
    .end local v15    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v10, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    invoke-virtual {v8, v1, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 520
    add-int/lit8 v12, v1, 0x1

    .line 521
    .end local v1    # "curStatsIndex":I
    .local v12, "curStatsIndex":I
    add-int/lit8 v14, v22, 0x1

    .line 526
    .end local v22    # "NS":I
    .restart local v14    # "NS":I
    iget-object v13, v6, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsStringData:[Ljava/lang/String;

    .line 527
    .local v13, "procStatsString":[Ljava/lang/String;
    iget-object v15, v6, Lcom/android/internal/os/ProcessCpuTracker;->mProcessFullStatsData:[J

    .line 528
    .local v15, "procStats":[J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_uptime:J

    .line 529
    iget-object v1, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 531
    .local v5, "path":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_FULL_STATS_FORMAT:[I

    invoke-static {v5, v1, v13, v15, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v0

    if-eqz v0, :cond_1cc

    .line 537
    const/4 v0, 0x5

    aget-wide v0, v15, v0

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    .line 539
    iput-boolean v11, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    .line 540
    const/4 v0, 0x0

    aget-object v1, v13, v0

    iput-object v1, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 541
    aget-wide v0, v15, v11

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    .line 542
    aget-wide v0, v15, v16

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    .line 543
    const/4 v0, 0x3

    aget-wide v0, v15, v0

    iget-wide v2, v6, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v0, v2

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    .line 544
    const/4 v0, 0x4

    aget-wide v0, v15, v0

    iget-wide v2, v6, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v0, v2

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    goto :goto_1f2

    .line 551
    :cond_1cc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping unknown process pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessCpuTracker"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const-string v0, "<unknown>"

    iput-object v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 553
    const-wide/16 v0, 0x0

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    .line 554
    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_majfaults:J

    iput-wide v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_minfaults:J

    .line 557
    :goto_1f2
    if-gez v9, :cond_217

    .line 558
    iget-object v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    invoke-direct {v6, v10, v0}, Lcom/android/internal/os/ProcessCpuTracker;->getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V

    .line 559
    iget-object v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v0, :cond_214

    .line 560
    iget-object v1, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v4, v6, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    iget-object v2, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v16, v2

    move v2, v7

    move-object/from16 v17, v5

    .end local v5    # "path":Ljava/lang/String;
    .local v17, "path":Ljava/lang/String;
    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, v6, Lcom/android/internal/os/ProcessCpuTracker;->mCurThreadPids:[I

    goto :goto_229

    .line 559
    .end local v17    # "path":Ljava/lang/String;
    .restart local v5    # "path":Ljava/lang/String;
    :cond_214
    move-object/from16 v17, v5

    .end local v5    # "path":Ljava/lang/String;
    .restart local v17    # "path":Ljava/lang/String;
    goto :goto_229

    .line 563
    .end local v17    # "path":Ljava/lang/String;
    .restart local v5    # "path":Ljava/lang/String;
    :cond_217
    move-object/from16 v17, v5

    .end local v5    # "path":Ljava/lang/String;
    .restart local v17    # "path":Ljava/lang/String;
    iget-boolean v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    if-eqz v0, :cond_229

    .line 564
    iget-object v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    iput-object v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 565
    iget-object v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/internal/os/ProcessCpuTracker;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    .line 572
    :cond_229
    :goto_229
    const/4 v0, 0x0

    iput v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 573
    iput v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 574
    iput v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 575
    iput v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 576
    iput-boolean v11, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    .line 577
    if-nez p3, :cond_23c

    iget-boolean v0, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->interesting:Z

    if-eqz v0, :cond_23c

    .line 578
    iput-boolean v11, v10, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 440
    .end local v7    # "pid":I
    .end local v10    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v13    # "procStatsString":[Ljava/lang/String;
    .end local v15    # "procStats":[J
    .end local v17    # "path":Ljava/lang/String;
    :cond_23c
    move v1, v12

    move/from16 v15, v23

    .end local v12    # "curStatsIndex":I
    .end local v23    # "i":I
    .restart local v1    # "curStatsIndex":I
    .local v15, "i":I
    :goto_23f
    add-int/2addr v15, v11

    move-object/from16 v10, p4

    move v7, v9

    move-object/from16 v11, v19

    move/from16 v13, v26

    const/4 v12, 0x0

    move-object/from16 v9, p1

    goto/16 :goto_1d

    .end local v19    # "pids":[I
    .end local v26    # "NP":I
    .restart local v11    # "pids":[I
    .local v13, "NP":I
    :cond_24c
    move v9, v7

    move-object/from16 v19, v11

    move/from16 v26, v13

    move/from16 v22, v14

    move/from16 v23, v15

    const/4 v11, 0x1

    .line 601
    .end local v11    # "pids":[I
    .end local v15    # "i":I
    .restart local v19    # "pids":[I
    :goto_256
    if-ge v1, v14, :cond_272

    .line 603
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 604
    .local v0, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    const/4 v2, 0x0

    iput v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 605
    iput v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 606
    iput v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    .line 607
    iput v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    .line 608
    iput-boolean v11, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    .line 609
    iput-boolean v11, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    .line 610
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 611
    nop

    .end local v0    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    add-int/lit8 v14, v14, -0x1

    .line 613
    goto :goto_256

    .line 615
    :cond_272
    return-object v19
.end method

.method private static blacklist dumpProcessCpuProto(Landroid/util/proto/ProtoOutputStream;Lcom/android/internal/os/ProcessCpuTracker$Stats;Lcom/android/internal/os/ProcessCpuTracker$Stats;)V
    .registers 9
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "st"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .param p2, "proc"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 789
    const-wide v0, 0x20b00000010L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 790
    .local v0, "statToken":J
    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 791
    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 792
    iget-object v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    const-wide v3, 0x10900000003L

    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 793
    iget-boolean v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    const-wide v3, 0x10800000004L

    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 794
    iget-boolean v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    const-wide v3, 0x10800000005L

    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 795
    iget-wide v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    const-wide v4, 0x10500000006L

    invoke-virtual {p0, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 796
    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    const-wide v3, 0x10500000007L

    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 797
    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    const-wide v3, 0x10500000008L

    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 798
    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    const-wide v3, 0x10500000009L

    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 799
    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    const-wide v3, 0x1050000000aL

    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 800
    if-eqz p2, :cond_79

    .line 801
    const-wide v2, 0x1050000000bL

    iget v4, p2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 803
    :cond_79
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 804
    return-void
.end method

.method private blacklist getName(Lcom/android/internal/os/ProcessCpuTracker$Stats;Ljava/lang/String;)V
    .registers 8
    .param p1, "st"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .param p2, "cmdlineFile"    # Ljava/lang/String;

    .line 952
    iget-object v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 953
    .local v0, "newName":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    if-eqz v1, :cond_30

    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 954
    const-string v2, "app_process"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 955
    const-string v2, "<pre-initialized>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 956
    const-string/jumbo v2, "usap32"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 957
    const-string/jumbo v2, "usap64"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 958
    :cond_30
    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/android/internal/os/ProcStatsUtil;->readTerminatedProcFile(Ljava/lang/String;B)Ljava/lang/String;

    move-result-object v1

    .line 959
    .local v1, "cmdName":Ljava/lang/String;
    if-eqz v1, :cond_54

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_54

    .line 960
    move-object v0, v1

    .line 961
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 962
    .local v2, "i":I
    if-lez v2, :cond_54

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    if-ge v2, v4, :cond_54

    .line 963
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 966
    .end local v2    # "i":I
    :cond_54
    if-nez v0, :cond_58

    .line 967
    iget-object v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 970
    .end local v1    # "cmdName":Ljava/lang/String;
    :cond_58
    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    if-eqz v1, :cond_64

    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    .line 971
    :cond_64
    iput-object v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 972
    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/internal/os/ProcessCpuTracker;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    .line 974
    :cond_6e
    return-void
.end method

.method private blacklist printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V
    .registers 31
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "totalTime"    # I
    .param p6, "user"    # I
    .param p7, "system"    # I
    .param p8, "iowait"    # I
    .param p9, "irq"    # I
    .param p10, "softIrq"    # I
    .param p11, "minFaults"    # I
    .param p12, "majFaults"    # I

    .line 906
    move-object/from16 v6, p1

    move/from16 v7, p3

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 907
    if-nez p5, :cond_1a

    const/4 v0, 0x1

    move v15, v0

    .end local p5    # "totalTime":I
    .local v0, "totalTime":I
    goto :goto_1c

    .end local v0    # "totalTime":I
    .restart local p5    # "totalTime":I
    :cond_1a
    move/from16 v15, p5

    .line 908
    .end local p5    # "totalTime":I
    .local v15, "totalTime":I
    :goto_1c
    add-int v0, v8, v9

    add-int/2addr v0, v10

    add-int/2addr v0, v11

    add-int/2addr v0, v12

    int-to-long v2, v0

    int-to-long v4, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 909
    const-string v0, "% "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 910
    if-ltz v7, :cond_39

    .line 911
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 912
    const-string v0, "/"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 914
    :cond_39
    move-object/from16 v4, p4

    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 915
    const-string v0, ": "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 916
    int-to-long v2, v8

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 917
    const-string v0, "% user + "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 918
    int-to-long v2, v9

    int-to-long v4, v15

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 919
    const-string v0, "% kernel"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 920
    const-string v4, " + "

    if-lez v10, :cond_7c

    .line 921
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 922
    int-to-long v2, v10

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v7, v4

    move-wide/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 923
    const-string v0, "% iowait"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7d

    .line 920
    :cond_7c
    move-object v7, v4

    .line 925
    :goto_7d
    if-lez v11, :cond_90

    .line 926
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 927
    int-to-long v2, v11

    int-to-long v4, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 928
    const-string v0, "% irq"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 930
    :cond_90
    if-lez v12, :cond_a3

    .line 931
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 932
    int-to-long v2, v12

    int-to-long v4, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/ProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 933
    const-string v0, "% softirq"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 935
    :cond_a3
    if-gtz v13, :cond_a7

    if-lez v14, :cond_c8

    .line 936
    :cond_a7
    const-string v0, " / faults:"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 937
    const-string v0, " "

    if-lez v13, :cond_bb

    .line 938
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 939
    invoke-virtual {v6, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 940
    const-string v1, " minor"

    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 942
    :cond_bb
    if-lez v14, :cond_c8

    .line 943
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 944
    invoke-virtual {v6, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 945
    const-string v0, " major"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 948
    :cond_c8
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 949
    return-void
.end method

.method private blacklist printRatio(Ljava/io/PrintWriter;JJ)V
    .registers 14
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "numerator"    # J
    .param p4, "denominator"    # J

    .line 891
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p2

    div-long/2addr v0, p4

    .line 892
    .local v0, "thousands":J
    const-wide/16 v2, 0xa

    div-long v4, v0, v2

    .line 893
    .local v4, "hundreds":J
    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 894
    cmp-long v6, v4, v2

    if-gez v6, :cond_20

    .line 895
    mul-long/2addr v2, v4

    sub-long v2, v0, v2

    .line 896
    .local v2, "remainder":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_20

    .line 897
    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 898
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 901
    .end local v2    # "remainder":J
    :cond_20
    return-void
.end method


# virtual methods
.method final blacklist buildWorkingProcs()V
    .registers 8

    .line 691
    iget-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    if-nez v0, :cond_65

    .line 692
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 693
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 694
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    const/4 v2, 0x1

    if-ge v1, v0, :cond_5c

    .line 695
    iget-object v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 696
    .local v3, "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget-boolean v4, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    if-eqz v4, :cond_59

    .line 697
    iget-object v4, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    iget-object v4, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v4, :cond_59

    iget-object v4, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v2, :cond_59

    .line 699
    iget-object v2, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 700
    iget-object v2, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 701
    .local v2, "M":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3c
    if-ge v4, v2, :cond_52

    .line 702
    iget-object v5, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 703
    .local v5, "tstats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget-boolean v6, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    if-eqz v6, :cond_4f

    .line 704
    iget-object v6, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    .end local v5    # "tstats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_4f
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    .line 707
    .end local v4    # "j":I
    :cond_52
    iget-object v4, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 694
    .end local v2    # "M":I
    .end local v3    # "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 711
    .end local v1    # "i":I
    :cond_5c
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/internal/os/ProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 712
    iput-boolean v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    .line 714
    .end local v0    # "N":I
    :cond_65
    return-void
.end method

.method public final blacklist countStats()I
    .registers 2

    .line 717
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final greylist-max-r countWorkingStats()I
    .registers 2

    .line 738
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->buildWorkingProcs()V

    .line 739
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final blacklist dumpProto(Ljava/io/FileDescriptor;)V
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 749
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 750
    .local v0, "now":J
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 751
    .local v2, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 752
    .local v3, "currentLoadToken":J
    iget v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    const-wide v6, 0x10200000001L

    invoke-virtual {v2, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 753
    iget v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    const-wide v6, 0x10200000002L

    invoke-virtual {v2, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 754
    iget v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    const-wide v6, 0x10200000003L

    invoke-virtual {v2, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 755
    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 757
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->buildWorkingProcs()V

    .line 759
    const-wide v5, 0x10300000002L

    invoke-virtual {v2, v5, v6, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 760
    iget-wide v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    const-wide v7, 0x10300000003L

    invoke-virtual {v2, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 761
    iget-wide v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    const-wide v7, 0x10300000004L

    invoke-virtual {v2, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 762
    iget-wide v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleRealTime:J

    const-wide v7, 0x10300000005L

    invoke-virtual {v2, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 763
    iget-wide v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    const-wide v7, 0x10300000006L

    invoke-virtual {v2, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 764
    iget-wide v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleWallTime:J

    const-wide v7, 0x10300000007L

    invoke-virtual {v2, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 765
    iget-wide v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleWallTime:J

    const-wide v7, 0x10300000008L

    invoke-virtual {v2, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 767
    iget v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    const-wide v6, 0x10500000009L

    invoke-virtual {v2, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 768
    iget v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    const-wide v6, 0x1050000000aL

    invoke-virtual {v2, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 769
    iget v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    const-wide v6, 0x1050000000bL

    invoke-virtual {v2, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 770
    iget v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    const-wide v6, 0x1050000000cL

    invoke-virtual {v2, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 771
    iget v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    const-wide v6, 0x1050000000dL

    invoke-virtual {v2, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 772
    iget v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    const-wide v6, 0x1050000000eL

    invoke-virtual {v2, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 773
    iget v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    add-int/2addr v5, v6

    .line 775
    .local v5, "totalTime":I
    const-wide v6, 0x1050000000fL

    invoke-virtual {v2, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 777
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_d5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_104

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 778
    .local v7, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    const/4 v8, 0x0

    invoke-static {v2, v7, v8}, Lcom/android/internal/os/ProcessCpuTracker;->dumpProcessCpuProto(Landroid/util/proto/ProtoOutputStream;Lcom/android/internal/os/ProcessCpuTracker$Stats;Lcom/android/internal/os/ProcessCpuTracker$Stats;)V

    .line 779
    iget-boolean v8, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-nez v8, :cond_103

    iget-object v8, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    if-eqz v8, :cond_103

    .line 780
    iget-object v8, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_f3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_103

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 781
    .local v9, "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    invoke-static {v2, v9, v7}, Lcom/android/internal/os/ProcessCpuTracker;->dumpProcessCpuProto(Landroid/util/proto/ProtoOutputStream;Lcom/android/internal/os/ProcessCpuTracker$Stats;Lcom/android/internal/os/ProcessCpuTracker$Stats;)V

    .line 782
    .end local v9    # "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    goto :goto_f3

    .line 784
    .end local v7    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_103
    goto :goto_d5

    .line 785
    :cond_104
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 786
    return-void
.end method

.method public blacklist getCpuTimeForPid(I)J
    .registers 9
    .param p1, "pid"    # I

    .line 623
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSinglePidStatsData:[J

    monitor-enter v0

    .line 624
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/stat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 625
    .local v1, "statFile":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mSinglePidStatsData:[J

    .line 626
    .local v2, "statsData":[J
    sget-object v3, Lcom/android/internal/os/ProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 628
    const/4 v3, 0x2

    aget-wide v3, v2, v3

    const/4 v5, 0x3

    aget-wide v5, v2, v5

    add-long/2addr v3, v5

    .line 630
    .local v3, "time":J
    iget-wide v5, p0, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v5, v3

    monitor-exit v0

    return-wide v5

    .line 632
    .end local v3    # "time":J
    :cond_33
    const-wide/16 v3, 0x0

    monitor-exit v0

    return-wide v3

    .line 633
    .end local v1    # "statFile":Ljava/lang/String;
    .end local v2    # "statsData":[J
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public final blacklist getLastIdleTime()I
    .registers 2

    .line 675
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    return v0
.end method

.method public final blacklist getLastIoWaitTime()I
    .registers 2

    .line 654
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    return v0
.end method

.method public final blacklist getLastIrqTime()I
    .registers 2

    .line 661
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    return v0
.end method

.method public final blacklist getLastSoftIrqTime()I
    .registers 2

    .line 668
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    return v0
.end method

.method public final blacklist getLastSystemTime()I
    .registers 2

    .line 647
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    return v0
.end method

.method public final blacklist getLastUserTime()I
    .registers 2

    .line 640
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    return v0
.end method

.method public final blacklist getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .registers 3
    .param p1, "index"    # I

    .line 721
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    return-object v0
.end method

.method public final blacklist getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;
    .registers 7
    .param p1, "filter"    # Lcom/android/internal/os/ProcessCpuTracker$FilterStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/ProcessCpuTracker$FilterStats;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation

    .line 725
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 726
    .local v0, "statses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 727
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "p":I
    :goto_12
    if-ge v2, v1, :cond_28

    .line 728
    iget-object v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 729
    .local v3, "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    invoke-interface {p1, v3}, Lcom/android/internal/os/ProcessCpuTracker$FilterStats;->needed(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 730
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    .end local v3    # "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 733
    .end local v2    # "p":I
    :cond_28
    return-object v0
.end method

.method public final blacklist getTotalCpuPercent()F
    .registers 6

    .line 683
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v1, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    add-int v2, v0, v1

    iget v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v2, v3

    iget v4, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    add-int/2addr v2, v4

    .line 684
    .local v2, "denom":I
    if-gtz v2, :cond_10

    .line 685
    const/4 v0, 0x0

    return v0

    .line 687
    :cond_10
    add-int/2addr v0, v1

    add-int/2addr v0, v3

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public final greylist-max-r getWorkingStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .registers 3
    .param p1, "index"    # I

    .line 744
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    return-object v0
.end method

.method public final blacklist hasGoodLastStats()Z
    .registers 2

    .line 679
    iget-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mRelStatsAreGood:Z

    return v0
.end method

.method public blacklist init()V
    .registers 2

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    .line 330
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 331
    return-void
.end method

.method public blacklist onLoadChanged(FFF)V
    .registers 4
    .param p1, "load1"    # F
    .param p2, "load5"    # F
    .param p3, "load15"    # F

    .line 321
    return-void
.end method

.method public blacklist onMeasureProcessName(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 324
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist printCurrentLoad()Ljava/lang/String;
    .registers 5

    .line 807
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 808
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x80

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 809
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string v2, "Load: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 810
    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 811
    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 812
    iget v3, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(F)V

    .line 813
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 814
    iget v2, p0, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 815
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 816
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final blacklist printCurrentState(J)Ljava/lang/String;
    .registers 34
    .param p1, "now"    # J

    .line 820
    move-object/from16 v13, p0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v14, v0

    .line 822
    .local v14, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/ProcessCpuTracker;->buildWorkingProcs()V

    .line 824
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    move-object v15, v0

    .line 825
    .local v15, "sw":Ljava/io/StringWriter;
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    const/4 v1, 0x0

    const/16 v2, 0x400

    invoke-direct {v0, v15, v1, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    move-object v12, v0

    .line 827
    .local v12, "pw":Ljava/io/PrintWriter;
    const-string v0, "CPU usage from "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 828
    iget-wide v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    cmp-long v2, p1, v0

    const-string/jumbo v3, "ms to "

    if-lez v2, :cond_41

    .line 829
    sub-long v0, p1, v0

    invoke-virtual {v12, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 830
    invoke-virtual {v12, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 831
    iget-wide v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    sub-long v0, p1, v0

    invoke-virtual {v12, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 832
    const-string/jumbo v0, "ms ago"

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_56

    .line 834
    :cond_41
    sub-long v0, v0, p1

    invoke-virtual {v12, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 835
    invoke-virtual {v12, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 836
    iget-wide v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    sub-long v0, v0, p1

    invoke-virtual {v12, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 837
    const-string/jumbo v0, "ms later"

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 839
    :goto_56
    const-string v0, " ("

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 840
    new-instance v0, Ljava/util/Date;

    iget-wide v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleWallTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v14, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 841
    const-string v0, " to "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 842
    new-instance v0, Ljava/util/Date;

    iget-wide v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleWallTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v14, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 843
    const-string v0, ")"

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 845
    iget-wide v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    iget-wide v2, v13, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    sub-long v16, v0, v2

    .line 846
    .local v16, "sampleTime":J
    iget-wide v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    iget-wide v2, v13, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleRealTime:J

    sub-long v18, v0, v2

    .line 847
    .local v18, "sampleRealTime":J
    const-wide/16 v0, 0x0

    cmp-long v2, v18, v0

    const-wide/16 v3, 0x64

    if-lez v2, :cond_99

    mul-long v0, v16, v3

    div-long v0, v0, v18

    :cond_99
    move-wide v10, v0

    .line 848
    .local v10, "percAwake":J
    cmp-long v0, v10, v3

    if-eqz v0, :cond_ab

    .line 849
    const-string v0, " with "

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 850
    invoke-virtual {v12, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    .line 851
    const-string v0, "% awake"

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 853
    :cond_ab
    const-string v0, ":"

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 855
    iget v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v0, v1

    iget v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    add-int/2addr v0, v1

    iget v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v0, v1

    iget v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    add-int/2addr v0, v1

    iget v1, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    add-int v20, v0, v1

    .line 861
    .local v20, "totalTime":I
    iget-object v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 862
    .local v9, "N":I
    const/4 v0, 0x0

    move v8, v0

    .local v8, "i":I
    :goto_ca
    if-ge v8, v9, :cond_1a3

    .line 863
    iget-object v0, v13, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 864
    .local v7, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget-boolean v0, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    if-eqz v0, :cond_dd

    const-string v0, " +"

    :goto_db
    move-object v2, v0

    goto :goto_e7

    :cond_dd
    iget-boolean v0, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-eqz v0, :cond_e4

    const-string v0, " -"

    goto :goto_db

    :cond_e4
    const-string v0, "  "

    goto :goto_db

    :goto_e7
    iget v3, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    iget-object v4, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    long-to-int v5, v0

    iget v6, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v1, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    iget v0, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_minfaults:I

    move-wide/from16 v24, v10

    .end local v10    # "percAwake":J
    .local v24, "percAwake":J
    iget v10, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_majfaults:I

    move v11, v0

    move-object/from16 v0, p0

    move/from16 v26, v1

    move-object v1, v12

    move-object/from16 v27, v7

    .end local v7    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v27, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move/from16 v7, v26

    move/from16 v26, v8

    .end local v8    # "i":I
    .local v26, "i":I
    move/from16 v8, v21

    move/from16 v21, v9

    .end local v9    # "N":I
    .local v21, "N":I
    move/from16 v9, v22

    move/from16 v22, v10

    move/from16 v10, v23

    move-object/from16 v23, v12

    .end local v12    # "pw":Ljava/io/PrintWriter;
    .local v23, "pw":Ljava/io/PrintWriter;
    move/from16 v12, v22

    invoke-direct/range {v0 .. v12}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 867
    move-object/from16 v12, v27

    .end local v27    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v12, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget-boolean v0, v12, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-nez v0, :cond_197

    iget-object v0, v12, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    if-eqz v0, :cond_197

    .line 868
    iget-object v0, v12, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 869
    .local v11, "M":I
    const/4 v0, 0x0

    move v10, v0

    .local v10, "j":I
    :goto_12d
    if-ge v10, v11, :cond_190

    .line 870
    iget-object v0, v12, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 872
    .local v9, "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    invoke-static {}, Lcom/android/internal/os/ProcessCpuTrackerStub;->getInstance()Lcom/android/internal/os/ProcessCpuTrackerStub;

    move-result-object v0

    invoke-virtual {v0, v12, v9}, Lcom/android/internal/os/ProcessCpuTrackerStub;->isDisableThread(Lcom/android/internal/os/ProcessCpuTracker$Stats;Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z

    move-result v0

    if-nez v0, :cond_181

    .line 874
    nop

    .line 875
    iget-boolean v0, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    if-eqz v0, :cond_14b

    const-string v0, "   +"

    :goto_149
    move-object v2, v0

    goto :goto_155

    :cond_14b
    iget-boolean v0, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-eqz v0, :cond_152

    const-string v0, "   -"

    goto :goto_149

    :cond_152
    const-string v0, "    "

    goto :goto_149

    :goto_155
    iget v3, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    iget-object v4, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget-wide v0, v12, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    long-to-int v5, v0

    iget v6, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v7, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    const/4 v8, 0x0

    const/16 v22, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    .line 874
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v30, v9

    .end local v9    # "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v30, "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move/from16 v9, v22

    move/from16 v22, v10

    .end local v10    # "j":I
    .local v22, "j":I
    move/from16 v10, v27

    move/from16 v27, v11

    .end local v11    # "M":I
    .local v27, "M":I
    move/from16 v11, v28

    move-object/from16 v28, v12

    .end local v12    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .local v28, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move/from16 v12, v29

    invoke-direct/range {v0 .. v12}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    goto :goto_189

    .line 872
    .end local v22    # "j":I
    .end local v27    # "M":I
    .end local v28    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v30    # "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v9    # "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v10    # "j":I
    .restart local v11    # "M":I
    .restart local v12    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_181
    move-object/from16 v30, v9

    move/from16 v22, v10

    move/from16 v27, v11

    move-object/from16 v28, v12

    .line 869
    .end local v9    # "tst":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v10    # "j":I
    .end local v11    # "M":I
    .end local v12    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v22    # "j":I
    .restart local v27    # "M":I
    .restart local v28    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :goto_189
    add-int/lit8 v10, v22, 0x1

    move/from16 v11, v27

    move-object/from16 v12, v28

    .end local v22    # "j":I
    .restart local v10    # "j":I
    goto :goto_12d

    .end local v27    # "M":I
    .end local v28    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v11    # "M":I
    .restart local v12    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_190
    move/from16 v22, v10

    move/from16 v27, v11

    move-object/from16 v28, v12

    .end local v10    # "j":I
    .end local v11    # "M":I
    .end local v12    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v22    # "j":I
    .restart local v27    # "M":I
    .restart local v28    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    goto :goto_199

    .line 867
    .end local v22    # "j":I
    .end local v27    # "M":I
    .end local v28    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v12    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_197
    move-object/from16 v28, v12

    .line 862
    .end local v12    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :goto_199
    add-int/lit8 v8, v26, 0x1

    move/from16 v9, v21

    move-object/from16 v12, v23

    move-wide/from16 v10, v24

    .end local v26    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_ca

    .end local v21    # "N":I
    .end local v23    # "pw":Ljava/io/PrintWriter;
    .end local v24    # "percAwake":J
    .local v9, "N":I
    .local v10, "percAwake":J
    .local v12, "pw":Ljava/io/PrintWriter;
    :cond_1a3
    move/from16 v26, v8

    move/from16 v21, v9

    move-wide/from16 v24, v10

    move-object/from16 v23, v12

    .line 883
    .end local v8    # "i":I
    .end local v9    # "N":I
    .end local v10    # "percAwake":J
    .end local v12    # "pw":Ljava/io/PrintWriter;
    .restart local v21    # "N":I
    .restart local v23    # "pw":Ljava/io/PrintWriter;
    .restart local v24    # "percAwake":J
    const/4 v3, -0x1

    iget v6, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    iget v7, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    iget v8, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    iget v9, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    iget v10, v13, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v2, ""

    const-string v4, "TOTAL"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v5, v20

    invoke-direct/range {v0 .. v12}, Lcom/android/internal/os/ProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 886
    invoke-virtual/range {v23 .. v23}, Ljava/io/PrintWriter;->flush()V

    .line 887
    invoke-virtual {v15}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist update()V
    .registers 26

    .line 337
    move-object/from16 v7, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 338
    .local v8, "nowUptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 339
    .local v10, "nowRealtime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 341
    .local v12, "nowWallTime":J
    iget-object v14, v7, Lcom/android/internal/os/ProcessCpuTracker;->mSystemCpuData:[J

    .line 342
    .local v14, "sysCpu":[J
    sget-object v0, Lcom/android/internal/os/ProcessCpuTracker;->SYSTEM_CPU_FORMAT:[I

    const-string v1, "/proc/stat"

    const/4 v15, 0x0

    invoke-static {v1, v0, v15, v14, v15}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v0

    const/16 v16, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_81

    .line 345
    aget-wide v0, v14, v5

    aget-wide v2, v14, v6

    add-long/2addr v0, v2

    iget-wide v2, v7, Lcom/android/internal/os/ProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v0, v2

    .line 347
    .local v0, "usertime":J
    aget-wide v17, v14, v16

    mul-long v5, v17, v2

    .line 349
    .local v5, "systemtime":J
    const/4 v4, 0x3

    aget-wide v17, v14, v4

    move-wide/from16 v19, v12

    .end local v12    # "nowWallTime":J
    .local v19, "nowWallTime":J
    mul-long v12, v17, v2

    .line 351
    .local v12, "idletime":J
    const/4 v4, 0x4

    aget-wide v17, v14, v4

    move-wide/from16 v21, v10

    .end local v10    # "nowRealtime":J
    .local v21, "nowRealtime":J
    mul-long v10, v17, v2

    .line 352
    .local v10, "iowaittime":J
    const/4 v4, 0x5

    aget-wide v17, v14, v4

    move-wide/from16 v23, v8

    .end local v8    # "nowUptime":J
    .local v23, "nowUptime":J
    mul-long v8, v17, v2

    .line 353
    .local v8, "irqtime":J
    const/4 v4, 0x6

    aget-wide v17, v14, v4

    mul-long v2, v2, v17

    .line 360
    .local v2, "softirqtime":J
    move-object/from16 v17, v14

    .end local v14    # "sysCpu":[J
    .local v17, "sysCpu":[J
    iget-wide v14, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseUserTime:J

    sub-long v14, v0, v14

    long-to-int v4, v14

    iput v4, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelUserTime:I

    .line 361
    iget-wide v14, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSystemTime:J

    sub-long v14, v5, v14

    long-to-int v4, v14

    iput v4, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelSystemTime:I

    .line 362
    iget-wide v14, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIoWaitTime:J

    sub-long v14, v10, v14

    long-to-int v4, v14

    iput v4, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelIoWaitTime:I

    .line 363
    iget-wide v14, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIrqTime:J

    sub-long v14, v8, v14

    long-to-int v4, v14

    iput v4, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelIrqTime:I

    .line 364
    iget-wide v14, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSoftIrqTime:J

    sub-long v14, v2, v14

    long-to-int v4, v14

    iput v4, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelSoftIrqTime:I

    .line 365
    iget-wide v14, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIdleTime:J

    sub-long v14, v12, v14

    long-to-int v4, v14

    iput v4, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelIdleTime:I

    .line 366
    const/4 v14, 0x1

    iput-boolean v14, v7, Lcom/android/internal/os/ProcessCpuTracker;->mRelStatsAreGood:Z

    .line 378
    iput-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseUserTime:J

    .line 379
    iput-wide v5, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSystemTime:J

    .line 380
    iput-wide v10, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIoWaitTime:J

    .line 381
    iput-wide v8, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIrqTime:J

    .line 382
    iput-wide v2, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseSoftIrqTime:J

    .line 383
    iput-wide v12, v7, Lcom/android/internal/os/ProcessCpuTracker;->mBaseIdleTime:J

    goto :goto_8a

    .line 342
    .end local v0    # "usertime":J
    .end local v2    # "softirqtime":J
    .end local v5    # "systemtime":J
    .end local v17    # "sysCpu":[J
    .end local v19    # "nowWallTime":J
    .end local v21    # "nowRealtime":J
    .end local v23    # "nowUptime":J
    .local v8, "nowUptime":J
    .local v10, "nowRealtime":J
    .local v12, "nowWallTime":J
    .restart local v14    # "sysCpu":[J
    :cond_81
    move-wide/from16 v23, v8

    move-wide/from16 v21, v10

    move-wide/from16 v19, v12

    move-object/from16 v17, v14

    move v14, v6

    .line 398
    .end local v8    # "nowUptime":J
    .end local v10    # "nowRealtime":J
    .end local v12    # "nowWallTime":J
    .end local v14    # "sysCpu":[J
    .restart local v17    # "sysCpu":[J
    .restart local v19    # "nowWallTime":J
    .restart local v21    # "nowRealtime":J
    .restart local v23    # "nowUptime":J
    :goto_8a
    iget-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    iput-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleTime:J

    .line 399
    move-wide/from16 v8, v23

    .end local v23    # "nowUptime":J
    .restart local v8    # "nowUptime":J
    iput-wide v8, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleTime:J

    .line 400
    iget-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    iput-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleRealTime:J

    .line 401
    move-wide/from16 v10, v21

    .end local v21    # "nowRealtime":J
    .restart local v10    # "nowRealtime":J
    iput-wide v10, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleRealTime:J

    .line 402
    iget-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleWallTime:J

    iput-wide v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLastSampleWallTime:J

    .line 403
    move-wide/from16 v12, v19

    .end local v19    # "nowWallTime":J
    .restart local v12    # "nowWallTime":J
    iput-wide v12, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurrentSampleWallTime:J

    .line 405
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v15

    .line 407
    .local v15, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_a6
    const-string v2, "/proc"

    const/4 v3, -0x1

    iget-boolean v4, v7, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    iget-object v5, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurPids:[I

    iget-object v6, v7, Lcom/android/internal/os/ProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    move-object/from16 v1, p0

    const/4 v0, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/ProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v1

    iput-object v1, v7, Lcom/android/internal/os/ProcessCpuTracker;->mCurPids:[I
    :try_end_b8
    .catchall {:try_start_a6 .. :try_end_b8} :catchall_ef

    .line 409
    invoke-static {v15}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 410
    nop

    .line 412
    iget-object v1, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoadAverageData:[F

    .line 413
    .local v1, "loadAverages":[F
    sget-object v2, Lcom/android/internal/os/ProcessCpuTracker;->LOAD_AVERAGE_FORMAT:[I

    const-string v3, "/proc/loadavg"

    const/4 v4, 0x0

    invoke-static {v3, v2, v4, v4, v1}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 415
    aget v2, v1, v0

    .line 416
    .local v2, "load1":F
    aget v3, v1, v14

    .line 417
    .local v3, "load5":F
    aget v4, v1, v16

    .line 418
    .local v4, "load15":F
    iget v5, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    cmpl-float v5, v2, v5

    if-nez v5, :cond_e1

    iget v5, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    cmpl-float v5, v3, v5

    if-nez v5, :cond_e1

    iget v5, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_ea

    .line 419
    :cond_e1
    iput v2, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoad1:F

    .line 420
    iput v3, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoad5:F

    .line 421
    iput v4, v7, Lcom/android/internal/os/ProcessCpuTracker;->mLoad15:F

    .line 422
    invoke-virtual {v7, v2, v3, v4}, Lcom/android/internal/os/ProcessCpuTracker;->onLoadChanged(FFF)V

    .line 429
    .end local v2    # "load1":F
    .end local v3    # "load5":F
    .end local v4    # "load15":F
    :cond_ea
    iput-boolean v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mWorkingProcsSorted:Z

    .line 430
    iput-boolean v0, v7, Lcom/android/internal/os/ProcessCpuTracker;->mFirst:Z

    .line 431
    return-void

    .line 409
    .end local v1    # "loadAverages":[F
    :catchall_ef
    move-exception v0

    invoke-static {v15}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 410
    throw v0
.end method
