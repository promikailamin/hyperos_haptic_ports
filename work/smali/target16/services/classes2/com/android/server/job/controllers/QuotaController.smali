.class public final Lcom/android/server/job/controllers/QuotaController;
.super Lcom/android/server/job/controllers/StateController;
.source "QuotaController.java"


# static fields
.field public static final DEBUG:Z

.field static final MSG_END_GRACE_PERIOD:I = 0x6

.field static final MSG_REACHED_EJ_TIME_QUOTA:I = 0x4

.field static final MSG_REACHED_TIME_QUOTA:I = 0x0

.field static final OVERRIDE_QUOTA_ADJUST_DEFAULT_CONSTANTS:J = 0x1689cb07L

.field static final OVERRIDE_QUOTA_ENFORCEMENT_TO_FGS_JOBS:J = 0x1456519fL

.field static final OVERRIDE_QUOTA_ENFORCEMENT_TO_TOP_STARTED_JOBS:J = 0x164fba92L


# instance fields
.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mAllowedTimePerPeriodMs:[J

.field public mAllowedTimePeriodAdditionaInstallerMs:J

.field public final mBackgroundJobsController:Lcom/android/server/job/controllers/BackgroundJobsController;

.field public final mBucketPeriodsMs:[J

.field public final mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

.field public final mDeleteOldEventsFunctor:Ljava/util/function/Consumer;

.field public mEJGracePeriodTempAllowlistMs:J

.field public mEJGracePeriodTopAppMs:J

.field public mEJLimitWindowSizeMs:J

.field public final mEJLimitsMs:[J

.field public final mEJPkgTimers:Landroid/util/SparseArrayMap;

.field public mEJRewardInteractionMs:J

.field public mEJRewardNotificationSeenMs:J

.field public mEJRewardTopAppMs:J

.field public final mEJStats:Landroid/util/SparseArrayMap;

.field public final mEJTimingSessions:Landroid/util/SparseArrayMap;

.field public mEJTopAppTimeChunkSizeMs:J

.field public final mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

.field public mEjLimitAdditionInstallerMs:J

.field public mEjLimitAdditionSpecialMs:J

.field public final mExecutionStatsCache:Landroid/util/SparseArrayMap;

.field public final mForegroundUids:Landroid/util/SparseBooleanArray;

.field public final mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

.field public final mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

.field public final mMaxBucketJobCounts:[I

.field public final mMaxBucketSessionCounts:[I

.field public mMaxExecutionTimeIntoQuotaMs:J

.field public mMaxExecutionTimeMs:J

.field public mMaxJobCountPerRateLimitingWindow:I

.field public mMaxSessionCountPerRateLimitingWindow:I

.field public mNextCleanupTimeElapsed:J

.field public final mPkgTimers:Landroid/util/SparseArrayMap;

.field public final mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

.field public final mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

.field public mQuotaBufferMs:J

.field public mRateLimitingWindowMs:J

.field public final mSessionCleanupAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field public final mSystemInstallers:Landroid/util/SparseSetArray;

.field public final mTempAllowlistCache:Landroid/util/SparseBooleanArray;

.field public final mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

.field public final mTimedEventTooOld:Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;

.field public final mTimerChargingUpdateFunctor:Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

.field public final mTimingEvents:Landroid/util/SparseArrayMap;

.field public mTimingSessionCoalescingDurationMs:J

.field public final mTopAppCache:Landroid/util/SparseBooleanArray;

.field public final mTopAppGraceCache:Landroid/util/SparseLongArray;

.field public final mTopAppTrackers:Landroid/util/SparseArrayMap;

.field public final mTopStartedJobs:Landroid/util/ArraySet;

.field public final mTrackedJobs:Landroid/util/SparseArrayMap;

.field public final mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;


# direct methods
.method public static synthetic $r8$lambda$-3NZ5XpdDVosL9X9AVckEGk6ezM(Lcom/android/server/job/controllers/QuotaController;Ljava/util/function/Predicate;Landroid/util/proto/ProtoOutputStream;Landroid/util/ArraySet;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/controllers/QuotaController;->lambda$dumpControllerStateLocked$7(Ljava/util/function/Predicate;Landroid/util/proto/ProtoOutputStream;Landroid/util/ArraySet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FRepowK0q4sPXFYwpLTs2tTkn0U(Lcom/android/server/job/controllers/QuotaController;Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->lambda$new$3(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Kzxhf6GsnXI89yy8HJA3YgpVfNA(J[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)V
    .registers 5

    if-eqz p2, :cond_f

    const/4 v0, 0x0

    .line 1455
    :goto_3
    array-length v1, p2

    if-ge v0, v1, :cond_f

    .line 1456
    aget-object v1, p2, v0

    if-eqz v1, :cond_c

    .line 1458
    iput-wide p0, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_f
    return-void
.end method

.method public static synthetic $r8$lambda$MNHbYiRF-Q5zoKUxjG65rroTxUU(Lcom/android/server/job/controllers/QuotaController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController;->lambda$handleNewChargingStateLocked$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$QOq0iO8RyR3XjoDnLSldinZQnFI(Lcom/android/server/job/controllers/QuotaController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController;->lambda$onConstantsUpdatedLocked$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$Vt24VpaW9Ch7P9j_EJzW0yEWwUU(Lcom/android/server/job/controllers/QuotaController;Ljava/util/function/Predicate;Landroid/util/IndentingPrintWriter;Landroid/util/ArraySet;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/controllers/QuotaController;->lambda$dumpControllerStateLocked$5(Ljava/util/function/Predicate;Landroid/util/IndentingPrintWriter;Landroid/util/ArraySet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YYVorqvDSysTVlHaRinVTkluDzY(Lcom/android/server/job/controllers/QuotaController;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->lambda$new$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nJtt_f8EeFaCHDEellk6e9DTdA0(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/controllers/QuotaController$TopAppTimer;)V
    .registers 2

    .line 4685
    invoke-virtual {p1, p0}, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAllowedTimePerPeriodMs(Lcom/android/server/job/controllers/QuotaController;)[J
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:[J

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAllowedTimePeriodAdditionaInstallerMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePeriodAdditionaInstallerMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmBucketPeriodsMs(Lcom/android/server/job/controllers/QuotaController;)[J
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEJGracePeriodTempAllowlistMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTempAllowlistMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmEJGracePeriodTopAppMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTopAppMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmEJLimitWindowSizeMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmEJLimitsMs(Lcom/android/server/job/controllers/QuotaController;)[J
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEJPkgTimers(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEJRewardInteractionMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardInteractionMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmEJRewardNotificationSeenMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardNotificationSeenMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmEJRewardTopAppMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmEJTopAppTimeChunkSizeMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmEjLimitAdditionInstallerMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmEjLimitAdditionSpecialMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionSpecialMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmForegroundUids(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$QcHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInQuotaAlarmQueue(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMaxBucketJobCounts(Lcom/android/server/job/controllers/QuotaController;)[I
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMaxBucketSessionCounts(Lcom/android/server/job/controllers/QuotaController;)[I
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMaxExecutionTimeMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmMaxJobCountPerRateLimitingWindow(Lcom/android/server/job/controllers/QuotaController;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMaxSessionCountPerRateLimitingWindow(Lcom/android/server/job/controllers/QuotaController;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPkgTimers(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmQuotaBufferMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmRateLimitingWindowMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmTempAllowlistCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTempAllowlistGraceCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseLongArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTimingSessionCoalescingDurationMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmTopAppCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTopAppGraceCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseLongArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTopAppTrackers(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmAllowedTimePeriodAdditionaInstallerMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePeriodAdditionaInstallerMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEJGracePeriodTempAllowlistMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTempAllowlistMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEJGracePeriodTopAppMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTopAppMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEJLimitWindowSizeMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEJRewardInteractionMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardInteractionMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEJRewardNotificationSeenMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardNotificationSeenMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEJRewardTopAppMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEJTopAppTimeChunkSizeMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEjLimitAdditionInstallerMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEjLimitAdditionSpecialMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionSpecialMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMaxExecutionTimeIntoQuotaMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMaxExecutionTimeMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMaxJobCountPerRateLimitingWindow(Lcom/android/server/job/controllers/QuotaController;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMaxSessionCountPerRateLimitingWindow(Lcom/android/server/job/controllers/QuotaController;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmQuotaBufferMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRateLimitingWindowMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTimingSessionCoalescingDurationMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetExecutionStatsLocked(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;IZ)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;IZ)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgrantRewardForInstantEvent(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;J)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/QuotaController;->grantRewardForInstantEvent(ILjava/lang/String;J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhasTempAllowlistExemptionLocked(Lcom/android/server/job/controllers/QuotaController;IIJ)Z
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/QuotaController;->hasTempAllowlistExemptionLocked(IIJ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mincrementTimingSessionCountLocked(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->incrementTimingSessionCountLocked(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misCompatOverridedForQuotaConstantAdjustment(Lcom/android/server/job/controllers/QuotaController;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController;->isCompatOverridedForQuotaConstantAdjustment()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misQuotaFreeLocked(Lcom/android/server/job/controllers/QuotaController;I)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isQuotaFreeLocked(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misTopStartedJobLocked(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mmaybeUpdateConstraintForPkgLocked(Lcom/android/server/job/controllers/QuotaController;JILjava/lang/String;)Landroid/util/ArraySet;
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(JILjava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mmaybeUpdateConstraintForUidLocked(Lcom/android/server/job/controllers/QuotaController;I)Landroid/util/ArraySet;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForUidLocked(I)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msaveTimingSession(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;ZJ)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/job/controllers/QuotaController;->saveTimingSession(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;ZJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetConstraintSatisfied(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/JobStatus;JZZ)Z
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZZ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetExpeditedQuotaApproved(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/JobStatus;JZ)Z
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/QuotaController;->setExpeditedQuotaApproved(Lcom/android/server/job/controllers/JobStatus;JZ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mtransactQuotaLocked(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;JLcom/android/server/job/controllers/QuotaController$ShrinkableDebits;J)Z
    .registers 8

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/job/controllers/QuotaController;->transactQuotaLocked(ILjava/lang/String;JLcom/android/server/job/controllers/QuotaController$ShrinkableDebits;J)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$smhashLong(J)I
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->hashLong(J)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 123
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_10

    const-string v0, "JobScheduler.Quota"

    const/4 v1, 0x3

    .line 124
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    sput-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/BackgroundJobsController;Lcom/android/server/job/controllers/ConnectivityController;)V
    .registers 12

    .line 583
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 305
    new-instance p1, Landroid/util/SparseArrayMap;

    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 308
    new-instance p1, Landroid/util/SparseArrayMap;

    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    .line 311
    new-instance p1, Landroid/util/SparseArrayMap;

    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    .line 314
    new-instance p1, Landroid/util/SparseArrayMap;

    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    .line 319
    new-instance p1, Landroid/util/SparseArrayMap;

    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    .line 329
    new-instance p1, Landroid/util/SparseArrayMap;

    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    .line 332
    new-instance p1, Landroid/util/SparseArrayMap;

    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    .line 334
    new-instance p1, Landroid/util/SparseArrayMap;

    invoke-direct {p1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    .line 337
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 344
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 347
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    .line 353
    new-instance p1, Landroid/util/SparseLongArray;

    invoke-direct {p1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    .line 356
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    .line 362
    new-instance p1, Landroid/util/SparseLongArray;

    invoke-direct {p1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    const/4 p1, 0x7

    .line 372
    new-array v0, p1, [J

    fill-array-data v0, :array_1aa

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:[J

    const-wide/32 v0, 0xdbba00

    .line 386
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    const-wide/16 v2, 0x7530

    .line 392
    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    sub-long/2addr v0, v2

    .line 398
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    const-wide/32 v0, 0xea60

    .line 401
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    const/16 v4, 0x14

    .line 404
    iput v4, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    .line 411
    iput v4, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    const-wide/16 v4, 0x0

    .line 414
    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    .line 415
    new-instance v6, Lcom/android/server/job/controllers/QuotaController$1;

    invoke-direct {v6, p0}, Lcom/android/server/job/controllers/QuotaController$1;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    iput-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mSessionCleanupAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 434
    new-array v6, p1, [J

    fill-array-data v6, :array_1ca

    iput-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    .line 454
    new-array v6, p1, [I

    fill-array-data v6, :array_1ea

    iput-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    .line 472
    new-array v6, p1, [I

    fill-array-data v6, :array_1fc

    iput-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    const-wide/16 v6, 0x1388

    .line 486
    iput-wide v6, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    .line 493
    new-array p1, p1, [J

    fill-array-data p1, :array_20e

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    const-wide/32 v6, 0x1b7740

    .line 503
    iput-wide v6, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    const-wide/32 v6, 0xdbba0

    .line 505
    iput-wide v6, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionSpecialMs:J

    const-wide/32 v6, 0x927c0

    .line 507
    iput-wide v6, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePeriodAdditionaInstallerMs:J

    const-wide/32 v6, 0x5265c00

    .line 515
    iput-wide v6, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    .line 520
    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    const-wide/16 v2, 0x2710

    .line 526
    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    const-wide/16 v2, 0x3a98

    .line 531
    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardInteractionMs:J

    .line 536
    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardNotificationSeenMs:J

    const-wide/32 v2, 0x2bf20

    .line 538
    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTempAllowlistMs:J

    .line 541
    iput-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTopAppMs:J

    .line 547
    new-instance p1, Landroid/util/SparseSetArray;

    invoke-direct {p1}, Landroid/util/SparseSetArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    .line 1628
    new-instance p1, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController-IA;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    .line 1692
    new-instance p1, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

    invoke-direct {p1, p0, v0}, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController-IA;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimerChargingUpdateFunctor:Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

    .line 1847
    new-instance p1, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-direct {p1, p0, v0}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController-IA;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    .line 2664
    new-instance p1, Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;

    invoke-direct {p1, v0}, Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;-><init>(Lcom/android/server/job/controllers/QuotaController-IA;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimedEventTooOld:Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;

    .line 2666
    new-instance p1, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mDeleteOldEventsFunctor:Ljava/util/function/Consumer;

    .line 584
    new-instance p1, Lcom/android/server/job/controllers/QuotaController$QcHandler;

    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Lcom/android/server/job/controllers/QuotaController$QcHandler;-><init>(Lcom/android/server/job/controllers/QuotaController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    .line 585
    iget-object p1, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 586
    new-instance p1, Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/QuotaController$QcConstants;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    .line 587
    iput-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mBackgroundJobsController:Lcom/android/server/job/controllers/BackgroundJobsController;

    .line 588
    iput-object p3, p0, Lcom/android/server/job/controllers/QuotaController;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    .line 589
    new-instance p1, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    iget-object p2, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 590
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p0, p2, p3, v0}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;-><init>(Lcom/android/server/job/controllers/QuotaController;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/job/controllers/QuotaController-IA;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    .line 593
    const-class p1, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/usage/AppStandbyInternal;

    .line 594
    new-instance p2, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;

    invoke-direct {p2, p0}, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    invoke-interface {p1, p2}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 596
    const-class p1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 597
    new-instance p2, Lcom/android/server/job/controllers/QuotaController$UsageEventTracker;

    invoke-direct {p2, p0}, Lcom/android/server/job/controllers/QuotaController$UsageEventTracker;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    invoke-virtual {p1, p2}, Landroid/app/usage/UsageStatsManagerInternal;->registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    .line 599
    const-class p1, Lcom/android/server/PowerAllowlistInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/PowerAllowlistInternal;

    .line 600
    new-instance p2, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;

    invoke-direct {p2, p0}, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    invoke-interface {p1, p2}, Lcom/android/server/PowerAllowlistInternal;->registerTempAllowlistChangeListener(Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;)V

    .line 602
    const-string/jumbo p1, "platform_compat"

    .line 603
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    check-cast p1, Lcom/android/server/compat/PlatformCompat;

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 605
    new-instance p2, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    const-wide/32 v1, 0x1689cb07

    invoke-virtual {p1, v1, v2, p2}, Lcom/android/server/compat/PlatformCompat;->registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)Z

    .line 610
    :try_start_17e
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    new-instance p2, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;

    invoke-direct {p2, p0, v0}, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController-IA;)V

    const/4 p3, 0x4

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1, p3, v0}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 613
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    new-instance p2, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;

    invoke-direct {p2, p0, v0}, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController-IA;)V

    const/4 p3, 0x3

    invoke-interface {p1, p2, v1, p3, v0}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 616
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    new-instance p2, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;

    invoke-direct {p2, p0, v0}, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController-IA;)V

    const/4 p3, 0x2

    invoke-interface {p1, p2, v1, p3, v0}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_1a6
    .catch Landroid/os/RemoteException; {:try_start_17e .. :try_end_1a6} :catch_1a6

    .line 623
    :catch_1a6
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController;->processQuotaConstantsAdjustment()V

    return-void

    :array_1aa
    .array-data 8
        0x927c0
        0x927c0
        0x927c0
        0x927c0
        0x0
        0x927c0
        0x927c0
    .end array-data

    :array_1ca
    .array-data 8
        0x927c0
        0x6ddd00
        0x1b77400
        0x5265c00
        0x0
        0x5265c00
        0x927c0
    .end array-data

    :array_1ea
    .array-data 4
        0x4b
        0x78
        0xc8
        0x30
        0x0
        0xa
        0x4b
    .end array-data

    :array_1fc
    .array-data 4
        0x4b
        0xa
        0x8
        0x3
        0x0
        0x1
        0x4b
    .end array-data

    :array_20e
    .array-data 8
        0x1b7740
        0x1b7740
        0x927c0
        0x927c0
        0x0
        0x493e0
        0x36ee80
    .end array-data
.end method

.method public static hashLong(J)I
    .registers 4

    .line 0
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method


# virtual methods
.method public final cacheInstallerPackagesLocked(I)V
    .registers 9

    .line 796
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x4c3000

    .line 797
    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object p1

    .line 798
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_13
    if-ltz v0, :cond_44

    .line 799
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 800
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 801
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v4, "android.permission.INSTALL_PACKAGES"

    invoke-static {v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_41

    if-eqz v2, :cond_41

    .line 804
    iget-object v3, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, -0x1

    .line 805
    invoke-virtual {v3, v4, v6, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_41

    .line 806
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    :cond_41
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_44
    return-void
.end method

.method public final calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJ)J
    .registers 19

    .line 1179
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v6, p2

    move v5, v3

    move-wide v3, v1

    move-wide/from16 v1, p4

    :goto_c
    if-ge v5, v0, :cond_36

    .line 1181
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 1182
    iget-wide v9, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v11, v9, p2

    if-gez v11, :cond_1b

    goto :goto_33

    .line 1185
    :cond_1b
    iget-wide v11, v8, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v8, v11, p2

    if-gtz v8, :cond_26

    sub-long v6, v9, p2

    add-long/2addr v3, v6

    :goto_24
    move-wide v6, v9

    goto :goto_33

    :cond_26
    sub-long v6, v11, v6

    cmp-long v8, v6, v1

    if-lez v8, :cond_2d

    goto :goto_36

    :cond_2d
    sub-long v11, v9, v11

    add-long/2addr v11, v6

    add-long/2addr v3, v11

    sub-long/2addr v1, v6

    goto :goto_24

    :goto_33
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_36
    :goto_36
    add-long/2addr v3, v1

    .line 1204
    iget-wide p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    cmp-long p0, v3, p0

    if-lez p0, :cond_53

    .line 1205
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Calculated quota consumed time too high: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobScheduler.Quota"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    return-wide v3
.end method

.method public clearAppStatsLocked(ILjava/lang/String;)V
    .registers 6

    .line 772
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 773
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 774
    const-string v1, "JobScheduler.Quota"

    if-eqz v0, :cond_1f

    .line 775
    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 776
    const-string v2, "clearAppStats called before Timer turned off."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$Timer;->dropEverythingLocked()V

    .line 780
    :cond_1f
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz v0, :cond_37

    .line 782
    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 783
    const-string v2, "clearAppStats called before EJ Timer turned off."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$Timer;->dropEverythingLocked()V

    .line 787
    :cond_37
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 788
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 789
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    invoke-static {p1, p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 790
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 791
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 792
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public deleteObsoleteSessionsLocked()V
    .registers 12

    .line 2675
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimedEventTooOld:Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;->-$$Nest$mupdateNow(Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;)V

    .line 2678
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mDeleteOldEventsFunctor:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    move v1, v0

    .line 2681
    :goto_e
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v2}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v2

    if-ge v1, v2, :cond_63

    .line 2682
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v2

    move v3, v0

    .line 2683
    :goto_1d
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v4

    if-ge v3, v4, :cond_60

    .line 2684
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2685
    invoke-virtual {p0, v2, v4}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    move-result-object v5

    .line 2686
    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v2, v4}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_3c

    goto :goto_5d

    .line 2691
    :cond_3c
    :goto_3c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5d

    .line 2692
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 2693
    iget-object v7, p0, Lcom/android/server/job/controllers/QuotaController;->mTimedEventTooOld:Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;

    invoke-virtual {v7, v6}, Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;->test(Lcom/android/server/job/controllers/QuotaController$TimedEvent;)Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 2695
    iget-wide v7, v6, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v9, v6, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v7, v9

    neg-long v6, v7

    .line 2696
    invoke-virtual {v5, v6, v7}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->transactLocked(J)J

    .line 2697
    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3c

    :cond_5d
    :goto_5d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_63
    return-void
.end method

.method public dumpConstants(Landroid/util/IndentingPrintWriter;)V
    .registers 2

    .line 4874
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {p0, p1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->-$$Nest$mdump(Lcom/android/server/job/controllers/QuotaController$QcConstants;Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public dumpConstants(Landroid/util/proto/ProtoOutputStream;)V
    .registers 2

    .line 4879
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {p0, p1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->-$$Nest$mdump(Lcom/android/server/job/controllers/QuotaController$QcConstants;Landroid/util/proto/ProtoOutputStream;)V

    return-void
.end method

.method public dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 4557
    const-string v0, "Aconfig Flags:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    com.android.server.job.adjust_quota_default_constants: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 4559
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4558
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4560
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current elapsed time: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4563
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4565
    const-string v0, "Foreground UIDs: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4566
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4567
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4569
    const-string v0, "Cached top apps: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4570
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4571
    const-string v0, "Cached top app grace period: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4572
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4574
    const-string v0, "Cached temp allowlist: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4575
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4576
    const-string v0, "Cached temp allowlist grace period: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4577
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4578
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4580
    const-string v0, "Special apps:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4581
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4582
    const-string v0, "System installers={"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v2, v0

    .line 4583
    :goto_95
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    invoke-virtual {v3}, Landroid/util/SparseSetArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_be

    if-lez v2, :cond_a4

    .line 4585
    const-string v3, ", "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4587
    :cond_a4
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 4588
    const-string v3, "->"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4589
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_95

    .line 4591
    :cond_be
    const-string/jumbo v2, "}"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4592
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4594
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4595
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    new-instance v3, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, p2, p1}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/job/controllers/QuotaController;Ljava/util/function/Predicate;Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v2, v3}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 4638
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    move v2, v0

    .line 4639
    :goto_d8
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v3}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v3

    if-ge v2, v3, :cond_13c

    .line 4640
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v3

    move v4, v0

    .line 4641
    :goto_e7
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v5

    if-ge v4, v5, :cond_139

    .line 4642
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4643
    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v2, v4}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/QuotaController$Timer;

    invoke-virtual {v6, p1, p2}, Lcom/android/server/job/controllers/QuotaController$Timer;->dump(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V

    .line 4644
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4645
    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_136

    .line 4647
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4648
    const-string v6, "Saved events:"

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4649
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4650
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    :goto_11f
    if-ltz v6, :cond_12d

    .line 4651
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    .line 4652
    invoke-interface {v7, p1}, Lcom/android/server/job/controllers/QuotaController$TimedEvent;->dump(Landroid/util/IndentingPrintWriter;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_11f

    .line 4654
    :cond_12d
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4655
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4656
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_136
    add-int/lit8 v4, v4, 0x1

    goto :goto_e7

    :cond_139
    add-int/lit8 v2, v2, 0x1

    goto :goto_d8

    .line 4661
    :cond_13c
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    move v2, v0

    .line 4662
    :goto_140
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v3}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v3

    if-ge v2, v3, :cond_1a4

    .line 4663
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v3

    move v4, v0

    .line 4664
    :goto_14f
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v5

    if-ge v4, v5, :cond_1a1

    .line 4665
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4666
    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v2, v4}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/QuotaController$Timer;

    invoke-virtual {v6, p1, p2}, Lcom/android/server/job/controllers/QuotaController$Timer;->dump(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V

    .line 4667
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4668
    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_19e

    .line 4670
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4671
    const-string v6, "Saved sessions:"

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4672
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4673
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    :goto_187
    if-ltz v6, :cond_195

    .line 4674
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    .line 4675
    invoke-interface {v7, p1}, Lcom/android/server/job/controllers/QuotaController$TimedEvent;->dump(Landroid/util/IndentingPrintWriter;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_187

    .line 4677
    :cond_195
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4678
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4679
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_19e
    add-int/lit8 v4, v4, 0x1

    goto :goto_14f

    :cond_1a1
    add-int/lit8 v2, v2, 0x1

    goto :goto_140

    .line 4684
    :cond_1a4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4685
    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    new-instance v1, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda6;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p2, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 4687
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4688
    const-string p2, "Cached execution stats:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4689
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move p2, v0

    .line 4690
    :goto_1bd
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    const-string v2, ": "

    if-ge p2, v1, :cond_211

    .line 4691
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    move v3, v0

    .line 4692
    :goto_1ce
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v4

    if-ge v3, v4, :cond_20e

    .line 4693
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4694
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, p2, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 4696
    invoke-static {v1, v4}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4697
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v4, v0

    .line 4698
    :goto_1f1
    array-length v6, v5

    if-ge v4, v6, :cond_208

    .line 4699
    aget-object v6, v5, v4

    if-eqz v6, :cond_205

    .line 4701
    invoke-static {v4}, Lcom/android/server/job/controllers/JobStatus;->bucketName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4702
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4703
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_205
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f1

    .line 4706
    :cond_208
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1ce

    :cond_20e
    add-int/lit8 p2, p2, 0x1

    goto :goto_1bd

    .line 4709
    :cond_211
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4711
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4712
    const-string p2, "EJ debits:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4713
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move p2, v0

    .line 4714
    :goto_220
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    if-ge p2, v1, :cond_25a

    .line 4715
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    move v3, v0

    .line 4716
    :goto_22f
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v4

    if-ge v3, v4, :cond_257

    .line 4717
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4718
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, p2, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    .line 4720
    invoke-static {v1, v4}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4721
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4722
    invoke-virtual {v5, p1}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->dumpLocked(Landroid/util/IndentingPrintWriter;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_22f

    :cond_257
    add-int/lit8 p2, p2, 0x1

    goto :goto_220

    .line 4725
    :cond_25a
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4727
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4728
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AlarmQueue;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 4729
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 4735
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    const-wide v5, 0x10b00000009L

    .line 4736
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 4738
    iget-object v7, v0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 4739
    invoke-virtual {v7}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v7

    const-wide v8, 0x10800000001L

    .line 4738
    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4740
    sget-object v7, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 4741
    invoke-virtual {v7}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    const-wide v9, 0x10300000006L

    .line 4740
    invoke-virtual {v1, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const/4 v8, 0x0

    .line 4743
    :goto_30
    iget-object v11, v0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v11

    if-ge v8, v11, :cond_49

    .line 4744
    iget-object v11, v0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 4745
    invoke-virtual {v11, v8}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    const-wide v12, 0x20500000003L

    .line 4744
    invoke-virtual {v1, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_30

    .line 4748
    :cond_49
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    new-instance v11, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda7;

    invoke-direct {v11, v0, v2, v1}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/job/controllers/QuotaController;Ljava/util/function/Predicate;Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v8, v11}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    const/4 v8, 0x0

    .line 4777
    :goto_54
    iget-object v11, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v11}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v11

    if-ge v8, v11, :cond_1c3

    .line 4778
    iget-object v11, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v11, v8}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v11

    const/4 v12, 0x0

    .line 4779
    :goto_63
    iget-object v13, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v13

    if-ge v12, v13, :cond_1b7

    .line 4780
    iget-object v13, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v13, v8, v12}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-wide v14, 0x20b00000005L

    .line 4781
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 4784
    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v7, v8, v12}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/QuotaController$Timer;

    const-wide v9, 0x10b00000002L

    invoke-virtual {v7, v1, v9, v10, v2}, Lcom/android/server/job/controllers/QuotaController$Timer;->dump(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V

    .line 4786
    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v7, v11, v13}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz v7, :cond_9e

    const-wide v9, 0x10b00000006L

    .line 4788
    invoke-virtual {v7, v1, v9, v10, v2}, Lcom/android/server/job/controllers/QuotaController$Timer;->dump(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V

    .line 4793
    :cond_9e
    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v7, v11, v13}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_d3

    .line 4795
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    :goto_ae
    if-ltz v9, :cond_d3

    .line 4796
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    .line 4797
    instance-of v2, v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    if-nez v2, :cond_be

    move-object/from16 p3, v7

    move v2, v8

    goto :goto_cb

    .line 4800
    :cond_be
    check-cast v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    move-object/from16 p3, v7

    move v2, v8

    const-wide v7, 0x20b00000003L

    .line 4801
    invoke-virtual {v10, v1, v7, v8}, Lcom/android/server/job/controllers/QuotaController$TimingSession;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    :goto_cb
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v7, p3

    move v8, v2

    move-object/from16 v2, p4

    goto :goto_ae

    :cond_d3
    move v2, v8

    .line 4806
    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v7, v11, v13}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    if-eqz v7, :cond_1a2

    const/4 v8, 0x0

    .line 4808
    :goto_df
    array-length v9, v7

    if-ge v8, v9, :cond_1a2

    .line 4809
    aget-object v9, v7, v8

    if-nez v9, :cond_f0

    move-object/from16 v17, v7

    move/from16 v18, v8

    move/from16 p3, v11

    move/from16 v16, v12

    goto/16 :goto_198

    :cond_f0
    move/from16 p3, v11

    const-wide v10, 0x20b00000004L

    .line 4813
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    move/from16 v16, v12

    const-wide v12, 0x10e00000001L

    .line 4815
    invoke-virtual {v1, v12, v13, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v12, 0x10300000002L

    move-object/from16 v17, v7

    move/from16 v18, v8

    .line 4818
    iget-wide v7, v9, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    invoke-virtual {v1, v12, v13, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v7, 0x10300000003L

    .line 4821
    iget-wide v12, v9, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    invoke-virtual {v1, v7, v8, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v7, 0x1050000000eL

    .line 4824
    iget v12, v9, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    invoke-virtual {v1, v7, v8, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v7, 0x1050000000fL

    .line 4827
    iget v12, v9, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    invoke-virtual {v1, v7, v8, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v7, 0x10300000004L

    .line 4830
    iget-wide v12, v9, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    invoke-virtual {v1, v7, v8, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v7, 0x10500000005L

    .line 4833
    iget v12, v9, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    invoke-virtual {v1, v7, v8, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4836
    iget-wide v7, v9, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    const-wide v12, 0x10300000006L

    invoke-virtual {v1, v12, v13, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v7, 0x10500000007L

    .line 4839
    iget v12, v9, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    invoke-virtual {v1, v7, v8, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v7, 0x1050000000bL

    .line 4842
    iget v12, v9, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    invoke-virtual {v1, v7, v8, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v7, 0x10300000008L

    .line 4845
    iget-wide v12, v9, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    invoke-virtual {v1, v7, v8, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v7, 0x10300000009L

    .line 4848
    iget-wide v12, v9, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    invoke-virtual {v1, v7, v8, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v7, 0x1050000000aL

    .line 4851
    iget v12, v9, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    invoke-virtual {v1, v7, v8, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v7, 0x1030000000cL

    .line 4854
    iget-wide v12, v9, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    invoke-virtual {v1, v7, v8, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v7, 0x1050000000dL

    .line 4857
    iget v9, v9, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4860
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_198
    add-int/lit8 v8, v18, 0x1

    move/from16 v11, p3

    move/from16 v12, v16

    move-object/from16 v7, v17

    goto/16 :goto_df

    :cond_1a2
    move/from16 p3, v11

    move/from16 v16, v12

    .line 4864
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v12, v16, 0x1

    move/from16 v11, p3

    move v8, v2

    const-wide v9, 0x10300000006L

    move-object/from16 v2, p4

    goto/16 :goto_63

    :cond_1b7
    move v2, v8

    add-int/lit8 v8, v2, 0x1

    move-object/from16 v2, p4

    const-wide v9, 0x10300000006L

    goto/16 :goto_54

    .line 4868
    :cond_1c3
    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4869
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getAllowedTimePerPeriodMs()[J
    .registers 1

    .line 4404
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:[J

    return-object p0
.end method

.method public final getAllowedTimePerPeriodMsLocked(ILjava/lang/String;I)J
    .registers 7

    .line 1107
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:[J

    aget-wide v0, v0, p3

    .line 1109
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController;->isCompatOverridedForQuotaConstantAdjustment()Z

    move-result v2

    if-nez v2, :cond_18

    const/4 v2, 0x6

    if-ne p3, v2, :cond_18

    iget-object p3, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    .line 1111
    invoke-virtual {p3, p1, p2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 1112
    iget-wide p0, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePeriodAdditionaInstallerMs:J

    add-long/2addr v0, p0

    :cond_18
    return-wide v0
.end method

.method public getAllowedTimePeriodAdditionInstallerMs()J
    .registers 3

    .line 4460
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePeriodAdditionaInstallerMs:J

    return-wide v0
.end method

.method public getBucketMaxJobCounts()[I
    .registers 1

    .line 4410
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    return-object p0
.end method

.method public getBucketMaxSessionCounts()[I
    .registers 1

    .line 4416
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    return-object p0
.end method

.method public getBucketWindowSizes()[J
    .registers 1

    .line 4422
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    return-object p0
.end method

.method public getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    .registers 6

    .line 929
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    if-nez v0, :cond_1e

    .line 931
    new-instance v0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 933
    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 932
    invoke-static {p2, p1, v1, v2}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;-><init>(I)V

    .line 935
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    return-object v0
.end method

.method public getEJGracePeriodTempAllowlistMs()J
    .registers 3

    .line 4439
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTempAllowlistMs:J

    return-wide v0
.end method

.method public getEJGracePeriodTopAppMs()J
    .registers 3

    .line 4444
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTopAppMs:J

    return-wide v0
.end method

.method public final getEJLimitMsLocked(ILjava/lang/String;I)J
    .registers 6

    .line 1098
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    aget-wide v0, v0, p3

    .line 1099
    iget-object p3, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 1100
    iget-wide p0, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    add-long/2addr v0, p0

    :cond_f
    return-wide v0
.end method

.method public getEJLimitWindowSizeMs()J
    .registers 3

    .line 4471
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    return-wide v0
.end method

.method public getEJLimitsMs()[J
    .registers 1

    .line 4450
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    return-object p0
.end method

.method public getEJRewardInteractionMs()J
    .registers 3

    .line 4477
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardInteractionMs:J

    return-wide v0
.end method

.method public getEJRewardNotificationSeenMs()J
    .registers 3

    .line 4483
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardNotificationSeenMs:J

    return-wide v0
.end method

.method public getEJRewardTopAppMs()J
    .registers 3

    .line 4489
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    return-wide v0
.end method

.method public getEJTimingSessions(ILjava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/QuotaController$TimedEvent;",
            ">;"
        }
    .end annotation

    .line 4495
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getEJTopAppTimeChunkSizeMs()J
    .registers 3

    .line 4501
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    return-wide v0
.end method

.method public getEjLimitAdditionInstallerMs()J
    .registers 3

    .line 4455
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    return-wide v0
.end method

.method public getEjLimitAdditionSpecialMs()J
    .registers 3

    .line 4465
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionSpecialMs:J

    return-wide v0
.end method

.method public getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .registers 5

    const/4 v0, 0x1

    .line 1271
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;IZ)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object p0

    return-object p0
.end method

.method public final getExecutionStatsLocked(ILjava/lang/String;IZ)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .registers 15

    const/4 v0, 0x4

    if-ne p3, v0, :cond_10

    .line 1279
    const-string p0, "JobScheduler.Quota"

    const-string p1, "getExecutionStatsLocked called for a NEVER app."

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    new-instance p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    return-object p0

    .line 1282
    :cond_10
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    if-nez v0, :cond_24

    .line 1284
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    array-length v0, v0

    new-array v0, v0, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1285
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    :cond_24
    aget-object v1, v0, p3

    if-nez v1, :cond_2f

    .line 1289
    new-instance v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {v1}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    .line 1290
    aput-object v1, v0, p3

    :cond_2f
    if-eqz p4, :cond_7c

    .line 1294
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/controllers/QuotaController;->getAllowedTimePerPeriodMsLocked(ILjava/lang/String;I)J

    move-result-wide v2

    .line 1295
    iget-object p4, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    aget-wide v4, p4, p3

    .line 1296
    iget-object p4, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    aget p4, p4, p3

    .line 1297
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    aget p3, v0, p3

    .line 1298
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz v0, :cond_51

    .line 1299
    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v0

    if-nez v0, :cond_71

    :cond_51
    iget-wide v6, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 1300
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-lez v0, :cond_71

    iget-wide v6, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->allowedTimePerPeriodMs:J

    cmp-long v0, v6, v2

    if-nez v0, :cond_71

    iget-wide v6, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    cmp-long v0, v6, v4

    if-nez v0, :cond_71

    iget v0, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-ne v0, p4, :cond_71

    iget v0, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-eq v0, p3, :cond_7c

    .line 1306
    :cond_71
    iput-wide v2, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->allowedTimePerPeriodMs:J

    .line 1307
    iput-wide v4, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    .line 1308
    iput p4, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    .line 1309
    iput p3, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    .line 1310
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/job/controllers/QuotaController;->updateExecutionStatsLocked(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)V

    :cond_7c
    return-object v1
.end method

.method public getForegroundUids()Landroid/util/SparseBooleanArray;
    .registers 1

    .line 4428
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 1

    .line 4434
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    return-object p0
.end method

.method public getInQuotaBufferMs()J
    .registers 3

    .line 4506
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    return-wide v0
.end method

.method public getMaxExecutionTimeMs()J
    .registers 3

    .line 4511
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    return-wide v0
.end method

.method public getMaxJobCountPerRateLimitingWindow()I
    .registers 1

    .line 4516
    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    return p0
.end method

.method public getMaxJobExecutionTimeMsLocked(Lcom/android/server/job/controllers/JobStatus;)J
    .registers 8

    .line 833
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_55

    .line 836
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 837
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    return-wide p0

    .line 847
    :cond_15
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_34

    .line 848
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 849
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/QuotaController;->isUidInForeground(I)Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_34

    :cond_32
    move v0, v2

    goto :goto_35

    :cond_34
    :goto_34
    move v0, v1

    .line 851
    :goto_35
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v3

    const/16 v4, 0x190

    if-lt v3, v4, :cond_3e

    goto :goto_3f

    :cond_3e
    move v1, v2

    :goto_3f
    if-eqz v0, :cond_48

    if-eqz v1, :cond_48

    .line 853
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    return-wide p0

    .line 856
    :cond_48
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p1

    .line 855
    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide p0

    return-wide p0

    .line 860
    :cond_55
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 861
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    return-wide p0

    .line 863
    :cond_62
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v0

    const/4 v3, 0x6

    const-wide/16 v4, 0x2

    if-ne v0, v3, :cond_81

    .line 864
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    aget-wide v0, v0, v3

    div-long/2addr v0, v4

    .line 866
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p1

    .line 865
    invoke-virtual {p0, v2, p1}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide p0

    .line 864
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0

    .line 868
    :cond_81
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_c1

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_94

    goto :goto_c1

    .line 873
    :cond_94
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/QuotaController;->isUidInForeground(I)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 874
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    aget-wide v0, v0, v1

    div-long/2addr v0, v4

    .line 876
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p1

    .line 875
    invoke-virtual {p0, v2, p1}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide p0

    .line 874
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0

    .line 879
    :cond_b4
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p1

    .line 878
    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide p0

    return-wide p0

    .line 869
    :cond_c1
    :goto_c1
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    aget-wide v0, v0, v2

    div-long/2addr v0, v4

    .line 871
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p1

    .line 870
    invoke-virtual {p0, v2, p1}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide p0

    .line 869
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getMaxSessionCountPerRateLimitingWindow()I
    .registers 1

    .line 4521
    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    return p0
.end method

.method public getMinQuotaCheckDelayMs()J
    .registers 3

    .line 4526
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    invoke-virtual {p0}, Lcom/android/server/utils/AlarmQueue;->getMinTimeBetweenAlarmsMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProcessStateQuotaFreeThreshold(I)I
    .registers 4

    .line 2708
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v0, 0x1456519f

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledByUid(JI)Z

    move-result p0

    if-nez p0, :cond_d

    const/4 p0, 0x3

    return p0

    :cond_d
    const/4 p0, 0x4

    return p0
.end method

.method public getQcConstants()Lcom/android/server/job/controllers/QuotaController$QcConstants;
    .registers 1

    .line 4548
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    return-object p0
.end method

.method public getRateLimitingWindowMs()J
    .registers 3

    .line 4531
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    return-wide v0
.end method

.method public getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 1053
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    move-result-object v3

    .line 1054
    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->getStandbyBucketLocked()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_14

    const-wide/16 v0, 0x0

    return-wide v0

    .line 1058
    :cond_14
    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->getStandbyBucketLocked()I

    move-result v4

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/job/controllers/QuotaController;->getEJLimitMsLocked(ILjava/lang/String;I)J

    move-result-wide v4

    .line 1059
    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->getTallyLocked()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 1062
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1063
    sget-object v7, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v7}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    .line 1064
    iget-wide v9, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    sub-long v9, v7, v9

    if-eqz v6, :cond_5d

    .line 1066
    :goto_35
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_5d

    const/4 v11, 0x0

    .line 1067
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 1068
    iget-wide v13, v12, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v15, v13, v9

    if-gez v15, :cond_55

    .line 1069
    iget-wide v11, v12, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v13, v11

    add-long/2addr v4, v13

    neg-long v11, v13

    .line 1071
    invoke-virtual {v3, v11, v12}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->transactLocked(J)J

    const/4 v15, 0x0

    .line 1072
    invoke-interface {v6, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_35

    .line 1073
    :cond_55
    iget-wide v11, v12, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v3, v11, v9

    if-gez v3, :cond_5d

    sub-long/2addr v9, v11

    add-long/2addr v4, v9

    .line 1083
    :cond_5d
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;

    if-eqz v3, :cond_72

    .line 1084
    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->isActive()Z

    move-result v6

    if-eqz v6, :cond_72

    .line 1085
    invoke-virtual {v3, v7, v8}, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->getPendingReward(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 1088
    :cond_72
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-nez v0, :cond_7d

    return-wide v4

    .line 1093
    :cond_7d
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/controllers/QuotaController$Timer;->getCurrentDuration(J)J

    move-result-wide v0

    sub-long/2addr v4, v0

    return-wide v4
.end method

.method public getRemainingExecutionTimeLocked(ILjava/lang/String;)J
    .registers 5

    .line 1027
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 1028
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1027
    invoke-static {p2, p1, v0, v1}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v0

    .line 1029
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(ILjava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getRemainingExecutionTimeLocked(ILjava/lang/String;I)J
    .registers 5

    const/4 v0, 0x4

    if-ne p3, v0, :cond_6

    const-wide/16 p0, 0x0

    return-wide p0

    .line 1043
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object p1

    .line 1042
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J
    .registers 4

    .line 1020
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    .line 1021
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 1022
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result p1

    .line 1020
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(ILjava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)J
    .registers 6

    .line 1047
    iget-wide v0, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->allowedTimePerPeriodMs:J

    iget-wide v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    iget-wide p0, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    sub-long/2addr v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 1218
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/job/controllers/QuotaController;->getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J

    move-result-wide v3

    .line 1220
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_9e

    .line 1221
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1c

    goto/16 :goto_9e

    .line 1225
    :cond_1c
    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v6}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    .line 1226
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    move-result-object v8

    .line 1228
    invoke-virtual {v8}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->getStandbyBucketLocked()I

    move-result v8

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/server/job/controllers/QuotaController;->getEJLimitMsLocked(ILjava/lang/String;I)J

    move-result-wide v1

    .line 1229
    iget-wide v8, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    const/4 v0, 0x0

    move-wide v10, v8

    move-wide v12, v10

    .line 1236
    :goto_3a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    if-ge v0, v14, :cond_95

    .line 1237
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    move-wide/from16 p0, v8

    .line 1238
    iget-wide v8, v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v15, v8, v6

    if-gez v15, :cond_59

    .line 1241
    iget-wide v14, v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v8, v14

    add-long/2addr v3, v8

    .line 1242
    invoke-interface {v5, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    move-wide v15, v6

    goto :goto_8f

    :cond_59
    move-wide v15, v6

    .line 1244
    iget-wide v6, v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v17, v6, v15

    if-gez v17, :cond_63

    sub-long v12, v8, v15

    goto :goto_8f

    :cond_63
    if-nez v0, :cond_67

    move-wide v8, v15

    goto :goto_73

    :cond_67
    add-int/lit8 v8, v0, -0x1

    .line 1250
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    invoke-interface {v8}, Lcom/android/server/job/controllers/QuotaController$TimedEvent;->getEndTimeElapsed()J

    move-result-wide v8

    :goto_73
    sub-long/2addr v6, v8

    .line 1251
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    add-long/2addr v10, v8

    cmp-long v6, v8, v6

    if-nez v6, :cond_86

    .line 1254
    iget-wide v6, v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    move-wide/from16 v17, v3

    iget-wide v3, v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v6, v3

    add-long/2addr v12, v6

    goto :goto_88

    :cond_86
    move-wide/from16 v17, v3

    :goto_88
    sub-long v3, v17, v8

    cmp-long v6, v3, p0

    if-gtz v6, :cond_8f

    goto :goto_97

    :cond_8f
    :goto_8f
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v8, p0

    move-wide v6, v15

    goto :goto_3a

    :cond_95
    move-wide/from16 v17, v3

    :goto_97
    add-long/2addr v10, v12

    add-long/2addr v10, v3

    .line 1263
    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_9e
    :goto_9e
    return-wide v3
.end method

.method public getTimeUntilQuotaConsumedLocked(ILjava/lang/String;)J
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 1125
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    .line 1126
    invoke-static {v2, v1, v3, v4}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_16

    const-wide/16 v0, 0x0

    return-wide v0

    .line 1132
    :cond_16
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1133
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v7

    .line 1135
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/job/controllers/QuotaController;->getAllowedTimePerPeriodMsLocked(ILjava/lang/String;I)J

    move-result-wide v1

    if-eqz v6, :cond_2e

    .line 1136
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_31

    :cond_2e
    move-wide/from16 p1, v1

    goto :goto_66

    .line 1145
    :cond_31
    iget-wide v8, v7, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    sub-long v10, v3, v8

    const-wide/32 v12, 0x5265c00

    sub-long/2addr v3, v12

    .line 1147
    iget-wide v12, v7, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    sub-long v12, v1, v12

    .line 1148
    iget-wide v14, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    move-wide/from16 p1, v1

    iget-wide v0, v7, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    sub-long/2addr v14, v0

    cmp-long v0, v8, p1

    if-nez v0, :cond_52

    move-object/from16 v0, p0

    move-wide v2, v3

    move-object v1, v6

    move-wide v4, v14

    .line 1154
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController;->calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJ)J

    move-result-wide v0

    return-wide v0

    :cond_52
    move-object/from16 v0, p0

    move-wide v2, v3

    move-object v1, v6

    move-wide v4, v14

    .line 1163
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController;->calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJ)J

    move-result-wide v6

    move-wide v2, v10

    move-wide v4, v12

    .line 1165
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController;->calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJ)J

    move-result-wide v0

    .line 1162
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 1139
    :goto_66
    iget-wide v1, v7, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_6f

    .line 1140
    iget-wide v0, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    return-wide v0

    :cond_6f
    return-wide p1
.end method

.method public getTimingSessionCoalescingDurationMs()J
    .registers 3

    .line 4536
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    return-wide v0
.end method

.method public getTimingSessions(ILjava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/QuotaController$TimedEvent;",
            ">;"
        }
    .end annotation

    .line 4542
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final grantRewardForInstantEvent(ILjava/lang/String;J)V
    .registers 15

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_7

    return-void

    .line 1583
    :cond_7
    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1584
    :try_start_a
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    .line 1585
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    move-result-object v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-wide v8, p3

    .line 1586
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/job/controllers/QuotaController;->transactQuotaLocked(ILjava/lang/String;JLcom/android/server/job/controllers/QuotaController$ShrinkableDebits;J)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 1587
    iget-object p0, v2, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    .line 1588
    invoke-virtual {v2, v5, v6, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(JILjava/lang/String;)Landroid/util/ArraySet;

    move-result-object p1

    .line 1587
    invoke-interface {p0, p1}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    goto :goto_2b

    :catchall_28
    move-exception v0

    move-object p0, v0

    goto :goto_2d

    .line 1590
    :cond_2b
    :goto_2b
    monitor-exit v1

    return-void

    :goto_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_a .. :try_end_2e} :catchall_28

    throw p0
.end method

.method public final handleNewChargingStateLocked()V
    .registers 5

    .line 1696
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimerChargingUpdateFunctor:Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 1697
    invoke-virtual {v3}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v3

    .line 1696
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;->-$$Nest$msetStatus(Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;JZ)V

    .line 1698
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v0, :cond_31

    .line 1699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleNewChargingStateLocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.Quota"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    :cond_31
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimerChargingUpdateFunctor:Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 1703
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimerChargingUpdateFunctor:Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 1705
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public handleQuotaDefaultConstantsCompatChange()V
    .registers 4

    .line 1481
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1482
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController;->isCompatOverridedForQuotaConstantAdjustment()Z

    move-result v1

    .line 1483
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-virtual {v2, v1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->adjustDefaultBucketWindowSizes(Z)V

    .line 1484
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-virtual {v2, v1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->adjustDefaultEjLimits(Z)V

    .line 1485
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->-$$Nest$fputmShouldReevaluateConstraints(Lcom/android/server/job/controllers/QuotaController$QcConstants;Z)V

    .line 1486
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController;->onConstantsUpdatedLocked()V

    .line 1487
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public final hasTempAllowlistExemptionLocked(IIJ)Z
    .registers 9

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1e

    const/4 v0, 0x4

    if-ne p2, v0, :cond_8

    goto :goto_1e

    .line 890
    :cond_8
    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    .line 891
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-nez p0, :cond_1c

    cmp-long p0, p3, v2

    if-gez p0, :cond_1b

    goto :goto_1c

    :cond_1b
    return v1

    :cond_1c
    :goto_1c
    const/4 p0, 0x1

    return p0

    :cond_1e
    :goto_1e
    return v1
.end method

.method public incrementJobCountLocked(ILjava/lang/String;I)V
    .registers 10

    .line 1500
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1501
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    if-nez v2, :cond_1a

    .line 1503
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    array-length v2, v2

    new-array v2, v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1504
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, p1, p2, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    const/4 p1, 0x0

    move p2, p1

    .line 1506
    :goto_1c
    array-length v3, v2

    if-ge p2, v3, :cond_44

    .line 1507
    aget-object v3, v2, p2

    if-nez v3, :cond_2a

    .line 1509
    new-instance v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {v3}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    .line 1510
    aput-object v3, v2, p2

    .line 1512
    :cond_2a
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    cmp-long v4, v4, v0

    if-gtz v4, :cond_37

    .line 1513
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    add-long/2addr v4, v0

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    .line 1514
    iput p1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    .line 1516
    :cond_37
    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    add-int/2addr v4, p3

    iput v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    .line 1517
    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    add-int/2addr v4, p3

    iput v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    add-int/lit8 p2, p2, 0x1

    goto :goto_1c

    :cond_44
    return-void
.end method

.method public final incrementTimingSessionCountLocked(ILjava/lang/String;)V
    .registers 9

    .line 1528
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1529
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    if-nez v2, :cond_1a

    .line 1531
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    array-length v2, v2

    new-array v2, v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1532
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, p1, p2, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    const/4 p1, 0x0

    move p2, p1

    .line 1534
    :goto_1c
    array-length v3, v2

    if-ge p2, v3, :cond_40

    .line 1535
    aget-object v3, v2, p2

    if-nez v3, :cond_2a

    .line 1537
    new-instance v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {v3}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    .line 1538
    aput-object v3, v2, p2

    .line 1540
    :cond_2a
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    cmp-long v4, v4, v0

    if-gtz v4, :cond_37

    .line 1541
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    add-long/2addr v4, v0

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    .line 1542
    iput p1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    .line 1544
    :cond_37
    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    add-int/lit8 p2, p2, 0x1

    goto :goto_1c

    :cond_40
    return-void
.end method

.method public invalidateAllExecutionStatsLocked()V
    .registers 4

    .line 1452
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1453
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    new-instance v2, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, v1}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda2;-><init>(J)V

    invoke-virtual {p0, v2}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public invalidateAllExecutionStatsLocked(ILjava/lang/String;)V
    .registers 5

    .line 1468
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    if-eqz p0, :cond_1d

    .line 1470
    sget-object p1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {p1}, Ljava/time/Clock;->millis()J

    move-result-wide p1

    const/4 v0, 0x0

    .line 1471
    :goto_11
    array-length v1, p0

    if-ge v0, v1, :cond_1d

    .line 1472
    aget-object v1, p0, v0

    if-eqz v1, :cond_1a

    .line 1474
    iput-wide p1, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_1d
    return-void
.end method

.method public final isCompatOverridedForQuotaConstantAdjustment()Z
    .registers 5

    .line 1522
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-string v0, "android"

    const/4 v1, 0x0

    const-wide/32 v2, 0x1689cb07

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final isQuotaFreeLocked(I)Z
    .registers 3

    .line 978
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_e

    const/4 p0, 0x5

    if-eq p1, p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    return v0
.end method

.method public final isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 6

    .line 822
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v1, 0x164fba92

    .line 823
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    .line 822
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledByUid(JI)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 824
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public final isUidInForeground(I)Z
    .registers 3

    .line 812
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 815
    :cond_8
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 816
    :try_start_b
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_13
    move-exception p0

    .line 817
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw p0
.end method

.method public final isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)Z
    .registers 6

    .line 1002
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1003
    iget-wide v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_12

    iget v0, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    if-ge v0, p0, :cond_1a

    .line 1006
    :cond_12
    iget p0, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget p1, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-ge p0, p1, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public final isUnderSessionCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)Z
    .registers 6

    .line 1011
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1012
    iget-wide v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_12

    iget v0, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    if-ge v0, p0, :cond_1a

    .line 1014
    :cond_12
    iget p0, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    iget p1, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-ge p0, p1, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public isWithinEJQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 9

    .line 898
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/QuotaController;->isQuotaFreeLocked(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    .line 905
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-nez v0, :cond_62

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/QuotaController;->isUidInForeground(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_62

    .line 909
    :cond_1d
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    .line 910
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    .line 911
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v4

    .line 910
    invoke-virtual {p0, v0, v4, v2, v3}, Lcom/android/server/job/controllers/QuotaController;->hasTempAllowlistExemptionLocked(IIJ)Z

    move-result v0

    if-eqz v0, :cond_32

    return v1

    .line 915
    :cond_32
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v4

    .line 916
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_62

    cmp-long v0, v2, v4

    if-gez v0, :cond_4d

    goto :goto_62

    .line 923
    :cond_4d
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p1

    .line 922
    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/QuotaController;->getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J

    move-result-wide p0

    const-wide/16 v2, 0x0

    cmp-long p0, v2, p0

    if-gez p0, :cond_60

    return v1

    :cond_60
    const/4 p0, 0x0

    return p0

    :cond_62
    :goto_62
    return v1
.end method

.method public isWithinQuotaLocked(ILjava/lang/String;I)Z
    .registers 9

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ne p3, v0, :cond_5

    return v1

    .line 992
    :cond_5
    invoke-virtual {p0, p3}, Lcom/android/server/job/controllers/QuotaController;->isQuotaFreeLocked(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    return v2

    .line 994
    :cond_d
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object p1

    .line 996
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)J

    move-result-wide p2

    const-wide/16 v3, 0x0

    cmp-long p2, p2, v3

    if-lez p2, :cond_28

    .line 997
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)Z

    move-result p2

    if-eqz p2, :cond_28

    .line 998
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isUnderSessionCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)Z

    move-result p0

    if-eqz p0, :cond_28

    return v2

    :cond_28
    return v1
.end method

.method public isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 10

    .line 943
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v0

    .line 948
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_59

    .line 949
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    if-nez v1, :cond_59

    .line 950
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->isUidInForeground(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_59

    :cond_1c
    const/4 v1, 0x4

    const/4 v3, 0x0

    if-ne v0, v1, :cond_21

    return v3

    .line 956
    :cond_21
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/QuotaController;->isQuotaFreeLocked(I)Z

    move-result v1

    if-eqz v1, :cond_28

    return v2

    .line 958
    :cond_28
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    .line 959
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    .line 958
    invoke-virtual {p0, v1, v4, v0}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v1

    .line 960
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3f

    return v3

    :cond_3f
    const/4 v4, 0x5

    if-eq v0, v4, :cond_4b

    .line 965
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p1

    if-eqz p1, :cond_4b

    return v2

    .line 972
    :cond_4b
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)Z

    move-result p1

    if-eqz p1, :cond_58

    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->isUnderSessionCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)Z

    move-result p0

    if-eqz p0, :cond_58

    return v2

    :cond_58
    return v3

    :cond_59
    :goto_59
    return v2
.end method

.method public final synthetic lambda$dumpControllerStateLocked$5(Ljava/util/function/Predicate;Landroid/util/IndentingPrintWriter;Landroid/util/ArraySet;)V
    .registers 8

    const/4 v0, 0x0

    .line 4596
    :goto_1
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_ba

    .line 4597
    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 4598
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto/16 :goto_b6

    .line 4601
    :cond_15
    const-string v2, "#"

    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4602
    invoke-virtual {v1, p2}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 4603
    const-string v2, " from "

    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4604
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-static {p2, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 4605
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 4606
    const-string v2, " (TOP)"

    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4608
    :cond_36
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4610
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4611
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/job/controllers/JobStatus;->bucketName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4612
    const-string v2, ", "

    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4613
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 4614
    const-string/jumbo v3, "within EJ quota"

    invoke-virtual {p2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_79

    .line 4615
    :cond_59
    iget-boolean v3, v1, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v3, :cond_64

    .line 4616
    const-string/jumbo v3, "out of EJ quota"

    invoke-virtual {p2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_79

    :cond_64
    const/high16 v3, 0x1000000

    .line 4617
    invoke-virtual {v1, v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 4618
    const-string/jumbo v3, "within regular quota"

    invoke-virtual {p2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_79

    .line 4620
    :cond_73
    const-string/jumbo v3, "not within quota"

    invoke-virtual {p2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4622
    :goto_79
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4623
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v2

    if-eqz v2, :cond_98

    .line 4625
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 4624
    invoke-virtual {p0, v2, v1}, Lcom/android/server/job/controllers/QuotaController;->getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 4626
    const-string/jumbo v1, "ms remaining in EJ quota"

    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_b0

    .line 4627
    :cond_98
    iget-boolean v2, v1, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v2, :cond_a3

    .line 4628
    const-string/jumbo v1, "should be stopped after min execution time"

    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_b0

    .line 4630
    :cond_a3
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 4631
    const-string/jumbo v1, "ms remaining in quota"

    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4633
    :goto_b0
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4634
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :goto_b6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_ba
    return-void
.end method

.method public final synthetic lambda$dumpControllerStateLocked$7(Ljava/util/function/Predicate;Landroid/util/proto/ProtoOutputStream;Landroid/util/ArraySet;)V
    .registers 12

    const/4 v0, 0x0

    .line 4749
    :goto_1
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_84

    .line 4750
    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 4751
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_80

    :cond_14
    const-wide v2, 0x20b00000004L

    .line 4754
    invoke-virtual {p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v4, 0x10b00000001L

    .line 4755
    invoke-virtual {v1, p2, v4, v5}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v4, 0x10500000002L

    .line 4757
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v6

    .line 4756
    invoke-virtual {p2, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10e00000003L

    .line 4760
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v6

    .line 4758
    invoke-virtual {p2, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4761
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 4762
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    const-wide v5, 0x10800000004L

    .line 4761
    invoke-virtual {p2, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const/high16 v4, 0x1000000

    .line 4764
    invoke-virtual {v1, v4}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v4

    const-wide v5, 0x10800000005L

    .line 4763
    invoke-virtual {p2, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v4, 0x10300000006L

    .line 4766
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v6

    .line 4765
    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x10800000007L

    .line 4769
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v6

    .line 4767
    invoke-virtual {p2, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v4, 0x10800000008L

    .line 4772
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isExpeditedQuotaApproved()Z

    move-result v1

    .line 4770
    invoke-virtual {p2, v4, v5, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4773
    invoke-virtual {p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_80
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_84
    return-void
.end method

.method public final synthetic lambda$handleNewChargingStateLocked$2()V
    .registers 2

    .line 1706
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1707
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateAllConstraintsLocked()V

    .line 1708
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final synthetic lambda$new$0(Ljava/lang/String;)V
    .registers 2

    .line 606
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController;->handleQuotaDefaultConstantsCompatChange()V

    return-void
.end method

.method public final synthetic lambda$new$3(Ljava/util/List;)V
    .registers 2

    if-eqz p1, :cond_7

    .line 2669
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimedEventTooOld:Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;

    invoke-interface {p1, p0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_7
    return-void
.end method

.method public final synthetic lambda$onConstantsUpdatedLocked$4()V
    .registers 2

    .line 3032
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3033
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController;->invalidateAllExecutionStatsLocked()V

    .line 3034
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateAllConstraintsLocked()V

    .line 3035
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public maybeScheduleCleanupAlarmLocked()V
    .registers 12

    .line 1633
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1634
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    cmp-long v2, v2, v0

    const-string v3, "JobScheduler.Quota"

    if-lez v2, :cond_3a

    .line 1637
    sget-boolean v2, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v2, :cond_9e

    .line 1638
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not scheduling cleanup since there\'s already one at "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " (in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "ms)"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1644
    :cond_3a
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;->reset()V

    .line 1645
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 1646
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 1647
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    iget-wide v0, v0, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;->earliestEndElapsed:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v0, v4

    if-nez v2, :cond_64

    .line 1651
    sget-boolean p0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz p0, :cond_9e

    .line 1652
    const-string p0, "Didn\'t find a time to schedule cleanup"

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_64
    const-wide/32 v4, 0x5265c00

    add-long/2addr v0, v4

    .line 1659
    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    sub-long v6, v0, v4

    const-wide/32 v8, 0x927c0

    cmp-long v2, v6, v8

    if-gtz v2, :cond_75

    add-long v0, v4, v8

    :cond_75
    move-wide v6, v0

    .line 1664
    iput-wide v6, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    .line 1665
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v9, p0, Lcom/android/server/job/controllers/QuotaController;->mSessionCleanupAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v10, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    const/4 v5, 0x3

    const-string v8, "*job.cleanup*"

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1667
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v0, :cond_9e

    .line 1668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scheduled next cleanup for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9e
    return-void
.end method

.method public maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V
    .registers 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x4

    move/from16 v4, p3

    if-ne v4, v3, :cond_c

    return-void

    .line 1871
    :cond_c
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 1872
    const-string/jumbo v5, "maybeScheduleStartAlarmLocked called for "

    const-string v6, "JobScheduler.Quota"

    if-eqz v3, :cond_1ab

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-nez v3, :cond_23

    goto/16 :goto_1ab

    .line 1879
    :cond_23
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v3

    .line 1880
    invoke-virtual {v0, v3}, Lcom/android/server/job/controllers/QuotaController;->isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)Z

    move-result v7

    .line 1881
    invoke-virtual {v0, v3}, Lcom/android/server/job/controllers/QuotaController;->isUnderSessionCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)Z

    move-result v8

    .line 1882
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/job/controllers/QuotaController;->getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J

    move-result-wide v9

    .line 1884
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/job/controllers/QuotaController;->getAllowedTimePerPeriodMsLocked(ILjava/lang/String;I)J

    move-result-wide v11

    .line 1885
    iget-wide v13, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    cmp-long v11, v13, v11

    const/4 v12, 0x0

    if-gez v11, :cond_4f

    iget-wide v14, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    move-wide/from16 v16, v14

    const/4 v11, 0x1

    iget-wide v13, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    cmp-long v13, v16, v13

    if-gez v13, :cond_50

    if-eqz v7, :cond_50

    if-eqz v8, :cond_50

    move v13, v11

    goto :goto_51

    :cond_4f
    const/4 v11, 0x1

    :cond_50
    move v13, v12

    :goto_51
    const-wide/16 v14, 0x0

    if-eqz v13, :cond_99

    cmp-long v16, v9, v14

    if-lez v16, :cond_99

    .line 1892
    sget-boolean v3, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v3, :cond_85

    .line 1893
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1894
    invoke-static/range {p1 .. p2}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " even though it already has "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1896
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(ILjava/lang/String;I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms in its quota."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1893
    invoke-static {v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    :cond_85
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    invoke-static/range {p1 .. p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 1900
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v12, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_99
    const-wide v16, 0x7fffffffffffffffL

    move/from16 v18, v11

    if-nez v13, :cond_c6

    .line 1908
    iget-wide v11, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    if-nez v7, :cond_b5

    .line 1909
    iget v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget v7, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-ge v5, v7, :cond_b5

    move-wide/from16 v19, v14

    .line 1911
    iget-wide v14, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    .line 1912
    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    goto :goto_b7

    :cond_b5
    move-wide/from16 v19, v14

    :goto_b7
    if-nez v8, :cond_ca

    .line 1914
    iget v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    iget v7, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-ge v5, v7, :cond_ca

    .line 1917
    iget-wide v7, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    .line 1918
    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    goto :goto_ca

    :cond_c6
    move-wide/from16 v19, v14

    move-wide/from16 v11, v16

    :cond_ca
    :goto_ca
    cmp-long v5, v9, v19

    if-gtz v5, :cond_134

    .line 1924
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/job/controllers/QuotaController;->getEJLimitMsLocked(ILjava/lang/String;I)J

    move-result-wide v4

    iget-wide v7, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    sub-long/2addr v4, v7

    .line 1926
    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v7, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz v7, :cond_fe

    .line 1927
    invoke-virtual {v7}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v8

    if-eqz v8, :cond_fe

    .line 1928
    sget-object v8, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v8}, Ljava/time/Clock;->millis()J

    move-result-wide v8

    .line 1929
    invoke-virtual {v7, v8, v9}, Lcom/android/server/job/controllers/QuotaController$Timer;->getCurrentDuration(J)J

    move-result-wide v14

    cmp-long v10, v14, v4

    if-ltz v10, :cond_fb

    sub-long/2addr v8, v4

    move-wide/from16 v21, v4

    .line 1931
    iget-wide v4, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    add-long v16, v8, v4

    goto :goto_102

    :cond_fb
    move-wide/from16 v21, v4

    goto :goto_102

    :cond_fe
    move-wide/from16 v21, v4

    move-wide/from16 v14, v19

    .line 1934
    :goto_102
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_137

    .line 1936
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_112
    if-ltz v5, :cond_134

    .line 1937
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 1938
    iget-wide v8, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v1, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v8, v1

    add-long/2addr v14, v8

    cmp-long v7, v14, v21

    if-ltz v7, :cond_12d

    sub-long v14, v14, v21

    add-long/2addr v1, v14

    .line 1941
    iget-wide v4, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    add-long/2addr v1, v4

    move-wide/from16 v16, v1

    goto :goto_134

    :cond_12d
    add-int/lit8 v5, v5, -0x1

    move/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_112

    :cond_134
    :goto_134
    move-wide/from16 v1, v16

    goto :goto_15a

    :cond_137
    if-eqz v7, :cond_13f

    .line 1946
    invoke-virtual {v7}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v1

    if-nez v1, :cond_134

    :cond_13f
    if-eqz v13, :cond_134

    .line 1950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p2}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has 0 EJ quota without running anything"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1955
    :goto_15a
    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 1957
    sget-object v4, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    cmp-long v4, v1, v4

    if-gtz v4, :cond_1a1

    .line 1958
    sget-object v4, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    .line 1959
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In quota time is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v8, v4, v1

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ms old. Now="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", inQuotaTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v1, 0x493e0

    add-long/2addr v1, v4

    .line 1964
    :cond_1a1
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    invoke-static/range {p1 .. p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/utils/AlarmQueue;->addAlarm(Ljava/lang/Object;J)V

    return-void

    .line 1873
    :cond_1ab
    :goto_1ab
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1874
    invoke-static/range {p1 .. p2}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " that has no jobs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1873
    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    invoke-static/range {p1 .. p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 12

    .line 636
    sget-object p2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {p2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    .line 637
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result p2

    .line 638
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    .line 639
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p2, v6}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-nez v0, :cond_22

    .line 641
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 642
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p2, v6, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    :cond_22
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x40

    .line 645
    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 646
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v4

    .line 648
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_40

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isWithinEJQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_40

    move v5, v8

    :goto_3d
    move-object v0, p0

    move-object v1, p1

    goto :goto_42

    :cond_40
    move v5, v7

    goto :goto_3d

    .line 649
    :goto_42
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZZ)Z

    move p0, v5

    .line 651
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result p1

    if-eqz p1, :cond_51

    .line 652
    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/server/job/controllers/QuotaController;->setExpeditedQuotaApproved(Lcom/android/server/job/controllers/JobStatus;JZ)Z

    xor-int/lit8 v7, p0, 0x1

    :cond_51
    if-eqz v4, :cond_57

    if-eqz v7, :cond_56

    goto :goto_57

    :cond_56
    return-void

    .line 658
    :cond_57
    :goto_57
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result p0

    invoke-virtual {v0, p2, v6, p0}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V

    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5

    const/16 p2, 0x40

    .line 717
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result p2

    if-eqz p2, :cond_32

    .line 718
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 719
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result p2

    .line 720
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    .line 721
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-eqz v1, :cond_32

    .line 722
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_32

    .line 723
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    invoke-static {p2, v0}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    :cond_32
    return-void
.end method

.method public final maybeUpdateAllConstraintsLocked()V
    .registers 9

    .line 1713
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1714
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    const/4 v3, 0x0

    move v4, v3

    .line 1715
    :goto_d
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v5}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v5

    if-ge v4, v5, :cond_39

    .line 1716
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v5

    move v6, v3

    .line 1717
    :goto_1c
    iget-object v7, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v7

    if-ge v6, v7, :cond_36

    .line 1718
    iget-object v7, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v7, v4, v6}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1720
    invoke-virtual {p0, v1, v2, v5, v7}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(JILjava/lang/String;)Landroid/util/ArraySet;

    move-result-object v7

    .line 1719
    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    :cond_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 1723
    :cond_39
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_44

    .line 1724
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p0, v0}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    :cond_44
    return-void
.end method

.method public final maybeUpdateConstraintForPkgLocked(JILjava/lang/String;)Landroid/util/ArraySet;
    .registers 22

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move/from16 v6, p3

    move-object/from16 v7, p4

    .line 1736
    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v6, v7}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/util/ArraySet;

    .line 1737
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    if-eqz v8, :cond_bd

    .line 1738
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_20

    goto/16 :goto_bd

    :cond_20
    const/4 v10, 0x0

    .line 1743
    invoke-virtual {v8, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v11

    .line 1744
    invoke-virtual {v0, v6, v7, v11}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(ILjava/lang/String;I)Z

    move-result v4

    .line 1746
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v12, 0x1

    sub-int/2addr v1, v12

    move v13, v1

    move v14, v10

    :goto_37
    if-ltz v13, :cond_a9

    .line 1747
    invoke-virtual {v8, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 1749
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-virtual {v0, v1}, Lcom/android/server/job/controllers/QuotaController;->isWithinEJQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    if-eqz v5, :cond_4d

    move v5, v12

    goto :goto_4e

    :cond_4d
    move v5, v10

    .line 1750
    :goto_4e
    invoke-virtual {v0, v1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v15

    if-eqz v15, :cond_60

    .line 1753
    invoke-virtual {v1, v2, v3, v12}, Lcom/android/server/job/controllers/JobStatus;->setQuotaConstraintSatisfied(JZ)Z

    move-result v15

    if-eqz v15, :cond_5d

    .line 1754
    invoke-virtual {v9, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_5d
    move/from16 v16, v4

    goto :goto_92

    :cond_60
    const/4 v15, 0x6

    if-eq v11, v15, :cond_81

    if-eqz v11, :cond_81

    .line 1757
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v15

    if-ne v11, v15, :cond_81

    iget-object v15, v0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 1758
    invoke-virtual {v15, v1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v15

    if-nez v15, :cond_81

    .line 1762
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZZ)Z

    move-result v15

    move/from16 v16, v4

    if-eqz v15, :cond_7e

    .line 1763
    invoke-virtual {v9, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_7e
    move-wide/from16 v2, p1

    goto :goto_92

    :cond_81
    move/from16 v16, v4

    .line 1768
    invoke-virtual {v0, v1}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v4

    move-wide/from16 v2, p1

    .line 1767
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZZ)Z

    move-result v4

    if-eqz v4, :cond_92

    .line 1769
    invoke-virtual {v9, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1773
    :cond_92
    :goto_92
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 1774
    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/server/job/controllers/QuotaController;->setExpeditedQuotaApproved(Lcom/android/server/job/controllers/JobStatus;JZ)Z

    move-result v4

    if-eqz v4, :cond_a1

    .line 1775
    invoke-virtual {v9, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_a1
    xor-int/lit8 v1, v5, 0x1

    or-int/2addr v14, v1

    :cond_a4
    add-int/lit8 v13, v13, -0x1

    move/from16 v4, v16

    goto :goto_37

    :cond_a9
    move/from16 v16, v4

    if-eqz v16, :cond_ba

    if-eqz v14, :cond_b0

    goto :goto_ba

    .line 1786
    :cond_b0
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    invoke-static/range {p3 .. p4}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    return-object v9

    .line 1784
    :cond_ba
    :goto_ba
    invoke-virtual {v0, v6, v7, v11}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V

    :cond_bd
    :goto_bd
    return-object v9
.end method

.method public final maybeUpdateConstraintForUidLocked(I)Landroid/util/ArraySet;
    .registers 4

    .line 1852
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->prepare()V

    .line 1853
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/job/JobStore;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    .line 1855
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->postProcess()V

    .line 1856
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->reset()V

    .line 1857
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->changedJobs:Landroid/util/ArraySet;

    return-object p0
.end method

.method public onAppRemovedLocked(Ljava/lang/String;I)V
    .registers 4

    if-nez p1, :cond_a

    .line 731
    const-string p0, "JobScheduler.Quota"

    const-string p1, "Told app removed but given null package name."

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 734
    :cond_a
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/QuotaController;->clearAppStatsLocked(ILjava/lang/String;)V

    .line 735
    iget-object p1, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p1, p2}, Lcom/android/server/job/JobSchedulerService;->getPackagesForUidLocked(I)Landroid/util/ArraySet;

    move-result-object p1

    if-nez p1, :cond_32

    .line 738
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 739
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 740
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseLongArray;->delete(I)V

    .line 741
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 742
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseLongArray;->delete(I)V

    :cond_32
    return-void
.end method

.method public onBatteryStateChangedLocked()V
    .registers 1

    .line 767
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController;->handleNewChargingStateLocked()V

    return-void
.end method

.method public onConstantsUpdatedLocked()V
    .registers 3

    .line 3029
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->-$$Nest$fgetmShouldReevaluateConstraints(Lcom/android/server/job/controllers/QuotaController$QcConstants;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3031
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_14
    return-void
.end method

.method public onSystemServicesReady()V
    .registers 3

    .line 628
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 629
    :try_start_4
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->cacheInstallerPackagesLocked(I)V

    .line 630
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public onUserAddedLocked(I)V
    .registers 2

    .line 748
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->cacheInstallerPackagesLocked(I)V

    return-void
.end method

.method public onUserRemovedLocked(I)V
    .registers 3

    .line 753
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 754
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 755
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 756
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 757
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 758
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmsForUserId(I)V

    .line 759
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 760
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 761
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->remove(I)V

    .line 762
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    return-void
.end method

.method public prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 11

    .line 665
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    const-string v1, "JobScheduler.Quota"

    if-eqz v0, :cond_1e

    .line 666
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prepping for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v5

    .line 670
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v3, 0x164fba92

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledByUid(JI)Z

    move-result v2

    if-eqz v2, :cond_55

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    .line 671
    invoke-virtual {v2, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_55

    if-eqz v0, :cond_4f

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is top started job"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_4f
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void

    .line 678
    :cond_55
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v0

    if-eqz v0, :cond_5c

    return-void

    .line 683
    :cond_5c
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v6

    .line 684
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v7

    .line 686
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    goto :goto_6f

    :cond_6d
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    .line 687
    :goto_6f
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-nez v1, :cond_87

    .line 689
    new-instance v3, Lcom/android/server/job/controllers/QuotaController$Timer;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v1

    xor-int/lit8 v8, v1, 0x1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/job/controllers/QuotaController$Timer;-><init>(Lcom/android/server/job/controllers/QuotaController;IILjava/lang/String;Z)V

    .line 690
    invoke-virtual {v0, v6, v7, v3}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v3

    .line 692
    :cond_87
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/QuotaController$Timer;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public prepareForUpdatedConstantsLocked()V
    .registers 3

    .line 3016
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->-$$Nest$fputmShouldReevaluateConstraints(Lcom/android/server/job/controllers/QuotaController$QcConstants;Z)V

    .line 3017
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->-$$Nest$fputmRateLimitingConstantsUpdated(Lcom/android/server/job/controllers/QuotaController$QcConstants;Z)V

    .line 3018
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->-$$Nest$fputmExecutionPeriodConstantsUpdated(Lcom/android/server/job/controllers/QuotaController$QcConstants;Z)V

    .line 3019
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {p0, v1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->-$$Nest$fputmEJLimitConstantsUpdated(Lcom/android/server/job/controllers/QuotaController$QcConstants;Z)V

    return-void
.end method

.method public processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .registers 3

    .line 3024
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V

    return-void
.end method

.method public processQuotaConstantsAdjustment()V
    .registers 3

    .line 1492
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController;->isCompatOverridedForQuotaConstantAdjustment()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1493
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->adjustDefaultBucketWindowSizes(Z)V

    .line 1494
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->adjustDefaultEjLimits(Z)V

    :cond_11
    return-void
.end method

.method public saveTimingSession(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;Z)V
    .registers 12

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 1551
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/controllers/QuotaController;->saveTimingSession(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;ZJ)V

    return-void
.end method

.method public final saveTimingSession(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;ZJ)V
    .registers 10

    .line 1556
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p4, :cond_a

    .line 1558
    :try_start_5
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    goto :goto_c

    :catchall_8
    move-exception p0

    goto :goto_37

    :cond_a
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    .line 1559
    :goto_c
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1c

    .line 1561
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1562
    invoke-virtual {v1, p1, p2, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1564
    :cond_1c
    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_2f

    .line 1566
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    move-result-object p0

    .line 1567
    iget-wide p1, p3, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide p3, p3, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr p1, p3

    add-long/2addr p1, p5

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->transactLocked(J)J

    goto :goto_35

    .line 1571
    :cond_2f
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->invalidateAllExecutionStatsLocked(ILjava/lang/String;)V

    .line 1573
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleCleanupAlarmLocked()V

    .line 1575
    :goto_35
    monitor-exit v0

    return-void

    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_8

    throw p0
.end method

.method public final setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZZ)Z
    .registers 10

    .line 1970
    iget-boolean v0, p1, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v0, :cond_6

    move p4, p5

    goto :goto_19

    .line 1974
    :cond_6
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_19

    :cond_f
    if-nez p5, :cond_17

    if-eqz p4, :cond_14

    goto :goto_17

    :cond_14
    const/4 p0, 0x0

    :goto_15
    move p4, p0

    goto :goto_19

    :cond_17
    :goto_17
    const/4 p0, 0x1

    goto :goto_15

    :goto_19
    if-nez p4, :cond_28

    .line 1981
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getWhenStandbyDeferred()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_28

    .line 1983
    invoke-virtual {p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setWhenStandbyDeferred(J)V

    .line 1985
    :cond_28
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/job/controllers/JobStatus;->setQuotaConstraintSatisfied(JZ)Z

    move-result p0

    return p0
.end method

.method public final setExpeditedQuotaApproved(Lcom/android/server/job/controllers/JobStatus;JZ)Z
    .registers 5

    .line 1994
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/job/controllers/JobStatus;->setExpeditedJobQuotaApproved(JZ)Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 1995
    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mBackgroundJobsController:Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-virtual {p2, p1}, Lcom/android/server/job/controllers/BackgroundJobsController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1996
    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-virtual {p2, p1}, Lcom/android/server/job/controllers/ConnectivityController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    if-eqz p4, :cond_1d

    .line 1997
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 1998
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p0, p1}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    :cond_1d
    const/4 p0, 0x1

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public final transactQuotaLocked(ILjava/lang/String;JLcom/android/server/job/controllers/QuotaController$ShrinkableDebits;J)Z
    .registers 12

    .line 1595
    invoke-virtual {p5}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->getTallyLocked()J

    move-result-wide v0

    neg-long p6, p6

    .line 1596
    invoke-virtual {p5, p6, p7}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->transactLocked(J)J

    move-result-wide p6

    .line 1597
    sget-boolean v2, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v2, :cond_23

    .line 1598
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "debits overflowed by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JobScheduler.Quota"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    :cond_23
    invoke-virtual {p5}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->getTallyLocked()J

    move-result-wide v2

    cmp-long p5, v0, v2

    const/4 v0, 0x1

    if-eqz p5, :cond_2e

    move p5, v0

    goto :goto_2f

    :cond_2e
    const/4 p5, 0x0

    :goto_2f
    const-wide/16 v1, 0x0

    cmp-long v1, p6, v1

    if-eqz v1, :cond_49

    .line 1603
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz p0, :cond_49

    .line 1604
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result p1

    if-eqz p1, :cond_49

    .line 1605
    invoke-virtual {p0, p3, p4, p6, p7}, Lcom/android/server/job/controllers/QuotaController$Timer;->updateDebitAdjustment(JJ)V

    return v0

    :cond_49
    return p5
.end method

.method public unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 6

    .line 698
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz v0, :cond_15

    .line 700
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController$Timer;->stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 702
    :cond_15
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 703
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz v0, :cond_30

    .line 705
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController$Timer;->stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 708
    :cond_30
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v1, 0x164fba92

    .line 709
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    .line 708
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledByUid(JI)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 710
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_44
    return-void
.end method

.method public updateExecutionStatsLocked(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)V
    .registers 31

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-wide/16 v4, 0x0

    .line 1320
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    const/4 v6, 0x0

    .line 1321
    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 1322
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 1323
    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    .line 1324
    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    .line 1325
    iget v7, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    const-wide v8, 0x7fffffffffffffffL

    if-eqz v7, :cond_26

    iget v7, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-nez v7, :cond_23

    goto :goto_26

    .line 1329
    :cond_23
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    goto :goto_28

    .line 1327
    :cond_26
    :goto_26
    iput-wide v8, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 1331
    :goto_28
    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->allowedTimePerPeriodMs:J

    iget-wide v12, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    sub-long/2addr v10, v12

    .line 1333
    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v7, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 1334
    sget-object v12, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v12}, Ljava/time/Clock;->millis()J

    move-result-wide v12

    const-wide/32 v14, 0x5265c00

    add-long v4, v12, v14

    .line 1335
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    if-eqz v7, :cond_94

    .line 1336
    invoke-virtual {v7}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v4

    if-eqz v4, :cond_94

    .line 1340
    invoke-virtual {v7, v12, v13}, Lcom/android/server/job/controllers/QuotaController$Timer;->getCurrentDuration(J)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    .line 1341
    invoke-virtual {v7}, Lcom/android/server/job/controllers/QuotaController$Timer;->getBgJobCount()I

    move-result v4

    iput v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    iput v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 1344
    iput-wide v12, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 1345
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    cmp-long v4, v4, v10

    if-ltz v4, :cond_70

    .line 1346
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    sub-long v16, v12, v10

    iget-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long v6, v16, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 1349
    :cond_70
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v6, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_83

    sub-long v4, v12, v6

    add-long/2addr v4, v14

    .line 1351
    iget-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 1353
    :cond_83
    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-lt v4, v5, :cond_94

    .line 1354
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v4, v12

    .line 1355
    iget-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 1359
    :cond_94
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1bf

    .line 1360
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_a6

    goto/16 :goto_1bf

    .line 1364
    :cond_a6
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    sub-long v4, v12, v4

    sub-long v6, v12, v14

    .line 1372
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/16 v16, 0x0

    move-wide/from16 v25, v14

    move-object/from16 v14, v16

    move-wide/from16 v16, v25

    const/16 v18, 0x0

    :goto_bc
    if-ltz v2, :cond_1b8

    .line 1375
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    move-object/from16 p1, v1

    move/from16 p2, v2

    .line 1378
    iget-wide v1, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v1, v4, v1

    if-gez v1, :cond_14a

    .line 1380
    iget-wide v1, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v19, v4, v1

    if-gez v19, :cond_de

    move-wide/from16 v19, v1

    sub-long v1, v19, v4

    .line 1383
    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    move-wide v8, v1

    goto :goto_e2

    :cond_de
    move-wide/from16 v19, v4

    const-wide/16 v8, 0x0

    .line 1391
    :goto_e2
    iget-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    move-wide/from16 v21, v1

    iget-wide v1, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long v1, v1, v19

    add-long v1, v21, v1

    iput-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    move-wide/from16 v21, v1

    .line 1392
    iget v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget v2, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    add-int/2addr v1, v2

    iput v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    cmp-long v1, v21, v10

    if-ltz v1, :cond_10e

    .line 1394
    iget-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    add-long v19, v19, v21

    sub-long v19, v19, v10

    move-wide/from16 v21, v4

    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long v4, v19, v4

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    goto :goto_110

    :cond_10e
    move-wide/from16 v21, v4

    .line 1398
    :goto_110
    iget v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget v2, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-lt v1, v2, :cond_123

    .line 1399
    iget-wide v1, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v1, v4

    .line 1400
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    :cond_123
    if-eqz v14, :cond_131

    .line 1403
    iget-wide v1, v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    iget-wide v4, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long/2addr v1, v4

    iget-wide v4, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    cmp-long v1, v1, v4

    if-gtz v1, :cond_131

    goto :goto_14c

    :cond_131
    add-int/lit8 v1, v18, 0x1

    .line 1409
    iget v2, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-lt v1, v2, :cond_146

    .line 1410
    iget-wide v4, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    move v14, v1

    iget-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v4, v1

    .line 1411
    iget-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    goto :goto_147

    :cond_146
    move v14, v1

    :goto_147
    move/from16 v18, v14

    goto :goto_14c

    :cond_14a
    move-wide/from16 v21, v4

    .line 1417
    :goto_14c
    iget-wide v1, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v4, v6, v1

    if-gez v4, :cond_188

    .line 1418
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    move-wide/from16 v19, v1

    iget-wide v1, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long v1, v1, v19

    add-long/2addr v4, v1

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 1420
    iget v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    iget v2, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    add-int/2addr v1, v2

    iput v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    sub-long v1, v19, v6

    .line 1421
    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 1422
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v8, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    cmp-long v14, v4, v8

    move-wide/from16 v19, v1

    if-ltz v14, :cond_185

    .line 1423
    iget-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    move-wide/from16 v23, v4

    iget-wide v4, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    add-long v4, v4, v23

    sub-long/2addr v4, v8

    add-long v4, v4, v16

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    :cond_185
    move-wide/from16 v8, v19

    goto :goto_1af

    .line 1427
    :cond_188
    iget-wide v1, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v4, v6, v1

    if-gez v4, :cond_1b8

    .line 1430
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    sub-long/2addr v1, v6

    add-long/2addr v4, v1

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 1431
    iget v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    iget v2, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    add-int/2addr v1, v2

    iput v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    .line 1433
    iget-wide v1, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    cmp-long v8, v4, v1

    if-ltz v8, :cond_1ad

    .line 1434
    iget-wide v8, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    add-long/2addr v4, v6

    sub-long/2addr v4, v1

    add-long v4, v4, v16

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    :cond_1ad
    const-wide/16 v8, 0x0

    :goto_1af
    add-int/lit8 v2, p2, -0x1

    move-object/from16 v1, p1

    move-object v14, v15

    move-wide/from16 v4, v21

    goto/16 :goto_bc

    :cond_1b8
    move/from16 v0, v18

    add-long/2addr v12, v8

    .line 1445
    iput-wide v12, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 1446
    iput v0, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    :cond_1bf
    :goto_1bf
    return-void
.end method

.method public updateStandbyBucket(ILjava/lang/String;II)V
    .registers 12

    .line 2543
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 2544
    const-string v0, "JobScheduler.Quota"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Moving pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to bucketIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2547
    :cond_26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2548
    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2549
    :try_start_2e
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    if-eqz v2, :cond_3f

    .line 2551
    invoke-virtual {v2, p3}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->setStandbyBucketLocked(I)V

    goto :goto_3f

    :catchall_3c
    move-exception p0

    goto/16 :goto_ba

    .line 2554
    :cond_3f
    :goto_3f
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    if-eqz v2, :cond_b8

    .line 2555
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-nez v3, :cond_50

    goto :goto_b8

    .line 2559
    :cond_50
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_56
    if-ltz v3, :cond_76

    .line 2560
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    const/4 v5, 0x5

    if-eq p3, v5, :cond_67

    .line 2563
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v6

    if-ne v6, v5, :cond_70

    .line 2564
    :cond_67
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v5

    if-eq p3, v5, :cond_70

    .line 2565
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2567
    :cond_70
    invoke-virtual {v4, p3, p4}, Lcom/android/server/job/controllers/JobStatus;->setStandbyBucket(II)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_56

    .line 2569
    :cond_76
    iget-object p3, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz p3, :cond_89

    .line 2570
    invoke-virtual {p3}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result p4

    if-eqz p4, :cond_89

    .line 2571
    invoke-virtual {p3}, Lcom/android/server/job/controllers/QuotaController$Timer;->rescheduleCutoff()V

    .line 2573
    :cond_89
    iget-object p3, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz p3, :cond_9c

    .line 2574
    invoke-virtual {p3}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result p4

    if-eqz p4, :cond_9c

    .line 2575
    invoke-virtual {p3}, Lcom/android/server/job/controllers/QuotaController$Timer;->rescheduleCutoff()V

    .line 2577
    :cond_9c
    iget-object p3, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    sget-object p4, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 2579
    invoke-virtual {p4}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    .line 2578
    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(JILjava/lang/String;)Landroid/util/ArraySet;

    move-result-object p1

    .line 2577
    invoke-interface {p3, p1}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 2580
    monitor-exit v1
    :try_end_ac
    .catchall {:try_start_2e .. :try_end_ac} :catchall_3c

    .line 2581
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_b7

    .line 2582
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p0, v0}, Lcom/android/server/job/StateChangedListener;->onRestrictedBucketChanged(Ljava/util/List;)V

    :cond_b7
    return-void

    .line 2557
    :cond_b8
    :goto_b8
    :try_start_b8
    monitor-exit v1

    return-void

    .line 2580
    :goto_ba
    monitor-exit v1
    :try_end_bb
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_3c

    throw p0
.end method
