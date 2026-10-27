.class public final Lcom/android/server/job/controllers/QuotaController;
.super Lcom/android/server/job/controllers/StateController;
.source "QuotaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/QuotaController$QcConstants;,
        Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;,
        Lcom/android/server/job/controllers/QuotaController$QcHandler;,
        Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;,
        Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;,
        Lcom/android/server/job/controllers/QuotaController$UsageEventTracker;,
        Lcom/android/server/job/controllers/QuotaController$StandbyTracker;,
        Lcom/android/server/job/controllers/QuotaController$TopAppTimer;,
        Lcom/android/server/job/controllers/QuotaController$Timer;,
        Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;,
        Lcom/android/server/job/controllers/QuotaController$QuotaBump;,
        Lcom/android/server/job/controllers/QuotaController$TimingSession;,
        Lcom/android/server/job/controllers/QuotaController$TimedEvent;,
        Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;,
        Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;,
        Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;,
        Lcom/android/server/job/controllers/QuotaController$QcUidObserver;,
        Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    }
.end annotation


# static fields
.field private static final ALARM_TAG_CLEANUP:Ljava/lang/String; = "*job.cleanup*"

.field private static final ALARM_TAG_QUOTA_CHECK:Ljava/lang/String; = "*job.quota_check*"

.field private static final DEBUG:Z

.field private static final MAX_PERIOD_MS:J = 0x5265c00L

.field private static final MSG_CHECK_PACKAGE:I = 0x2

.field private static final MSG_CLEAN_UP_SESSIONS:I = 0x1

.field static final MSG_END_GRACE_PERIOD:I = 0x6

.field private static final MSG_PROCESS_USAGE_EVENT:I = 0x5

.field static final MSG_REACHED_EJ_QUOTA:I = 0x4

.field static final MSG_REACHED_QUOTA:I = 0x0

.field private static final MSG_UID_PROCESS_STATE_CHANGED:I = 0x3

.field private static final SYSTEM_APP_CHECK_FLAGS:I = 0x4c3000

