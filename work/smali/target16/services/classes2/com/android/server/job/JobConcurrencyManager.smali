.class public Lcom/android/server/job/JobConcurrencyManager;
.super Ljava/lang/Object;
.source "JobConcurrencyManager.java"


# static fields
.field public static final CONFIG_LIMITS_SCREEN_OFF:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

.field public static final CONFIG_LIMITS_SCREEN_ON:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

.field public static final DEBUG:Z

.field public static final DEFAULT_CONCURRENCY_LIMIT:I

.field static final DEFAULT_MAX_WAIT_EJ_MS:J = 0x493e0L

.field static final DEFAULT_MAX_WAIT_REGULAR_MS:J = 0x1b7740L

.field static final DEFAULT_MAX_WAIT_UI_MS:J = 0x493e0L

.field public static final DEFAULT_PKG_CONCURRENCY_LIMIT_REGULAR:I

.field static final KEY_ENABLE_MAX_WAIT_TIME_BYPASS:Ljava/lang/String; = "concurrency_enable_max_wait_time_bypass"

.field static final KEY_MAX_WAIT_UI_MS:Ljava/lang/String; = "concurrency_max_wait_ui_ms"

.field static final KEY_PKG_CONCURRENCY_LIMIT_EJ:Ljava/lang/String; = "concurrency_pkg_concurrency_limit_ej"

.field static final KEY_PKG_CONCURRENCY_LIMIT_REGULAR:Ljava/lang/String; = "concurrency_pkg_concurrency_limit_regular"

.field static final MAX_CONCURRENCY_LIMIT:I = 0x40

.field static final NUM_WORK_TYPES:I = 0x7

.field public static final sConcurrencyHistogramLogger:Lcom/android/modules/expresslog/Histogram;

.field public static final sDeterminationComparator:Ljava/util/Comparator;


# instance fields
.field public final mActivePkgStats:Landroid/util/SparseArrayMap;

.field public final mActiveServices:Ljava/util/List;

.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mContext:Landroid/content/Context;

.field public final mContextAssignmentPool:Landroid/util/Pools$Pool;

.field public mCurrentInteractiveState:Z

.field public mEffectiveInteractiveState:Z

.field mGracePeriodObserver:Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

.field public final mHandler:Landroid/os/Handler;

.field public final mIdleContexts:Landroid/util/ArraySet;

.field public final mInjector:Lcom/android/server/job/JobConcurrencyManager$Injector;

.field public mLastMemoryTrimLevel:I

.field public mLastScreenOffRealtime:J

.field public mLastScreenOnRealtime:J

.field public final mLock:Ljava/lang/Object;

.field public mMaxWaitEjMs:J

.field public mMaxWaitRegularMs:J

.field public mMaxWaitTimeBypassEnabled:Z

.field public mMaxWaitUIMs:J

.field public mNextSystemStateRefreshTime:J

.field public final mNotificationCoordinator:Lcom/android/server/job/JobNotificationCoordinator;

.field public mNumDroppedContexts:I

.field public final mPackageStatsStagingCountClearer:Ljava/util/function/Consumer;

.field public mPkgConcurrencyLimitEj:I

.field public mPkgConcurrencyLimitRegular:I

.field public final mPkgStatsPool:Landroid/util/Pools$Pool;

.field public mPowerManager:Landroid/os/PowerManager;

.field public final mRampUpForScreenOff:Ljava/lang/Runnable;

.field public final mReceiver:Landroid/content/BroadcastReceiver;

.field public final mRecycledAssignmentInfo:Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;

.field public final mRecycledChanged:Landroid/util/ArraySet;

.field public final mRecycledIdle:Landroid/util/ArraySet;

.field public final mRecycledPreferredUidOnly:Ljava/util/ArrayList;

.field public final mRecycledPrivilegedState:Landroid/util/SparseIntArray;

.field public final mRecycledStoppable:Ljava/util/ArrayList;

.field public final mRunningJobs:Landroid/util/ArraySet;

.field public mScreenOffAdjustmentDelayMs:J

.field public final mService:Lcom/android/server/job/JobSchedulerService;

.field mShouldRestrictBgUser:Z

.field public final mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

.field public mSteadyStateConcurrencyLimit:I

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public final mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

.field public mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;


# direct methods
.method public static synthetic $r8$lambda$2kTQ5uVCnwIBu08oo2Y0ld4bb-s(Lcom/android/server/job/JobConcurrencyManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/JobConcurrencyManager;->rampUpForScreenOff()V

    return-void
.end method

.method public static synthetic $r8$lambda$JWaSmpy-skpvcLp4dKxayoZ4Bpk(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobConcurrencyManager$PackageStats;)V
    .registers 2

    .line 2139
    invoke-static {p1, p0}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->-$$Nest$mdumpLocked(Lcom/android/server/job/JobConcurrencyManager$PackageStats;Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VhD--0a_vmTAP5SEQ54BuaJ_sSE(Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;)I
    .registers 5

    if-ne p0, p1, :cond_3

    goto :goto_13

    .line 363
    :cond_3
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v0}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    .line 364
    iget-object v1, p1, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v1

    if-nez v0, :cond_15

    if-nez v1, :cond_28

    :goto_13
    const/4 p0, 0x0

    return p0

    :cond_15
    if-nez v1, :cond_18

    goto :goto_22

    .line 375
    :cond_18
    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    const/16 v2, 0x28

    if-ne v0, v2, :cond_24

    .line 376
    iget v0, v1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-eq v0, v2, :cond_2a

    :goto_22
    const/4 p0, -0x1

    return p0

    .line 379
    :cond_24
    iget v0, v1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-ne v0, v2, :cond_2a

    :cond_28
    const/4 p0, 0x1

    return p0

    .line 383
    :cond_2a
    iget-object p1, p1, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 384
    invoke-virtual {p1}, Lcom/android/server/job/JobServiceContext;->getExecutionStartTimeElapsed()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 385
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getExecutionStartTimeElapsed()J

    move-result-wide p0

    .line 383
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$nNxi-L4_H0efU9cBGIS9vGrT-zc(Lcom/android/server/job/JobConcurrencyManager$PackageStats;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->-$$Nest$mresetStagedCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/job/JobConcurrencyManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerManager(Lcom/android/server/job/JobConcurrencyManager;)Landroid/os/PowerManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monInteractiveStateChanged(Lcom/android/server/job/JobConcurrencyManager;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobConcurrencyManager;->onInteractiveStateChanged(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopOvertimeJobsLocked(Lcom/android/server/job/JobConcurrencyManager;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobConcurrencyManager;->stopOvertimeJobsLocked(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopUnexemptedJobsForDoze(Lcom/android/server/job/JobConcurrencyManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/JobConcurrencyManager;->stopUnexemptedJobsForDoze()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 36

    const/high16 v0, 0x3f000000    # 0.5f

    .line 258
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const v1, 0x3ecccccd    # 0.4f

    .line 252
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x3e19999a    # 0.15f

    .line 308
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const v3, 0x3e99999a    # 0.3f

    .line 305
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const v4, 0x3e2aaaab

    .line 284
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/16 v5, 0x40

    .line 260
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x3d4ccccd    # 0.05f

    .line 255
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const v7, 0x3e4ccccd    # 0.2f

    .line 253
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v8, 0x1

    .line 252
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x8

    .line 255
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    .line 253
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x4

    .line 254
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v14, 0x20

    .line 256
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x10

    move/from16 v17, v9

    .line 255
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v18, 0x3dcccccd    # 0.1f

    move/from16 v19, v12

    .line 254
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    .line 89
    sget-boolean v18, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    sput-boolean v18, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    .line 102
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v18

    if-eqz v18, :cond_73

    .line 103
    sput v17, Lcom/android/server/job/JobConcurrencyManager;->DEFAULT_CONCURRENCY_LIMIT:I

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    goto :goto_b1

    .line 105
    :cond_73
    new-instance v17, Lcom/android/internal/util/MemInfoReader;

    invoke-direct/range {v17 .. v17}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v17

    move/from16 v20, v14

    .line 106
    sget-object v14, Landroid/util/DataUnit;->GIGABYTES:Landroid/util/DataUnit;

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    const-wide/16 v2, 0x6

    invoke-virtual {v14, v2, v3}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v2

    cmp-long v2, v17, v2

    if-gtz v2, :cond_91

    .line 107
    sput v16, Lcom/android/server/job/JobConcurrencyManager;->DEFAULT_CONCURRENCY_LIMIT:I

    goto :goto_b1

    :cond_91
    const-wide/16 v2, 0x8

    .line 108
    invoke-virtual {v14, v2, v3}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v2

    cmp-long v2, v17, v2

    if-gtz v2, :cond_a0

    const/16 v2, 0x14

    .line 109
    sput v2, Lcom/android/server/job/JobConcurrencyManager;->DEFAULT_CONCURRENCY_LIMIT:I

    goto :goto_b1

    :cond_a0
    const-wide/16 v2, 0xc

    .line 110
    invoke-virtual {v14, v2, v3}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v2

    cmp-long v2, v17, v2

    if-gtz v2, :cond_ad

    .line 111
    sput v20, Lcom/android/server/job/JobConcurrencyManager;->DEFAULT_CONCURRENCY_LIMIT:I

    goto :goto_b1

    :cond_ad
    const/16 v2, 0x28

    .line 113
    sput v2, Lcom/android/server/job/JobConcurrencyManager;->DEFAULT_CONCURRENCY_LIMIT:I

    .line 128
    :goto_b1
    sget v25, Lcom/android/server/job/JobConcurrencyManager;->DEFAULT_CONCURRENCY_LIMIT:I

    div-int/lit8 v2, v25, 0x2

    sput v2, Lcom/android/server/job/JobConcurrencyManager;->DEFAULT_PKG_CONCURRENCY_LIMIT_REGULAR:I

    .line 247
    new-instance v2, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    new-instance v23, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    mul-int/lit8 v3, v25, 0x3

    div-int/lit8 v26, v3, 0x4

    .line 252
    invoke-static {v8, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v27

    .line 253
    invoke-static {v11, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v28

    .line 254
    invoke-static {v13, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v29

    .line 255
    invoke-static {v10, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v30

    invoke-static {v9, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v31

    .line 256
    invoke-static {v15, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v32

    .line 252
    invoke-static/range {v27 .. v32}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v27

    .line 258
    invoke-static {v9, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const/high16 v16, 0x3e800000    # 0.25f

    .line 259
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    move-object/from16 v17, v0

    .line 260
    invoke-static {v5, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 258
    invoke-static {v3, v14, v0}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v28

    const-string/jumbo v24, "screen_on_normal"

    invoke-direct/range {v23 .. v28}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;IILjava/util/List;Ljava/util/List;)V

    move-object/from16 v0, v23

    new-instance v23, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    div-int/lit8 v26, v25, 0x2

    .line 265
    invoke-static {v8, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v27

    .line 266
    invoke-static {v11, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v28

    .line 267
    invoke-static {v13, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v29

    .line 268
    invoke-static {v10, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v30

    invoke-static {v9, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v31

    .line 269
    invoke-static {v15, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v32

    .line 265
    invoke-static/range {v27 .. v32}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v27

    .line 271
    invoke-static {v9, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 272
    invoke-static {v15, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 273
    invoke-static {v5, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    .line 271
    invoke-static {v1, v3, v14}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v28

    const-string/jumbo v24, "screen_on_moderate"

    invoke-direct/range {v23 .. v28}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;IILjava/util/List;Ljava/util/List;)V

    move-object/from16 v1, v23

    new-instance v23, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    mul-int/lit8 v3, v25, 0x4

    div-int/lit8 v26, v3, 0xa

    const v3, 0x3f19999a    # 0.6f

    .line 278
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    move/from16 v18, v3

    .line 279
    invoke-static {v11, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    move-object/from16 v19, v7

    .line 280
    invoke-static {v13, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    move-object/from16 v20, v0

    .line 281
    invoke-static {v10, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 278
    invoke-static {v14, v3, v7, v0}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v27

    const v0, 0x3eaaaaab

    .line 283
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 284
    invoke-static {v15, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 285
    invoke-static {v5, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    .line 283
    invoke-static {v0, v3, v7}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v28

    const-string/jumbo v24, "screen_on_low"

    invoke-direct/range {v23 .. v28}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;IILjava/util/List;Ljava/util/List;)V

    move-object/from16 v0, v23

    new-instance v23, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    mul-int/lit8 v3, v25, 0x4

    div-int/lit8 v26, v3, 0xa

    const v3, 0x3f333333    # 0.7f

    .line 290
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 291
    invoke-static {v11, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    .line 292
    invoke-static {v13, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    move-object/from16 v29, v12

    .line 293
    invoke-static {v10, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    .line 290
    invoke-static {v3, v7, v14, v12}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v27

    .line 295
    invoke-static {v9, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 296
    invoke-static {v15, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    .line 297
    invoke-static {v5, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 295
    invoke-static {v3, v7, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v28

    const-string/jumbo v24, "screen_on_critical"

    invoke-direct/range {v23 .. v28}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;IILjava/util/List;Ljava/util/List;)V

    move-object/from16 v3, v20

    move-object/from16 v4, v23

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;-><init>(Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;)V

    sput-object v2, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_ON:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    .line 300
    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    new-instance v23, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    move-object/from16 v1, v22

    .line 305
    invoke-static {v8, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v30

    move-object/from16 v2, v19

    .line 306
    invoke-static {v11, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v31

    .line 307
    invoke-static {v13, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v32

    move-object/from16 v3, v21

    .line 308
    invoke-static {v10, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v33

    move-object/from16 v4, v29

    invoke-static {v9, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v34

    .line 309
    invoke-static {v15, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v35

    .line 305
    invoke-static/range {v30 .. v35}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v27

    .line 311
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    .line 312
    invoke-static {v15, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    .line 313
    invoke-static {v5, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    .line 311
    invoke-static {v7, v12, v14}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v28

    const-string/jumbo v24, "screen_off_normal"

    move/from16 v26, v25

    invoke-direct/range {v23 .. v28}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;IILjava/util/List;Ljava/util/List;)V

    move-object/from16 v7, v23

    new-instance v23, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    mul-int/lit8 v12, v25, 0x9

    div-int/lit8 v26, v12, 0xa

    .line 318
    invoke-static {v8, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v27

    .line 319
    invoke-static {v11, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v28

    .line 320
    invoke-static {v13, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v29

    .line 321
    invoke-static {v10, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v30

    invoke-static {v9, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v31

    .line 322
    invoke-static {v15, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v32

    .line 318
    invoke-static/range {v27 .. v32}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v27

    move-object/from16 v2, v17

    .line 324
    invoke-static {v9, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 325
    invoke-static {v15, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    .line 326
    invoke-static {v5, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    .line 324
    invoke-static {v2, v12, v14}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v28

    const-string/jumbo v24, "screen_off_moderate"

    invoke-direct/range {v23 .. v28}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;IILjava/util/List;Ljava/util/List;)V

    move-object/from16 v2, v23

    new-instance v23, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    mul-int/lit8 v12, v25, 0x6

    div-int/lit8 v26, v12, 0xa

    .line 331
    invoke-static {v8, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v17

    .line 332
    invoke-static {v11, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v18

    .line 333
    invoke-static {v13, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v19

    .line 334
    invoke-static {v10, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v20

    invoke-static {v9, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v21

    .line 335
    invoke-static {v15, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v22

    .line 331
    invoke-static/range {v17 .. v22}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v27

    .line 337
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 338
    invoke-static {v15, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    .line 339
    invoke-static {v5, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    .line 337
    invoke-static {v3, v12, v14}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v28

    const-string/jumbo v24, "screen_off_low"

    invoke-direct/range {v23 .. v28}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;IILjava/util/List;Ljava/util/List;)V

    move-object/from16 v3, v23

    new-instance v23, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    mul-int/lit8 v12, v25, 0x4

    div-int/lit8 v26, v12, 0xa

    .line 344
    invoke-static {v8, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 345
    invoke-static {v11, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    .line 346
    invoke-static {v13, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    .line 347
    invoke-static {v10, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 344
    invoke-static {v1, v8, v11, v6}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v27

    .line 349
    invoke-static {v9, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 350
    invoke-static {v15, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 351
    invoke-static {v5, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 349
    invoke-static {v1, v6, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v28

    const-string/jumbo v24, "screen_off_critical"

    invoke-direct/range {v23 .. v28}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;IILjava/util/List;Ljava/util/List;)V

    move-object/from16 v1, v23

    invoke-direct {v0, v7, v2, v3, v1}, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;-><init>(Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;)V

    sput-object v0, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_OFF:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    .line 359
    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/android/server/job/JobConcurrencyManager;->sDeterminationComparator:Ljava/util/Comparator;

    .line 476
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$UniformOptions;

    const/4 v2, 0x0

    const/high16 v3, 0x42c60000    # 99.0f

    const/16 v4, 0x64

    invoke-direct {v1, v4, v2, v3}, Lcom/android/modules/expresslog/Histogram$UniformOptions;-><init>(IFF)V

    const-string v2, "job_scheduler.value_hist_job_concurrency"

    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobConcurrencyManager;->sConcurrencyHistogramLogger:Lcom/android/modules/expresslog/Histogram;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 3

    .line 500
    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$Injector;

    invoke-direct {v0}, Lcom/android/server/job/JobConcurrencyManager$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/job/JobConcurrencyManager;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobConcurrencyManager$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobConcurrencyManager$Injector;)V
    .registers 6

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledChanged:Landroid/util/ArraySet;

    .line 390
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledIdle:Landroid/util/ArraySet;

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPreferredUidOnly:Ljava/util/ArrayList;

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledStoppable:Ljava/util/ArrayList;

    .line 393
    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;

    invoke-direct {v0}, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledAssignmentInfo:Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;

    .line 394
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPrivilegedState:Landroid/util/SparseIntArray;

    .line 401
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x60

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    .line 407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 410
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    const/4 v0, 0x0

    .line 412
    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mNumDroppedContexts:I

    .line 414
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    .line 416
    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-direct {v0}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    .line 418
    new-instance v0, Landroid/util/Pools$SimplePool;

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgStatsPool:Landroid/util/Pools$Pool;

    .line 421
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    .line 423
    sget-object v0, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_OFF:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    iget-object v0, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    const-wide/16 v0, 0x7530

    .line 426
    iput-wide v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mScreenOffAdjustmentDelayMs:J

    .line 432
    sget v0, Lcom/android/server/job/JobConcurrencyManager;->DEFAULT_CONCURRENCY_LIMIT:I

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    const/4 v0, 0x3

    .line 438
    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitEj:I

    .line 444
    sget v0, Lcom/android/server/job/JobConcurrencyManager;->DEFAULT_PKG_CONCURRENCY_LIMIT_REGULAR:I

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitRegular:I

    const/4 v0, 0x1

    .line 446
    iput-boolean v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitTimeBypassEnabled:Z

    const-wide/32 v0, 0x493e0

    .line 452
    iput-wide v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitUIMs:J

    .line 458
    iput-wide v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitEjMs:J

    const-wide/32 v0, 0x1b7740

    .line 464
    iput-wide v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitRegularMs:J

    .line 473
    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPackageStatsStagingCountClearer:Ljava/util/function/Consumer;

    .line 483
    new-instance v0, Lcom/android/internal/util/jobs/StatLogger;

    const-string v1, "assignJobsToContexts"

    const-string/jumbo v2, "refreshSystemState"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/jobs/StatLogger;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    .line 572
    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobConcurrencyManager$1;-><init>(Lcom/android/server/job/JobConcurrencyManager;)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 635
    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/job/JobConcurrencyManager;)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRampUpForScreenOff:Ljava/lang/Runnable;

    .line 505
    iput-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 506
    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->getLock()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLock:Ljava/lang/Object;

    .line 507
    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->getTestableContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mContext:Landroid/content/Context;

    .line 508
    iput-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mInjector:Lcom/android/server/job/JobConcurrencyManager$Injector;

    .line 509
    new-instance p2, Lcom/android/server/job/JobNotificationCoordinator;

    invoke-direct {p2}, Lcom/android/server/job/JobNotificationCoordinator;-><init>()V

    iput-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mNotificationCoordinator:Lcom/android/server/job/JobNotificationCoordinator;

    .line 511
    const-class p2, Landroid/app/ActivityManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManagerInternal;

    iput-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 512
    const-class p2, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/UserManagerInternal;

    iput-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 514
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mHandler:Landroid/os/Handler;

    .line 516
    new-instance p2, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

    invoke-direct {p2, p1}, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mGracePeriodObserver:Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

    .line 517
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x11101ee

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mShouldRestrictBgUser:Z

    return-void
.end method

.method public static varargs printAssignments(Ljava/lang/String;[Ljava/util/Collection;)Ljava/lang/String;
    .registers 9

    .line 2009
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    move v1, p0

    .line 2010
    :goto_18
    array-length v2, p1

    if-ge v1, v2, :cond_8d

    .line 2011
    aget-object v2, p1, v1

    .line 2013
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, p0

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 2014
    iget-object v5, v4, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    if-nez v5, :cond_38

    .line 2015
    iget-object v5, v4, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v5}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v5

    :cond_38
    if-gtz v1, :cond_3c

    if-lez v3, :cond_41

    .line 2018
    :cond_3c
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2020
    :cond_41
    const-string v6, "("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v4}, Lcom/android/server/job/JobServiceContext;->getId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_5d

    .line 2022
    const-string/jumbo v4, "nothing"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_82

    .line 2024
    :cond_5d
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6f

    .line 2025
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2027
    :cond_6f
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2029
    :goto_82
    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_8a
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 2033
    :cond_8d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static workTypeToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_47

    const/4 v0, 0x1

    if-eq p0, v0, :cond_44

    const/4 v0, 0x2

    if-eq p0, v0, :cond_41

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3e

    const/16 v0, 0x8

    if-eq p0, v0, :cond_3b

    const/16 v0, 0x10

    if-eq p0, v0, :cond_38

    const/16 v0, 0x20

    if-eq p0, v0, :cond_35

    const/16 v0, 0x40

    if-eq p0, v0, :cond_32

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WORK("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 222
    :cond_32
    const-string p0, "BGUSER"

    return-object p0

    .line 224
    :cond_35
    const-string p0, "BGUSER_IMPORTANT"

    return-object p0

    .line 220
    :cond_38
    const-string p0, "BG"

    return-object p0

    .line 218
    :cond_3b
    const-string p0, "EJ"

    return-object p0

    .line 216
    :cond_3e
    const-string p0, "UI"

    return-object p0

    .line 214
    :cond_41
    const-string p0, "FGS"

    return-object p0

    .line 212
    :cond_44
    const-string p0, "TOP"

    return-object p0

    .line 210
    :cond_47
    const-string p0, "NONE"

    return-object p0
.end method


# virtual methods
.method public addRunningJobForTesting(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5

    .line 2968
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2970
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobConcurrencyManager;->getPackageStatsForTesting(ILjava/lang/String;)Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    move-result-object v0

    .line 2971
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->-$$Nest$madjustRunningCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ZZ)V

    .line 2974
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_2f

    .line 2975
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobServiceContext;

    goto :goto_33

    .line 2977
    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/job/JobConcurrencyManager;->createNewJobServiceContext()Lcom/android/server/job/JobServiceContext;

    move-result-object v0

    .line 2979
    :goto_33
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobConcurrencyManager;->getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/job/JobServiceContext;->executeRunnableJob(Lcom/android/server/job/controllers/JobStatus;I)Z

    .line 2980
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final assignJobsToContextsInternalLocked()V
    .registers 12

    .line 782
    sget-boolean v6, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    const-string v7, "JobScheduler.Concurrency"

    if-eqz v6, :cond_d

    .line 783
    invoke-virtual {p0}, Lcom/android/server/job/JobConcurrencyManager;->printPendingQueueLocked()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_d
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->getPendingJobQueue()Lcom/android/server/job/PendingJobQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/job/PendingJobQueue;->size()I

    move-result v1

    if-nez v1, :cond_1a

    return-void

    .line 791
    :cond_1a
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledIdle:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPreferredUidOnly:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledStoppable:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledAssignmentInfo:Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/job/JobConcurrencyManager;->prepareForAssignmentDeterminationLocked(Landroid/util/ArraySet;Ljava/util/List;Ljava/util/List;Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;)V

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v6, :cond_3e

    .line 796
    new-array v1, v9, [Ljava/util/Collection;

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledStoppable:Ljava/util/ArrayList;

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPreferredUidOnly:Ljava/util/ArrayList;

    aput-object v2, v1, v10

    const-string/jumbo v2, "running jobs initial"

    invoke-static {v2, v1}, Lcom/android/server/job/JobConcurrencyManager;->printAssignments(Ljava/lang/String;[Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_3e
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledChanged:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledIdle:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPreferredUidOnly:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledStoppable:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledAssignmentInfo:Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/JobConcurrencyManager;->determineAssignmentsLocked(Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/List;Ljava/util/List;Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;)V

    if-eqz v6, :cond_7e

    const/4 v1, 0x3

    .line 805
    new-array v1, v1, [Ljava/util/Collection;

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledStoppable:Ljava/util/ArrayList;

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPreferredUidOnly:Ljava/util/ArrayList;

    aput-object v2, v1, v10

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledChanged:Landroid/util/ArraySet;

    aput-object v2, v1, v9

    const-string/jumbo v2, "running jobs final"

    invoke-static {v2, v1}, Lcom/android/server/job/JobConcurrencyManager;->printAssignments(Ljava/lang/String;[Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "work count results: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_7e
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledChanged:Landroid/util/ArraySet;

    invoke-virtual {p0, v1}, Lcom/android/server/job/JobConcurrencyManager;->carryOutAssignmentChangesLocked(Landroid/util/ArraySet;)V

    .line 813
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledChanged:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledIdle:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPreferredUidOnly:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledStoppable:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledAssignmentInfo:Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;

    iget-object v6, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPrivilegedState:Landroid/util/SparseIntArray;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/JobConcurrencyManager;->cleanUpAfterAssignmentChangesLocked(Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/List;Ljava/util/List;Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;Landroid/util/SparseIntArray;)V

    .line 817
    invoke-virtual {p0, v10}, Lcom/android/server/job/JobConcurrencyManager;->noteConcurrency(Z)V

    return-void
.end method

.method public assignJobsToContextsLocked()V
    .registers 4

    .line 773
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v0

    .line 775
    invoke-virtual {p0}, Lcom/android/server/job/JobConcurrencyManager;->assignJobsToContextsInternalLocked()V

    .line 777
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return-void
.end method

.method public final carryOutAssignmentChangesLocked(Landroid/util/ArraySet;)V
    .registers 8

    .line 1177
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_76

    .line 1178
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 1179
    iget-object v2, v1, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    .line 1180
    const-string v3, "JobScheduler.Concurrency"

    if-eqz v2, :cond_3c

    .line 1181
    sget-boolean v4, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v4, :cond_31

    .line 1182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "preempting job: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    :cond_31
    iget-object v2, v1, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    iget v3, v1, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReasonCode:I

    const/4 v4, 0x2

    iget-object v5, v1, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReason:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    goto :goto_6b

    .line 1189
    :cond_3c
    iget-object v2, v1, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    .line 1190
    sget-boolean v4, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v4, :cond_64

    .line 1191
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "About to run job on context "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 1192
    invoke-virtual {v5}, Lcom/android/server/job/JobServiceContext;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", job: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1191
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :cond_64
    iget-object v3, v1, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    iget v4, v1, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    invoke-virtual {p0, v3, v2, v4}, Lcom/android/server/job/JobConcurrencyManager;->startJobLocked(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;I)V

    .line 1197
    :goto_6b
    invoke-virtual {v1}, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->clear()V

    .line 1198
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    invoke-interface {v2, v1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_76
    return-void
.end method

.method public final cleanUpAfterAssignmentChangesLocked(Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/List;Ljava/util/List;Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;Landroid/util/SparseIntArray;)V
    .registers 11

    .line 1209
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_19

    .line 1210
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 1211
    invoke-virtual {v1}, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->clear()V

    .line 1212
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    invoke-interface {v2, v1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1214
    :cond_19
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1f
    if-ltz v0, :cond_32

    .line 1215
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 1216
    invoke-virtual {v1}, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->clear()V

    .line 1217
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    invoke-interface {v2, v1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_1f

    .line 1219
    :cond_32
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_38
    if-ltz v0, :cond_52

    .line 1220
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 1221
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    iget-object v3, v1, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1222
    invoke-virtual {v1}, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->clear()V

    .line 1223
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    invoke-interface {v2, v1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_38

    .line 1225
    :cond_52
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 1226
    invoke-virtual {p2}, Landroid/util/ArraySet;->clear()V

    .line 1227
    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 1228
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 1229
    invoke-virtual {p5}, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->clear()V

    .line 1230
    invoke-virtual {p6}, Landroid/util/SparseIntArray;->clear()V

    .line 1231
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {p1}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->resetStagingCount()V

    .line 1232
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPackageStatsStagingCountClearer:Ljava/util/function/Consumer;

    invoke-virtual {p1, p0}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final createNewJobServiceContext()Lcom/android/server/job/JobServiceContext;
    .registers 8

    .line 1983
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mInjector:Lcom/android/server/job/JobConcurrencyManager$Injector;

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mNotificationCoordinator:Lcom/android/server/job/JobNotificationCoordinator;

    const-string v2, "batterystats"

    .line 1985
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1984
    invoke-static {v2}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, v2, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 1986
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v2, p0

    .line 1983
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/JobConcurrencyManager$Injector;->createJobServiceContext(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobConcurrencyManager;Lcom/android/server/job/JobNotificationCoordinator;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobPackageTracker;Landroid/os/Looper;)Lcom/android/server/job/JobServiceContext;

    move-result-object p0

    return-object p0
.end method

.method public determineAssignmentsLocked(Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/List;Ljava/util/List;Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;)V
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;",
            ">;",
            "Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 914
    iget-object v6, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v6}, Lcom/android/server/job/JobSchedulerService;->getPendingJobQueue()Lcom/android/server/job/PendingJobQueue;

    move-result-object v6

    .line 915
    iget-object v7, v0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 916
    invoke-virtual {v6}, Lcom/android/server/job/PendingJobQueue;->resetIterator()V

    .line 918
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .line 924
    iget v8, v5, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningUi:I

    if-nez v8, :cond_21

    const/4 v8, 0x1

    goto :goto_22

    :cond_21
    const/4 v8, 0x0

    .line 925
    :goto_22
    iget v11, v5, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningEj:I

    if-nez v11, :cond_28

    const/4 v11, 0x1

    goto :goto_29

    :cond_28
    const/4 v11, 0x0

    .line 926
    :goto_29
    iget v12, v5, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningReg:I

    if-nez v12, :cond_2f

    const/4 v12, 0x1

    goto :goto_30

    :cond_2f
    const/4 v12, 0x0

    :goto_30
    const-wide v13, 0x7fffffffffffffffL

    .line 927
    :goto_35
    invoke-virtual {v6}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v15

    if-eqz v15, :cond_398

    const/16 v16, 0x1

    .line 928
    iget-object v10, v0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v10, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    const-string v9, "JobScheduler.Concurrency"

    if-eqz v10, :cond_6f

    .line 930
    const-string v10, "Pending queue contained a running job"

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    sget-boolean v10, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v10, :cond_67

    .line 932
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v8

    const-string v8, "Pending+running job: "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    :cond_67
    move/from16 v17, v8

    .line 934
    :goto_69
    invoke-virtual {v6, v15}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move/from16 v8, v17

    goto :goto_35

    :cond_6f
    move/from16 v17, v8

    .line 938
    iget-object v8, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPrivilegedState:Landroid/util/SparseIntArray;

    .line 939
    invoke-virtual {v0, v15, v8}, Lcom/android/server/job/JobConcurrencyManager;->hasImmediacyPrivilegeLocked(Lcom/android/server/job/controllers/JobStatus;Landroid/util/SparseIntArray;)Z

    move-result v8

    .line 940
    sget-boolean v10, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v10, :cond_99

    invoke-virtual {v0, v15}, Lcom/android/server/job/JobConcurrencyManager;->isSimilarJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v10

    if-eqz v10, :cond_99

    .line 941
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v6

    const-string v6, "Already running similar job to: "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_97
    move v6, v11

    goto :goto_9c

    :cond_99
    move-object/from16 v18, v6

    goto :goto_97

    .line 949
    :goto_9c
    iget-wide v10, v5, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->minPreferredUidOnlyWaitingTimeMs:J

    .line 950
    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    move/from16 v19, v6

    .line 958
    invoke-virtual {v0, v15}, Lcom/android/server/job/JobConcurrencyManager;->getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v6

    .line 959
    invoke-virtual {v0, v15}, Lcom/android/server/job/JobConcurrencyManager;->isPkgConcurrencyLimitedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v20

    move-wide/from16 v21, v10

    .line 960
    iget v10, v0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    if-le v7, v10, :cond_b5

    move/from16 v10, v16

    goto :goto_b6

    :cond_b5
    const/4 v10, 0x0

    .line 962
    :goto_b6
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v11

    move/from16 v23, v7

    if-lez v11, :cond_f8

    .line 963
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    .line 964
    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v7, v24

    check-cast v7, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    move/from16 v24, v10

    .line 965
    iget v10, v7, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preferredUid:I

    move/from16 v25, v12

    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v12

    if-eq v10, v12, :cond_e0

    iget v10, v7, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preferredUid:I

    const/4 v12, -0x1

    if-ne v10, v12, :cond_de

    goto :goto_e0

    :cond_de
    const/4 v10, 0x0

    goto :goto_e2

    :cond_e0
    :goto_e0
    move/from16 v10, v16

    .line 967
    :goto_e2
    iget-object v12, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v12, v6}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(I)I

    move-result v12

    if-eqz v10, :cond_fc

    if-nez v20, :cond_fc

    if-eqz v12, :cond_fc

    .line 973
    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 974
    iput-object v15, v7, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    .line 975
    iput v12, v7, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    move/from16 v10, v16

    goto :goto_fe

    :cond_f8
    move/from16 v24, v10

    move/from16 v25, v12

    :cond_fc
    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_fe
    if-nez v7, :cond_1a8

    .line 978
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_1a8

    .line 979
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    :goto_10c
    if-ltz v12, :cond_1a8

    .line 980
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    const/16 v26, 0x2

    move-object/from16 v11, v20

    check-cast v11, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 981
    iget-object v2, v11, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    if-nez v8, :cond_146

    if-nez v24, :cond_146

    move-object/from16 v20, v7

    .line 997
    iget-object v7, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v7, v2}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v7

    .line 998
    iget v2, v2, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    move/from16 v27, v10

    const/16 v10, 0x28

    if-lt v2, v10, :cond_143

    if-lt v7, v10, :cond_143

    iget v2, v5, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningImmediacyPrivileged:I

    iget-object v7, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 1002
    invoke-virtual {v7}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMaxTotal()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    if-le v2, v7, :cond_141

    goto :goto_143

    :cond_141
    const/4 v2, 0x0

    goto :goto_14b

    :cond_143
    :goto_143
    move/from16 v2, v16

    goto :goto_14b

    :cond_146
    move-object/from16 v20, v7

    move/from16 v27, v10

    move v2, v8

    :goto_14b
    if-nez v2, :cond_17a

    .line 1004
    iget-boolean v7, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitTimeBypassEnabled:Z

    if-eqz v7, :cond_17a

    .line 1005
    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v2

    if-eqz v2, :cond_164

    move-wide/from16 v28, v13

    .line 1006
    iget-wide v13, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitUIMs:J

    cmp-long v2, v21, v13

    if-ltz v2, :cond_162

    :goto_15f
    move/from16 v2, v16

    goto :goto_17c

    :cond_162
    const/4 v2, 0x0

    goto :goto_17c

    :cond_164
    move-wide/from16 v28, v13

    .line 1007
    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v2

    if-eqz v2, :cond_173

    .line 1008
    iget-wide v13, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitEjMs:J

    cmp-long v2, v21, v13

    if-ltz v2, :cond_162

    goto :goto_15f

    .line 1010
    :cond_173
    iget-wide v13, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitRegularMs:J

    cmp-long v2, v21, v13

    if-ltz v2, :cond_162

    goto :goto_15f

    :cond_17a
    move-wide/from16 v28, v13

    :goto_17c
    if-eqz v2, :cond_19c

    .line 1014
    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    iget-object v7, v11, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 1015
    invoke-virtual {v7}, Lcom/android/server/job/JobServiceContext;->getRunningJobWorkType()I

    move-result v7

    .line 1014
    invoke-virtual {v2, v6, v7}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(II)I

    move-result v2

    if-eqz v2, :cond_19c

    .line 1020
    iget-object v7, v11, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->shouldStopJobReason:Ljava/lang/String;

    iput-object v7, v11, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReason:Ljava/lang/String;

    const/4 v7, 0x4

    .line 1021
    iput v7, v11, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReasonCode:I

    .line 1023
    invoke-interface {v4, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1024
    iput-object v15, v11, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    .line 1025
    iput v2, v11, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    move-object v7, v11

    goto :goto_1b2

    :cond_19c
    add-int/lit8 v12, v12, -0x1

    move-object/from16 v2, p2

    move-object/from16 v7, v20

    move/from16 v10, v27

    move-wide/from16 v13, v28

    goto/16 :goto_10c

    :cond_1a8
    move-object/from16 v20, v7

    move/from16 v27, v10

    move-wide/from16 v28, v13

    const/16 v26, 0x2

    move-object/from16 v7, v20

    :goto_1b2
    if-nez v7, :cond_1b9

    if-eqz v24, :cond_1bc

    if-eqz v8, :cond_1b9

    goto :goto_1bc

    :cond_1b9
    move v4, v8

    goto/16 :goto_226

    .line 1034
    :cond_1bc
    :goto_1bc
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const v10, 0x7fffffff

    const-wide v11, 0x7fffffffffffffffL

    :goto_1ca
    if-ltz v2, :cond_21c

    .line 1035
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 1036
    iget-object v14, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v14}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v14

    move/from16 v20, v2

    if-eqz v14, :cond_1fd

    .line 1037
    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v4

    if-eq v2, v4, :cond_1e7

    :goto_1e6
    goto :goto_1fd

    .line 1040
    :cond_1e7
    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2, v14}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v2

    .line 1041
    iget v4, v15, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-lt v2, v4, :cond_1f2

    goto :goto_1e6

    :cond_1f2
    if-eqz v7, :cond_201

    if-le v10, v2, :cond_1f7

    goto :goto_201

    .line 1063
    :cond_1f7
    iget-wide v13, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->timeUntilStoppableMs:J

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    :cond_1fd
    :goto_1fd
    move v4, v8

    move/from16 v8, v26

    goto :goto_214

    :cond_201
    :goto_201
    move v4, v8

    if-eqz v7, :cond_20a

    .line 1049
    iget-wide v7, v7, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->timeUntilStoppableMs:J

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    .line 1057
    :cond_20a
    const-string v7, "higher bias job found"

    iput-object v7, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReason:Ljava/lang/String;

    move/from16 v8, v26

    .line 1058
    iput v8, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReasonCode:I

    move v10, v2

    move-object v7, v13

    :goto_214
    add-int/lit8 v2, v20, -0x1

    move/from16 v26, v8

    move v8, v4

    move-object/from16 v4, p4

    goto :goto_1ca

    :cond_21c
    move v4, v8

    if-eqz v7, :cond_226

    .line 1069
    iput-object v15, v7, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    .line 1070
    invoke-interface {v3, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1071
    iput-wide v11, v5, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->minPreferredUidOnlyWaitingTimeMs:J

    :cond_226
    :goto_226
    if-eqz v4, :cond_291

    if-eqz v7, :cond_241

    .line 1076
    iget-object v2, v7, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 1077
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    if-eqz v2, :cond_241

    .line 1082
    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v23, -0x1

    const/4 v8, 0x0

    .line 1084
    iput-object v8, v7, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    const/4 v10, 0x0

    .line 1085
    iput v10, v7, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    move/from16 v23, v2

    move-object v7, v8

    goto :goto_242

    :cond_241
    const/4 v10, 0x0

    :goto_242
    if-nez v7, :cond_289

    .line 1089
    sget-boolean v2, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v2, :cond_24d

    .line 1090
    const-string v2, "Allowing additional context because EJ would wait too long"

    invoke-static {v9, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    :cond_24d
    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    invoke-interface {v2}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    if-nez v2, :cond_25c

    .line 1094
    new-instance v2, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    invoke-direct {v2}, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;-><init>()V

    :cond_25c
    move-object v7, v2

    .line 1096
    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_274

    .line 1097
    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobServiceContext;

    goto :goto_278

    .line 1098
    :cond_274
    invoke-virtual {v0}, Lcom/android/server/job/JobConcurrencyManager;->createNewJobServiceContext()Lcom/android/server/job/JobServiceContext;

    move-result-object v2

    :goto_278
    iput-object v2, v7, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 1099
    iput-object v15, v7, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    .line 1100
    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v2, v6}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(I)I

    move-result v2

    if-eqz v2, :cond_285

    goto :goto_287

    :cond_285
    move/from16 v2, v16

    .line 1102
    :goto_287
    iput v2, v7, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    :cond_289
    move/from16 v8, v17

    move/from16 v11, v19

    move/from16 v12, v25

    goto/16 :goto_334

    :cond_291
    const/4 v10, 0x0

    if-nez v7, :cond_289

    .line 1104
    iget-boolean v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitTimeBypassEnabled:Z

    if-eqz v2, :cond_289

    .line 1106
    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v2

    if-eqz v2, :cond_2b1

    if-eqz v17, :cond_2b1

    .line 1107
    iget-wide v11, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitUIMs:J

    cmp-long v2, v21, v11

    if-ltz v2, :cond_2a9

    move/from16 v2, v16

    goto :goto_2aa

    :cond_2a9
    move v2, v10

    :goto_2aa
    xor-int/lit8 v8, v2, 0x1

    :goto_2ac
    move/from16 v11, v19

    :goto_2ae
    move/from16 v12, v25

    goto :goto_2df

    .line 1110
    :cond_2b1
    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v2

    if-eqz v2, :cond_2c8

    if-eqz v19, :cond_2c8

    .line 1111
    iget-wide v11, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitEjMs:J

    cmp-long v2, v21, v11

    if-ltz v2, :cond_2c2

    move/from16 v2, v16

    goto :goto_2c3

    :cond_2c2
    move v2, v10

    :goto_2c3
    xor-int/lit8 v11, v2, 0x1

    move/from16 v8, v17

    goto :goto_2ae

    :cond_2c8
    if-eqz v25, :cond_2db

    .line 1118
    iget-wide v11, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitRegularMs:J

    cmp-long v2, v21, v11

    if-ltz v2, :cond_2d3

    move/from16 v2, v16

    goto :goto_2d4

    :cond_2d3
    move v2, v10

    :goto_2d4
    xor-int/lit8 v12, v2, 0x1

    move/from16 v8, v17

    move/from16 v11, v19

    goto :goto_2df

    :cond_2db
    move v2, v10

    move/from16 v8, v17

    goto :goto_2ac

    :goto_2df
    if-eqz v2, :cond_334

    .line 1125
    sget-boolean v2, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v2, :cond_2ea

    .line 1126
    const-string v2, "Allowing additional context because job would wait too long"

    invoke-static {v9, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :cond_2ea
    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    invoke-interface {v2}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    if-nez v2, :cond_2f9

    .line 1130
    new-instance v2, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    invoke-direct {v2}, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;-><init>()V

    :cond_2f9
    move-object v7, v2

    .line 1132
    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_311

    .line 1133
    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v2, v9}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobServiceContext;

    goto :goto_315

    .line 1134
    :cond_311
    invoke-virtual {v0}, Lcom/android/server/job/JobConcurrencyManager;->createNewJobServiceContext()Lcom/android/server/job/JobServiceContext;

    move-result-object v2

    :goto_315
    iput-object v2, v7, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 1135
    iput-object v15, v7, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    .line 1136
    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v2, v6}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(I)I

    move-result v2

    if-eqz v2, :cond_324

    .line 1138
    iput v2, v7, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    goto :goto_334

    :cond_324
    move/from16 v2, v16

    :goto_326
    const/16 v9, 0x7f

    if-gt v2, v9, :cond_334

    and-int v9, v2, v6

    if-eqz v9, :cond_331

    .line 1143
    iput v2, v7, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    goto :goto_334

    :cond_331
    shl-int/lit8 v2, v2, 0x1

    goto :goto_326

    .line 1151
    :cond_334
    :goto_334
    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v9

    .line 1150
    invoke-virtual {v0, v2, v9}, Lcom/android/server/job/JobConcurrencyManager;->getPkgStatsLocked(ILjava/lang/String;)Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    move-result-object v2

    if-eqz v7, :cond_373

    .line 1153
    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1154
    iget-object v9, v7, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v9}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v9

    if-eqz v9, :cond_34f

    add-int/lit8 v23, v23, -0x1

    .line 1157
    :cond_34f
    iget-object v9, v7, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz v9, :cond_365

    .line 1158
    iput-boolean v4, v9, Lcom/android/server/job/controllers/JobStatus;->startedWithImmediacyPrivilege:Z

    add-int/lit8 v23, v23, 0x1

    .line 1160
    iget-object v4, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 1161
    invoke-virtual {v4, v9}, Lcom/android/server/job/JobSchedulerService;->getMinJobExecutionGuaranteeMs(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v13

    move v4, v11

    move-wide/from16 v10, v28

    .line 1160
    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    goto :goto_369

    :cond_365
    move v4, v11

    move-wide/from16 v10, v28

    move-wide v13, v10

    .line 1163
    :goto_369
    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v9

    move/from16 v10, v16

    invoke-static {v2, v10, v9}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->-$$Nest$madjustStagedCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ZZ)V

    goto :goto_377

    :cond_373
    move v4, v11

    move-wide/from16 v10, v28

    move-wide v13, v10

    :goto_377
    if-eqz v27, :cond_38d

    .line 1167
    iget-object v9, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    iget v7, v7, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    invoke-virtual {v9, v7, v6}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->stageJob(II)V

    .line 1168
    iget-object v6, v0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    .line 1169
    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v7

    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v9

    .line 1168
    invoke-virtual {v6, v7, v9, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38d
    move-object/from16 v2, p2

    move v11, v4

    move-object/from16 v6, v18

    move/from16 v7, v23

    move-object/from16 v4, p4

    goto/16 :goto_35

    :cond_398
    return-void
.end method

.method public dumpContextInfoLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;JJ)V
    .registers 13

    .line 2156
    const-string v0, "Active jobs:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2157
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2158
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_15

    .line 2159
    const-string v0, "N/A"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_15
    const/4 v0, 0x0

    move v1, v0

    .line 2161
    :goto_17
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8d

    .line 2162
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobServiceContext;

    .line 2163
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 2165
    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    goto :goto_8a

    .line 2169
    :cond_34
    const-string v4, "Slot #"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 2170
    const-string v4, "(ID="

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getId()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v4, "): "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2171
    invoke-virtual {v2, p1, p3, p4}, Lcom/android/server/job/JobServiceContext;->dumpLocked(Landroid/util/IndentingPrintWriter;J)V

    if-eqz v3, :cond_8a

    .line 2174
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2176
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2177
    invoke-virtual {v3, p1, v0, p3, p4}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/IndentingPrintWriter;ZJ)V

    .line 2178
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2180
    const-string v2, "Evaluated bias: "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2181
    iget v2, v3, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    invoke-static {v2}, Landroid/app/job/JobInfo;->getBiasString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2183
    const-string v2, "Active at "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2184
    iget-wide v4, v3, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    sub-long/2addr v4, p5

    invoke-static {v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2185
    const-string v2, ", pending for "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2186
    iget-wide v4, v3, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    iget-wide v2, v3, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    sub-long/2addr v4, v2

    invoke-static {v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2187
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2188
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_8a
    :goto_8a
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 2191
    :cond_8d
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2193
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2194
    const-string p2, "Idle contexts ("

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2195
    iget-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 2196
    const-string p2, "):"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2197
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2198
    :goto_a9
    iget-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    if-ge v0, p2, :cond_d0

    .line 2199
    iget-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/job/JobServiceContext;

    .line 2201
    const-string p5, "ID="

    invoke-virtual {p1, p5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/server/job/JobServiceContext;->getId()I

    move-result p5

    invoke-virtual {p1, p5}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string p5, ": "

    invoke-virtual {p1, p5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2202
    invoke-virtual {p2, p1, p3, p4}, Lcom/android/server/job/JobServiceContext;->dumpLocked(Landroid/util/IndentingPrintWriter;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a9

    .line 2204
    :cond_d0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2206
    iget p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mNumDroppedContexts:I

    if-lez p2, :cond_e9

    .line 2207
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2208
    const-string p2, "Dropped "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2209
    iget p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mNumDroppedContexts:I

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 2210
    const-string p0, " contexts"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_e9
    return-void
.end method

.method public dumpLocked(Landroid/util/IndentingPrintWriter;JJ)V
    .registers 9

    .line 2079
    const-string v0, "Concurrency:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2081
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2083
    :try_start_8
    const-string v0, "Configuration:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2084
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2085
    const-string v0, "concurrency_limit"

    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2086
    const-string v0, "concurrency_screen_off_adjustment_delay_ms"

    iget-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mScreenOffAdjustmentDelayMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2087
    const-string v0, "concurrency_pkg_concurrency_limit_ej"

    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitEj:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2088
    const-string v0, "concurrency_pkg_concurrency_limit_regular"

    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitRegular:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2089
    const-string v0, "concurrency_enable_max_wait_time_bypass"

    iget-boolean v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitTimeBypassEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2090
    const-string v0, "concurrency_max_wait_ui_ms"

    iget-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitUIMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2091
    const-string v0, "concurrency_max_wait_ej_ms"

    iget-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitEjMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2092
    const-string v0, "concurrency_max_wait_regular_ms"

    iget-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitRegularMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2093
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2094
    sget-object v0, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_ON:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 2095
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2096
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 2097
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2098
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 2099
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2100
    iget-object v0, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 2101
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2102
    sget-object v0, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_OFF:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 2103
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2104
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 2105
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2106
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 2107
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2108
    iget-object v0, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 2109
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2110
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2112
    const-string v0, "Screen state: current "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2113
    iget-boolean v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mCurrentInteractiveState:Z
    :try_end_d9
    .catchall {:try_start_8 .. :try_end_d9} :catchall_160

    const-string v1, "OFF"

    const-string v2, "ON"

    if-eqz v0, :cond_e1

    move-object v0, v2

    goto :goto_e2

    :cond_e1
    move-object v0, v1

    :goto_e2
    :try_start_e2
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2114
    const-string v0, "  effective "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2115
    iget-boolean v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    if-eqz v0, :cond_ef

    move-object v1, v2

    :cond_ef
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2116
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2118
    const-string v0, "Last screen ON: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    sub-long p4, p2, p4

    .line 2119
    iget-wide v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOnRealtime:J

    add-long/2addr v0, p4

    invoke-static {p1, v0, v1, p2, p3}, Landroid/util/TimeUtils;->dumpTimeWithDelta(Ljava/io/PrintWriter;JJ)V

    .line 2120
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2122
    const-string v0, "Last screen OFF: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2123
    iget-wide v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOffRealtime:J

    add-long/2addr p4, v0

    invoke-static {p1, p4, p5, p2, p3}, Landroid/util/TimeUtils;->dumpTimeWithDelta(Ljava/io/PrintWriter;JJ)V

    .line 2124
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2126
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2128
    const-string p2, "Current work counts: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2129
    iget-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2131
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2133
    const-string p2, "mLastMemoryTrimLevel: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2134
    iget p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 2135
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2137
    const-string p2, "Active Package stats:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2138
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2139
    iget-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    new-instance p3, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda3;

    invoke-direct {p3, p1}, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda3;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p2, p3}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 2140
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2141
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2143
    const-string p2, "User Grace Period: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2144
    iget-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mGracePeriodObserver:Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

    iget-object p2, p2, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mGracePeriodExpiration:Landroid/util/SparseLongArray;

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2145
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2147
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/jobs/StatLogger;->dump(Landroid/util/IndentingPrintWriter;)V
    :try_end_15c
    .catchall {:try_start_e2 .. :try_end_15c} :catchall_160

    .line 2149
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :catchall_160
    move-exception p0

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2150
    throw p0
.end method

.method public dumpProtoLocked(Landroid/util/proto/ProtoOutputStream;JJJ)V
    .registers 10

    .line 2215
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide p4, 0x10800000001L

    .line 2217
    iget-boolean v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mCurrentInteractiveState:Z

    invoke-virtual {p1, p4, p5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide p4, 0x10800000002L

    .line 2218
    iget-boolean v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    invoke-virtual {p1, p4, p5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2221
    iget-wide p4, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOnRealtime:J

    sub-long p4, p6, p4

    const-wide v0, 0x10300000003L

    invoke-virtual {p1, v0, v1, p4, p5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2223
    iget-wide p4, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOffRealtime:J

    sub-long/2addr p6, p4

    const-wide p4, 0x10300000004L

    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide p4, 0x10500000006L

    .line 2226
    iget p6, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I

    invoke-virtual {p1, p4, p5, p6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2228
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const-wide p4, 0x10b00000007L

    invoke-virtual {p0, p1, p4, p5}, Lcom/android/internal/util/jobs/StatLogger;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2230
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public executeStopCommandLocked(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ZIII)Z
    .registers 20

    const/4 v0, 0x0

    move v1, v0

    .line 1915
    :goto_2
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_46

    .line 1916
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/server/job/JobServiceContext;

    .line 1917
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    if-eqz v2, :cond_43

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    .line 1919
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/job/JobServiceContext;->stopIfExecutingLocked(Ljava/lang/String;ILjava/lang/String;ZIII)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 1922
    const-string v1, "Stopping job: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1923
    invoke-virtual {v2, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 1924
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1925
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_46
    return v1
.end method

.method public getEstimatedNetworkBytesLocked(Ljava/lang/String;ILjava/lang/String;I)Landroid/util/Pair;
    .registers 9

    const/4 v0, 0x0

    .line 1939
    :goto_1
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 1940
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobServiceContext;

    .line 1941
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 1942
    invoke-virtual {v2, p2, p3, p4}, Lcom/android/server/job/controllers/JobStatus;->matches(ILjava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1943
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1944
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getEstimatedNetworkBytes()Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I
    .registers 4

    .line 2262
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobConcurrencyManager;->shouldRunAsFgUserJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    const/16 v0, 0x23

    if-eqz p0, :cond_28

    .line 2263
    iget p0, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    const/16 v1, 0x28

    if-lt p0, v1, :cond_10

    const/4 p0, 0x1

    goto :goto_16

    :cond_10
    if-lt p0, v0, :cond_14

    const/4 p0, 0x2

    goto :goto_16

    :cond_14
    const/16 p0, 0x10

    .line 2271
    :goto_16
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v0

    if-eqz v0, :cond_1f

    or-int/lit8 p0, p0, 0x8

    return p0

    .line 2273
    :cond_1f
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result p1

    if-eqz p1, :cond_27

    or-int/lit8 p0, p0, 0x4

    :cond_27
    return p0

    .line 2277
    :cond_28
    iget p0, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-ge p0, v0, :cond_3b

    .line 2278
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result p0

    if-nez p0, :cond_3b

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result p0

    if-eqz p0, :cond_39

    goto :goto_3b

    :cond_39
    const/4 p0, 0x0

    goto :goto_3d

    :cond_3b
    :goto_3b
    const/16 p0, 0x20

    :goto_3d
    or-int/lit8 p0, p0, 0x40

    return p0
.end method

.method public getPackageConcurrencyLimitEj()I
    .registers 1

    .line 2985
    iget p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitEj:I

    return p0
.end method

.method public getPackageStatsForTesting(ILjava/lang/String;)Lcom/android/server/job/JobConcurrencyManager$PackageStats;
    .registers 4

    .line 2996
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobConcurrencyManager;->getPkgStatsLocked(ILjava/lang/String;)Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    move-result-object v0

    .line 2997
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final getPkgStatsLocked(ILjava/lang/String;)Lcom/android/server/job/JobConcurrencyManager$PackageStats;
    .registers 4

    .line 1476
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    if-nez v0, :cond_1d

    .line 1478
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgStatsPool:Landroid/util/Pools$Pool;

    invoke-interface {p0}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    if-nez p0, :cond_19

    .line 1480
    new-instance p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    invoke-direct {p0}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;-><init>()V

    .line 1482
    :cond_19
    invoke-static {p0, p1, p2}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->-$$Nest$msetPackage(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ILjava/lang/String;)V

    return-object p0

    :cond_1d
    return-object v0
.end method

.method public getRunningJobServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/JobServiceContext;
    .registers 6

    .line 1304
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    :cond_a
    const/4 v0, 0x0

    .line 1308
    :goto_b
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_25

    .line 1309
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobServiceContext;

    .line 1310
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    if-ne v3, p1, :cond_22

    return-object v2

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1315
    :cond_25
    const-string v0, "JobScheduler.Concurrency"

    const-string v2, "Couldn\'t find running job on a context"

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public getRunningJobsLocked()Landroid/util/ArraySet;
    .registers 1

    .line 668
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    return-object p0
.end method

.method public getTransferredNetworkBytesLocked(Ljava/lang/String;ILjava/lang/String;I)Landroid/util/Pair;
    .registers 9

    const/4 v0, 0x0

    .line 1958
    :goto_1
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 1959
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobServiceContext;

    .line 1960
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 1961
    invoke-virtual {v2, p2, p3, p4}, Lcom/android/server/job/controllers/JobStatus;->matches(ILjava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1962
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1963
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getTransferredNetworkBytes()Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2f
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasImmediacyPrivilegeLocked(Lcom/android/server/job/controllers/JobStatus;Landroid/util/SparseIntArray;)Z
    .registers 9

    .line 1239
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v0

    if-nez v0, :cond_e

    return v1

    .line 1246
    :cond_e
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    const/16 v2, 0x28

    const/4 v3, 0x1

    if-ne v0, v2, :cond_16

    return v3

    .line 1249
    :cond_16
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    .line 1250
    invoke-virtual {p2, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-eq v2, v3, :cond_76

    const/4 v4, 0x2

    if-eq v2, v4, :cond_71

    const/4 v5, 0x3

    if-eq v2, v5, :cond_70

    .line 1260
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2, v0}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v2

    if-ne v2, v4, :cond_32

    .line 1262
    invoke-virtual {p2, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    return v3

    .line 1265
    :cond_32
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v2

    if-eqz v2, :cond_39

    return v1

    .line 1270
    :cond_39
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 1271
    invoke-virtual {p0, v0}, Landroid/app/ActivityManagerInternal;->getBackgroundStartPrivileges(I)Landroid/app/BackgroundStartPrivileges;

    move-result-object p0

    .line 1272
    sget-boolean v1, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v1, :cond_65

    .line 1273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Job "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " bsp state: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "JobScheduler.Concurrency"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    :cond_65
    invoke-virtual {p0}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result p0

    if-eqz p0, :cond_6c

    move v3, v4

    .line 1280
    :cond_6c
    invoke-virtual {p2, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    return p0

    :cond_70
    return v3

    .line 1255
    :cond_71
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result p0

    return p0

    :cond_76
    return v1
.end method

.method public isJobInOvertimeLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 6

    .line 682
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 686
    :cond_a
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_12
    if-ltz v0, :cond_2c

    .line 687
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobServiceContext;

    .line 688
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    if-ne v3, p1, :cond_29

    .line 691
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->isWithinExecutionGuaranteeTime()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 695
    :cond_2c
    const-string v0, "JobScheduler.Concurrency"

    const-string v2, "Couldn\'t find long running job on a context"

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return v1
.end method

.method public isJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 2

    .line 673
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isNotificationAssociatedWithAnyUserInitiatedJobs(IILjava/lang/String;)Z
    .registers 4

    .line 1971
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mNotificationCoordinator:Lcom/android/server/job/JobNotificationCoordinator;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/JobNotificationCoordinator;->isNotificationAssociatedWithAnyUserInitiatedJobs(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isNotificationChannelAssociatedWithAnyUserInitiatedJobs(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 4

    .line 1977
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mNotificationCoordinator:Lcom/android/server/job/JobNotificationCoordinator;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/JobNotificationCoordinator;->isNotificationChannelAssociatedWithAnyUserInitiatedJobs(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isPkgConcurrencyLimitedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 6

    .line 1490
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    const/16 v1, 0x28

    const/4 v2, 0x0

    if-lt v0, v1, :cond_8

    return v2

    .line 1497
    :cond_8
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getPendingJobQueue()Lcom/android/server/job/PendingJobQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 1498
    invoke-virtual {v1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMaxTotal()I

    move-result v1

    if-ge v0, v1, :cond_22

    return v2

    .line 1503
    :cond_22
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    .line 1504
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    if-nez v0, :cond_35

    return v2

    .line 1509
    :cond_35
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_47

    .line 1510
    iget p1, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningEj:I

    iget v0, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedEj:I

    add-int/2addr p1, v0

    iget p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitEj:I

    if-lt p1, p0, :cond_46

    return v1

    :cond_46
    return v2

    .line 1512
    :cond_47
    iget p1, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningRegular:I

    iget v0, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedRegular:I

    add-int/2addr p1, v0

    iget p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitRegular:I

    if-lt p1, p0, :cond_51

    return v1

    :cond_51
    return v2
.end method

.method public final isSimilarJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 7

    .line 707
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_28

    .line 708
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 709
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v2

    invoke-virtual {p1, v3, v4, v2}, Lcom/android/server/job/controllers/JobStatus;->matches(ILjava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_25

    return v1

    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method public markJobsForUserStopLocked(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 1393
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_36

    .line 1394
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobServiceContext;

    .line 1395
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 1400
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v3

    if-ne p1, v3, :cond_33

    .line 1401
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    const/16 v2, 0xd

    const/16 v3, 0xb

    .line 1402
    invoke-virtual {v1, v2, v3, p3}, Lcom/android/server/job/JobServiceContext;->markForProcessDeathLocked(IILjava/lang/String;)V

    :cond_33
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_36
    return-void
.end method

.method public maybeStopOvertimeJobsLocked(Lcom/android/server/job/restrictions/JobRestriction;)V
    .registers 7

    .line 1374
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_40

    .line 1375
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobServiceContext;

    .line 1376
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 1379
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->isWithinExecutionGuaranteeTime()Z

    move-result v3

    if-nez v3, :cond_3d

    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 1381
    invoke-virtual {v3, v2}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v3

    .line 1380
    invoke-virtual {p1, v2, v3}, Lcom/android/server/job/restrictions/JobRestriction;->isJobRestricted(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1382
    invoke-virtual {p1}, Lcom/android/server/job/restrictions/JobRestriction;->getStopReason()I

    move-result v2

    .line 1383
    invoke-virtual {p1}, Lcom/android/server/job/restrictions/JobRestriction;->getInternalReason()I

    move-result v3

    .line 1385
    invoke-virtual {p1}, Lcom/android/server/job/restrictions/JobRestriction;->getInternalReason()I

    move-result v4

    .line 1384
    invoke-static {v4}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    move-result-object v4

    .line 1382
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    :cond_3d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_40
    return-void
.end method

.method public final noteConcurrency(Z)V
    .registers 6

    .line 1445
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    const/4 v3, 0x1

    .line 1447
    invoke-virtual {v2, v3}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->getRunningJobCount(I)I

    move-result v2

    .line 1445
    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/JobPackageTracker;->noteConcurrency(II)V

    if-eqz p1, :cond_22

    .line 1449
    sget-object p1, Lcom/android/server/job/JobConcurrencyManager;->sConcurrencyHistogramLogger:Lcom/android/modules/expresslog/Histogram;

    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    :cond_22
    return-void
.end method

.method public onAppRemovedLocked(Ljava/lang/String;I)V
    .registers 5

    .line 555
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    if-eqz v0, :cond_3f

    .line 557
    iget v1, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningEj:I

    if-gtz v1, :cond_21

    iget v0, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningRegular:I

    if-lez v0, :cond_17

    goto :goto_21

    .line 563
    :cond_17
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 560
    :cond_21
    :goto_21
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") marked as removed before jobs stopped running"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobScheduler.Concurrency"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    return-void
.end method

.method public final onInteractiveStateChanged(Z)V
    .registers 6

    .line 605
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 606
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mCurrentInteractiveState:Z

    if-ne v1, p1, :cond_b

    .line 607
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_49

    .line 609
    :cond_b
    iput-boolean p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mCurrentInteractiveState:Z

    .line 610
    sget-boolean v1, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v1, :cond_27

    .line 611
    const-string v1, "JobScheduler.Concurrency"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interactive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_27
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    if-eqz p1, :cond_3c

    .line 616
    iput-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOnRealtime:J

    const/4 p1, 0x1

    .line 617
    iput-boolean p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    .line 619
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRampUpForScreenOff:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_47

    .line 621
    :cond_3c
    iput-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOffRealtime:J

    .line 630
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mRampUpForScreenOff:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mScreenOffAdjustmentDelayMs:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 632
    :goto_47
    monitor-exit v0

    return-void

    :goto_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_9

    throw p0
.end method

.method public onJobCompletedLocked(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;I)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1565
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    move/from16 v4, p3

    invoke-virtual {v3, v4}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->onJobFinished(I)V

    .line 1566
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1567
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1568
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    const/16 v5, 0x60

    const/4 v6, 0x1

    if-ge v3, v5, :cond_28

    .line 1571
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 1573
    :cond_28
    iget v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mNumDroppedContexts:I

    add-int/2addr v3, v6

    iput v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mNumDroppedContexts:I

    .line 1575
    :goto_2d
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    .line 1576
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v5

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    const/4 v5, 0x0

    .line 1577
    const-string v7, "JobScheduler.Concurrency"

    if-nez v3, :cond_48

    .line 1578
    const-string v3, "Running job didn\'t have an active PackageStats object"

    invoke-static {v7, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 1580
    :cond_48
    iget-boolean v8, v2, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    invoke-static {v3, v5, v8}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->-$$Nest$madjustRunningCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ZZ)V

    .line 1581
    iget v8, v3, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningEj:I

    if-gtz v8, :cond_63

    iget v8, v3, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningRegular:I

    if-gtz v8, :cond_63

    .line 1582
    iget-object v8, v0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    iget v9, v3, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->userId:I

    iget-object v10, v3, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1583
    iget-object v8, v0, Lcom/android/server/job/JobConcurrencyManager;->mPkgStatsPool:Landroid/util/Pools$Pool;

    invoke-interface {v8, v3}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 1587
    :cond_63
    :goto_63
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3}, Lcom/android/server/job/JobSchedulerService;->getPendingJobQueue()Lcom/android/server/job/PendingJobQueue;

    move-result-object v3

    .line 1588
    invoke-virtual {v3}, Lcom/android/server/job/PendingJobQueue;->size()I

    move-result v8

    if-nez v8, :cond_76

    .line 1589
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->clearPreferredUid()V

    .line 1592
    invoke-virtual {v0, v5}, Lcom/android/server/job/JobConcurrencyManager;->noteConcurrency(Z)V

    return-void

    .line 1595
    :cond_76
    iget-object v8, v0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    iget v9, v0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    if-lt v8, v9, :cond_e1

    .line 1597
    iget-boolean v8, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitTimeBypassEnabled:Z

    if-nez v8, :cond_85

    goto :goto_d8

    .line 1601
    :cond_85
    sget-object v8, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v8}, Ljava/time/Clock;->millis()J

    move-result-wide v8

    .line 1602
    iget-object v10, v0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v6

    const-wide v11, 0x7fffffffffffffffL

    :goto_97
    if-ltz v10, :cond_ac

    .line 1603
    iget-object v13, v0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 1604
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v13, v8, v9}, Lcom/android/server/job/JobServiceContext;->getRemainingGuaranteedTimeMs(J)J

    move-result-wide v13

    .line 1603
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    add-int/lit8 v10, v10, -0x1

    goto :goto_97

    .line 1607
    :cond_ac
    iget-object v8, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->getPendingJobCount(I)I

    move-result v8

    if-lez v8, :cond_bf

    .line 1608
    iget-wide v8, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitUIMs:J

    cmp-long v8, v11, v8

    if-ltz v8, :cond_bd

    :goto_bb
    move v8, v6

    goto :goto_d7

    :cond_bd
    move v8, v5

    goto :goto_d7

    .line 1609
    :cond_bf
    iget-object v8, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->getPendingJobCount(I)I

    move-result v8

    if-lez v8, :cond_d0

    .line 1610
    iget-wide v8, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitEjMs:J

    cmp-long v8, v11, v8

    if-ltz v8, :cond_bd

    goto :goto_bb

    .line 1612
    :cond_d0
    iget-wide v8, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitRegularMs:J

    cmp-long v8, v11, v8

    if-ltz v8, :cond_bd

    goto :goto_bb

    :goto_d7
    xor-int/2addr v6, v8

    :goto_d8
    if-eqz v6, :cond_e1

    .line 1617
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->clearPreferredUid()V

    .line 1624
    invoke-virtual {v0, v5}, Lcom/android/server/job/JobConcurrencyManager;->noteConcurrency(Z)V

    return-void

    .line 1629
    :cond_e1
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getPreferredUid()I

    move-result v6

    const-string v8, "Already running similar job to: "

    const-string v9, "Pending+not ready job: "

    const-string v10, "Pending+running job: "

    const-string v11, "Pending queue contained a running job"

    const/4 v12, -0x1

    const/4 v13, 0x0

    if-eq v6, v12, :cond_22c

    .line 1630
    invoke-virtual {v0}, Lcom/android/server/job/JobConcurrencyManager;->updateCounterConfigLocked()V

    .line 1632
    invoke-virtual {v0, v3, v5}, Lcom/android/server/job/JobConcurrencyManager;->updateNonRunningPrioritiesLocked(Lcom/android/server/job/PendingJobQueue;Z)V

    .line 1642
    invoke-virtual {v3}, Lcom/android/server/job/PendingJobQueue;->resetIterator()V

    move v12, v4

    move v14, v12

    move v15, v5

    move-object v6, v13

    .line 1643
    :goto_fe
    invoke-virtual {v3}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v4

    if-eqz v4, :cond_1bb

    move/from16 v16, v5

    .line 1644
    iget-object v5, v0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12e

    .line 1646
    invoke-static {v7, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    sget-boolean v5, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v5, :cond_127

    .line 1648
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    :cond_127
    invoke-virtual {v3, v4}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    :goto_12a
    move-object/from16 v17, v8

    goto/16 :goto_1a6

    .line 1654
    :cond_12e
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v5

    if-nez v5, :cond_14e

    .line 1657
    sget-boolean v5, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v5, :cond_14a

    .line 1658
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    :cond_14a
    invoke-virtual {v3, v4}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    goto :goto_12a

    .line 1664
    :cond_14e
    sget-boolean v5, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v5, :cond_16a

    invoke-virtual {v0, v4}, Lcom/android/server/job/JobConcurrencyManager;->isSimilarJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    if-eqz v5, :cond_16a

    .line 1665
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    :cond_16a
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getPreferredUid()I

    move-result v5

    move-object/from16 v17, v8

    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v8

    if-eq v5, v8, :cond_190

    if-nez v6, :cond_1a6

    .line 1669
    invoke-virtual {v0, v4}, Lcom/android/server/job/JobConcurrencyManager;->isPkgConcurrencyLimitedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    if-nez v5, :cond_1a6

    .line 1670
    invoke-virtual {v0, v4}, Lcom/android/server/job/JobConcurrencyManager;->getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v5

    .line 1671
    iget-object v8, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v8, v5}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(I)I

    move-result v8

    if-eqz v8, :cond_1a6

    move-object v6, v4

    move v15, v8

    :goto_18c
    move-object/from16 v8, v17

    goto/16 :goto_fe

    .line 1683
    :cond_190
    iget v5, v4, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    iget v8, v2, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-gt v5, v8, :cond_19d

    .line 1684
    invoke-virtual {v0, v4}, Lcom/android/server/job/JobConcurrencyManager;->isPkgConcurrencyLimitedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    if-eqz v5, :cond_19d

    goto :goto_1a6

    :cond_19d
    if-eqz v13, :cond_1a9

    .line 1688
    iget v5, v13, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    iget v8, v4, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-ge v5, v8, :cond_1a6

    goto :goto_1a9

    :cond_1a6
    :goto_1a6
    move/from16 v5, v16

    goto :goto_18c

    .line 1699
    :cond_1a9
    :goto_1a9
    invoke-virtual {v0, v4}, Lcom/android/server/job/JobConcurrencyManager;->getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v14

    .line 1700
    iget-object v5, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v5, v14}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(I)I

    move-result v5

    if-nez v5, :cond_1b8

    move/from16 v12, p3

    goto :goto_1b9

    :cond_1b8
    move v12, v5

    :goto_1b9
    move-object v13, v4

    goto :goto_1a6

    :cond_1bb
    move/from16 v16, v5

    .line 1709
    const-string v2, "Running job "

    if-eqz v13, :cond_1e5

    .line 1710
    sget-boolean v3, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v3, :cond_1dc

    .line 1711
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " as preemption"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    :cond_1dc
    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v2, v12, v14}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->stageJob(II)V

    .line 1714
    invoke-virtual {v0, v1, v13, v12}, Lcom/android/server/job/JobConcurrencyManager;->startJobLocked(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;I)V

    goto :goto_229

    .line 1716
    :cond_1e5
    sget-boolean v3, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v3, :cond_201

    .line 1717
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t find preemption job for uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getPreferredUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    :cond_201
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->clearPreferredUid()V

    if-eqz v6, :cond_229

    if-eqz v3, :cond_21f

    .line 1722
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " instead"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    :cond_21f
    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    move/from16 v5, v16

    invoke-virtual {v2, v15, v5}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->stageJob(II)V

    .line 1725
    invoke-virtual {v0, v1, v6, v15}, Lcom/android/server/job/JobConcurrencyManager;->startJobLocked(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;I)V

    :cond_229
    :goto_229
    const/4 v2, 0x0

    goto/16 :goto_2f6

    :cond_22c
    move-object/from16 v17, v8

    .line 1728
    invoke-virtual {v3}, Lcom/android/server/job/PendingJobQueue;->size()I

    move-result v2

    if-lez v2, :cond_229

    .line 1729
    invoke-virtual {v0}, Lcom/android/server/job/JobConcurrencyManager;->updateCounterConfigLocked()V

    const/4 v2, 0x0

    .line 1730
    invoke-virtual {v0, v3, v2}, Lcom/android/server/job/JobConcurrencyManager;->updateNonRunningPrioritiesLocked(Lcom/android/server/job/PendingJobQueue;Z)V

    .line 1738
    invoke-virtual {v3}, Lcom/android/server/job/PendingJobQueue;->resetIterator()V

    move/from16 v2, p3

    move v4, v2

    .line 1739
    :goto_241
    invoke-virtual {v3}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v5

    if-eqz v5, :cond_2d2

    .line 1741
    iget-object v6, v0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26e

    .line 1743
    invoke-static {v7, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    sget-boolean v6, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v6, :cond_268

    .line 1745
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    :cond_268
    invoke-virtual {v3, v5}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    :goto_26b
    move-object/from16 v8, v17

    goto :goto_2c2

    .line 1751
    :cond_26e
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v6

    if-nez v6, :cond_28e

    .line 1754
    sget-boolean v6, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v6, :cond_28a

    .line 1755
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    :cond_28a
    invoke-virtual {v3, v5}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    goto :goto_26b

    .line 1761
    :cond_28e
    sget-boolean v6, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v6, :cond_2ad

    invoke-virtual {v0, v5}, Lcom/android/server/job/JobConcurrencyManager;->isSimilarJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v6

    if-eqz v6, :cond_2ad

    .line 1762
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, v17

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2af

    :cond_2ad
    move-object/from16 v8, v17

    .line 1765
    :goto_2af
    invoke-virtual {v0, v5}, Lcom/android/server/job/JobConcurrencyManager;->isPkgConcurrencyLimitedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v6

    if-eqz v6, :cond_2b6

    goto :goto_2c2

    .line 1769
    :cond_2b6
    invoke-virtual {v0, v5}, Lcom/android/server/job/JobConcurrencyManager;->getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v6

    .line 1770
    iget-object v12, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v12, v6}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(I)I

    move-result v12

    if-nez v12, :cond_2c6

    :cond_2c2
    :goto_2c2
    move-object/from16 v17, v8

    goto/16 :goto_241

    :cond_2c6
    if-eqz v13, :cond_2ce

    .line 1774
    iget v14, v13, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    iget v15, v5, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-ge v14, v15, :cond_2c2

    :cond_2ce
    move-object v13, v5

    move v4, v6

    move v2, v12

    goto :goto_2c2

    :cond_2d2
    if-eqz v13, :cond_229

    .line 1785
    sget-boolean v3, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v3, :cond_2ec

    .line 1786
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "About to run job: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    :cond_2ec
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v3, v2, v4}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->stageJob(II)V

    .line 1789
    invoke-virtual {v0, v1, v13, v2}, Lcom/android/server/job/JobConcurrencyManager;->startJobLocked(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;I)V

    goto/16 :goto_229

    .line 1795
    :goto_2f6
    invoke-virtual {v0, v2}, Lcom/android/server/job/JobConcurrencyManager;->noteConcurrency(Z)V

    return-void
.end method

.method public onSystemReady()V
    .registers 4

    .line 522
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    .line 524
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 525
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 526
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 527
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 528
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 530
    :try_start_29
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mGracePeriodObserver:Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

    const-string v2, "JobScheduler.Concurrency"

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_34} :catch_34

    .line 534
    :catch_34
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobConcurrencyManager;->onInteractiveStateChanged(Z)V

    return-void
.end method

.method public onThirdPartyAppsCanStart()V
    .registers 10

    .line 542
    const-string v0, "batterystats"

    .line 543
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 542
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    const/4 v0, 0x0

    .line 544
    :goto_b
    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    if-ge v0, v1, :cond_2d

    .line 545
    iget-object v8, p0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mInjector:Lcom/android/server/job/JobConcurrencyManager$Injector;

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mNotificationCoordinator:Lcom/android/server/job/JobNotificationCoordinator;

    iget-object v6, v2, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 549
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object v3, p0

    .line 546
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/job/JobConcurrencyManager$Injector;->createJobServiceContext(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobConcurrencyManager;Lcom/android/server/job/JobNotificationCoordinator;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobPackageTracker;Landroid/os/Looper;)Lcom/android/server/job/JobServiceContext;

    move-result-object p0

    .line 545
    invoke-virtual {v8, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    move-object p0, v3

    goto :goto_b

    :cond_2d
    return-void
.end method

.method public onUidBiasChangedLocked(II)V
    .registers 4

    const/16 v0, 0x28

    if-eq p1, v0, :cond_7

    if-eq p2, v0, :cond_7

    goto :goto_13

    .line 1292
    :cond_7
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->getPendingJobQueue()Lcom/android/server/job/PendingJobQueue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/job/PendingJobQueue;->size()I

    move-result p1

    if-nez p1, :cond_14

    :goto_13
    return-void

    .line 1298
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/job/JobConcurrencyManager;->assignJobsToContextsLocked()V

    return-void
.end method

.method public onUserRemoved(I)V
    .registers 2

    .line 569
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mGracePeriodObserver:Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->onUserRemoved(I)V

    return-void
.end method

.method public prepareForAssignmentDeterminationLocked(Landroid/util/ArraySet;Ljava/util/List;Ljava/util/List;Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;",
            ">;",
            "Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 826
    iget-object v4, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4}, Lcom/android/server/job/JobSchedulerService;->getPendingJobQueue()Lcom/android/server/job/PendingJobQueue;

    move-result-object v4

    .line 827
    iget-object v5, v0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 829
    invoke-virtual {v0}, Lcom/android/server/job/JobConcurrencyManager;->updateCounterConfigLocked()V

    .line 831
    iget-object v6, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v6}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->resetCounts()V

    const/4 v6, 0x1

    .line 836
    invoke-virtual {v0, v4, v6}, Lcom/android/server/job/JobConcurrencyManager;->updateNonRunningPrioritiesLocked(Lcom/android/server/job/PendingJobQueue;Z)V

    .line 838
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 839
    sget-object v7, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v7}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    const/4 v11, 0x0

    const-wide v12, 0x7fffffffffffffffL

    :goto_2c
    if-ge v11, v4, :cond_ae

    .line 842
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/job/JobServiceContext;

    .line 843
    invoke-virtual {v14}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v15

    move/from16 v16, v6

    .line 845
    iget-object v6, v0, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    invoke-interface {v6}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    if-nez v6, :cond_49

    .line 847
    new-instance v6, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    invoke-direct {v6}, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;-><init>()V

    .line 850
    :cond_49
    iput-object v14, v6, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    const-wide v17, 0x7fffffffffffffffL

    if-eqz v15, :cond_89

    .line 853
    iget-object v9, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v14}, Lcom/android/server/job/JobServiceContext;->getRunningJobWorkType()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->incrementRunningJobCount(I)V

    .line 854
    invoke-virtual {v14}, Lcom/android/server/job/JobServiceContext;->getRunningJobWorkType()I

    move-result v9

    iput v9, v6, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->workType:I

    .line 855
    iget-boolean v9, v15, Lcom/android/server/job/controllers/JobStatus;->startedWithImmediacyPrivilege:Z

    if-eqz v9, :cond_6b

    .line 856
    iget v9, v3, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningImmediacyPrivileged:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v3, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningImmediacyPrivileged:I

    .line 858
    :cond_6b
    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v9

    if-eqz v9, :cond_78

    .line 859
    iget v9, v3, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningUi:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v3, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningUi:I

    goto :goto_89

    .line 860
    :cond_78
    iget-boolean v9, v15, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v9, :cond_83

    .line 861
    iget v9, v3, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningEj:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v3, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningEj:I

    goto :goto_89

    .line 863
    :cond_83
    iget v9, v3, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningReg:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v3, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningReg:I

    .line 867
    :cond_89
    :goto_89
    invoke-virtual {v14}, Lcom/android/server/job/JobServiceContext;->getPreferredUid()I

    move-result v9

    iput v9, v6, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preferredUid:I

    .line 868
    invoke-virtual {v0, v14}, Lcom/android/server/job/JobConcurrencyManager;->shouldStopRunningJobLocked(Lcom/android/server/job/JobServiceContext;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->shouldStopJobReason:Ljava/lang/String;

    if-eqz v9, :cond_9b

    .line 869
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a8

    .line 871
    :cond_9b
    invoke-virtual {v14, v7, v8}, Lcom/android/server/job/JobServiceContext;->getRemainingGuaranteedTimeMs(J)J

    move-result-wide v9

    iput-wide v9, v6, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->timeUntilStoppableMs:J

    .line 873
    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 874
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a8
    add-int/lit8 v11, v11, 0x1

    move/from16 v6, v16

    goto/16 :goto_2c

    :cond_ae
    const-wide v17, 0x7fffffffffffffffL

    .line 877
    sget-object v5, Lcom/android/server/job/JobConcurrencyManager;->sDeterminationComparator:Ljava/util/Comparator;

    invoke-interface {v1, v5}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 878
    invoke-interface {v2, v5}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 879
    :goto_bb
    iget v1, v0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    if-ge v4, v1, :cond_10c

    .line 881
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_d2

    .line 883
    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobServiceContext;

    goto :goto_f3

    .line 886
    :cond_d2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Had fewer than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in existence"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JobScheduler.Concurrency"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    invoke-virtual {v0}, Lcom/android/server/job/JobConcurrencyManager;->createNewJobServiceContext()Lcom/android/server/job/JobServiceContext;

    move-result-object v1

    .line 890
    :goto_f3
    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    invoke-interface {v2}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    if-nez v2, :cond_102

    .line 892
    new-instance v2, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    invoke-direct {v2}, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;-><init>()V

    .line 895
    :cond_102
    iput-object v1, v2, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    move-object/from16 v1, p1

    .line 896
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_bb

    .line 899
    :cond_10c
    iget-object v0, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v0}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->onCountDone()V

    cmp-long v0, v12, v17

    if-nez v0, :cond_117

    const-wide/16 v12, 0x0

    .line 904
    :cond_117
    iput-wide v12, v3, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->minPreferredUidOnlyWaitingTimeMs:J

    return-void
.end method

.method public final printPendingQueueLocked()Ljava/lang/String;
    .registers 4

    .line 1991
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Pending queue: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1992
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getPendingJobQueue()Lcom/android/server/job/PendingJobQueue;

    move-result-object p0

    .line 1994
    invoke-virtual {p0}, Lcom/android/server/job/PendingJobQueue;->resetIterator()V

    .line 1995
    :goto_10
    invoke-virtual {p0}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 1996
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{"

    .line 1997
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1998
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "} "

    .line 1999
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2000
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    .line 2001
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2002
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    .line 2003
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 2005
    :cond_4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final rampUpForScreenOff()V
    .registers 8

    .line 642
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 645
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    if-nez v1, :cond_b

    .line 646
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_3b

    .line 648
    :cond_b
    iget-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOnRealtime:J

    iget-wide v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOffRealtime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_15

    .line 649
    monitor-exit v0

    return-void

    .line 651
    :cond_15
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 652
    iget-wide v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOffRealtime:J

    iget-wide v5, p0, Lcom/android/server/job/JobConcurrencyManager;->mScreenOffAdjustmentDelayMs:J

    add-long/2addr v3, v5

    cmp-long v1, v3, v1

    if-lez v1, :cond_26

    .line 653
    monitor-exit v0

    return-void

    :cond_26
    const/4 v1, 0x0

    .line 656
    iput-boolean v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    .line 658
    sget-boolean v1, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v1, :cond_34

    .line 659
    const-string v1, "JobScheduler.Concurrency"

    const-string v2, "Ramping up concurrency"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_34
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->maybeRunPendingJobsLocked()V

    .line 663
    monitor-exit v0

    return-void

    :goto_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_9

    throw p0
.end method

.method public final refreshSystemStateLocked()Z
    .registers 9

    .line 719
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 722
    iget-wide v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mNextSystemStateRefreshTime:J

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gez v2, :cond_e

    return v3

    .line 726
    :cond_e
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v2}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    add-long/2addr v0, v6

    .line 727
    iput-wide v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mNextSystemStateRefreshTime:J

    .line 729
    iput v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I

    .line 731
    :try_start_1b
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getMemoryTrimLevel()I

    move-result v0

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_25} :catch_25

    .line 735
    :catch_25
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return v0
.end method

.method public shouldRunAsFgUserJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 6

    .line 2238
    iget-boolean v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mShouldRestrictBgUser:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 2239
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result p1

    .line 2240
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2244
    iget v2, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_1f

    if-eq v2, p1, :cond_1f

    .line 2247
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p1, v2}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    move p1, v2

    .line 2250
    :cond_1f
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v2

    if-eq v2, p1, :cond_38

    .line 2255
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v0

    if-nez v0, :cond_38

    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mGracePeriodObserver:Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

    .line 2256
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->isWithinGracePeriodForUser(I)Z

    move-result p0

    if-eqz p0, :cond_36

    goto :goto_38

    :cond_36
    const/4 p0, 0x0

    return p0

    :cond_38
    :goto_38
    return v1
.end method

.method public shouldStopRunningJobLocked(Lcom/android/server/job/JobServiceContext;)Ljava/lang/String;
    .registers 9

    .line 1807
    invoke-virtual {p1}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 1813
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/job/JobServiceContext;->isWithinExecutionGuaranteeTime()Z

    move-result v2

    if-eqz v2, :cond_f

    return-object v1

    .line 1821
    :cond_f
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1822
    const-string p0, "battery saver"

    return-object p0

    .line 1824
    :cond_1a
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1825
    const-string p0, "deep doze"

    return-object p0

    .line 1828
    :cond_25
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2, v0}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v2

    if-eqz v2, :cond_48

    .line 1829
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "restriction:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1831
    invoke-virtual {v2}, Lcom/android/server/job/restrictions/JobRestriction;->getInternalReason()I

    move-result p1

    .line 1830
    invoke-static {p1}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1835
    :cond_48
    invoke-virtual {p0}, Lcom/android/server/job/JobConcurrencyManager;->updateCounterConfigLocked()V

    .line 1837
    invoke-virtual {p1}, Lcom/android/server/job/JobServiceContext;->getRunningJobWorkType()I

    move-result p1

    .line 1839
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v3}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMaxTotal()I

    move-result v3

    if-gt v2, v3, :cond_164

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    .line 1840
    invoke-virtual {v2, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->isOverTypeLimit(I)Z

    move-result v2

    if-eqz v2, :cond_67

    goto/16 :goto_164

    .line 1844
    :cond_67
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->getPendingJobQueue()Lcom/android/server/job/PendingJobQueue;

    move-result-object v2

    .line 1845
    invoke-virtual {v2}, Lcom/android/server/job/PendingJobQueue;->size()I

    move-result v3

    if-nez v3, :cond_74

    return-object v1

    .line 1852
    :cond_74
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v3

    const-string v4, " queue"

    const-string v5, "blocking "

    if-nez v3, :cond_c5

    iget-boolean v3, v0, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v3, :cond_83

    goto :goto_c5

    .line 1886
    :cond_83
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->getPendingJobCount(I)I

    move-result v0

    if-lez v0, :cond_a2

    .line 1887
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/job/JobConcurrencyManager;->workTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1893
    :cond_a2
    invoke-virtual {v2}, Lcom/android/server/job/PendingJobQueue;->resetIterator()V

    const/16 v0, 0x7f

    .line 1894
    :cond_a7
    invoke-virtual {v2}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    if-eqz v3, :cond_c4

    .line 1895
    invoke-virtual {p0, v3}, Lcom/android/server/job/JobConcurrencyManager;->getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v3

    and-int v4, v3, v0

    if-lez v4, :cond_c0

    .line 1896
    iget-object v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    .line 1897
    invoke-virtual {v4, v3, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(II)I

    move-result v4

    if-eqz v4, :cond_c0

    .line 1898
    const-string p0, "blocking other pending jobs"

    return-object p0

    :cond_c0
    not-int v3, v3

    and-int/2addr v0, v3

    if-nez v0, :cond_a7

    :cond_c4
    return-object v1

    :cond_c5
    :goto_c5
    const/16 v2, 0x20

    const/16 v3, 0x8

    if-eq p1, v2, :cond_11d

    const/16 v6, 0x40

    if-ne p1, v6, :cond_d0

    goto :goto_11d

    .line 1865
    :cond_d0
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {p1, v3}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->getPendingJobCount(I)I

    move-result p1

    if-lez p1, :cond_ef

    .line 1866
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/job/JobConcurrencyManager;->workTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1867
    :cond_ef
    iget-boolean p1, v0, Lcom/android/server/job/controllers/JobStatus;->startedWithImmediacyPrivilege:Z

    if-eqz p1, :cond_163

    .line 1870
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    :goto_fc
    if-ltz p1, :cond_10f

    .line 1871
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 1872
    iget-boolean v2, v2, Lcom/android/server/job/controllers/JobStatus;->startedWithImmediacyPrivilege:Z

    if-eqz v2, :cond_10c

    add-int/lit8 v0, v0, 0x1

    :cond_10c
    add-int/lit8 p1, p1, -0x1

    goto :goto_fc

    .line 1876
    :cond_10f
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {p0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMaxTotal()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    if-le v0, p0, :cond_163

    .line 1877
    const-string/jumbo p0, "prevent immediacy privilege dominance"

    return-object p0

    .line 1856
    :cond_11d
    :goto_11d
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v0, v2}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->getPendingJobCount(I)I

    move-result v0

    if-lez v0, :cond_13c

    .line 1857
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/job/JobConcurrencyManager;->workTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1860
    :cond_13c
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v0, v3}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->getPendingJobCount(I)I

    move-result v0

    if-lez v0, :cond_163

    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    .line 1861
    invoke-virtual {p0, v3, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(II)I

    move-result p0

    if-eqz p0, :cond_163

    .line 1863
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/job/JobConcurrencyManager;->workTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_163
    return-object v1

    .line 1841
    :cond_164
    :goto_164
    const-string/jumbo p0, "too many jobs running"

    return-object p0
.end method

.method public final startJobLocked(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;I)V
    .registers 11

    .line 1520
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 1521
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1522
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    .line 1523
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getWakelockTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 1522
    invoke-virtual {v2, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 1524
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/job/JobSchedulerService;->deriveWorkSource(I)Landroid/os/WorkSource;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    const/4 v3, 0x0

    .line 1525
    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1529
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    move v5, v3

    :goto_28
    if-ge v5, v1, :cond_39

    .line 1532
    :try_start_2a
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v6, p2}, Lcom/android/server/job/controllers/StateController;->prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    :catchall_36
    move-exception p0

    goto/16 :goto_bf

    .line 1535
    :cond_39
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v5

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    .line 1534
    invoke-virtual {p0, v5, v6}, Lcom/android/server/job/JobConcurrencyManager;->getPkgStatsLocked(ILjava/lang/String;)Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    move-result-object v5

    .line 1536
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v6

    invoke-static {v5, v3, v6}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->-$$Nest$madjustStagedCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ZZ)V

    .line 1537
    invoke-virtual {p1, p2, p3}, Lcom/android/server/job/JobServiceContext;->executeRunnableJob(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v6

    if-nez v6, :cond_7b

    .line 1538
    const-string p1, "JobScheduler.Concurrency"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error executing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {p1, p3}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->onStagedJobFailed(I)V

    :goto_6d
    if-ge v3, v1, :cond_a8

    .line 1541
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/StateController;->unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6d

    .line 1544
    :cond_7b
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1545
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1546
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1547
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {p1, p3}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->onJobStarted(I)V

    .line 1548
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result p1

    invoke-static {v5, v4, p1}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->-$$Nest$madjustRunningCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ZZ)V

    .line 1549
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    .line 1550
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result p3

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    .line 1549
    invoke-virtual {p1, p3, v0, v5}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1552
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p1, p2}, Lcom/android/server/job/JobSchedulerService;->resetPendingJobReasonsCache(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1554
    :cond_a8
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->getPendingJobQueue()Lcom/android/server/job/PendingJobQueue;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p1

    if-eqz p1, :cond_bb

    .line 1555
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {p0, p2}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V
    :try_end_bb
    .catchall {:try_start_2a .. :try_end_bb} :catchall_36

    .line 1558
    :cond_bb
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :goto_bf
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1559
    throw p0
.end method

.method public stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)Z
    .registers 9

    .line 1323
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    move v0, v1

    .line 1327
    :goto_b
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_29

    .line 1328
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobServiceContext;

    .line 1329
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    if-ne v3, p1, :cond_26

    .line 1331
    invoke-virtual {v2, p2, p3, p4}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1335
    :cond_29
    const-string p2, "JobScheduler.Concurrency"

    const-string p3, "Couldn\'t find running job on a context"

    invoke-static {p2, p3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return v1
.end method

.method public stopNonReadyActiveJobsLocked()V
    .registers 7

    const/4 v0, 0x0

    .line 1411
    :goto_1
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6f

    .line 1412
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobServiceContext;

    .line 1413
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    if-nez v2, :cond_18

    goto :goto_6c

    .line 1417
    :cond_18
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v3

    if-nez v3, :cond_43

    .line 1418
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_38

    .line 1419
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getStopReason()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_38

    .line 1421
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getStopReason()I

    move-result v2

    const/4 v3, 0x6

    const-string v4, "cancelled due to restricted bucket"

    .line 1420
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    goto :goto_6c

    .line 1426
    :cond_38
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getStopReason()I

    move-result v2

    const-string v3, "cancelled due to unsatisfied constraints"

    const/4 v4, 0x1

    .line 1425
    invoke-virtual {v1, v2, v4, v3}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    goto :goto_6c

    .line 1431
    :cond_43
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3, v2}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v2

    if-eqz v2, :cond_6c

    .line 1433
    invoke-virtual {v2}, Lcom/android/server/job/restrictions/JobRestriction;->getInternalReason()I

    move-result v3

    .line 1434
    invoke-virtual {v2}, Lcom/android/server/job/restrictions/JobRestriction;->getStopReason()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restricted due to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1437
    invoke-static {v3}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1434
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    :cond_6c
    :goto_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6f
    return-void
.end method

.method public final stopOvertimeJobsLocked(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    .line 1357
    :goto_1
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 1358
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobServiceContext;

    .line 1359
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 1361
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->isWithinExecutionGuaranteeTime()Z

    move-result v2

    if-nez v2, :cond_22

    const/4 v2, 0x4

    const/4 v3, 0x3

    .line 1362
    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    return-void
.end method

.method public final stopUnexemptedJobsForDoze()V
    .registers 5

    const/4 v0, 0x0

    .line 1344
    :goto_1
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 1345
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobServiceContext;

    .line 1346
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 1347
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->canRunInDoze()Z

    move-result v2

    if-nez v2, :cond_23

    .line 1348
    const-string v2, "cancelled due to doze"

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v3, v2}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_26
    return-void
.end method

.method public updateConfigLocked()V
    .registers 9

    const/4 v0, 0x0

    .line 2038
    new-array v0, v0, [Ljava/lang/String;

    .line 2039
    const-string v1, "jobscheduler"

    invoke-static {v1, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    .line 2042
    const-string v1, "concurrency_limit"

    sget v2, Lcom/android/server/job/JobConcurrencyManager;->DEFAULT_CONCURRENCY_LIMIT:I

    .line 2043
    invoke-virtual {v0, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x40

    .line 2042
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    .line 2045
    const-string v1, "concurrency_screen_off_adjustment_delay_ms"

    const-wide/16 v3, 0x7530

    invoke-virtual {v0, v1, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mScreenOffAdjustmentDelayMs:J

    .line 2048
    sget-object v1, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_ON:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    iget-object v3, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iget v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    invoke-virtual {v3, v0, v4}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;I)V

    .line 2049
    iget-object v3, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iget v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    invoke-virtual {v3, v0, v4}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;I)V

    .line 2050
    iget-object v3, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iget v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    invoke-virtual {v3, v0, v4}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;I)V

    .line 2051
    iget-object v1, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    invoke-virtual {v1, v0, v3}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;I)V

    .line 2053
    sget-object v1, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_OFF:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    iget-object v3, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iget v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    invoke-virtual {v3, v0, v4}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;I)V

    .line 2054
    iget-object v3, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iget v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    invoke-virtual {v3, v0, v4}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;I)V

    .line 2055
    iget-object v3, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iget v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    invoke-virtual {v3, v0, v4}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;I)V

    .line 2056
    iget-object v1, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    invoke-virtual {v1, v0, v3}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;I)V

    .line 2059
    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    const-string v3, "concurrency_pkg_concurrency_limit_ej"

    const/4 v4, 0x3

    .line 2060
    invoke-virtual {v0, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2059
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitEj:I

    .line 2061
    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    const-string v3, "concurrency_pkg_concurrency_limit_regular"

    sget v4, Lcom/android/server/job/JobConcurrencyManager;->DEFAULT_PKG_CONCURRENCY_LIMIT_REGULAR:I

    .line 2062
    invoke-virtual {v0, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2061
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitRegular:I

    .line 2065
    const-string v1, "concurrency_enable_max_wait_time_bypass"

    invoke-virtual {v0, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitTimeBypassEnabled:Z

    .line 2068
    const-string v1, "concurrency_max_wait_ui_ms"

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitUIMs:J

    .line 2070
    const-string v1, "concurrency_max_wait_ej_ms"

    .line 2071
    invoke-virtual {v0, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 2070
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitEjMs:J

    .line 2073
    const-string v3, "concurrency_max_wait_regular_ms"

    const-wide/32 v4, 0x1b7740

    .line 2074
    invoke-virtual {v0, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 2073
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitRegularMs:J

    return-void
.end method

.method public final updateCounterConfigLocked()V
    .registers 4

    .line 741
    invoke-virtual {p0}, Lcom/android/server/job/JobConcurrencyManager;->refreshSystemStateLocked()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 745
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    if-eqz v0, :cond_e

    .line 746
    sget-object v0, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_ON:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    goto :goto_10

    :cond_e
    sget-object v0, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_OFF:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    .line 748
    :goto_10
    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2a

    const/4 v2, 0x2

    if-eq v1, v2, :cond_25

    const/4 v2, 0x3

    if-eq v1, v2, :cond_20

    .line 759
    iget-object v0, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    goto :goto_2e

    .line 756
    :cond_20
    iget-object v0, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    goto :goto_2e

    .line 753
    :cond_25
    iget-object v0, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    goto :goto_2e

    .line 750
    :cond_2a
    iget-object v0, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 763
    :goto_2e
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v0, p0}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->setConfig(Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;)V

    return-void
.end method

.method public final updateNonRunningPrioritiesLocked(Lcom/android/server/job/PendingJobQueue;Z)V
    .registers 5

    .line 1457
    invoke-virtual {p1}, Lcom/android/server/job/PendingJobQueue;->resetIterator()V

    .line 1458
    :cond_3
    :goto_3
    invoke-virtual {p1}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 1461
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_3

    .line 1465
    :cond_12
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1, v0}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v1

    iput v1, v0, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-eqz p2, :cond_3

    .line 1468
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobConcurrencyManager;->getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->incrementPendingJobCount(I)V

    goto :goto_3

    :cond_26
    return-void
.end method