.field private static final TAG:Ljava/lang/String; = "JobScheduler.Quota"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAllowedTimePerPeriodMs:[J

.field private final mBackgroundJobsController:Lcom/android/server/job/controllers/BackgroundJobsController;

.field private final mBucketPeriodsMs:[J

.field private final mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

.field private final mDeleteOldEventsFunctor:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/QuotaController$TimedEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEJGracePeriodTempAllowlistMs:J

.field private mEJGracePeriodTopAppMs:J

.field private mEJLimitWindowSizeMs:J

.field private final mEJLimitsMs:[J

.field private final mEJPkgTimers:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/job/controllers/QuotaController$Timer;",
            ">;"
        }
    .end annotation
.end field

.field private mEJRewardInteractionMs:J

.field private mEJRewardNotificationSeenMs:J

.field private mEJRewardTopAppMs:J

.field private final mEJStats:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;",
            ">;"
        }
    .end annotation
.end field

.field private final mEJTimingSessions:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/QuotaController$TimedEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEJTopAppTimeChunkSizeMs:J

.field private final mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

.field private mEjLimitAdditionInstallerMs:J

.field private mEjLimitAdditionSpecialMs:J

.field private final mExecutionStatsCache:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "[",
            "Lcom/android/server/job/controllers/QuotaController$ExecutionStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mForegroundUids:Landroid/util/SparseBooleanArray;

.field private final mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

.field private final mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

.field private mIsEnabled:Z

.field private final mMaxBucketJobCounts:[I

.field private final mMaxBucketSessionCounts:[I

.field private mMaxExecutionTimeIntoQuotaMs:J

.field private mMaxExecutionTimeMs:J

.field private mMaxJobCountPerRateLimitingWindow:I

.field private mMaxSessionCountPerRateLimitingWindow:I

.field private mNextCleanupTimeElapsed:J

.field private final mPkgTimers:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/job/controllers/QuotaController$Timer;",
            ">;"
        }
    .end annotation
.end field

.field private final mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

.field private mQuotaBufferMs:J

.field private mQuotaBumpAdditionalDurationMs:J

.field private mQuotaBumpAdditionalJobCount:I

.field private mQuotaBumpAdditionalSessionCount:I

.field private mQuotaBumpLimit:I

.field private mQuotaBumpWindowSizeMs:J

.field private mRateLimitingWindowMs:J

.field private final mSessionCleanupAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private final mSystemInstallers:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempAllowlistCache:Landroid/util/SparseBooleanArray;

.field private final mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

.field private final mTimedEventTooOld:Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;

.field private final mTimerChargingUpdateFunctor:Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

.field private final mTimingEvents:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/QuotaController$TimedEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTimingSessionCoalescingDurationMs:J

.field private final mTopAppCache:Landroid/util/SparseBooleanArray;

.field private final mTopAppGraceCache:Landroid/util/SparseLongArray;

.field private final mTopAppTrackers:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/job/controllers/QuotaController$TopAppTimer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTopStartedJobs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrackedJobs:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAllowedTimePerPeriodMs(Lcom/android/server/job/controllers/QuotaController;)[J
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:[J

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBucketPeriodsMs(Lcom/android/server/job/controllers/QuotaController;)[J
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEJGracePeriodTempAllowlistMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTempAllowlistMs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmEJGracePeriodTopAppMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTopAppMs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmEJLimitWindowSizeMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmEJLimitsMs(Lcom/android/server/job/controllers/QuotaController;)[J
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEJPkgTimers(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEJRewardInteractionMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardInteractionMs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmEJRewardNotificationSeenMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardNotificationSeenMs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmEJRewardTopAppMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmEJTopAppTimeChunkSizeMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmEjLimitAdditionInstallerMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmEjLimitAdditionSpecialMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionSpecialMs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmForegroundUids(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$QcHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInQuotaAlarmQueue(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxBucketJobCounts(Lcom/android/server/job/controllers/QuotaController;)[I
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxBucketSessionCounts(Lcom/android/server/job/controllers/QuotaController;)[I
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxExecutionTimeMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxJobCountPerRateLimitingWindow(Lcom/android/server/job/controllers/QuotaController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxSessionCountPerRateLimitingWindow(Lcom/android/server/job/controllers/QuotaController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPkgTimers(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmQuotaBufferMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmQuotaBumpAdditionalDurationMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalDurationMs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmQuotaBumpAdditionalJobCount(Lcom/android/server/job/controllers/QuotaController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalJobCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmQuotaBumpAdditionalSessionCount(Lcom/android/server/job/controllers/QuotaController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalSessionCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmQuotaBumpLimit(Lcom/android/server/job/controllers/QuotaController;)I
    .registers 1

    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpLimit:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmQuotaBumpWindowSizeMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpWindowSizeMs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmRateLimitingWindowMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmTempAllowlistCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTempAllowlistGraceCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseLongArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimingEvents(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimingSessionCoalescingDurationMs(Lcom/android/server/job/controllers/QuotaController;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmTopAppCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTopAppGraceCache(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseLongArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTopAppTrackers(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmEJGracePeriodTempAllowlistMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTempAllowlistMs:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEJGracePeriodTopAppMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTopAppMs:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEJLimitWindowSizeMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEJRewardInteractionMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardInteractionMs:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEJRewardNotificationSeenMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardNotificationSeenMs:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEJRewardTopAppMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEJTopAppTimeChunkSizeMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEjLimitAdditionInstallerMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEjLimitAdditionSpecialMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionSpecialMs:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMaxExecutionTimeIntoQuotaMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMaxExecutionTimeMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMaxJobCountPerRateLimitingWindow(Lcom/android/server/job/controllers/QuotaController;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMaxSessionCountPerRateLimitingWindow(Lcom/android/server/job/controllers/QuotaController;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmQuotaBufferMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmQuotaBumpAdditionalDurationMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalDurationMs:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmQuotaBumpAdditionalJobCount(Lcom/android/server/job/controllers/QuotaController;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalJobCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmQuotaBumpAdditionalSessionCount(Lcom/android/server/job/controllers/QuotaController;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalSessionCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmQuotaBumpLimit(Lcom/android/server/job/controllers/QuotaController;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpLimit:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmQuotaBumpWindowSizeMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpWindowSizeMs:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRateLimitingWindowMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTimingSessionCoalescingDurationMs(Lcom/android/server/job/controllers/QuotaController;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mgrantRewardForInstantEvent(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;J)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/QuotaController;->grantRewardForInstantEvent(ILjava/lang/String;J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhasTempAllowlistExemptionLocked(Lcom/android/server/job/controllers/QuotaController;IIJ)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/QuotaController;->hasTempAllowlistExemptionLocked(IIJ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mincrementTimingSessionCountLocked(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->incrementTimingSessionCountLocked(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misQuotaFreeLocked(Lcom/android/server/job/controllers/QuotaController;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isQuotaFreeLocked(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misTopStartedJobLocked(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mmaybeUpdateConstraintForPkgLocked(Lcom/android/server/job/controllers/QuotaController;JILjava/lang/String;)Landroid/util/ArraySet;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(JILjava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mmaybeUpdateConstraintForUidLocked(Lcom/android/server/job/controllers/QuotaController;I)Landroid/util/ArraySet;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForUidLocked(I)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msaveTimingSession(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;ZJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/job/controllers/QuotaController;->saveTimingSession(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;ZJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetConstraintSatisfied(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/JobStatus;JZZ)Z
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZZ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetExpeditedQuotaApproved(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/JobStatus;JZ)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/job/controllers/QuotaController;->setExpeditedQuotaApproved(Lcom/android/server/job/controllers/JobStatus;JZ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mtransactQuotaLocked(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;JLcom/android/server/job/controllers/QuotaController$ShrinkableDebits;J)Z
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/job/controllers/QuotaController;->transactQuotaLocked(ILjava/lang/String;JLcom/android/server/job/controllers/QuotaController$ShrinkableDebits;J)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$smhashLong(J)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->hashLong(J)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 115
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_10

    const/4 v0, 0x3

    .line 116
    const-string v1, "JobScheduler.Quota"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

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

    .line 115
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/BackgroundJobsController;Lcom/android/server/job/controllers/ConnectivityController;)V
    .registers 13
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;
    .param p2, "backgroundJobsController"    # Lcom/android/server/job/controllers/BackgroundJobsController;
    .param p3, "connectivityController"    # Lcom/android/server/job/controllers/ConnectivityController;

    .line 562
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 264
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    .line 267
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    .line 270
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    .line 273
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    .line 278
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    .line 288
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    .line 291
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    .line 293
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    .line 296
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 303
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 306
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    .line 312
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    .line 315
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    .line 321
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    .line 334
    const/4 v0, 0x7

    new-array v1, v0, [J

    fill-array-data v1, :array_194

    iput-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:[J

    .line 348
    const-wide/32 v1, 0xdbba00

    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    .line 354
    const-wide/16 v3, 0x7530

    iput-wide v3, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    .line 360
    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    .line 363
    const-wide/32 v1, 0xea60

    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    .line 366
    const/16 v5, 0x14

    iput v5, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    .line 373
    iput v5, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    .line 376
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    .line 377
    new-instance v7, Lcom/android/server/job/controllers/QuotaController$1;

    invoke-direct {v7, p0}, Lcom/android/server/job/controllers/QuotaController$1;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    iput-object v7, p0, Lcom/android/server/job/controllers/QuotaController;->mSessionCleanupAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 416
    new-array v7, v0, [J

    fill-array-data v7, :array_1b4

    iput-object v7, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    .line 436
    new-array v7, v0, [I

    fill-array-data v7, :array_1d4

    iput-object v7, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    .line 454
    new-array v7, v0, [I

    fill-array-data v7, :array_1e6

    iput-object v7, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    .line 468
    const-wide/16 v7, 0x1388

    iput-wide v7, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    .line 475
    new-array v0, v0, [J

    fill-array-data v0, :array_1f8

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    .line 485
    const-wide/32 v7, 0x1b7740

    iput-wide v7, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    .line 487
    const-wide/32 v7, 0xdbba0

    iput-wide v7, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionSpecialMs:J

    .line 494
    const-wide/32 v7, 0x5265c00

    iput-wide v7, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    .line 499
    iput-wide v3, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    .line 504
    const-wide/16 v3, 0x2710

    iput-wide v3, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    .line 509
    const-wide/16 v3, 0x3a98

    iput-wide v3, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardInteractionMs:J

    .line 514
    iput-wide v5, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardNotificationSeenMs:J

    .line 516
    const-wide/32 v3, 0x2bf20

    iput-wide v3, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTempAllowlistMs:J

    .line 519
    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTopAppMs:J

    .line 521
    iput-wide v1, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalDurationMs:J

    .line 523
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalJobCount:I

    .line 524
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalSessionCount:I

    .line 526
    const-wide/32 v2, 0x1b77400

    iput-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpWindowSizeMs:J

    .line 527
    const/16 v2, 0x8

    iput v2, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpLimit:I

    .line 533
    new-instance v2, Landroid/util/SparseSetArray;

    invoke-direct {v2}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    .line 1572
    new-instance v2, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor-IA;)V

    iput-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    .line 1636
    new-instance v2, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

    invoke-direct {v2, p0, v3}, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor-IA;)V

    iput-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTimerChargingUpdateFunctor:Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

    .line 1790
    new-instance v2, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-direct {v2, p0, v3}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater-IA;)V

    iput-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    .line 2607
    new-instance v2, Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;

    invoke-direct {v2, v3}, Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;-><init>(Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate-IA;)V

    iput-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTimedEventTooOld:Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;

    .line 2609
    new-instance v2, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    iput-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mDeleteOldEventsFunctor:Ljava/util/function/Consumer;

    .line 563
    new-instance v2, Lcom/android/server/job/controllers/QuotaController$QcHandler;

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lcom/android/server/job/controllers/QuotaController$QcHandler;-><init>(Lcom/android/server/job/controllers/QuotaController;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    .line 564
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/AlarmManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 565
    new-instance v2, Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-direct {v2, p0}, Lcom/android/server/job/controllers/QuotaController$QcConstants;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    iput-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    .line 566
    iput-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mBackgroundJobsController:Lcom/android/server/job/controllers/BackgroundJobsController;

    .line 567
    iput-object p3, p0, Lcom/android/server/job/controllers/QuotaController;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    .line 568
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v2, v2, Lcom/android/server/job/JobSchedulerService$Constants;->USE_TARE_POLICY:Z

    xor-int/2addr v2, v1

    iput-boolean v2, p0, Lcom/android/server/job/controllers/QuotaController;->mIsEnabled:Z

    .line 569
    new-instance v2, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, p0, v4, v5, v3}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;-><init>(Lcom/android/server/job/controllers/QuotaController;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue-IA;)V

    iput-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    .line 572
    const-class v2, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/AppStandbyInternal;

    .line 573
    .local v2, "appStandby":Lcom/android/server/usage/AppStandbyInternal;
    new-instance v4, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;

    invoke-direct {v4, p0}, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    invoke-interface {v2, v4}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 575
    const-class v4, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageStatsManagerInternal;

    .line 576
    .local v4, "usmi":Landroid/app/usage/UsageStatsManagerInternal;
    new-instance v5, Lcom/android/server/job/controllers/QuotaController$UsageEventTracker;

    invoke-direct {v5, p0}, Lcom/android/server/job/controllers/QuotaController$UsageEventTracker;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    invoke-virtual {v4, v5}, Landroid/app/usage/UsageStatsManagerInternal;->registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    .line 578
    const-class v5, Lcom/android/server/PowerAllowlistInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PowerAllowlistInternal;

    .line 579
    .local v5, "pai":Lcom/android/server/PowerAllowlistInternal;
    new-instance v6, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;

    invoke-direct {v6, p0}, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    invoke-interface {v5, v6}, Lcom/android/server/PowerAllowlistInternal;->registerTempAllowlistChangeListener(Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;)V

    .line 582
    :try_start_177
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v6

    new-instance v7, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;

    invoke-direct {v7, p0, v3}, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$QcUidObserver-IA;)V

    const/4 v8, 0x4

    invoke-interface {v6, v7, v1, v8, v3}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 585
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v6

    new-instance v7, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;

    invoke-direct {v7, p0, v3}, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$QcUidObserver-IA;)V

    invoke-interface {v6, v7, v1, v0, v3}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_190
    .catch Landroid/os/RemoteException; {:try_start_177 .. :try_end_190} :catch_191

    .line 590
    goto :goto_192

    .line 588
    :catch_191
    move-exception v0

    .line 591
    :goto_192
    return-void

    nop

    :array_194
    .array-data 8
        0x927c0
        0x927c0
        0x927c0
        0x927c0
        0x0
        0x927c0
        0x927c0
    .end array-data

    :array_1b4
    .array-data 8
        0x927c0
        0x6ddd00
        0x1b77400
        0x5265c00
        0x0
        0x5265c00
        0x927c0
    .end array-data

    :array_1d4
    .array-data 4
        0x4b
        0x78
        0xc8
        0x30
        0x0
        0xa
        0x4b
    .end array-data

    :array_1e6
    .array-data 4
        0x4b
        0xa
        0x8
        0x3
        0x0
        0x1
        0x4b
    .end array-data

    :array_1f8
    .array-data 8
        0x1b7740
        0x1b7740
        0x927c0
        0x927c0
        0x0
        0x493e0
        0x2932e0
    .end array-data
.end method

.method private cacheInstallerPackagesLocked(I)V
    .registers 11
    .param p1, "userId"    # I

    .line 757
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 758
    const v1, 0x4c3000

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    .line 759
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_13
    if-ltz v1, :cond_44

    .line 760
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 761
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 762
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v5, "android.permission.INSTALL_PACKAGES"

    invoke-static {v4, v5}, Lcom/android/internal/util/jobs/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 765
    .local v4, "idx":I
    if-ltz v4, :cond_41

    if-eqz v3, :cond_41

    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mContext:Landroid/content/Context;

    iget v7, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 766
    const/4 v8, -0x1

    invoke-virtual {v6, v5, v8, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    if-nez v5, :cond_41

    .line 767
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    iget v6, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 759
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "idx":I
    :cond_41
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 770
    .end local v1    # "i":I
    :cond_44
    return-void
.end method

.method private calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJZ)J
    .registers 26
    .param p2, "windowStartElapsed"    # J
    .param p4, "deadSpaceMs"    # J
    .param p6, "allowQuotaBumps"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/QuotaController$TimedEvent;",
            ">;JJZ)J"
        }
    .end annotation

    .line 1096
    .local p1, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    .line 1097
    .local v2, "timeUntilQuotaConsumedMs":J
    move-wide/from16 v4, p2

    .line 1098
    .local v4, "start":J
    const/4 v6, 0x0

    .line 1099
    .local v6, "numQuotaBumps":I
    sget-object v7, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 1100
    invoke-virtual {v7}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    iget-wide v9, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpWindowSizeMs:J

    sub-long/2addr v7, v9

    .line 1101
    .local v7, "quotaBumpWindowStartElapsed":J
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    .line 1102
    .local v9, "numSessions":I
    if-eqz p6, :cond_49

    .line 1103
    add-int/lit8 v10, v9, -0x1

    move v12, v10

    move-wide/from16 v10, p4

    .end local p4    # "deadSpaceMs":J
    .local v10, "deadSpaceMs":J
    .local v12, "i":I
    :goto_1d
    if-ltz v12, :cond_47

    .line 1104
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    .line 1106
    .local v13, "event":Lcom/android/server/job/controllers/QuotaController$TimedEvent;
    instance-of v14, v13, Lcom/android/server/job/controllers/QuotaController$QuotaBump;

    if-eqz v14, :cond_42

    .line 1107
    invoke-interface {v13}, Lcom/android/server/job/controllers/QuotaController$TimedEvent;->getEndTimeElapsed()J

    move-result-wide v14

    cmp-long v14, v14, v7

    if-ltz v14, :cond_40

    add-int/lit8 v14, v6, 0x1

    .end local v6    # "numQuotaBumps":I
    .local v14, "numQuotaBumps":I
    iget v15, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpLimit:I

    if-ge v6, v15, :cond_3d

    .line 1109
    move-wide v15, v2

    .end local v2    # "timeUntilQuotaConsumedMs":J
    .local v15, "timeUntilQuotaConsumedMs":J
    iget-wide v2, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalDurationMs:J

    add-long/2addr v10, v2

    move v6, v14

    goto :goto_43

    .line 1107
    .end local v15    # "timeUntilQuotaConsumedMs":J
    .restart local v2    # "timeUntilQuotaConsumedMs":J
    :cond_3d
    move-wide v15, v2

    .end local v2    # "timeUntilQuotaConsumedMs":J
    .restart local v15    # "timeUntilQuotaConsumedMs":J
    move v6, v14

    goto :goto_4c

    .end local v14    # "numQuotaBumps":I
    .end local v15    # "timeUntilQuotaConsumedMs":J
    .restart local v2    # "timeUntilQuotaConsumedMs":J
    .restart local v6    # "numQuotaBumps":I
    :cond_40
    move-wide v15, v2

    .end local v2    # "timeUntilQuotaConsumedMs":J
    .restart local v15    # "timeUntilQuotaConsumedMs":J
    goto :goto_4c

    .line 1106
    .end local v15    # "timeUntilQuotaConsumedMs":J
    .restart local v2    # "timeUntilQuotaConsumedMs":J
    :cond_42
    move-wide v15, v2

    .line 1103
    .end local v2    # "timeUntilQuotaConsumedMs":J
    .end local v13    # "event":Lcom/android/server/job/controllers/QuotaController$TimedEvent;
    .restart local v15    # "timeUntilQuotaConsumedMs":J
    :goto_43
    add-int/lit8 v12, v12, -0x1

    move-wide v2, v15

    goto :goto_1d

    .end local v15    # "timeUntilQuotaConsumedMs":J
    .restart local v2    # "timeUntilQuotaConsumedMs":J
    :cond_47
    move-wide v15, v2

    .end local v2    # "timeUntilQuotaConsumedMs":J
    .restart local v15    # "timeUntilQuotaConsumedMs":J
    goto :goto_4c

    .line 1102
    .end local v10    # "deadSpaceMs":J
    .end local v12    # "i":I
    .end local v15    # "timeUntilQuotaConsumedMs":J
    .restart local v2    # "timeUntilQuotaConsumedMs":J
    .restart local p4    # "deadSpaceMs":J
    :cond_49
    move-wide v15, v2

    .end local v2    # "timeUntilQuotaConsumedMs":J
    .restart local v15    # "timeUntilQuotaConsumedMs":J
    move-wide/from16 v10, p4

    .line 1116
    .end local p4    # "deadSpaceMs":J
    .restart local v10    # "deadSpaceMs":J
    :goto_4c
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4d
    if-ge v2, v9, :cond_99

    .line 1117
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    .line 1119
    .local v3, "event":Lcom/android/server/job/controllers/QuotaController$TimedEvent;
    instance-of v12, v3, Lcom/android/server/job/controllers/QuotaController$QuotaBump;

    if-eqz v12, :cond_5a

    .line 1120
    goto :goto_64

    .line 1123
    :cond_5a
    move-object v12, v3

    check-cast v12, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 1125
    .local v12, "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    iget-wide v13, v12, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v13, v13, p2

    if-gez v13, :cond_67

    .line 1127
    nop

    .line 1116
    .end local v3    # "event":Lcom/android/server/job/controllers/QuotaController$TimedEvent;
    .end local v12    # "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    :goto_64
    move/from16 p5, v6

    goto :goto_94

    .line 1128
    .restart local v3    # "event":Lcom/android/server/job/controllers/QuotaController$TimedEvent;
    .restart local v12    # "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    :cond_67
    iget-wide v13, v12, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v13, v13, p2

    if-gtz v13, :cond_77

    .line 1130
    iget-wide v13, v12, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long v13, v13, p2

    add-long/2addr v15, v13

    .line 1131
    iget-wide v4, v12, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    move/from16 p5, v6

    goto :goto_94

    .line 1135
    :cond_77
    iget-wide v13, v12, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v13, v4

    .line 1136
    .local v13, "diff":J
    cmp-long v17, v13, v10

    if-lez v17, :cond_83

    .line 1137
    move-wide/from16 v17, v4

    move/from16 p5, v6

    goto :goto_9d

    .line 1139
    :cond_83
    move-object/from16 p4, v3

    move-wide/from16 v17, v4

    .end local v3    # "event":Lcom/android/server/job/controllers/QuotaController$TimedEvent;
    .end local v4    # "start":J
    .local v17, "start":J
    .local p4, "event":Lcom/android/server/job/controllers/QuotaController$TimedEvent;
    iget-wide v3, v12, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    move/from16 p5, v6

    .end local v6    # "numQuotaBumps":I
    .local p5, "numQuotaBumps":I
    iget-wide v5, v12, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v3, v5

    add-long/2addr v3, v13

    add-long/2addr v15, v3

    .line 1141
    sub-long/2addr v10, v13

    .line 1142
    iget-wide v3, v12, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    move-wide v4, v3

    .line 1116
    .end local v12    # "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    .end local v13    # "diff":J
    .end local v17    # "start":J
    .end local p4    # "event":Lcom/android/server/job/controllers/QuotaController$TimedEvent;
    .restart local v4    # "start":J
    :goto_94
    add-int/lit8 v2, v2, 0x1

    move/from16 v6, p5

    goto :goto_4d

    .end local p5    # "numQuotaBumps":I
    .restart local v6    # "numQuotaBumps":I
    :cond_99
    move-wide/from16 v17, v4

    move/from16 p5, v6

    .line 1146
    .end local v2    # "i":I
    .end local v4    # "start":J
    .end local v6    # "numQuotaBumps":I
    .restart local v17    # "start":J
    .restart local p5    # "numQuotaBumps":I
    :goto_9d
    add-long v2, v15, v10

    .line 1147
    .end local v15    # "timeUntilQuotaConsumedMs":J
    .local v2, "timeUntilQuotaConsumedMs":J
    iget-wide v4, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_bd

    .line 1148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated quota consumed time too high: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "JobScheduler.Quota"

    invoke-static {v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    :cond_bd
    return-wide v2
.end method

.method private getEJLimitMsLocked(ILjava/lang/String;I)J
    .registers 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "standbyBucket"    # I

    .line 1030
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    aget-wide v0, v0, p3

    .line 1031
    .local v0, "baseLimitMs":J
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1032
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    add-long/2addr v2, v0

    return-wide v2

    .line 1034
    :cond_10
    return-wide v0
.end method

.method private getExecutionStatsLocked(ILjava/lang/String;IZ)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .registers 22
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "standbyBucket"    # I
    .param p4, "refreshStatsIfOld"    # Z

    .line 1221
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_18

    .line 1222
    const-string v4, "JobScheduler.Quota"

    const-string v5, "getExecutionStatsLocked called for a NEVER app."

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    new-instance v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {v4}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    return-object v4

    .line 1225
    :cond_18
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1226
    .local v4, "appStats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-nez v4, :cond_2c

    .line 1227
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    array-length v5, v5

    new-array v4, v5, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1228
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v1, v2, v4}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1230
    :cond_2c
    aget-object v5, v4, v3

    .line 1231
    .local v5, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-nez v5, :cond_38

    .line 1232
    new-instance v6, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {v6}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    move-object v5, v6

    .line 1233
    aput-object v5, v4, v3

    .line 1235
    :cond_38
    if-eqz p4, :cond_85

    .line 1236
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:[J

    aget-wide v6, v6, v3

    .line 1237
    .local v6, "bucketAllowedTimeMs":J
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    aget-wide v8, v8, v3

    .line 1238
    .local v8, "bucketWindowSizeMs":J
    iget-object v10, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    aget v10, v10, v3

    .line 1239
    .local v10, "jobCountLimit":I
    iget-object v11, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    aget v11, v11, v3

    .line 1240
    .local v11, "sessionCountLimit":I
    iget-object v12, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v12, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 1241
    .local v12, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    if-eqz v12, :cond_5a

    invoke-virtual {v12}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v13

    if-nez v13, :cond_7a

    :cond_5a
    iget-wide v13, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    sget-object v15, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 1242
    invoke-virtual {v15}, Ljava/time/Clock;->millis()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-lez v13, :cond_7a

    iget-wide v13, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->allowedTimePerPeriodMs:J

    cmp-long v13, v13, v6

    if-nez v13, :cond_7a

    iget-wide v13, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    cmp-long v13, v13, v8

    if-nez v13, :cond_7a

    iget v13, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-ne v13, v10, :cond_7a

    iget v13, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-eq v13, v11, :cond_85

    .line 1248
    :cond_7a
    iput-wide v6, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->allowedTimePerPeriodMs:J

    .line 1249
    iput-wide v8, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    .line 1250
    iput v10, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    .line 1251
    iput v11, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    .line 1252
    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/job/controllers/QuotaController;->updateExecutionStatsLocked(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)V

    .line 1256
    .end local v6    # "bucketAllowedTimeMs":J
    .end local v8    # "bucketWindowSizeMs":J
    .end local v10    # "jobCountLimit":I
    .end local v11    # "sessionCountLimit":I
    .end local v12    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    :cond_85
    return-object v5
.end method

.method private getRemainingExecutionTimeLocked(ILjava/lang/String;I)J
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "standbyBucket"    # I

    .line 971
    const/4 v0, 0x4

    if-ne p3, v0, :cond_6

    .line 972
    const-wide/16 v0, 0x0

    return-wide v0

    .line 974
    :cond_6
    nop

    .line 975
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v0

    .line 974
    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)J
    .registers 8
    .param p1, "stats"    # Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 979
    iget-wide v0, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->allowedTimePerPeriodMs:J

    iget-wide v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    iget-wide v4, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private grantRewardForInstantEvent(ILjava/lang/String;J)V
    .registers 16
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "credit"    # J

    .line 1524
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_7

    .line 1525
    return-void

    .line 1527
    :cond_7
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1528
    :try_start_a
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 1529
    .local v1, "nowElapsed":J
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    move-result-object v8

    .line 1530
    .local v8, "quota":Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-wide v6, v1

    move-wide v9, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/server/job/controllers/QuotaController;->transactQuotaLocked(ILjava/lang/String;JLcom/android/server/job/controllers/QuotaController$ShrinkableDebits;J)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1531
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    .line 1532
    invoke-direct {p0, v1, v2, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(JILjava/lang/String;)Landroid/util/ArraySet;

    move-result-object v4

    .line 1531
    invoke-interface {v3, v4}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 1534
    .end local v1    # "nowElapsed":J
    .end local v8    # "quota":Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    :cond_28
    monitor-exit v0

    .line 1535
    return-void

    .line 1534
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_a .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method private handleNewChargingStateLocked()V
    .registers 5

    .line 1640
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimerChargingUpdateFunctor:Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 1641
    invoke-virtual {v3}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v3

    .line 1640
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;->-$$Nest$msetStatus(Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;JZ)V

    .line 1642
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v0, :cond_34

    .line 1643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleNewChargingStateLocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.Quota"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    :cond_34
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimerChargingUpdateFunctor:Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 1647
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimerChargingUpdateFunctor:Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 1649
    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1654
    return-void
.end method

.method private hasTempAllowlistExemptionLocked(IIJ)Z
    .registers 9
    .param p1, "sourceUid"    # I
    .param p2, "standbyBucket"    # I
    .param p3, "nowElapsed"    # J

    .line 827
    const/4 v0, 0x0

    const/4 v1, 0x5

    if-eq p2, v1, :cond_1c

    const/4 v1, 0x4

    if-ne p2, v1, :cond_8

    goto :goto_1c

    .line 833
    :cond_8
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v1

    .line 834
    .local v1, "tempAllowlistGracePeriodEndElapsed":J
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_1a

    cmp-long v3, p3, v1

    if-gez v3, :cond_1b

    :cond_1a
    const/4 v0, 0x1

    :cond_1b
    return v0

    .line 831
    .end local v1    # "tempAllowlistGracePeriodEndElapsed":J
    :cond_1c
    :goto_1c
    return v0
.end method

.method private static hashLong(J)I
    .registers 4
    .param p0, "val"    # J

    .line 126
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method private incrementTimingSessionCountLocked(ILjava/lang/String;)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1472
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1473
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1474
    .local v2, "appStats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-nez v2, :cond_1a

    .line 1475
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    array-length v3, v3

    new-array v2, v3, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1476
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, p1, p2, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1478
    :cond_1a
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    array-length v4, v2

    if-ge v3, v4, :cond_41

    .line 1479
    aget-object v4, v2, v3

    .line 1480
    .local v4, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-nez v4, :cond_2a

    .line 1481
    new-instance v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {v5}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    move-object v4, v5

    .line 1482
    aput-object v4, v2, v3

    .line 1484
    :cond_2a
    iget-wide v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    cmp-long v5, v5, v0

    if-gtz v5, :cond_38

    .line 1485
    iget-wide v5, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    add-long/2addr v5, v0

    iput-wide v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    .line 1486
    const/4 v5, 0x0

    iput v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    .line 1488
    :cond_38
    iget v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    .line 1478
    .end local v4    # "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 1490
    .end local v3    # "i":I
    :cond_41
    return-void
.end method

.method private isQuotaFreeLocked(I)Z
    .registers 4
    .param p1, "standbyBucket"    # I

    .line 905
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 908
    const/4 v0, 0x5

    if-eq p1, v0, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1

    .line 910
    :cond_e
    return v1
.end method

.method private isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 3
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 783
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isUidInForeground(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 773
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 774
    const/4 v0, 0x1

    return v0

    .line 776
    :cond_8
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 777
    :try_start_b
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 778
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1
.end method

.method private isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z
    .registers 10
    .param p1, "stats"    # Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .param p2, "standbyBucket"    # I

    .line 933
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 934
    .local v0, "now":J
    iget-wide v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    cmp-long v2, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_17

    iget v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    iget v5, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    if-ge v2, v5, :cond_15

    goto :goto_17

    :cond_15
    move v2, v3

    goto :goto_18

    :cond_17
    :goto_17
    move v2, v4

    .line 937
    .local v2, "isUnderAllowedTimeQuota":Z
    :goto_18
    if-eqz v2, :cond_21

    iget v5, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget v6, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-ge v5, v6, :cond_21

    move v3, v4

    :cond_21
    return v3
.end method

.method private isUnderSessionCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z
    .registers 10
    .param p1, "stats"    # Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .param p2, "standbyBucket"    # I

    .line 943
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 944
    .local v0, "now":J
    iget-wide v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    cmp-long v2, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_17

    iget v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    iget v5, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    if-ge v2, v5, :cond_15

    goto :goto_17

    :cond_15
    move v2, v3

    goto :goto_18

    :cond_17
    :goto_17
    move v2, v4

    .line 946
    .local v2, "isUnderAllowedTimeQuota":Z
    :goto_18
    if-eqz v2, :cond_21

    iget v5, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    iget v6, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-ge v5, v6, :cond_21

    move v3, v4

    :cond_21
    return v3
.end method

.method static synthetic lambda$dumpControllerStateLocked$5(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/controllers/QuotaController$TopAppTimer;)V
    .registers 2
    .param p0, "pw"    # Landroid/util/IndentingPrintWriter;
    .param p1, "timer"    # Lcom/android/server/job/controllers/QuotaController$TopAppTimer;

    .line 4557
    invoke-virtual {p1, p0}, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method static synthetic lambda$invalidateAllExecutionStatsLocked$0(J[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)V
    .registers 5
    .param p0, "nowElapsed"    # J
    .param p2, "appStats"    # [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1422
    if-eqz p2, :cond_f

    .line 1423
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    array-length v1, p2

    if-ge v0, v1, :cond_f

    .line 1424
    aget-object v1, p2, v0

    .line 1425
    .local v1, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-eqz v1, :cond_c

    .line 1426
    iput-wide p0, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 1423
    .end local v1    # "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1430
    .end local v0    # "i":I
    :cond_f
    return-void
.end method

.method private maybeUpdateAllConstraintsLocked()V
    .registers 9

    .line 1657
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1658
    .local v0, "changedJobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 1659
    .local v1, "nowElapsed":J
    const/4 v3, 0x0

    .local v3, "u":I
    :goto_c
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v4}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v4

    if-ge v3, v4, :cond_39

    .line 1660
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v4

    .line 1661
    .local v4, "userId":I
    const/4 v5, 0x0

    .local v5, "p":I
    :goto_1b
    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v6

    if-ge v5, v6, :cond_36

    .line 1662
    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1663
    .local v6, "packageName":Ljava/lang/String;
    nop

    .line 1664
    invoke-direct {p0, v1, v2, v4, v6}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(JILjava/lang/String;)Landroid/util/ArraySet;

    move-result-object v7

    .line 1663
    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 1661
    .end local v6    # "packageName":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 1659
    .end local v4    # "userId":I
    .end local v5    # "p":I
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1667
    .end local v3    # "u":I
    :cond_39
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-lez v3, :cond_44

    .line 1668
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v3, v0}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 1670
    :cond_44
    return-void
.end method

.method private maybeUpdateConstraintForPkgLocked(JILjava/lang/String;)Landroid/util/ArraySet;
    .registers 25
    .param p1, "nowElapsed"    # J
    .param p3, "userId"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .line 1680
    move-object/from16 v6, p0

    move-wide/from16 v7, p1

    move/from16 v9, p3

    move-object/from16 v10, p4

    iget-object v0, v6, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v9, v10}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/util/ArraySet;

    .line 1681
    .local v11, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v12, v0

    .line 1682
    .local v12, "changedJobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v11, :cond_f6

    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_f6

    .line 1687
    :cond_21
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v14

    .line 1688
    .local v14, "realStandbyBucket":I
    invoke-virtual {v6, v9, v10, v14}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(ILjava/lang/String;I)Z

    move-result v15

    .line 1689
    .local v15, "realInQuota":Z
    const/4 v0, 0x0

    .line 1690
    .local v0, "outOfEJQuota":Z
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v5, 0x1

    sub-int/2addr v1, v5

    move/from16 v16, v0

    move v4, v1

    .end local v0    # "outOfEJQuota":Z
    .local v4, "i":I
    .local v16, "outOfEJQuota":Z
    :goto_3a
    if-ltz v4, :cond_e0

    .line 1691
    invoke-virtual {v11, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 1692
    .local v2, "js":Lcom/android/server/job/controllers/JobStatus;
    nop

    .line 1693
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-virtual {v6, v2}, Lcom/android/server/job/controllers/QuotaController;->isWithinEJQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_52

    move v0, v5

    goto :goto_53

    :cond_52
    move v0, v13

    :goto_53
    move v3, v0

    .line 1694
    .local v3, "isWithinEJQuota":Z
    invoke-direct {v6, v2}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 1697
    invoke-virtual {v2, v7, v8, v5}, Lcom/android/server/job/controllers/JobStatus;->setQuotaConstraintSatisfied(JZ)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 1698
    invoke-virtual {v12, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object v13, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    goto :goto_bb

    .line 1697
    :cond_6b
    move-object v13, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    goto :goto_bb

    .line 1700
    :cond_73
    const/4 v0, 0x6

    if-eq v14, v0, :cond_9f

    if-eqz v14, :cond_9f

    .line 1701
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v0

    if-ne v14, v0, :cond_97

    .line 1705
    move-object/from16 v0, p0

    move-object v1, v2

    move-object v13, v2

    move/from16 v17, v3

    .end local v2    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v3    # "isWithinEJQuota":Z
    .local v13, "js":Lcom/android/server/job/controllers/JobStatus;
    .local v17, "isWithinEJQuota":Z
    move-wide/from16 v2, p1

    move/from16 v18, v4

    .end local v4    # "i":I
    .local v18, "i":I
    move v4, v15

    move/from16 v19, v5

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZZ)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 1706
    invoke-virtual {v12, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_bb

    .line 1701
    .end local v13    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v17    # "isWithinEJQuota":Z
    .end local v18    # "i":I
    .restart local v2    # "js":Lcom/android/server/job/controllers/JobStatus;
    .restart local v3    # "isWithinEJQuota":Z
    .restart local v4    # "i":I
    :cond_97
    move-object v13, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    .end local v2    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v3    # "isWithinEJQuota":Z
    .end local v4    # "i":I
    .restart local v13    # "js":Lcom/android/server/job/controllers/JobStatus;
    .restart local v17    # "isWithinEJQuota":Z
    .restart local v18    # "i":I
    goto :goto_a6

    .line 1700
    .end local v13    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v17    # "isWithinEJQuota":Z
    .end local v18    # "i":I
    .restart local v2    # "js":Lcom/android/server/job/controllers/JobStatus;
    .restart local v3    # "isWithinEJQuota":Z
    .restart local v4    # "i":I
    :cond_9f
    move-object v13, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    .line 1710
    .end local v2    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v3    # "isWithinEJQuota":Z
    .end local v4    # "i":I
    .restart local v13    # "js":Lcom/android/server/job/controllers/JobStatus;
    .restart local v17    # "isWithinEJQuota":Z
    .restart local v18    # "i":I
    :goto_a6
    nop

    .line 1711
    invoke-virtual {v6, v13}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v4

    .line 1710
    move-object/from16 v0, p0

    move-object v1, v13

    move-wide/from16 v2, p1

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZZ)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 1712
    invoke-virtual {v12, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1716
    :cond_bb
    :goto_bb
    invoke-virtual {v13}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 1717
    move/from16 v0, v17

    .end local v17    # "isWithinEJQuota":Z
    .local v0, "isWithinEJQuota":Z
    invoke-direct {v6, v13, v7, v8, v0}, Lcom/android/server/job/controllers/QuotaController;->setExpeditedQuotaApproved(Lcom/android/server/job/controllers/JobStatus;JZ)Z

    move-result v1

    if-eqz v1, :cond_cc

    .line 1718
    invoke-virtual {v12, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1720
    :cond_cc
    if-nez v0, :cond_d1

    move/from16 v5, v19

    goto :goto_d2

    :cond_d1
    const/4 v5, 0x0

    :goto_d2
    or-int v1, v16, v5

    move/from16 v16, v1

    .end local v16    # "outOfEJQuota":Z
    .local v1, "outOfEJQuota":Z
    goto :goto_d9

    .line 1716
    .end local v0    # "isWithinEJQuota":Z
    .end local v1    # "outOfEJQuota":Z
    .restart local v16    # "outOfEJQuota":Z
    .restart local v17    # "isWithinEJQuota":Z
    :cond_d7
    move/from16 v0, v17

    .line 1690
    .end local v13    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v17    # "isWithinEJQuota":Z
    :goto_d9
    add-int/lit8 v4, v18, -0x1

    move/from16 v5, v19

    const/4 v13, 0x0

    .end local v18    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_3a

    :cond_e0
    move/from16 v18, v4

    .line 1723
    .end local v4    # "i":I
    if-eqz v15, :cond_f2

    if-eqz v16, :cond_e7

    goto :goto_f2

    .line 1729
    :cond_e7
    iget-object v0, v6, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    new-instance v1, Lcom/android/server/job/controllers/Package;

    invoke-direct {v1, v9, v10}, Lcom/android/server/job/controllers/Package;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    goto :goto_f5

    .line 1727
    :cond_f2
    :goto_f2
    invoke-virtual {v6, v9, v10, v14}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V

    .line 1731
    :goto_f5
    return-object v12

    .line 1683
    .end local v14    # "realStandbyBucket":I
    .end local v15    # "realInQuota":Z
    .end local v16    # "outOfEJQuota":Z
    :cond_f6
    :goto_f6
    return-object v12
.end method

.method private maybeUpdateConstraintForUidLocked(I)Landroid/util/ArraySet;
    .registers 4
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .line 1795
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->prepare()V

    .line 1796
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/job/JobStore;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    .line 1798
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->postProcess()V

    .line 1799
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->reset()V

    .line 1800
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->changedJobs:Landroid/util/ArraySet;

    return-object v0
.end method

.method private saveTimingSession(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;ZJ)V
    .registers 15
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "session"    # Lcom/android/server/job/controllers/QuotaController$TimingSession;
    .param p4, "isExpedited"    # Z
    .param p5, "debitAdjustment"    # J

    .line 1500
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1502
    if-eqz p4, :cond_8

    :try_start_5
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    goto :goto_a

    :cond_8
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    .line 1503
    .local v1, "sessionMap":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;>;"
    :goto_a
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1504
    .local v2, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    if-nez v2, :cond_1b

    .line 1505
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 1506
    invoke-virtual {v1, p1, p2, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1508
    :cond_1b
    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1509
    if-eqz p4, :cond_2f

    .line 1510
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    move-result-object v3

    .line 1511
    .local v3, "quota":Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    iget-wide v4, p3, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v6, p3, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v4, v6

    add-long/2addr v4, p5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->transactLocked(J)J

    .line 1513
    nop

    .end local v3    # "quota":Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    goto :goto_35

    .line 1515
    :cond_2f
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->invalidateAllExecutionStatsLocked(ILjava/lang/String;)V

    .line 1517
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleCleanupAlarmLocked()V

    .line 1519
    .end local v1    # "sessionMap":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;>;"
    .end local v2    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    :goto_35
    monitor-exit v0

    .line 1520
    return-void

    .line 1519
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_37

    throw v1
.end method

.method private setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZZ)Z
    .registers 11
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "nowElapsed"    # J
    .param p4, "isWithinQuota"    # Z
    .param p5, "isWithinEjQuota"    # Z

    .line 1913
    iget-boolean v0, p1, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v0, :cond_6

    .line 1916
    move v0, p5

    .local v0, "isSatisfied":Z
    goto :goto_18

    .line 1917
    .end local v0    # "isSatisfied":Z
    :cond_6
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1920
    move v0, p4

    .restart local v0    # "isSatisfied":Z
    goto :goto_18

    .line 1922
    .end local v0    # "isSatisfied":Z
    :cond_10
    if-nez p5, :cond_17

    if-eqz p4, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 1924
    .restart local v0    # "isSatisfied":Z
    :goto_18
    if-nez v0, :cond_27

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getWhenStandbyDeferred()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_27

    .line 1926
    invoke-virtual {p1, p2, p3}, Lcom/android/server/job/controllers/JobStatus;->setWhenStandbyDeferred(J)V

    .line 1928
    :cond_27
    invoke-virtual {p1, p2, p3, v0}, Lcom/android/server/job/controllers/JobStatus;->setQuotaConstraintSatisfied(JZ)Z

    move-result v1

    return v1
.end method

.method private setExpeditedQuotaApproved(Lcom/android/server/job/controllers/JobStatus;JZ)Z
    .registers 6
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "nowElapsed"    # J
    .param p4, "isWithinQuota"    # Z

    .line 1937
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/job/controllers/JobStatus;->setExpeditedJobQuotaApproved(JZ)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1938
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mBackgroundJobsController:Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/BackgroundJobsController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1939
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1940
    if-eqz p4, :cond_1d

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1941
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v0, p1}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1943
    :cond_1d
    const/4 v0, 0x1

    return v0

    .line 1945
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method private transactQuotaLocked(ILjava/lang/String;JLcom/android/server/job/controllers/QuotaController$ShrinkableDebits;J)Z
    .registers 15
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "nowElapsed"    # J
    .param p5, "debits"    # Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    .param p6, "credit"    # J

    .line 1539
    invoke-virtual {p5}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->getTallyLocked()J

    move-result-wide v0

    .line 1540
    .local v0, "oldTally":J
    neg-long v2, p6

    invoke-virtual {p5, v2, v3}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->transactLocked(J)J

    move-result-wide v2

    .line 1541
    .local v2, "leftover":J
    sget-boolean v4, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v4, :cond_25

    .line 1542
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "debits overflowed by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "JobScheduler.Quota"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    :cond_25
    invoke-virtual {p5}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->getTallyLocked()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-eqz v4, :cond_2f

    const/4 v4, 0x1

    goto :goto_30

    :cond_2f
    const/4 v4, 0x0

    .line 1545
    .local v4, "changed":Z
    :goto_30
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-eqz v5, :cond_4a

    .line 1547
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 1548
    .local v5, "ejTimer":Lcom/android/server/job/controllers/QuotaController$Timer;
    if-eqz v5, :cond_4a

    invoke-virtual {v5}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 1549
    invoke-virtual {v5, p3, p4, v2, v3}, Lcom/android/server/job/controllers/QuotaController$Timer;->updateDebitAdjustment(JJ)V

    .line 1550
    const/4 v4, 0x1

    .line 1553
    .end local v5    # "ejTimer":Lcom/android/server/job/controllers/QuotaController$Timer;
    :cond_4a
    return v4
.end method


# virtual methods
.method public clearAppStatsLocked(ILjava/lang/String;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 733
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 734
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 735
    .local v0, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    const-string v1, "JobScheduler.Quota"

    if-eqz v0, :cond_1f

    .line 736
    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 737
    const-string v2, "clearAppStats called before Timer turned off."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$Timer;->dropEverythingLocked()V

    .line 741
    :cond_1f
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 742
    if-eqz v0, :cond_38

    .line 743
    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 744
    const-string v2, "clearAppStats called before EJ Timer turned off."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$Timer;->dropEverythingLocked()V

    .line 748
    :cond_38
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 749
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 750
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    new-instance v2, Lcom/android/server/job/controllers/Package;

    invoke-direct {v2, p1, p2}, Lcom/android/server/job/controllers/Package;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 751
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 752
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 753
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 754
    return-void
.end method

.method deleteObsoleteSessionsLocked()V
    .registers 13

    .line 2618
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimedEventTooOld:Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;->-$$Nest$mupdateNow(Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;)V

    .line 2621
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mDeleteOldEventsFunctor:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 2624
    const/4 v0, 0x0

    .local v0, "uIdx":I
    :goto_d
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    if-ge v0, v1, :cond_63

    .line 2625
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    .line 2626
    .local v1, "userId":I
    const/4 v2, 0x0

    .local v2, "pIdx":I
    :goto_1c
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v3

    if-ge v2, v3, :cond_60

    .line 2627
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2628
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    move-result-object v4

    .line 2629
    .local v4, "debits":Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v1, v3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2630
    .local v5, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    if-nez v5, :cond_3b

    .line 2631
    goto :goto_5d

    .line 2634
    :cond_3b
    :goto_3b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5d

    .line 2635
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 2636
    .local v7, "ts":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    iget-object v8, p0, Lcom/android/server/job/controllers/QuotaController;->mTimedEventTooOld:Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;

    invoke-virtual {v8, v7}, Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;->test(Lcom/android/server/job/controllers/QuotaController$TimedEvent;)Z

    move-result v8

    if-eqz v8, :cond_5d

    .line 2638
    iget-wide v8, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v10, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v8, v10

    .line 2639
    .local v8, "duration":J
    neg-long v10, v8

    invoke-virtual {v4, v10, v11}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->transactLocked(J)J

    .line 2640
    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2644
    .end local v7    # "ts":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    .end local v8    # "duration":J
    goto :goto_3b

    .line 2626
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "debits":Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    .end local v5    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    :cond_5d
    :goto_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 2624
    .end local v1    # "userId":I
    .end local v2    # "pIdx":I
    :cond_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 2647
    .end local v0    # "uIdx":I
    :cond_63
    return-void
.end method

.method public dumpConstants(Landroid/util/IndentingPrintWriter;)V
    .registers 3
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 4746
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {v0, p1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->-$$Nest$mdump(Lcom/android/server/job/controllers/QuotaController$QcConstants;Landroid/util/IndentingPrintWriter;)V

    .line 4747
    return-void
.end method

.method public dumpConstants(Landroid/util/proto/ProtoOutputStream;)V
    .registers 3
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 4751
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {v0, p1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->-$$Nest$mdump(Lcom/android/server/job/controllers/QuotaController$QcConstants;Landroid/util/proto/ProtoOutputStream;)V

    .line 4752
    return-void
.end method

.method public dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .registers 12
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;
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

    .line 4433
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Is enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/job/controllers/QuotaController;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current elapsed time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4435
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4437
    const-string v0, "Foreground UIDs: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4438
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4439
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4441
    const-string v0, "Cached top apps: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4442
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4443
    const-string v0, "Cached top app grace period: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4444
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4446
    const-string v0, "Cached temp allowlist: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4447
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4448
    const-string v0, "Cached temp allowlist grace period: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4449
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4450
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4452
    const-string v0, "Special apps:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4453
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4454
    const-string v0, "System installers={"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4455
    const/4 v0, 0x0

    .local v0, "si":I
    :goto_91
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    invoke-virtual {v1}, Landroid/util/SparseSetArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_ba

    .line 4456
    if-lez v0, :cond_a0

    .line 4457
    const-string v1, ", "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4459
    :cond_a0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 4460
    const-string v1, "->"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4461
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 4455
    add-int/lit8 v0, v0, 0x1

    goto :goto_91

    .line 4463
    .end local v0    # "si":I
    :cond_ba
    const-string/jumbo v0, "}"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4464
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4466
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4467
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    new-instance v1, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/job/controllers/QuotaController;Ljava/util/function/Predicate;Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 4510
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4511
    const/4 v0, 0x0

    .local v0, "u":I
    :goto_d4
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    if-ge v0, v1, :cond_139

    .line 4512
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    .line 4513
    .local v1, "userId":I
    const/4 v2, 0x0

    .local v2, "p":I
    :goto_e3
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v3

    if-ge v2, v3, :cond_136

    .line 4514
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4515
    .local v3, "pkgName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v0, v2}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/QuotaController$Timer;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/job/controllers/QuotaController$Timer;->dump(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V

    .line 4516
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4517
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 4518
    .local v4, "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    if-eqz v4, :cond_133

    .line 4519
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4520
    const-string v5, "Saved events:"

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4521
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4522
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "j":I
    :goto_11c
    if-ltz v5, :cond_12a

    .line 4523
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    .line 4524
    .local v6, "event":Lcom/android/server/job/controllers/QuotaController$TimedEvent;
    invoke-interface {v6, p1}, Lcom/android/server/job/controllers/QuotaController$TimedEvent;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 4522
    .end local v6    # "event":Lcom/android/server/job/controllers/QuotaController$TimedEvent;
    add-int/lit8 v5, v5, -0x1

    goto :goto_11c

    .line 4526
    .end local v5    # "j":I
    :cond_12a
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4527
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4528
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4513
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    :cond_133
    add-int/lit8 v2, v2, 0x1

    goto :goto_e3

    .line 4511
    .end local v1    # "userId":I
    .end local v2    # "p":I
    :cond_136
    add-int/lit8 v0, v0, 0x1

    goto :goto_d4

    .line 4533
    .end local v0    # "u":I
    :cond_139
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4534
    const/4 v0, 0x0

    .restart local v0    # "u":I
    :goto_13d
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    if-ge v0, v1, :cond_1a2

    .line 4535
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    .line 4536
    .restart local v1    # "userId":I
    const/4 v2, 0x0

    .restart local v2    # "p":I
    :goto_14c
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v3

    if-ge v2, v3, :cond_19f

    .line 4537
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4538
    .restart local v3    # "pkgName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v0, v2}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/QuotaController$Timer;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/job/controllers/QuotaController$Timer;->dump(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V

    .line 4539
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4540
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 4541
    .local v4, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    if-eqz v4, :cond_19c

    .line 4542
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4543
    const-string v5, "Saved sessions:"

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4544
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4545
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .restart local v5    # "j":I
    :goto_185
    if-ltz v5, :cond_193

    .line 4546
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    .line 4547
    .local v6, "session":Lcom/android/server/job/controllers/QuotaController$TimedEvent;
    invoke-interface {v6, p1}, Lcom/android/server/job/controllers/QuotaController$TimedEvent;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 4545
    .end local v6    # "session":Lcom/android/server/job/controllers/QuotaController$TimedEvent;
    add-int/lit8 v5, v5, -0x1

    goto :goto_185

    .line 4549
    .end local v5    # "j":I
    :cond_193
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4550
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4551
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4536
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    :cond_19c
    add-int/lit8 v2, v2, 0x1

    goto :goto_14c

    .line 4534
    .end local v1    # "userId":I
    .end local v2    # "p":I
    :cond_19f
    add-int/lit8 v0, v0, 0x1

    goto :goto_13d

    .line 4556
    .end local v0    # "u":I
    :cond_1a2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4557
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    new-instance v1, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda3;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 4559
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4560
    const-string v0, "Cached execution stats:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4561
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4562
    const/4 v0, 0x0

    .restart local v0    # "u":I
    :goto_1bb
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    const-string v2, ": "

    if-ge v0, v1, :cond_20f

    .line 4563
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    .line 4564
    .restart local v1    # "userId":I
    const/4 v3, 0x0

    .local v3, "p":I
    :goto_1cc
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v4

    if-ge v3, v4, :cond_20c

    .line 4565
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v0, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4566
    .local v4, "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v0, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 4568
    .local v5, "stats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    invoke-static {v1, v4}, Lcom/android/server/job/controllers/Package;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4569
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4570
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1ef
    array-length v7, v5

    if-ge v6, v7, :cond_206

    .line 4571
    aget-object v7, v5, v6

    .line 4572
    .local v7, "executionStats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-eqz v7, :cond_203

    .line 4573
    invoke-static {v6}, Lcom/android/server/job/controllers/JobStatus;->bucketName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4574
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4575
    invoke-virtual {p1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 4570
    .end local v7    # "executionStats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    :cond_203
    add-int/lit8 v6, v6, 0x1

    goto :goto_1ef

    .line 4578
    .end local v6    # "i":I
    :cond_206
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4564
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "stats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1cc

    .line 4562
    .end local v1    # "userId":I
    .end local v3    # "p":I
    :cond_20c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1bb

    .line 4581
    .end local v0    # "u":I
    :cond_20f
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4583
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4584
    const-string v0, "EJ debits:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4585
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4586
    const/4 v0, 0x0

    .restart local v0    # "u":I
    :goto_21e
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    if-ge v0, v1, :cond_258

    .line 4587
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    .line 4588
    .restart local v1    # "userId":I
    const/4 v3, 0x0

    .restart local v3    # "p":I
    :goto_22d
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v4

    if-ge v3, v4, :cond_255

    .line 4589
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v0, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4590
    .restart local v4    # "pkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v0, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    .line 4592
    .local v5, "debits":Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    invoke-static {v1, v4}, Lcom/android/server/job/controllers/Package;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4593
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4594
    invoke-virtual {v5, p1}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->dumpLocked(Landroid/util/IndentingPrintWriter;)V

    .line 4588
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "debits":Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    add-int/lit8 v3, v3, 0x1

    goto :goto_22d

    .line 4586
    .end local v1    # "userId":I
    .end local v3    # "p":I
    :cond_255
    add-int/lit8 v0, v0, 0x1

    goto :goto_21e

    .line 4597
    .end local v0    # "u":I
    :cond_258
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4599
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4600
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 4601
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4602
    return-void
.end method

.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .registers 28
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 4607
    .local p4, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 4608
    .local v3, "token":J
    const-wide v5, 0x10b00000009L

    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 4610
    .local v5, "mToken":J
    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 4611
    invoke-virtual {v7}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v7

    .line 4610
    const-wide v8, 0x10800000001L

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4612
    sget-object v7, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 4613
    invoke-virtual {v7}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    .line 4612
    const-wide v9, 0x10300000006L

    invoke-virtual {v1, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4615
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_30
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_49

    .line 4616
    const-wide v11, 0x20500000003L

    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 4617
    invoke-virtual {v8, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    .line 4616
    invoke-virtual {v1, v11, v12, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4615
    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    .line 4620
    .end local v7    # "i":I
    :cond_49
    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    new-instance v8, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda6;

    invoke-direct {v8, v0, v2, v1}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/job/controllers/QuotaController;Ljava/util/function/Predicate;Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v7, v8}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 4649
    const/4 v7, 0x0

    .local v7, "u":I
    :goto_54
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v8}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v8

    if-ge v7, v8, :cond_1df

    .line 4650
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v8

    .line 4651
    .local v8, "userId":I
    const/4 v11, 0x0

    .local v11, "p":I
    :goto_63
    iget-object v12, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v12, v8}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v12

    if-ge v11, v12, :cond_1cc

    .line 4652
    iget-object v12, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v12, v7, v11}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 4653
    .local v12, "pkgName":Ljava/lang/String;
    const-wide v13, 0x20b00000005L

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 4656
    .local v13, "psToken":J
    iget-object v15, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v15, v7, v11}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/job/controllers/QuotaController$Timer;

    const-wide v9, 0x10b00000002L

    invoke-virtual {v15, v1, v9, v10, v2}, Lcom/android/server/job/controllers/QuotaController$Timer;->dump(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V

    .line 4658
    iget-object v9, v0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v9, v8, v12}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 4659
    .local v9, "ejTimer":Lcom/android/server/job/controllers/QuotaController$Timer;
    if-eqz v9, :cond_a1

    .line 4660
    move-wide/from16 v16, v3

    .end local v3    # "token":J
    .local v16, "token":J
    const-wide v3, 0x10b00000006L

    invoke-virtual {v9, v1, v3, v4, v2}, Lcom/android/server/job/controllers/QuotaController$Timer;->dump(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V

    goto :goto_a3

    .line 4659
    .end local v16    # "token":J
    .restart local v3    # "token":J
    :cond_a1
    move-wide/from16 v16, v3

    .line 4665
    .end local v3    # "token":J
    .restart local v16    # "token":J
    :goto_a3
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v8, v12}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 4666
    .local v3, "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    if-eqz v3, :cond_d9

    .line 4667
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_b3
    if-ltz v4, :cond_d6

    .line 4668
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    .line 4669
    .local v10, "event":Lcom/android/server/job/controllers/QuotaController$TimedEvent;
    instance-of v15, v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    if-nez v15, :cond_c2

    .line 4670
    move-object/from16 v18, v3

    goto :goto_cf

    .line 4672
    :cond_c2
    move-object v15, v10

    check-cast v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 4673
    .local v15, "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    move-object/from16 v18, v3

    .end local v3    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    .local v18, "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    const-wide v2, 0x20b00000003L

    invoke-virtual {v15, v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController$TimingSession;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4667
    .end local v10    # "event":Lcom/android/server/job/controllers/QuotaController$TimedEvent;
    .end local v15    # "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    :goto_cf
    add-int/lit8 v4, v4, -0x1

    move-object/from16 v2, p4

    move-object/from16 v3, v18

    goto :goto_b3

    .end local v18    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    .restart local v3    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    :cond_d6
    move-object/from16 v18, v3

    .end local v3    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    .restart local v18    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    goto :goto_db

    .line 4666
    .end local v4    # "j":I
    .end local v18    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    .restart local v3    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    :cond_d9
    move-object/from16 v18, v3

    .line 4678
    .end local v3    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    .restart local v18    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    :goto_db
    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v8, v12}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 4679
    .local v2, "stats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-eqz v2, :cond_1b1

    .line 4680
    const/4 v3, 0x0

    .local v3, "bucketIndex":I
    :goto_e6
    array-length v4, v2

    if-ge v3, v4, :cond_1a9

    .line 4681
    aget-object v4, v2, v3

    .line 4682
    .local v4, "es":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-nez v4, :cond_f6

    .line 4683
    move-wide/from16 v19, v5

    move/from16 v22, v8

    move-object v15, v9

    move/from16 v21, v11

    goto/16 :goto_19e

    .line 4685
    :cond_f6
    move v10, v8

    move-object v15, v9

    .end local v8    # "userId":I
    .end local v9    # "ejTimer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .local v10, "userId":I
    .local v15, "ejTimer":Lcom/android/server/job/controllers/QuotaController$Timer;
    const-wide v8, 0x20b00000004L

    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 4687
    .local v8, "esToken":J
    move-wide/from16 v19, v5

    .end local v5    # "mToken":J
    .local v19, "mToken":J
    const-wide v5, 0x10e00000001L

    invoke-virtual {v1, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4690
    const-wide v5, 0x10300000002L

    move/from16 v22, v10

    move/from16 v21, v11

    .end local v10    # "userId":I
    .end local v11    # "p":I
    .local v21, "p":I
    .local v22, "userId":I
    iget-wide v10, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    invoke-virtual {v1, v5, v6, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4693
    const-wide v5, 0x10300000003L

    iget-wide v10, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    invoke-virtual {v1, v5, v6, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4696
    const-wide v5, 0x1050000000eL

    iget v10, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    invoke-virtual {v1, v5, v6, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4699
    const-wide v5, 0x1050000000fL

    iget v10, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    invoke-virtual {v1, v5, v6, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4702
    const-wide v5, 0x10300000004L

    iget-wide v10, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    invoke-virtual {v1, v5, v6, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4705
    const-wide v5, 0x10500000005L

    iget v10, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    invoke-virtual {v1, v5, v6, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4708
    iget-wide v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    const-wide v10, 0x10300000006L

    invoke-virtual {v1, v10, v11, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4711
    const-wide v5, 0x10500000007L

    iget v10, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    invoke-virtual {v1, v5, v6, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4714
    const-wide v5, 0x1050000000bL

    iget v10, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    invoke-virtual {v1, v5, v6, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4717
    const-wide v5, 0x10300000008L

    iget-wide v10, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    invoke-virtual {v1, v5, v6, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4720
    const-wide v5, 0x10300000009L

    iget-wide v10, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    invoke-virtual {v1, v5, v6, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4723
    const-wide v5, 0x1050000000aL

    iget v10, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    invoke-virtual {v1, v5, v6, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4726
    const-wide v5, 0x1030000000cL

    iget-wide v10, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    invoke-virtual {v1, v5, v6, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4729
    const-wide v5, 0x1050000000dL

    iget v10, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    invoke-virtual {v1, v5, v6, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4732
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4680
    .end local v4    # "es":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .end local v8    # "esToken":J
    :goto_19e
    add-int/lit8 v3, v3, 0x1

    move-object v9, v15

    move-wide/from16 v5, v19

    move/from16 v11, v21

    move/from16 v8, v22

    goto/16 :goto_e6

    .end local v15    # "ejTimer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .end local v19    # "mToken":J
    .end local v21    # "p":I
    .end local v22    # "userId":I
    .restart local v5    # "mToken":J
    .local v8, "userId":I
    .restart local v9    # "ejTimer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .restart local v11    # "p":I
    :cond_1a9
    move-wide/from16 v19, v5

    move/from16 v22, v8

    move-object v15, v9

    move/from16 v21, v11

    .end local v5    # "mToken":J
    .end local v8    # "userId":I
    .end local v9    # "ejTimer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .end local v11    # "p":I
    .restart local v15    # "ejTimer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .restart local v19    # "mToken":J
    .restart local v21    # "p":I
    .restart local v22    # "userId":I
    goto :goto_1b8

    .line 4679
    .end local v3    # "bucketIndex":I
    .end local v15    # "ejTimer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .end local v19    # "mToken":J
    .end local v21    # "p":I
    .end local v22    # "userId":I
    .restart local v5    # "mToken":J
    .restart local v8    # "userId":I
    .restart local v9    # "ejTimer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .restart local v11    # "p":I
    :cond_1b1
    move-wide/from16 v19, v5

    move/from16 v22, v8

    move-object v15, v9

    move/from16 v21, v11

    .line 4736
    .end local v5    # "mToken":J
    .end local v8    # "userId":I
    .end local v9    # "ejTimer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .end local v11    # "p":I
    .restart local v15    # "ejTimer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .restart local v19    # "mToken":J
    .restart local v21    # "p":I
    .restart local v22    # "userId":I
    :goto_1b8
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4651
    .end local v2    # "stats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v13    # "psToken":J
    .end local v15    # "ejTimer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .end local v18    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    add-int/lit8 v11, v21, 0x1

    move-object/from16 v2, p4

    move-wide/from16 v3, v16

    move-wide/from16 v5, v19

    move/from16 v8, v22

    const-wide v9, 0x10300000006L

    .end local v21    # "p":I
    .restart local v11    # "p":I
    goto/16 :goto_63

    .end local v16    # "token":J
    .end local v19    # "mToken":J
    .end local v22    # "userId":I
    .local v3, "token":J
    .restart local v5    # "mToken":J
    .restart local v8    # "userId":I
    :cond_1cc
    move-wide/from16 v16, v3

    move-wide/from16 v19, v5

    move/from16 v22, v8

    move/from16 v21, v11

    .line 4649
    .end local v3    # "token":J
    .end local v5    # "mToken":J
    .end local v8    # "userId":I
    .end local v11    # "p":I
    .restart local v16    # "token":J
    .restart local v19    # "mToken":J
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p4

    const-wide v9, 0x10300000006L

    goto/16 :goto_54

    .end local v16    # "token":J
    .end local v19    # "mToken":J
    .restart local v3    # "token":J
    .restart local v5    # "mToken":J
    :cond_1df
    move-wide/from16 v16, v3

    move-wide/from16 v19, v5

    .line 4740
    .end local v3    # "token":J
    .end local v5    # "mToken":J
    .end local v7    # "u":I
    .restart local v16    # "token":J
    .restart local v19    # "mToken":J
    move-wide/from16 v2, v19

    .end local v19    # "mToken":J
    .local v2, "mToken":J
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4741
    move-wide/from16 v4, v16

    .end local v16    # "token":J
    .local v4, "token":J
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4742
    return-void
.end method

.method getAllowedTimePerPeriodMs()[J
    .registers 2

    .line 4260
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:[J

    return-object v0
.end method

.method getBucketMaxJobCounts()[I
    .registers 2

    .line 4266
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    return-object v0
.end method

.method getBucketMaxSessionCounts()[I
    .registers 2

    .line 4272
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    return-object v0
.end method

.method getBucketWindowSizes()[J
    .registers 2

    .line 4278
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    return-object v0
.end method

.method getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    .registers 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 875
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    .line 876
    .local v0, "debits":Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    if-nez v0, :cond_1f

    .line 877
    new-instance v1, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 879
    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    .line 878
    invoke-static {p2, p1, v2, v3}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;-><init>(I)V

    move-object v0, v1

    .line 881
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 883
    :cond_1f
    return-object v0
.end method

.method getEJGracePeriodTempAllowlistMs()J
    .registers 3

    .line 4295
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTempAllowlistMs:J

    return-wide v0
.end method

.method getEJGracePeriodTopAppMs()J
    .registers 3

    .line 4300
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTopAppMs:J

    return-wide v0
.end method

.method getEJLimitWindowSizeMs()J
    .registers 3

    .line 4322
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    return-wide v0
.end method

.method getEJLimitsMs()[J
    .registers 2

    .line 4306
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    return-object v0
.end method

.method getEJRewardInteractionMs()J
    .registers 3

    .line 4328
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardInteractionMs:J

    return-wide v0
.end method

.method getEJRewardNotificationSeenMs()J
    .registers 3

    .line 4334
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardNotificationSeenMs:J

    return-wide v0
.end method

.method getEJRewardTopAppMs()J
    .registers 3

    .line 4340
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    return-wide v0
.end method

.method getEJTimingSessions(ILjava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
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

    .line 4346
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method getEJTopAppTimeChunkSizeMs()J
    .registers 3

    .line 4352
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    return-wide v0
.end method

.method getEjLimitAdditionInstallerMs()J
    .registers 3

    .line 4311
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    return-wide v0
.end method

.method getEjLimitAdditionSpecialMs()J
    .registers 3

    .line 4316
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionSpecialMs:J

    return-wide v0
.end method

.method getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "standbyBucket"    # I

    .line 1214
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;IZ)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v0

    return-object v0
.end method

.method getForegroundUids()Landroid/util/SparseBooleanArray;
    .registers 2

    .line 4284
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .registers 2

    .line 4290
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    return-object v0
.end method

.method getInQuotaBufferMs()J
    .registers 3

    .line 4357
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    return-wide v0
.end method

.method getMaxExecutionTimeMs()J
    .registers 3

    .line 4362
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    return-wide v0
.end method

.method getMaxJobCountPerRateLimitingWindow()I
    .registers 2

    .line 4367
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    return v0
.end method

.method public getMaxJobExecutionTimeMsLocked(Lcom/android/server/job/controllers/JobStatus;)J
    .registers 6
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 789
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 792
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    .line 793
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_39

    .line 794
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 795
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/QuotaController;->isUidInForeground(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_39

    .line 798
    :cond_2b
    nop

    .line 799
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 798
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 796
    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    return-wide v0

    .line 803
    :cond_3e
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 804
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    return-wide v0

    .line 806
    :cond_4b
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v0

    const/4 v1, 0x6

    const-wide/16 v2, 0x2

    if-ne v0, v1, :cond_6a

    .line 807
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    aget-wide v0, v0, v1

    div-long/2addr v0, v2

    .line 809
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    .line 808
    invoke-virtual {p0, v2, v3}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide v2

    .line 807
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    .line 811
    :cond_6a
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_ac

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_7d

    goto :goto_ac

    .line 816
    :cond_7d
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/QuotaController;->isUidInForeground(I)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 817
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    div-long/2addr v0, v2

    .line 819
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    .line 818
    invoke-virtual {p0, v2, v3}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide v2

    .line 817
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0

    .line 821
    :cond_9e
    nop

    .line 822
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 821
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 812
    :cond_ac
    :goto_ac
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    div-long/2addr v0, v2

    .line 814
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    .line 813
    invoke-virtual {p0, v2, v3}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide v2

    .line 812
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method getMaxSessionCountPerRateLimitingWindow()I
    .registers 2

    .line 4372
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    return v0
.end method

.method getMinQuotaCheckDelayMs()J
    .registers 3

    .line 4377
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;->getMinTimeBetweenAlarmsMs()J

    move-result-wide v0

    return-wide v0
.end method

.method getQcConstants()Lcom/android/server/job/controllers/QuotaController$QcConstants;
    .registers 2

    .line 4399
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    return-object v0
.end method

.method getQuotaBumpAdditionDurationMs()J
    .registers 3

    .line 4404
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalDurationMs:J

    return-wide v0
.end method

.method getQuotaBumpAdditionJobCount()I
    .registers 2

    .line 4409
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalJobCount:I

    return v0
.end method

.method getQuotaBumpAdditionSessionCount()I
    .registers 2

    .line 4414
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalSessionCount:I

    return v0
.end method

.method getQuotaBumpLimit()I
    .registers 2

    .line 4419
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpLimit:I

    return v0
.end method

.method getQuotaBumpWindowSizeMs()J
    .registers 3

    .line 4424
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpWindowSizeMs:J

    return-wide v0
.end method

.method getRateLimitingWindowMs()J
    .registers 3

    .line 4382
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    return-wide v0
.end method

.method getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J
    .registers 22
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 985
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    move-result-object v3

    .line 986
    .local v3, "quota":Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->getStandbyBucketLocked()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_14

    .line 987
    const-wide/16 v4, 0x0

    return-wide v4

    .line 989
    :cond_14
    nop

    .line 990
    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->getStandbyBucketLocked()I

    move-result v4

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/job/controllers/QuotaController;->getEJLimitMsLocked(ILjava/lang/String;I)J

    move-result-wide v4

    .line 991
    .local v4, "limitMs":J
    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->getTallyLocked()J

    move-result-wide v6

    sub-long v6, v4, v6

    .line 994
    .local v6, "remainingMs":J
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v8, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 995
    .local v8, "timingSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    sget-object v9, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v9}, Ljava/time/Clock;->millis()J

    move-result-wide v9

    .line 996
    .local v9, "nowElapsed":J
    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    sub-long v11, v9, v11

    .line 997
    .local v11, "windowStartTimeElapsed":J
    if-eqz v8, :cond_71

    .line 998
    :goto_37
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_6d

    .line 999
    const/4 v13, 0x0

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 1000
    .local v14, "ts":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    move-wide v15, v4

    .end local v4    # "limitMs":J
    .local v15, "limitMs":J
    iget-wide v4, v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v4, v4, v11

    if-gez v4, :cond_5f

    .line 1001
    iget-wide v4, v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    move-wide/from16 v17, v9

    .end local v9    # "nowElapsed":J
    .local v17, "nowElapsed":J
    iget-wide v9, v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v4, v9

    .line 1002
    .local v4, "duration":J
    add-long/2addr v6, v4

    .line 1003
    neg-long v9, v4

    invoke-virtual {v3, v9, v10}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->transactLocked(J)J

    .line 1004
    invoke-interface {v8, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1005
    .end local v4    # "duration":J
    nop

    .line 1012
    .end local v14    # "ts":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    move-wide v4, v15

    move-wide/from16 v9, v17

    goto :goto_37

    .line 1005
    .end local v17    # "nowElapsed":J
    .restart local v9    # "nowElapsed":J
    .restart local v14    # "ts":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    :cond_5f
    move-wide/from16 v17, v9

    .end local v9    # "nowElapsed":J
    .restart local v17    # "nowElapsed":J
    iget-wide v4, v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v4, v4, v11

    if-gez v4, :cond_74

    .line 1006
    iget-wide v4, v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long v4, v11, v4

    add-long/2addr v6, v4

    .line 1007
    goto :goto_74

    .line 998
    .end local v14    # "ts":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    .end local v15    # "limitMs":J
    .end local v17    # "nowElapsed":J
    .local v4, "limitMs":J
    .restart local v9    # "nowElapsed":J
    :cond_6d
    move-wide v15, v4

    move-wide/from16 v17, v9

    .end local v4    # "limitMs":J
    .end local v9    # "nowElapsed":J
    .restart local v15    # "limitMs":J
    .restart local v17    # "nowElapsed":J
    goto :goto_74

    .line 997
    .end local v15    # "limitMs":J
    .end local v17    # "nowElapsed":J
    .restart local v4    # "limitMs":J
    .restart local v9    # "nowElapsed":J
    :cond_71
    move-wide v15, v4

    move-wide/from16 v17, v9

    .line 1015
    .end local v4    # "limitMs":J
    .end local v9    # "nowElapsed":J
    .restart local v15    # "limitMs":J
    .restart local v17    # "nowElapsed":J
    :cond_74
    :goto_74
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;

    .line 1016
    .local v4, "topAppTimer":Lcom/android/server/job/controllers/QuotaController$TopAppTimer;
    if-eqz v4, :cond_8c

    invoke-virtual {v4}, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->isActive()Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 1017
    move-wide/from16 v9, v17

    .end local v17    # "nowElapsed":J
    .restart local v9    # "nowElapsed":J
    invoke-virtual {v4, v9, v10}, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->getPendingReward(J)J

    move-result-wide v13

    add-long/2addr v6, v13

    goto :goto_8e

    .line 1016
    .end local v9    # "nowElapsed":J
    .restart local v17    # "nowElapsed":J
    :cond_8c
    move-wide/from16 v9, v17

    .line 1020
    .end local v17    # "nowElapsed":J
    .restart local v9    # "nowElapsed":J
    :goto_8e
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 1021
    .local v5, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    if-nez v5, :cond_99

    .line 1022
    return-wide v6

    .line 1025
    :cond_99
    sget-object v13, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v13}, Ljava/time/Clock;->millis()J

    move-result-wide v13

    invoke-virtual {v5, v13, v14}, Lcom/android/server/job/controllers/QuotaController$Timer;->getCurrentDuration(J)J

    move-result-wide v13

    sub-long v13, v6, v13

    return-wide v13
.end method

.method getRemainingExecutionTimeLocked(ILjava/lang/String;)J
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 959
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 960
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 959
    invoke-static {p2, p1, v0, v1}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v0

    .line 961
    .local v0, "standbyBucket":I
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(ILjava/lang/String;I)J

    move-result-wide v1

    return-wide v1
.end method

.method getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J
    .registers 5
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 952
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    .line 953
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 954
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v2

    .line 952
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(ILjava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J
    .registers 31
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1160
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 1161
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/job/controllers/QuotaController;->getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J

    move-result-wide v3

    .line 1163
    .local v3, "remainingExecutionTimeMs":J
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1164
    .local v5, "sessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    if-eqz v5, :cond_c7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1c

    goto/16 :goto_c7

    .line 1168
    :cond_1c
    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v6}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    .line 1169
    .local v6, "nowElapsed":J
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    move-result-object v8

    .line 1170
    .local v8, "quota":Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    nop

    .line 1171
    invoke-virtual {v8}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->getStandbyBucketLocked()I

    move-result v9

    invoke-direct {v0, v1, v2, v9}, Lcom/android/server/job/controllers/QuotaController;->getEJLimitMsLocked(ILjava/lang/String;I)J

    move-result-wide v9

    .line 1172
    .local v9, "limitMs":J
    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    sub-long v11, v6, v11

    const-wide/16 v13, 0x0

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 1173
    .local v11, "startWindowElapsed":J
    move-wide v15, v3

    .line 1175
    .local v15, "remainingDeadSpaceMs":J
    const-wide/16 v17, 0x0

    .line 1177
    .local v17, "deadSpaceMs":J
    const-wide/16 v19, 0x0

    .line 1179
    .local v19, "phasedOutSessionTimeMs":J
    const/16 v21, 0x0

    move-wide v13, v15

    move/from16 v15, v21

    .local v13, "remainingDeadSpaceMs":J
    .local v15, "i":I
    :goto_43
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v15, v0, :cond_bb

    .line 1180
    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 1181
    .local v0, "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    iget-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v1, v1, v11

    if-gez v1, :cond_67

    .line 1184
    iget-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    move-wide/from16 v22, v6

    .end local v6    # "nowElapsed":J
    .local v22, "nowElapsed":J
    iget-wide v6, v0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v1, v6

    add-long/2addr v13, v1

    .line 1185
    invoke-interface {v5, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1186
    add-int/lit8 v15, v15, -0x1

    move-wide/from16 v26, v11

    const-wide/16 v1, 0x0

    goto :goto_ae

    .line 1187
    .end local v22    # "nowElapsed":J
    .restart local v6    # "nowElapsed":J
    :cond_67
    move-wide/from16 v22, v6

    .end local v6    # "nowElapsed":J
    .restart local v22    # "nowElapsed":J
    iget-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v1, v1, v11

    if-gez v1, :cond_79

    .line 1189
    iget-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long/2addr v1, v11

    move-wide/from16 v19, v1

    move-wide/from16 v26, v11

    const-wide/16 v1, 0x0

    .end local v19    # "phasedOutSessionTimeMs":J
    .local v1, "phasedOutSessionTimeMs":J
    goto :goto_ae

    .line 1192
    .end local v1    # "phasedOutSessionTimeMs":J
    .restart local v19    # "phasedOutSessionTimeMs":J
    :cond_79
    iget-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    .line 1193
    if-nez v15, :cond_7f

    move-wide v6, v11

    goto :goto_8b

    :cond_7f
    add-int/lit8 v6, v15, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    invoke-interface {v6}, Lcom/android/server/job/controllers/QuotaController$TimedEvent;->getEndTimeElapsed()J

    move-result-wide v6

    :goto_8b
    sub-long/2addr v1, v6

    .line 1194
    .local v1, "timeBetweenSessions":J
    invoke-static {v13, v14, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 1195
    .local v6, "usedDeadSpaceMs":J
    add-long v17, v17, v6

    .line 1196
    cmp-long v16, v6, v1

    if-nez v16, :cond_a2

    .line 1197
    move-wide/from16 v24, v1

    .end local v1    # "timeBetweenSessions":J
    .local v24, "timeBetweenSessions":J
    iget-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    move-wide/from16 v26, v11

    .end local v11    # "startWindowElapsed":J
    .local v26, "startWindowElapsed":J
    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v1, v11

    add-long v19, v19, v1

    goto :goto_a6

    .line 1196
    .end local v24    # "timeBetweenSessions":J
    .end local v26    # "startWindowElapsed":J
    .restart local v1    # "timeBetweenSessions":J
    .restart local v11    # "startWindowElapsed":J
    :cond_a2
    move-wide/from16 v24, v1

    move-wide/from16 v26, v11

    .line 1199
    .end local v1    # "timeBetweenSessions":J
    .end local v11    # "startWindowElapsed":J
    .restart local v24    # "timeBetweenSessions":J
    .restart local v26    # "startWindowElapsed":J
    :goto_a6
    sub-long/2addr v13, v6

    .line 1200
    const-wide/16 v1, 0x0

    cmp-long v11, v13, v1

    if-gtz v11, :cond_ae

    .line 1201
    goto :goto_bf

    .line 1179
    .end local v0    # "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    .end local v6    # "usedDeadSpaceMs":J
    .end local v24    # "timeBetweenSessions":J
    :cond_ae
    :goto_ae
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v6, v22

    move-wide/from16 v11, v26

    goto :goto_43

    .end local v22    # "nowElapsed":J
    .end local v26    # "startWindowElapsed":J
    .local v6, "nowElapsed":J
    .restart local v11    # "startWindowElapsed":J
    :cond_bb
    move-wide/from16 v22, v6

    move-wide/from16 v26, v11

    .line 1206
    .end local v6    # "nowElapsed":J
    .end local v11    # "startWindowElapsed":J
    .end local v15    # "i":I
    .restart local v22    # "nowElapsed":J
    .restart local v26    # "startWindowElapsed":J
    :goto_bf
    add-long v0, v17, v19

    add-long/2addr v0, v13

    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 1165
    .end local v8    # "quota":Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    .end local v9    # "limitMs":J
    .end local v13    # "remainingDeadSpaceMs":J
    .end local v17    # "deadSpaceMs":J
    .end local v19    # "phasedOutSessionTimeMs":J
    .end local v22    # "nowElapsed":J
    .end local v26    # "startWindowElapsed":J
    :cond_c7
    :goto_c7
    return-wide v3
.end method

.method getTimeUntilQuotaConsumedLocked(ILjava/lang/String;)J
    .registers 28
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1045
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v10

    .line 1046
    .local v10, "nowElapsed":J
    invoke-static {v9, v8, v10, v11}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v12

    .line 1048
    .local v12, "standbyBucket":I
    const/4 v0, 0x4

    if-ne v12, v0, :cond_16

    .line 1049
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1052
    :cond_16
    iget-object v0, v7, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/util/List;

    .line 1053
    .local v13, "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    invoke-virtual {v7, v8, v9, v12}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v14

    .line 1054
    .local v14, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-eqz v13, :cond_74

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_74

    .line 1063
    :cond_2c
    iget-wide v0, v14, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    sub-long v15, v10, v0

    .line 1064
    .local v15, "startWindowElapsed":J
    const-wide/32 v0, 0x5265c00

    sub-long v17, v10, v0

    .line 1065
    .local v17, "startMaxElapsed":J
    iget-object v0, v7, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:[J

    aget-wide v19, v0, v12

    .line 1066
    .local v19, "allowedTimePerPeriodMs":J
    iget-wide v0, v14, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    sub-long v21, v19, v0

    .line 1067
    .local v21, "allowedTimeRemainingMs":J
    iget-wide v0, v7, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    iget-wide v2, v14, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    sub-long v23, v0, v2

    .line 1072
    .local v23, "maxExecutionTimeRemainingMs":J
    iget-wide v0, v14, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    iget-object v2, v7, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:[J

    aget-wide v2, v2, v12

    cmp-long v0, v0, v2

    if-nez v0, :cond_5a

    .line 1073
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v13

    move-wide/from16 v2, v17

    move-wide/from16 v4, v23

    invoke-direct/range {v0 .. v6}, Lcom/android/server/job/controllers/QuotaController;->calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJZ)J

    move-result-wide v0

    return-wide v0

    .line 1081
    :cond_5a
    const/4 v6, 0x0

    .line 1082
    move-object/from16 v0, p0

    move-object v1, v13

    move-wide/from16 v2, v17

    move-wide/from16 v4, v23

    invoke-direct/range {v0 .. v6}, Lcom/android/server/job/controllers/QuotaController;->calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJZ)J

    move-result-wide v4

    const/4 v6, 0x1

    .line 1084
    move-wide v2, v15

    move-wide v8, v4

    move-wide/from16 v4, v21

    invoke-direct/range {v0 .. v6}, Lcom/android/server/job/controllers/QuotaController;->calculateTimeUntilQuotaConsumedLocked(Ljava/util/List;JJZ)J

    move-result-wide v0

    .line 1081
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 1057
    .end local v15    # "startWindowElapsed":J
    .end local v17    # "startMaxElapsed":J
    .end local v19    # "allowedTimePerPeriodMs":J
    .end local v21    # "allowedTimeRemainingMs":J
    .end local v23    # "maxExecutionTimeRemainingMs":J
    :cond_74
    :goto_74
    iget-wide v0, v14, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    iget-object v2, v7, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:[J

    aget-wide v2, v2, v12

    cmp-long v0, v0, v2

    if-nez v0, :cond_81

    .line 1058
    iget-wide v0, v7, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    return-wide v0

    .line 1060
    :cond_81
    return-wide v2
.end method

.method getTimingSessionCoalescingDurationMs()J
    .registers 3

    .line 4387
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    return-wide v0
.end method

.method getTimingSessions(ILjava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
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

    .line 4393
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method incrementJobCountLocked(ILjava/lang/String;I)V
    .registers 11
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "count"    # I

    .line 1450
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1451
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1452
    .local v2, "appStats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-nez v2, :cond_1a

    .line 1453
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    array-length v3, v3

    new-array v2, v3, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1454
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, p1, p2, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1456
    :cond_1a
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    array-length v4, v2

    if-ge v3, v4, :cond_40

    .line 1457
    aget-object v4, v2, v3

    .line 1458
    .local v4, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-nez v4, :cond_2a

    .line 1459
    new-instance v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {v5}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    move-object v4, v5

    .line 1460
    aput-object v4, v2, v3

    .line 1462
    :cond_2a
    iget-wide v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    cmp-long v5, v5, v0

    if-gtz v5, :cond_38

    .line 1463
    iget-wide v5, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    add-long/2addr v5, v0

    iput-wide v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    .line 1464
    const/4 v5, 0x0

    iput v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    .line 1466
    :cond_38
    iget v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    add-int/2addr v5, p3

    iput v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    .line 1456
    .end local v4    # "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 1468
    .end local v3    # "i":I
    :cond_40
    return-void
.end method

.method invalidateAllExecutionStatsLocked()V
    .registers 5

    .line 1420
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1421
    .local v0, "nowElapsed":J
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    new-instance v3, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda0;-><init>(J)V

    invoke-virtual {v2, v3}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 1431
    return-void
.end method

.method invalidateAllExecutionStatsLocked(ILjava/lang/String;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1436
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1437
    .local v0, "appStats":[Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-eqz v0, :cond_1d

    .line 1438
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 1439
    .local v1, "nowElapsed":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    array-length v4, v0

    if-ge v3, v4, :cond_1d

    .line 1440
    aget-object v4, v0, v3

    .line 1441
    .local v4, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    if-eqz v4, :cond_1a

    .line 1442
    iput-wide v1, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 1439
    .end local v4    # "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 1446
    .end local v1    # "nowElapsed":J
    .end local v3    # "i":I
    :cond_1d
    return-void
.end method

.method public isWithinEJQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 13
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 841
    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController;->mIsEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 842
    return v1

    .line 844
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/QuotaController;->isQuotaFreeLocked(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 845
    return v1

    .line 851
    :cond_11
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-nez v0, :cond_6e

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/QuotaController;->isUidInForeground(I)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_6e

    .line 855
    :cond_22
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    .line 856
    .local v2, "nowElapsed":J
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    .line 857
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v4

    .line 856
    invoke-direct {p0, v0, v4, v2, v3}, Lcom/android/server/job/controllers/QuotaController;->hasTempAllowlistExemptionLocked(IIJ)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 858
    return v1

    .line 861
    :cond_37
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v4

    .line 862
    .local v4, "topAppGracePeriodEndElapsed":J
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_55

    cmp-long v0, v2, v4

    if-gez v0, :cond_53

    goto :goto_55

    :cond_53
    move v0, v6

    goto :goto_56

    :cond_55
    :goto_55
    move v0, v1

    .line 864
    .local v0, "hasTopAppExemption":Z
    :goto_56
    if-eqz v0, :cond_59

    .line 865
    return v1

    .line 868
    :cond_59
    const-wide/16 v7, 0x0

    .line 869
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v9

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v10

    .line 868
    invoke-virtual {p0, v9, v10}, Lcom/android/server/job/controllers/QuotaController;->getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_6c

    goto :goto_6d

    :cond_6c
    move v1, v6

    :goto_6d
    return v1

    .line 852
    .end local v0    # "hasTopAppExemption":Z
    .end local v2    # "nowElapsed":J
    .end local v4    # "topAppGracePeriodEndElapsed":J
    :cond_6e
    :goto_6e
    return v1
.end method

.method isWithinQuotaLocked(ILjava/lang/String;I)Z
    .registers 11
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "standbyBucket"    # I

    .line 917
    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController;->mIsEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 918
    return v1

    .line 920
    :cond_6
    const/4 v0, 0x4

    const/4 v2, 0x0

    if-ne p3, v0, :cond_b

    return v2

    .line 922
    :cond_b
    invoke-direct {p0, p3}, Lcom/android/server/job/controllers/QuotaController;->isQuotaFreeLocked(I)Z

    move-result v0

    if-eqz v0, :cond_12

    return v1

    .line 924
    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v0

    .line 926
    .local v0, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_2d

    .line 927
    invoke-direct {p0, v0, p3}, Lcom/android/server/job/controllers/QuotaController;->isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 928
    invoke-direct {p0, v0, p3}, Lcom/android/server/job/controllers/QuotaController;->isUnderSessionCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z

    move-result v3

    if-eqz v3, :cond_2d

    goto :goto_2e

    :cond_2d
    move v1, v2

    .line 926
    :goto_2e
    return v1
.end method

.method isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 6
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 888
    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController;->mIsEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 889
    return v1

    .line 891
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v0

    .line 896
    .local v0, "standbyBucket":I
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 897
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/job/controllers/QuotaController;->isUidInForeground(I)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 899
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    .line 898
    invoke-virtual {p0, v2, v3, v0}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(ILjava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v1, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    nop

    .line 896
    :goto_2c
    return v1
.end method

.method synthetic lambda$dumpControllerStateLocked$4$com-android-server-job-controllers-QuotaController(Ljava/util/function/Predicate;Landroid/util/IndentingPrintWriter;Landroid/util/ArraySet;)V
    .registers 8
    .param p1, "predicate"    # Ljava/util/function/Predicate;
    .param p2, "pw"    # Landroid/util/IndentingPrintWriter;
    .param p3, "jobs"    # Landroid/util/ArraySet;

    .line 4468
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_bb

    .line 4469
    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 4470
    .local v1, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 4471
    goto/16 :goto_b7

    .line 4473
    :cond_15
    const-string v2, "#"

    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4474
    invoke-virtual {v1, p2}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 4475
    const-string v2, " from "

    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4476
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-static {p2, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 4477
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 4478
    const-string v2, " (TOP)"

    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4480
    :cond_36
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4482
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4483
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/job/controllers/JobStatus;->bucketName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4484
    const-string v2, ", "

    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4485
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 4486
    const-string/jumbo v3, "within EJ quota"

    invoke-virtual {p2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_79

    .line 4487
    :cond_59
    iget-boolean v3, v1, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v3, :cond_64

    .line 4488
    const-string/jumbo v3, "out of EJ quota"

    invoke-virtual {p2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_79

    .line 4489
    :cond_64
    const/high16 v3, 0x1000000

    invoke-virtual {v1, v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 4490
    const-string/jumbo v3, "within regular quota"

    invoke-virtual {p2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_79

    .line 4492
    :cond_73
    const-string/jumbo v3, "not within quota"

    invoke-virtual {p2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4494
    :goto_79
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4495
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v2

    if-eqz v2, :cond_99

    .line 4496
    nop

    .line 4497
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    .line 4496
    invoke-virtual {p0, v2, v3}, Lcom/android/server/job/controllers/QuotaController;->getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 4498
    const-string/jumbo v2, "ms remaining in EJ quota"

    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_b1

    .line 4499
    :cond_99
    iget-boolean v2, v1, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v2, :cond_a4

    .line 4500
    const-string/jumbo v2, "should be stopped after min execution time"

    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_b1

    .line 4502
    :cond_a4
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 4503
    const-string/jumbo v2, "ms remaining in quota"

    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4505
    :goto_b1
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 4506
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4468
    .end local v1    # "js":Lcom/android/server/job/controllers/JobStatus;
    :goto_b7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 4508
    .end local v0    # "j":I
    :cond_bb
    return-void
.end method

.method synthetic lambda$dumpControllerStateLocked$6$com-android-server-job-controllers-QuotaController(Ljava/util/function/Predicate;Landroid/util/proto/ProtoOutputStream;Landroid/util/ArraySet;)V
    .registers 12
    .param p1, "predicate"    # Ljava/util/function/Predicate;
    .param p2, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p3, "jobs"    # Landroid/util/ArraySet;

    .line 4621
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_84

    .line 4622
    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 4623
    .local v1, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 4624
    goto :goto_80

    .line 4626
    :cond_14
    const-wide v2, 0x20b00000004L

    invoke-virtual {p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 4627
    .local v2, "jsToken":J
    const-wide v4, 0x10b00000001L

    invoke-virtual {v1, p2, v4, v5}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4628
    const-wide v4, 0x10500000002L

    .line 4629
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v6

    .line 4628
    invoke-virtual {p2, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4630
    const-wide v4, 0x10e00000003L

    .line 4632
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v6

    .line 4630
    invoke-virtual {p2, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4633
    const-wide v4, 0x10800000004L

    iget-object v6, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    .line 4634
    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 4633
    invoke-virtual {p2, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4635
    const-wide v4, 0x10800000005L

    const/high16 v6, 0x1000000

    .line 4636
    invoke-virtual {v1, v6}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v6

    .line 4635
    invoke-virtual {p2, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4637
    const-wide v4, 0x10300000006L

    .line 4638
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v6

    .line 4637
    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4639
    const-wide v4, 0x10800000007L

    .line 4641
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v6

    .line 4639
    invoke-virtual {p2, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4642
    const-wide v4, 0x10800000008L

    .line 4644
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isExpeditedQuotaApproved()Z

    move-result v6

    .line 4642
    invoke-virtual {p2, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4645
    invoke-virtual {p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4621
    .end local v1    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "jsToken":J
    :goto_80
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 4647
    .end local v0    # "j":I
    :cond_84
    return-void
.end method

.method synthetic lambda$handleNewChargingStateLocked$1$com-android-server-job-controllers-QuotaController()V
    .registers 3

    .line 1650
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1651
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateAllConstraintsLocked()V

    .line 1652
    monitor-exit v0

    .line 1653
    return-void

    .line 1652
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method synthetic lambda$new$2$com-android-server-job-controllers-QuotaController(Ljava/util/List;)V
    .registers 3
    .param p1, "events"    # Ljava/util/List;

    .line 2610
    if-eqz p1, :cond_7

    .line 2612
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimedEventTooOld:Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;

    invoke-interface {p1, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 2614
    :cond_7
    return-void
.end method

.method synthetic lambda$onConstantsUpdatedLocked$3$com-android-server-job-controllers-QuotaController()V
    .registers 3

    .line 2932
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2933
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController;->invalidateAllExecutionStatsLocked()V

    .line 2934
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateAllConstraintsLocked()V

    .line 2935
    monitor-exit v0

    .line 2936
    return-void

    .line 2935
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method maybeScheduleCleanupAlarmLocked()V
    .registers 16

    .line 1577
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1578
    .local v0, "nowElapsed":J
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    cmp-long v2, v2, v0

    const-string v3, "JobScheduler.Quota"

    if-lez v2, :cond_3f

    .line 1581
    sget-boolean v2, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v2, :cond_3e

    .line 1582
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not scheduling cleanup since there\'s already one at "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "ms)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    :cond_3e
    return-void

    .line 1588
    :cond_3f
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;->reset()V

    .line 1589
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    invoke-virtual {v2, v4}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 1590
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    invoke-virtual {v2, v4}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 1591
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    iget-wide v4, v2, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;->earliestEndElapsed:J

    .line 1592
    .local v4, "earliestEndElapsed":J
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v2, v4, v6

    if-nez v2, :cond_69

    .line 1595
    sget-boolean v2, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v2, :cond_68

    .line 1596
    const-string v2, "Didn\'t find a time to schedule cleanup"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    :cond_68
    return-void

    .line 1602
    :cond_69
    const-wide/32 v6, 0x5265c00

    add-long/2addr v6, v4

    .line 1603
    .local v6, "nextCleanupElapsed":J
    iget-wide v8, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    sub-long v10, v6, v8

    const-wide/32 v12, 0x927c0

    cmp-long v2, v10, v12

    if-gtz v2, :cond_7a

    .line 1606
    add-long v6, v8, v12

    .line 1608
    :cond_7a
    iput-wide v6, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    .line 1609
    iget-object v8, p0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v9, 0x3

    iget-object v13, p0, Lcom/android/server/job/controllers/QuotaController;->mSessionCleanupAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v14, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    const-string v12, "*job.cleanup*"

    move-wide v10, v6

    invoke-virtual/range {v8 .. v14}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1611
    sget-boolean v2, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v2, :cond_a5

    .line 1612
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Scheduled next cleanup for "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v8, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    :cond_a5
    return-void
.end method

.method maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V
    .registers 33
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "standbyBucket"    # I

    .line 1810
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_c

    .line 1811
    return-void

    .line 1814
    :cond_c
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 1815
    .local v4, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    const-string/jumbo v5, "maybeScheduleStartAlarmLocked called for "

    const-string v6, "JobScheduler.Quota"

    if-eqz v4, :cond_1eb

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-nez v7, :cond_27

    move v11, v1

    move-object v12, v2

    move-object/from16 v16, v4

    goto/16 :goto_1ef

    .line 1822
    :cond_27
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v7

    .line 1823
    .local v7, "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    invoke-direct {v0, v7, v3}, Lcom/android/server/job/controllers/QuotaController;->isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z

    move-result v8

    .line 1824
    .local v8, "isUnderJobCountQuota":Z
    invoke-direct {v0, v7, v3}, Lcom/android/server/job/controllers/QuotaController;->isUnderSessionCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;I)Z

    move-result v9

    .line 1826
    .local v9, "isUnderTimingSessionCountQuota":Z
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/job/controllers/QuotaController;->getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J

    move-result-wide v10

    .line 1828
    .local v10, "remainingEJQuota":J
    iget-wide v12, v7, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    iget-object v14, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:[J

    aget-wide v14, v14, v3

    cmp-long v12, v12, v14

    if-gez v12, :cond_51

    iget-wide v13, v7, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    move-object/from16 v16, v4

    .end local v4    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v16, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-wide v3, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    cmp-long v3, v13, v3

    if-gez v3, :cond_53

    if-eqz v8, :cond_53

    if-eqz v9, :cond_53

    const/4 v3, 0x1

    goto :goto_54

    .end local v16    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v4    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_51
    move-object/from16 v16, v4

    .end local v4    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v16    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_53
    const/4 v3, 0x0

    .line 1833
    .local v3, "inRegularQuota":Z
    :goto_54
    const-wide/16 v13, 0x0

    if-eqz v3, :cond_a3

    cmp-long v4, v10, v13

    if-lez v4, :cond_a3

    .line 1835
    sget-boolean v4, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v4, :cond_8d

    .line 1836
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1837
    invoke-static/range {p1 .. p2}, Lcom/android/server/job/controllers/Package;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " even though it already has "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1839
    invoke-direct/range {p0 .. p3}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(ILjava/lang/String;I)J

    move-result-wide v12

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms in its quota."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1836
    invoke-static {v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    :cond_8d
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    new-instance v5, Lcom/android/server/job/controllers/Package;

    invoke-direct {v5, v1, v2}, Lcom/android/server/job/controllers/Package;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 1843
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v1, v6, v2}, Lcom/android/server/job/controllers/QuotaController$QcHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1844
    return-void

    .line 1847
    :cond_a3
    const-wide v4, 0x7fffffffffffffffL

    .line 1848
    .local v4, "inRegularQuotaTimeElapsed":J
    const-wide v17, 0x7fffffffffffffffL

    .line 1849
    .local v17, "inEJQuotaTimeElapsed":J
    if-nez v3, :cond_ce

    .line 1851
    iget-wide v12, v7, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 1852
    .local v12, "inQuotaTimeElapsed":J
    if-nez v8, :cond_bf

    iget v14, v7, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget v15, v7, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-ge v14, v15, :cond_bf

    .line 1854
    iget-wide v14, v7, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    .line 1855
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 1857
    :cond_bf
    if-nez v9, :cond_cd

    iget v14, v7, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    iget v15, v7, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-ge v14, v15, :cond_cd

    .line 1860
    iget-wide v14, v7, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    .line 1861
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 1863
    :cond_cd
    move-wide v4, v12

    .line 1865
    .end local v12    # "inQuotaTimeElapsed":J
    :cond_ce
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-gtz v12, :cond_180

    .line 1866
    nop

    .line 1867
    invoke-direct/range {p0 .. p3}, Lcom/android/server/job/controllers/QuotaController;->getEJLimitMsLocked(ILjava/lang/String;I)J

    move-result-wide v12

    iget-wide v14, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    sub-long/2addr v12, v14

    .line 1868
    .local v12, "limitMs":J
    const-wide/16 v14, 0x0

    .line 1869
    .local v14, "sumMs":J
    move/from16 v19, v8

    .end local v8    # "isUnderJobCountQuota":Z
    .local v19, "isUnderJobCountQuota":Z
    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v8, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 1870
    .local v8, "ejTimer":Lcom/android/server/job/controllers/QuotaController$Timer;
    if-eqz v8, :cond_110

    invoke-virtual {v8}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v20

    if-eqz v20, :cond_110

    .line 1871
    sget-object v20, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    move/from16 v22, v9

    move-wide/from16 v23, v10

    .end local v9    # "isUnderTimingSessionCountQuota":Z
    .end local v10    # "remainingEJQuota":J
    .local v22, "isUnderTimingSessionCountQuota":Z
    .local v23, "remainingEJQuota":J
    invoke-virtual/range {v20 .. v20}, Ljava/time/Clock;->millis()J

    move-result-wide v9

    .line 1872
    .local v9, "nowElapsed":J
    invoke-virtual {v8, v9, v10}, Lcom/android/server/job/controllers/QuotaController$Timer;->getCurrentDuration(J)J

    move-result-wide v25

    add-long v14, v14, v25

    .line 1873
    cmp-long v11, v14, v12

    if-ltz v11, :cond_10d

    .line 1874
    sub-long v25, v9, v12

    move-wide/from16 v27, v9

    .end local v9    # "nowElapsed":J
    .local v27, "nowElapsed":J
    iget-wide v9, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    add-long v17, v25, v9

    goto :goto_114

    .line 1873
    .end local v27    # "nowElapsed":J
    .restart local v9    # "nowElapsed":J
    :cond_10d
    move-wide/from16 v27, v9

    .end local v9    # "nowElapsed":J
    .restart local v27    # "nowElapsed":J
    goto :goto_114

    .line 1870
    .end local v22    # "isUnderTimingSessionCountQuota":Z
    .end local v23    # "remainingEJQuota":J
    .end local v27    # "nowElapsed":J
    .local v9, "isUnderTimingSessionCountQuota":Z
    .restart local v10    # "remainingEJQuota":J
    :cond_110
    move/from16 v22, v9

    move-wide/from16 v23, v10

    .line 1877
    .end local v9    # "isUnderTimingSessionCountQuota":Z
    .end local v10    # "remainingEJQuota":J
    .restart local v22    # "isUnderTimingSessionCountQuota":Z
    .restart local v23    # "remainingEJQuota":J
    :goto_114
    iget-object v9, v0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v9, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1878
    .local v9, "timingSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    if-eqz v9, :cond_156

    .line 1879
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    .local v10, "i":I
    :goto_124
    if-ltz v10, :cond_151

    .line 1880
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 1881
    .local v11, "ts":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    iget-wide v1, v11, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    move-wide/from16 v20, v4

    .end local v4    # "inRegularQuotaTimeElapsed":J
    .local v20, "inRegularQuotaTimeElapsed":J
    iget-wide v4, v11, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v1, v4

    .line 1882
    .local v1, "durationMs":J
    add-long/2addr v14, v1

    .line 1883
    cmp-long v4, v14, v12

    if-ltz v4, :cond_146

    .line 1884
    iget-wide v4, v11, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long v25, v14, v12

    add-long v4, v4, v25

    move-wide/from16 v25, v1

    .end local v1    # "durationMs":J
    .local v25, "durationMs":J
    iget-wide v1, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    add-long/2addr v4, v1

    .line 1886
    .end local v17    # "inEJQuotaTimeElapsed":J
    .local v4, "inEJQuotaTimeElapsed":J
    move-wide/from16 v17, v4

    goto :goto_153

    .line 1883
    .end local v4    # "inEJQuotaTimeElapsed":J
    .end local v25    # "durationMs":J
    .restart local v1    # "durationMs":J
    .restart local v17    # "inEJQuotaTimeElapsed":J
    :cond_146
    move-wide/from16 v25, v1

    .line 1879
    .end local v1    # "durationMs":J
    .end local v11    # "ts":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    add-int/lit8 v10, v10, -0x1

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v4, v20

    goto :goto_124

    .end local v20    # "inRegularQuotaTimeElapsed":J
    .local v4, "inRegularQuotaTimeElapsed":J
    :cond_151
    move-wide/from16 v20, v4

    .end local v4    # "inRegularQuotaTimeElapsed":J
    .end local v10    # "i":I
    .restart local v20    # "inRegularQuotaTimeElapsed":J
    :goto_153
    move-wide/from16 v1, v17

    goto :goto_18a

    .line 1889
    .end local v20    # "inRegularQuotaTimeElapsed":J
    .restart local v4    # "inRegularQuotaTimeElapsed":J
    :cond_156
    move-wide/from16 v20, v4

    .end local v4    # "inRegularQuotaTimeElapsed":J
    .restart local v20    # "inRegularQuotaTimeElapsed":J
    if-eqz v8, :cond_160

    invoke-virtual {v8}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v1

    if-nez v1, :cond_17d

    :cond_160
    if-eqz v3, :cond_17d

    .line 1893
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p2}, Lcom/android/server/job/controllers/Package;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has 0 EJ quota without running anything"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    return-void

    .line 1898
    .end local v8    # "ejTimer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .end local v9    # "timingSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    .end local v12    # "limitMs":J
    .end local v14    # "sumMs":J
    :cond_17d
    move-wide/from16 v1, v17

    goto :goto_18a

    .line 1865
    .end local v19    # "isUnderJobCountQuota":Z
    .end local v20    # "inRegularQuotaTimeElapsed":J
    .end local v22    # "isUnderTimingSessionCountQuota":Z
    .end local v23    # "remainingEJQuota":J
    .restart local v4    # "inRegularQuotaTimeElapsed":J
    .local v8, "isUnderJobCountQuota":Z
    .local v9, "isUnderTimingSessionCountQuota":Z
    .local v10, "remainingEJQuota":J
    :cond_180
    move-wide/from16 v20, v4

    move/from16 v19, v8

    move/from16 v22, v9

    move-wide/from16 v23, v10

    .end local v4    # "inRegularQuotaTimeElapsed":J
    .end local v8    # "isUnderJobCountQuota":Z
    .end local v9    # "isUnderTimingSessionCountQuota":Z
    .end local v10    # "remainingEJQuota":J
    .restart local v19    # "isUnderJobCountQuota":Z
    .restart local v20    # "inRegularQuotaTimeElapsed":J
    .restart local v22    # "isUnderTimingSessionCountQuota":Z
    .restart local v23    # "remainingEJQuota":J
    move-wide/from16 v1, v17

    .line 1898
    .end local v17    # "inEJQuotaTimeElapsed":J
    .local v1, "inEJQuotaTimeElapsed":J
    :goto_18a
    move-wide/from16 v4, v20

    .end local v20    # "inRegularQuotaTimeElapsed":J
    .restart local v4    # "inRegularQuotaTimeElapsed":J
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 1900
    .local v8, "inQuotaTimeElapsed":J
    sget-object v10, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v10}, Ljava/time/Clock;->millis()J

    move-result-wide v10

    cmp-long v10, v8, v10

    if-gtz v10, :cond_1dc

    .line 1901
    sget-object v10, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v10}, Ljava/time/Clock;->millis()J

    move-result-wide v10

    .line 1902
    .local v10, "nowElapsed":J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "In quota time is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sub-long v13, v10, v8

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "ms old. Now="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", inQuotaTime="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    const-wide/32 v12, 0x493e0

    add-long v8, v10, v12

    .line 1907
    .end local v10    # "nowElapsed":J
    :cond_1dc
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    new-instance v10, Lcom/android/server/job/controllers/Package;

    move/from16 v11, p1

    move-object/from16 v12, p2

    invoke-direct {v10, v11, v12}, Lcom/android/server/job/controllers/Package;-><init>(ILjava/lang/String;)V

    invoke-virtual {v6, v10, v8, v9}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;->addAlarm(Ljava/lang/Object;J)V

    .line 1908
    return-void

    .line 1815
    .end local v1    # "inEJQuotaTimeElapsed":J
    .end local v3    # "inRegularQuota":Z
    .end local v7    # "stats":Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .end local v8    # "inQuotaTimeElapsed":J
    .end local v16    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v19    # "isUnderJobCountQuota":Z
    .end local v22    # "isUnderTimingSessionCountQuota":Z
    .end local v23    # "remainingEJQuota":J
    .local v4, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_1eb
    move v11, v1

    move-object v12, v2

    move-object/from16 v16, v4

    .line 1816
    .end local v4    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v16    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :goto_1ef
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1817
    invoke-static/range {p1 .. p2}, Lcom/android/server/job/controllers/Package;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " that has no jobs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1816
    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    new-instance v2, Lcom/android/server/job/controllers/Package;

    invoke-direct {v2, v11, v12}, Lcom/android/server/job/controllers/Package;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 1819
    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 20
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

    .line 603
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v8

    .line 604
    .local v8, "nowElapsed":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v10

    .line 605
    .local v10, "userId":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v11

    .line 606
    .local v11, "pkgName":Ljava/lang/String;
    iget-object v0, v6, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v10, v11}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 607
    .local v0, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-nez v0, :cond_29

    .line 608
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    .line 609
    iget-object v1, v6, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v10, v11, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    move-object v12, v0

    goto :goto_2a

    .line 607
    :cond_29
    move-object v12, v0

    .line 611
    .end local v0    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v12, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :goto_2a
    invoke-virtual {v12, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 612
    const/16 v0, 0x40

    invoke-virtual {v7, v0}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 613
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v13

    .line 614
    .local v13, "isWithinQuota":Z
    nop

    .line 615
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v0

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v0, :cond_47

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/job/controllers/QuotaController;->isWithinEJQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_47

    move v0, v14

    goto :goto_48

    :cond_47
    move v0, v15

    :goto_48
    move v5, v0

    .line 616
    .local v5, "isWithinEJQuota":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v8

    move v4, v13

    move/from16 v16, v5

    .end local v5    # "isWithinEJQuota":Z
    .local v16, "isWithinEJQuota":Z
    invoke-direct/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZZ)Z

    .line 618
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 619
    move/from16 v0, v16

    .end local v16    # "isWithinEJQuota":Z
    .local v0, "isWithinEJQuota":Z
    invoke-direct {v6, v7, v8, v9, v0}, Lcom/android/server/job/controllers/QuotaController;->setExpeditedQuotaApproved(Lcom/android/server/job/controllers/JobStatus;JZ)Z

    .line 620
    if-nez v0, :cond_62

    goto :goto_63

    :cond_62
    move v14, v15

    :goto_63
    move v1, v14

    .local v1, "outOfEJQuota":Z
    goto :goto_68

    .line 622
    .end local v0    # "isWithinEJQuota":Z
    .end local v1    # "outOfEJQuota":Z
    .restart local v16    # "isWithinEJQuota":Z
    :cond_65
    move/from16 v0, v16

    .end local v16    # "isWithinEJQuota":Z
    .restart local v0    # "isWithinEJQuota":Z
    const/4 v1, 0x0

    .line 624
    .restart local v1    # "outOfEJQuota":Z
    :goto_68
    if-eqz v13, :cond_6c

    if-eqz v1, :cond_73

    .line 625
    :cond_6c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v2

    invoke-virtual {v6, v10, v11, v2}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V

    .line 627
    :cond_73
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 9
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "forUpdate"    # Z

    .line 678
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 679
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 680
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    .line 681
    .local v0, "userId":I
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 682
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 683
    .local v2, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v2, :cond_33

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-nez v3, :cond_33

    .line 684
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    new-instance v4, Lcom/android/server/job/controllers/Package;

    invoke-direct {v4, v0, v1}, Lcom/android/server/job/controllers/Package;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 687
    .end local v0    # "userId":I
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_33
    return-void
.end method

.method public onAppRemovedLocked(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 691
    if-nez p1, :cond_a

    .line 692
    const-string v0, "JobScheduler.Quota"

    const-string v1, "Told app removed but given null package name."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    return-void

    .line 695
    :cond_a
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/QuotaController;->clearAppStatsLocked(ILjava/lang/String;)V

    .line 696
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, p2}, Lcom/android/server/job/JobSchedulerService;->getPackagesForUidLocked(I)Landroid/util/ArraySet;

    move-result-object v0

    if-nez v0, :cond_32

    .line 699
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 700
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 701
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseLongArray;->delete(I)V

    .line 702
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 703
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseLongArray;->delete(I)V

    .line 705
    :cond_32
    return-void
.end method

.method public onBatteryStateChangedLocked()V
    .registers 1

    .line 728
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController;->handleNewChargingStateLocked()V

    .line 729
    return-void
.end method

.method public onConstantsUpdatedLocked()V
    .registers 3

    .line 2928
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->-$$Nest$fgetmShouldReevaluateConstraints(Lcom/android/server/job/controllers/QuotaController$QcConstants;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController;->mIsEnabled:Z

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->USE_TARE_POLICY:Z

    if-ne v0, v1, :cond_24

    .line 2929
    :cond_10
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->USE_TARE_POLICY:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController;->mIsEnabled:Z

    .line 2931
    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2938
    :cond_24
    return-void
.end method

.method public onSystemServicesReady()V
    .registers 3

    .line 595
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 596
    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->cacheInstallerPackagesLocked(I)V

    .line 597
    monitor-exit v0

    .line 598
    return-void

    .line 597
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public onUserAddedLocked(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 709
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->cacheInstallerPackagesLocked(I)V

    .line 710
    return-void
.end method

.method public onUserRemovedLocked(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 714
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 715
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 716
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 717
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 718
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 719
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;->removeAlarmsForUserId(I)V

    .line 720
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 721
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 722
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->remove(I)V

    .line 723
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 724
    return-void
.end method

.method public prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 14
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 632
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    const-string v1, "JobScheduler.Quota"

    if-eqz v0, :cond_20

    .line 633
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prepping for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_20
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    .line 637
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 638
    if-eqz v0, :cond_48

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " is top started job"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_48
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 643
    return-void

    .line 646
    :cond_4e
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    .line 647
    .local v0, "userId":I
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    .line 649
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v3

    if-eqz v3, :cond_5f

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    goto :goto_61

    :cond_5f
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    :goto_61
    move-object v9, v3

    .line 650
    .local v9, "timerMap":Landroid/util/SparseArrayMap;, "Landroid/util/SparseArrayMap<Ljava/lang/String;Lcom/android/server/job/controllers/QuotaController$Timer;>;"
    invoke-virtual {v9, v0, v1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 651
    .local v10, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    if-nez v10, :cond_7f

    .line 652
    new-instance v11, Lcom/android/server/job/controllers/QuotaController$Timer;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v3

    xor-int/lit8 v8, v3, 0x1

    move-object v3, v11

    move-object v4, p0

    move v5, v2

    move v6, v0

    move-object v7, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/job/controllers/QuotaController$Timer;-><init>(Lcom/android/server/job/controllers/QuotaController;IILjava/lang/String;Z)V

    move-object v10, v11

    .line 653
    invoke-virtual {v9, v0, v1, v10}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 655
    :cond_7f
    invoke-virtual {v10, p1}, Lcom/android/server/job/controllers/QuotaController$Timer;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 656
    return-void
.end method

.method public prepareForUpdatedConstantsLocked()V
    .registers 3

    .line 2914
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->-$$Nest$fputmShouldReevaluateConstraints(Lcom/android/server/job/controllers/QuotaController$QcConstants;Z)V

    .line 2915
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->-$$Nest$fputmRateLimitingConstantsUpdated(Lcom/android/server/job/controllers/QuotaController$QcConstants;Z)V

    .line 2916
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->-$$Nest$fputmExecutionPeriodConstantsUpdated(Lcom/android/server/job/controllers/QuotaController$QcConstants;Z)V

    .line 2917
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->-$$Nest$fputmEJLimitConstantsUpdated(Lcom/android/server/job/controllers/QuotaController$QcConstants;Z)V

    .line 2918
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->-$$Nest$fputmQuotaBumpConstantsUpdated(Lcom/android/server/job/controllers/QuotaController$QcConstants;Z)V

    .line 2919
    return-void
.end method

.method public processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .registers 4
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;
    .param p2, "key"    # Ljava/lang/String;

    .line 2923
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V

    .line 2924
    return-void
.end method

.method saveTimingSession(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;Z)V
    .registers 12
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "session"    # Lcom/android/server/job/controllers/QuotaController$TimingSession;
    .param p4, "isExpedited"    # Z

    .line 1495
    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/job/controllers/QuotaController;->saveTimingSession(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;ZJ)V

    .line 1496
    return-void
.end method

.method public unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 6
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 661
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 662
    .local v0, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    if-eqz v0, :cond_15

    .line 663
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController$Timer;->stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 665
    :cond_15
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 666
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 667
    if-eqz v0, :cond_31

    .line 668
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController$Timer;->stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 671
    :cond_31
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 672
    return-void
.end method

.method updateExecutionStatsLocked(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)V
    .registers 38
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "stats"    # Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 1262
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    .line 1263
    const/4 v6, 0x0

    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 1264
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 1265
    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    .line 1266
    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    .line 1267
    iget v7, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-eqz v7, :cond_21

    iget v7, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-nez v7, :cond_1e

    goto :goto_21

    .line 1271
    :cond_1e
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    goto :goto_28

    .line 1269
    :cond_21
    :goto_21
    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 1273
    :goto_28
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->allowedTimePerPeriodMs:J

    iget-wide v7, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    sub-long/2addr v4, v7

    .line 1275
    .local v4, "allowedTimeIntoQuotaMs":J
    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v7, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 1276
    .local v7, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    sget-object v8, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v8}, Ljava/time/Clock;->millis()J

    move-result-wide v8

    .line 1277
    .local v8, "nowElapsed":J
    const-wide/32 v10, 0x5265c00

    add-long v12, v8, v10

    iput-wide v12, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 1278
    if-eqz v7, :cond_9a

    invoke-virtual {v7}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v12

    if-eqz v12, :cond_9a

    .line 1281
    nop

    .line 1282
    invoke-virtual {v7, v8, v9}, Lcom/android/server/job/controllers/QuotaController$Timer;->getCurrentDuration(J)J

    move-result-wide v12

    iput-wide v12, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iput-wide v12, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    .line 1283
    invoke-virtual {v7}, Lcom/android/server/job/controllers/QuotaController$Timer;->getBgJobCount()I

    move-result v12

    iput v12, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    iput v12, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 1286
    iput-wide v8, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 1287
    iget-wide v12, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    cmp-long v12, v12, v4

    if-ltz v12, :cond_73

    .line 1288
    iget-wide v12, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    sub-long v14, v8, v4

    move-object/from16 v16, v7

    .end local v7    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .local v16, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    iget-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v14, v6

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    goto :goto_75

    .line 1287
    .end local v16    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .restart local v7    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    :cond_73
    move-object/from16 v16, v7

    .line 1291
    .end local v7    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .restart local v16    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    :goto_75
    iget-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v12, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    cmp-long v6, v6, v12

    if-ltz v6, :cond_88

    .line 1292
    sub-long v6, v8, v12

    add-long/2addr v6, v10

    .line 1293
    .local v6, "inQuotaTime":J
    iget-wide v12, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iput-wide v12, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 1295
    .end local v6    # "inQuotaTime":J
    :cond_88
    iget v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget v7, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-lt v6, v7, :cond_9c

    .line 1296
    iget-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v6, v8

    .line 1297
    .restart local v6    # "inQuotaTime":J
    iget-wide v12, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iput-wide v12, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    goto :goto_9c

    .line 1278
    .end local v6    # "inQuotaTime":J
    .end local v16    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .restart local v7    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    :cond_9a
    move-object/from16 v16, v7

    .line 1301
    .end local v7    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    .restart local v16    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    :cond_9c
    :goto_9c
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1302
    .local v6, "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    if-eqz v6, :cond_276

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_b4

    move-wide/from16 v25, v4

    move-object/from16 v17, v6

    move-wide/from16 v18, v8

    goto/16 :goto_27c

    .line 1306
    :cond_b4
    iget-wide v12, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    sub-long v12, v8, v12

    .line 1307
    .local v12, "startWindowElapsed":J
    sub-long v14, v8, v10

    .line 1308
    .local v14, "startMaxElapsed":J
    const/4 v7, 0x0

    .line 1309
    .local v7, "sessionCountInWindow":I
    const/16 v17, 0x0

    .line 1310
    .local v17, "numQuotaBumps":I
    iget-wide v10, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpWindowSizeMs:J

    sub-long v10, v8, v10

    .line 1313
    .local v10, "quotaBumpWindowStartElapsed":J
    const-wide v18, 0x7fffffffffffffffL

    .line 1316
    .local v18, "emptyTimeMs":J
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    .line 1318
    .local v20, "loopStart":I
    move/from16 v22, v20

    move/from16 v1, v17

    move/from16 v2, v22

    move-wide/from16 v32, v8

    move v9, v7

    move-wide/from16 v7, v18

    move-wide/from16 v18, v32

    .end local v8    # "nowElapsed":J
    .end local v17    # "numQuotaBumps":I
    .local v1, "numQuotaBumps":I
    .local v2, "i":I
    .local v7, "emptyTimeMs":J
    .local v9, "sessionCountInWindow":I
    .local v18, "nowElapsed":J
    :goto_db
    if-ltz v2, :cond_131

    .line 1319
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v22, v9

    .end local v9    # "sessionCountInWindow":I
    .local v22, "sessionCountInWindow":I
    move-object/from16 v9, v17

    check-cast v9, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    .line 1321
    .local v9, "event":Lcom/android/server/job/controllers/QuotaController$TimedEvent;
    invoke-interface {v9}, Lcom/android/server/job/controllers/QuotaController$TimedEvent;->getEndTimeElapsed()J

    move-result-wide v23

    cmp-long v17, v23, v10

    if-ltz v17, :cond_12c

    move-wide/from16 v23, v14

    .end local v14    # "startMaxElapsed":J
    .local v23, "startMaxElapsed":J
    iget v14, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpLimit:I

    if-lt v1, v14, :cond_f8

    .line 1323
    move-wide/from16 v25, v4

    goto :goto_137

    .line 1326
    :cond_f8
    instance-of v14, v9, Lcom/android/server/job/controllers/QuotaController$QuotaBump;

    if-eqz v14, :cond_121

    .line 1327
    iget-wide v14, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->allowedTimePerPeriodMs:J

    move-wide/from16 v25, v4

    .end local v4    # "allowedTimeIntoQuotaMs":J
    .local v25, "allowedTimeIntoQuotaMs":J
    iget-wide v4, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalDurationMs:J

    add-long/2addr v14, v4

    iput-wide v14, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->allowedTimePerPeriodMs:J

    .line 1328
    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    iget v5, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalJobCount:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    .line 1329
    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    iget v5, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBumpAdditionalSessionCount:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    .line 1330
    nop

    .line 1331
    invoke-interface {v9}, Lcom/android/server/job/controllers/QuotaController$TimedEvent;->getEndTimeElapsed()J

    move-result-wide v4

    sub-long/2addr v4, v10

    .line 1330
    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 1332
    .end local v7    # "emptyTimeMs":J
    .local v4, "emptyTimeMs":J
    add-int/lit8 v1, v1, 0x1

    move-wide v7, v4

    goto :goto_123

    .line 1326
    .end local v25    # "allowedTimeIntoQuotaMs":J
    .local v4, "allowedTimeIntoQuotaMs":J
    .restart local v7    # "emptyTimeMs":J
    :cond_121
    move-wide/from16 v25, v4

    .line 1318
    .end local v4    # "allowedTimeIntoQuotaMs":J
    .end local v9    # "event":Lcom/android/server/job/controllers/QuotaController$TimedEvent;
    .restart local v25    # "allowedTimeIntoQuotaMs":J
    :goto_123
    add-int/lit8 v2, v2, -0x1

    move/from16 v9, v22

    move-wide/from16 v14, v23

    move-wide/from16 v4, v25

    goto :goto_db

    .line 1321
    .end local v23    # "startMaxElapsed":J
    .end local v25    # "allowedTimeIntoQuotaMs":J
    .restart local v4    # "allowedTimeIntoQuotaMs":J
    .restart local v9    # "event":Lcom/android/server/job/controllers/QuotaController$TimedEvent;
    .restart local v14    # "startMaxElapsed":J
    :cond_12c
    move-wide/from16 v25, v4

    move-wide/from16 v23, v14

    .end local v4    # "allowedTimeIntoQuotaMs":J
    .end local v14    # "startMaxElapsed":J
    .restart local v23    # "startMaxElapsed":J
    .restart local v25    # "allowedTimeIntoQuotaMs":J
    goto :goto_137

    .line 1318
    .end local v22    # "sessionCountInWindow":I
    .end local v23    # "startMaxElapsed":J
    .end local v25    # "allowedTimeIntoQuotaMs":J
    .restart local v4    # "allowedTimeIntoQuotaMs":J
    .local v9, "sessionCountInWindow":I
    .restart local v14    # "startMaxElapsed":J
    :cond_131
    move-wide/from16 v25, v4

    move/from16 v22, v9

    move-wide/from16 v23, v14

    .line 1335
    .end local v2    # "i":I
    .end local v4    # "allowedTimeIntoQuotaMs":J
    .end local v9    # "sessionCountInWindow":I
    .end local v14    # "startMaxElapsed":J
    .restart local v22    # "sessionCountInWindow":I
    .restart local v23    # "startMaxElapsed":J
    .restart local v25    # "allowedTimeIntoQuotaMs":J
    :goto_137
    const/4 v2, 0x0

    .line 1336
    .local v2, "lastSeenTimingSession":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    move/from16 v4, v20

    .local v4, "i":I
    :goto_13a
    if-ltz v4, :cond_269

    .line 1337
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    .line 1339
    .local v5, "event":Lcom/android/server/job/controllers/QuotaController$TimedEvent;
    instance-of v9, v5, Lcom/android/server/job/controllers/QuotaController$QuotaBump;

    if-eqz v9, :cond_14f

    .line 1340
    move-object/from16 v17, v6

    move-wide/from16 v30, v10

    const-wide/32 v10, 0x5265c00

    goto/16 :goto_25e

    .line 1343
    :cond_14f
    move-object v9, v5

    check-cast v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    .line 1346
    .local v9, "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    iget-wide v14, v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v14, v12, v14

    if-gez v14, :cond_1e0

    .line 1348
    iget-wide v14, v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v14, v12, v14

    if-gez v14, :cond_16c

    .line 1349
    iget-wide v14, v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    .line 1350
    .local v14, "start":J
    move-object/from16 v27, v5

    move-object/from16 v17, v6

    .end local v5    # "event":Lcom/android/server/job/controllers/QuotaController$TimedEvent;
    .end local v6    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    .local v17, "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    .local v27, "event":Lcom/android/server/job/controllers/QuotaController$TimedEvent;
    iget-wide v5, v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v5, v12

    .line 1351
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .end local v7    # "emptyTimeMs":J
    .local v5, "emptyTimeMs":J
    goto :goto_173

    .line 1355
    .end local v14    # "start":J
    .end local v17    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    .end local v27    # "event":Lcom/android/server/job/controllers/QuotaController$TimedEvent;
    .local v5, "event":Lcom/android/server/job/controllers/QuotaController$TimedEvent;
    .restart local v6    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    .restart local v7    # "emptyTimeMs":J
    :cond_16c
    move-object/from16 v27, v5

    move-object/from16 v17, v6

    .end local v5    # "event":Lcom/android/server/job/controllers/QuotaController$TimedEvent;
    .end local v6    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    .restart local v17    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    .restart local v27    # "event":Lcom/android/server/job/controllers/QuotaController$TimedEvent;
    move-wide v14, v12

    .line 1356
    .restart local v14    # "start":J
    const-wide/16 v5, 0x0

    .line 1359
    .end local v7    # "emptyTimeMs":J
    .local v5, "emptyTimeMs":J
    :goto_173
    iget-wide v7, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    move-wide/from16 v28, v5

    .end local v5    # "emptyTimeMs":J
    .local v28, "emptyTimeMs":J
    iget-wide v5, v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long/2addr v5, v14

    add-long/2addr v7, v5

    iput-wide v7, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    .line 1360
    iget v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget v6, v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    add-int/2addr v5, v6

    iput v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    .line 1361
    iget-wide v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    cmp-long v5, v5, v25

    if-ltz v5, :cond_19d

    .line 1362
    iget-wide v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v7, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    add-long/2addr v7, v14

    sub-long v7, v7, v25

    move-wide/from16 v30, v10

    .end local v10    # "quotaBumpWindowStartElapsed":J
    .local v30, "quotaBumpWindowStartElapsed":J
    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v7, v10

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    goto :goto_19f

    .line 1361
    .end local v30    # "quotaBumpWindowStartElapsed":J
    .restart local v10    # "quotaBumpWindowStartElapsed":J
    :cond_19d
    move-wide/from16 v30, v10

    .line 1366
    .end local v10    # "quotaBumpWindowStartElapsed":J
    .restart local v30    # "quotaBumpWindowStartElapsed":J
    :goto_19f
    iget v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-lt v5, v6, :cond_1b2

    .line 1367
    iget-wide v5, v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v7, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v5, v7

    .line 1368
    .local v5, "inQuotaTime":J
    iget-wide v7, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 1371
    .end local v5    # "inQuotaTime":J
    :cond_1b2
    if-eqz v2, :cond_1c2

    iget-wide v5, v2, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    iget-wide v7, v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long/2addr v5, v7

    iget-wide v7, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_1c2

    move/from16 v5, v21

    goto :goto_1c3

    :cond_1c2
    const/4 v5, 0x0

    .line 1374
    .local v5, "shouldCoalesce":Z
    :goto_1c3
    if-nez v5, :cond_1dd

    .line 1375
    add-int/lit8 v6, v22, 0x1

    .line 1377
    .end local v22    # "sessionCountInWindow":I
    .local v6, "sessionCountInWindow":I
    iget v7, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-lt v6, v7, :cond_1d8

    .line 1378
    iget-wide v7, v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v7, v10

    .line 1379
    .local v7, "inQuotaTime":J
    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    iput-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 1385
    .end local v5    # "shouldCoalesce":Z
    .end local v7    # "inQuotaTime":J
    .end local v14    # "start":J
    :cond_1d8
    move/from16 v22, v6

    move-wide/from16 v7, v28

    goto :goto_1e6

    .line 1374
    .end local v6    # "sessionCountInWindow":I
    .restart local v5    # "shouldCoalesce":Z
    .restart local v14    # "start":J
    .restart local v22    # "sessionCountInWindow":I
    :cond_1dd
    move-wide/from16 v7, v28

    goto :goto_1e6

    .line 1346
    .end local v14    # "start":J
    .end local v17    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    .end local v27    # "event":Lcom/android/server/job/controllers/QuotaController$TimedEvent;
    .end local v28    # "emptyTimeMs":J
    .end local v30    # "quotaBumpWindowStartElapsed":J
    .local v5, "event":Lcom/android/server/job/controllers/QuotaController$TimedEvent;
    .local v6, "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    .local v7, "emptyTimeMs":J
    .restart local v10    # "quotaBumpWindowStartElapsed":J
    :cond_1e0
    move-object/from16 v27, v5

    move-object/from16 v17, v6

    move-wide/from16 v30, v10

    .line 1385
    .end local v5    # "event":Lcom/android/server/job/controllers/QuotaController$TimedEvent;
    .end local v6    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    .end local v10    # "quotaBumpWindowStartElapsed":J
    .restart local v17    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    .restart local v27    # "event":Lcom/android/server/job/controllers/QuotaController$TimedEvent;
    .restart local v30    # "quotaBumpWindowStartElapsed":J
    :goto_1e6
    iget-wide v5, v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v5, v23, v5

    if-gez v5, :cond_225

    .line 1386
    iget-wide v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v10, v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v14, v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v10, v14

    add-long/2addr v5, v10

    iput-wide v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 1388
    iget v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    iget v6, v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    add-int/2addr v5, v6

    iput v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    .line 1389
    iget-wide v5, v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long v5, v5, v23

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 1390
    .end local v7    # "emptyTimeMs":J
    .local v5, "emptyTimeMs":J
    iget-wide v7, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v10, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    cmp-long v7, v7, v10

    if-ltz v7, :cond_221

    .line 1391
    iget-wide v7, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v10, v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    iget-wide v14, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    add-long/2addr v10, v14

    iget-wide v14, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    sub-long/2addr v10, v14

    const-wide/32 v14, 0x5265c00

    add-long/2addr v10, v14

    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    .line 1411
    :cond_221
    const-wide/32 v10, 0x5265c00

    goto :goto_25c

    .line 1395
    .end local v5    # "emptyTimeMs":J
    .restart local v7    # "emptyTimeMs":J
    :cond_225
    iget-wide v5, v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v5, v23, v5

    if-gez v5, :cond_266

    .line 1398
    iget-wide v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v10, v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long v10, v10, v23

    add-long/2addr v5, v10

    iput-wide v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    .line 1399
    iget v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    iget v6, v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    add-int/2addr v5, v6

    iput v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    .line 1400
    const-wide/16 v5, 0x0

    .line 1401
    .end local v7    # "emptyTimeMs":J
    .restart local v5    # "emptyTimeMs":J
    iget-wide v7, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v10, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    cmp-long v7, v7, v10

    if-ltz v7, :cond_259

    .line 1402
    iget-wide v7, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    add-long v14, v23, v10

    iget-wide v10, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    sub-long/2addr v14, v10

    const-wide/32 v10, 0x5265c00

    add-long/2addr v14, v10

    invoke-static {v7, v8, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    goto :goto_25c

    .line 1401
    :cond_259
    const-wide/32 v10, 0x5265c00

    .line 1411
    :goto_25c
    move-object v2, v9

    move-wide v7, v5

    .line 1336
    .end local v5    # "emptyTimeMs":J
    .end local v9    # "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    .end local v27    # "event":Lcom/android/server/job/controllers/QuotaController$TimedEvent;
    .restart local v7    # "emptyTimeMs":J
    :goto_25e
    add-int/lit8 v4, v4, -0x1

    move-object/from16 v6, v17

    move-wide/from16 v10, v30

    goto/16 :goto_13a

    .line 1395
    .restart local v9    # "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    .restart local v27    # "event":Lcom/android/server/job/controllers/QuotaController$TimedEvent;
    :cond_266
    move/from16 v4, v22

    goto :goto_26f

    .line 1336
    .end local v9    # "session":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    .end local v17    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    .end local v27    # "event":Lcom/android/server/job/controllers/QuotaController$TimedEvent;
    .end local v30    # "quotaBumpWindowStartElapsed":J
    .restart local v6    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    .restart local v10    # "quotaBumpWindowStartElapsed":J
    :cond_269
    move-object/from16 v17, v6

    move-wide/from16 v30, v10

    .end local v6    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    .end local v10    # "quotaBumpWindowStartElapsed":J
    .restart local v17    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    .restart local v30    # "quotaBumpWindowStartElapsed":J
    move/from16 v4, v22

    .line 1413
    .end local v22    # "sessionCountInWindow":I
    .local v4, "sessionCountInWindow":I
    :goto_26f
    add-long v5, v18, v7

    iput-wide v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    .line 1414
    iput v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    .line 1415
    return-void

    .line 1302
    .end local v1    # "numQuotaBumps":I
    .end local v2    # "lastSeenTimingSession":Lcom/android/server/job/controllers/QuotaController$TimingSession;
    .end local v7    # "emptyTimeMs":J
    .end local v12    # "startWindowElapsed":J
    .end local v17    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    .end local v18    # "nowElapsed":J
    .end local v20    # "loopStart":I
    .end local v23    # "startMaxElapsed":J
    .end local v25    # "allowedTimeIntoQuotaMs":J
    .end local v30    # "quotaBumpWindowStartElapsed":J
    .local v4, "allowedTimeIntoQuotaMs":J
    .restart local v6    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    .restart local v8    # "nowElapsed":J
    :cond_276
    move-wide/from16 v25, v4

    move-object/from16 v17, v6

    move-wide/from16 v18, v8

    .line 1303
    .end local v4    # "allowedTimeIntoQuotaMs":J
    .end local v6    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    .end local v8    # "nowElapsed":J
    .restart local v17    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/QuotaController$TimedEvent;>;"
    .restart local v18    # "nowElapsed":J
    .restart local v25    # "allowedTimeIntoQuotaMs":J
    :goto_27c
    return-void
.end method

.method updateStandbyBucket(ILjava/lang/String;I)V
    .registers 12
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "bucketIndex"    # I

    .line 2504
    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v0, :cond_2a

    .line 2505
    const-string v0, "JobScheduler.Quota"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Moving pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/android/server/job/controllers/Package;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to bucketIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2508
    :cond_2a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2509
    .local v0, "restrictedChanges":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2510
    :try_start_32
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    .line 2511
    .local v2, "debits":Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    if-eqz v2, :cond_3f

    .line 2512
    invoke-virtual {v2, p3}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->setStandbyBucketLocked(I)V

    .line 2515
    :cond_3f
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 2516
    .local v3, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v3, :cond_b9

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-nez v4, :cond_50

    goto :goto_b9

    .line 2520
    :cond_50
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_56
    if-ltz v4, :cond_76

    .line 2521
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 2524
    .local v5, "js":Lcom/android/server/job/controllers/JobStatus;
    const/4 v6, 0x5

    if-eq p3, v6, :cond_67

    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v7

    if-ne v7, v6, :cond_70

    .line 2525
    :cond_67
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v6

    if-eq p3, v6, :cond_70

    .line 2526
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2528
    :cond_70
    invoke-virtual {v5, p3}, Lcom/android/server/job/controllers/JobStatus;->setStandbyBucket(I)V

    .line 2520
    .end local v5    # "js":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v4, v4, -0x1

    goto :goto_56

    .line 2530
    .end local v4    # "i":I
    :cond_76
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 2531
    .local v4, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    if-eqz v4, :cond_89

    invoke-virtual {v4}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v5

    if-eqz v5, :cond_89

    .line 2532
    invoke-virtual {v4}, Lcom/android/server/job/controllers/QuotaController$Timer;->rescheduleCutoff()V

    .line 2534
    :cond_89
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/QuotaController$Timer;

    move-object v4, v5

    .line 2535
    if-eqz v4, :cond_9d

    invoke-virtual {v4}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 2536
    invoke-virtual {v4}, Lcom/android/server/job/controllers/QuotaController$Timer;->rescheduleCutoff()V

    .line 2538
    :cond_9d
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 2540
    invoke-virtual {v6}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    .line 2539
    invoke-direct {p0, v6, v7, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(JILjava/lang/String;)Landroid/util/ArraySet;

    move-result-object v6

    .line 2538
    invoke-interface {v5, v6}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 2541
    .end local v2    # "debits":Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    .end local v3    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v4    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    monitor-exit v1
    :try_end_ad
    .catchall {:try_start_32 .. :try_end_ad} :catchall_bb

    .line 2542
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b8

    .line 2543
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v1, v0}, Lcom/android/server/job/StateChangedListener;->onRestrictedBucketChanged(Ljava/util/List;)V

    .line 2545
    :cond_b8
    return-void

    .line 2518
    .restart local v2    # "debits":Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    .restart local v3    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_b9
    :goto_b9
    :try_start_b9
    monitor-exit v1

    return-void

    .line 2541
    .end local v2    # "debits":Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    .end local v3    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :catchall_bb
    move-exception v2

    monitor-exit v1
    :try_end_bd
    .catchall {:try_start_b9 .. :try_end_bd} :catchall_bb

    throw v2
.end method
