.class public Lcom/android/server/job/JobSchedulerService;
.super Lcom/android/server/SystemService;
.source "JobSchedulerService.java"

# interfaces
.implements Lcom/android/server/job/StateChangedListener;
.implements Lcom/android/server/job/JobCompletedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;,
        Lcom/android/server/job/JobSchedulerService$CloudProviderChangeListener;,
        Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;,
        Lcom/android/server/job/JobSchedulerService$StandbyTracker;,
        Lcom/android/server/job/JobSchedulerService$LocalService;,
        Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;,
        Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;,
        Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;,
        Lcom/android/server/job/JobSchedulerService$JobHandler;,
        Lcom/android/server/job/JobSchedulerService$Constants;,
        Lcom/android/server/job/JobSchedulerService$ConstantsObserver;,
        Lcom/android/server/job/JobSchedulerService$MySimpleClock;
    }
.end annotation


# static fields
.field public static final ACTIVE_INDEX:I = 0x0

.field public static final DEBUG:Z

.field public static final DEBUG_STANDBY:Z

.field public static final EXEMPTED_INDEX:I = 0x6

.field public static final FREQUENT_INDEX:I = 0x2

.field private static final JOB_IDLE_OPTIMIZE:I = 0x320

.field private static final JOB_POST_BOOT_UPDATE:I = 0x321

.field public static final MAX_ALLOWED_PERIOD_MS:J = 0x757b12c00L

.field private static final MAX_JOBS_PER_APP:I = 0x96

.field static final MSG_CHECK_CHANGED_JOB_LIST:I = 0x8

.field static final MSG_CHECK_INDIVIDUAL_JOB:I = 0x0

.field static final MSG_CHECK_JOB:I = 0x1

.field static final MSG_CHECK_JOB_GREEDY:I = 0x3

.field static final MSG_CHECK_MEDIA_EXEMPTION:I = 0x9

.field static final MSG_STOP_JOB:I = 0x2

.field static final MSG_UID_ACTIVE:I = 0x6

.field static final MSG_UID_GONE:I = 0x5

.field static final MSG_UID_IDLE:I = 0x7

.field static final MSG_UID_STATE_CHANGED:I = 0x4

.field public static final NEVER_INDEX:I = 0x4

.field private static final NUM_COMPLETED_JOB_HISTORY:I = 0x14

.field private static final PERIODIC_JOB_WINDOW_BUFFER:J = 0x1b7740L

.field private static final QUOTA_CATEGORIZER:Lcom/android/server/utils/quota/Categorizer;

.field private static final QUOTA_TRACKER_CATEGORY_SCHEDULE_LOGGED:Lcom/android/server/utils/quota/Category;

.field private static final QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

.field private static final QUOTA_TRACKER_SCHEDULE_LOGGED:Ljava/lang/String; = ".schedulePersisted out-of-quota logged"

.field private static final QUOTA_TRACKER_SCHEDULE_PERSISTED_TAG:Ljava/lang/String; = ".schedulePersisted()"

.field public static final RARE_INDEX:I = 0x3

.field public static final RESTRICTED_INDEX:I = 0x5

.field public static final TAG:Ljava/lang/String; = "JobScheduler"

.field public static final WORKING_INDEX:I = 0x1

.field public static sElapsedRealtimeClock:Ljava/time/Clock;

.field public static sSystemClock:Ljava/time/Clock;

.field public static sUptimeMillisClock:Ljava/time/Clock;


# instance fields
.field mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

.field mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

.field private final mBackingUpUids:Landroid/util/SparseBooleanArray;

.field private final mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mChangedJobList:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mCloudMediaProviderPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

.field final mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

.field final mConstantsObserver:Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

.field final mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/StateController;",
            ">;"
        }
    .end annotation
.end field

.field final mDebuggableApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

.field final mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

.field private final mIsUidActivePredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

.field private final mJobRestrictions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/job/restrictions/JobRestriction;",
            ">;"
        }
    .end annotation
.end field

.field final mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

.field private final mJobTimeUpdater:Ljava/lang/Runnable;

.field final mJobs:Lcom/android/server/job/JobStore;

.field private mLastCompletedJobIndex:I

.field private final mLastCompletedJobTimeElapsed:[J

.field private final mLastCompletedJobs:[Lcom/android/server/job/controllers/JobStatus;

.field mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

.field mLocalPM:Landroid/content/pm/PackageManagerInternal;

.field final mLock:Ljava/lang/Object;

.field private final mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

.field private final mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

.field private final mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

.field private final mQuotaController:Lcom/android/server/job/controllers/QuotaController;

.field private final mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

.field private final mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

.field mReadyToRock:Z

.field mReportedActive:Z

.field private final mRestrictiveControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/RestrictingController;",
            ">;"
        }
    .end annotation
.end field

.field final mStandbyTracker:Lcom/android/server/job/JobSchedulerService$StandbyTracker;

.field mStartedUsers:[I

.field private final mStorageController:Lcom/android/server/job/controllers/StorageController;

.field private final mTareController:Lcom/android/server/job/controllers/TareController;

.field private final mTimeSetReceiver:Landroid/content/BroadcastReceiver;

.field final mUidBiasOverride:Landroid/util/SparseIntArray;

.field private final mUidObserver:Landroid/app/IUidObserver;

.field private final mUidToPackageCache:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$TQG23Ovctx1aIo09D7L3AX_yNAM(Lcom/android/server/job/JobSchedulerService;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isUidActive(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBackingUpUids(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmChangedJobList(Lcom/android/server/job/JobSchedulerService;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCloudMediaProviderPackages(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mCloudMediaProviderPackages:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceIdleJobsController(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmJobTimeUpdater(Lcom/android/server/job/JobSchedulerService;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobTimeUpdater:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingJobQueue(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/PendingJobQueue;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrefetchController(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/PrefetchController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUidToPackageCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseSetArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcancelJob(Lcom/android/server/job/JobSchedulerService;IIII)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/job/JobSchedulerService;->cancelJob(IIII)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcancelJobImplLocked(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelJobsForPackageAndUidLocked(Lcom/android/server/job/JobSchedulerService;Ljava/lang/String;IIILjava/lang/String;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForPackageAndUidLocked(Ljava/lang/String;IIILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelJobsForUserLocked(Lcom/android/server/job/JobSchedulerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUserLocked(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckChangedJobListLocked(Lcom/android/server/job/JobSchedulerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->checkChangedJobListLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetPackageName(Lcom/android/server/job/JobSchedulerService;Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mmaybeQueueReadyJobsForExecutionLocked(Lcom/android/server/job/JobSchedulerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->maybeQueueReadyJobsForExecutionLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnoteJobNonPending(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->noteJobNonPending(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mqueueReadyJobsForExecutionLocked(Lcom/android/server/job/JobSchedulerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->queueReadyJobsForExecutionLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMediaBackupExemptionLocked(Lcom/android/server/job/JobSchedulerService;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/JobSchedulerService;->updateMediaBackupExemptionLocked(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 161
    const-string v0, "JobScheduler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 162
    if-nez v0, :cond_d

    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    const/4 v0, 0x1

    :goto_e
    sput-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    .line 175
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v0

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 209
    new-instance v0, Lcom/android/server/job/JobSchedulerService$1;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v0, v1}, Lcom/android/server/job/JobSchedulerService$1;-><init>(Ljava/time/ZoneId;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    .line 217
    new-instance v0, Lcom/android/server/job/JobSchedulerService$2;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-direct {v0, v1}, Lcom/android/server/job/JobSchedulerService$2;-><init>(Ljava/time/ZoneId;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 279
    new-instance v0, Lcom/android/server/utils/quota/Category;

    const-string v1, ".schedulePersisted()"

    invoke-direct {v0, v1}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

    .line 281
    new-instance v0, Lcom/android/server/utils/quota/Category;

    const-string v1, ".schedulePersisted out-of-quota logged"

    invoke-direct {v0, v1}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_LOGGED:Lcom/android/server/utils/quota/Category;

    .line 283
    new-instance v0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda7;-><init>()V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_CATEGORIZER:Lcom/android/server/utils/quota/Categorizer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .line 1528
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 225
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 231
    new-instance v0, Lcom/android/server/job/JobPackageTracker;

    invoke-direct {v0}, Lcom/android/server/job/JobPackageTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 272
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mCloudMediaProviderPackages:Landroid/util/SparseArray;

    .line 294
    new-instance v0, Lcom/android/server/job/PendingJobQueue;

    invoke-direct {v0}, Lcom/android/server/job/PendingJobQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    .line 296
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    .line 319
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobIndex:I

    .line 320
    const/16 v0, 0x14

    new-array v1, v0, [Lcom/android/server/job/controllers/JobStatus;

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobs:[Lcom/android/server/job/controllers/JobStatus;

    .line 321
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobTimeElapsed:[J

    .line 326
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    .line 331
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    .line 336
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    .line 339
    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    .line 342
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    .line 838
    new-instance v0, Lcom/android/server/job/JobSchedulerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$3;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 997
    new-instance v0, Lcom/android/server/job/JobSchedulerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$4;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidObserver:Landroid/app/IUidObserver;

    .line 1109
    new-instance v0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mIsUidActivePredicate:Ljava/util/function/Predicate;

    .line 1607
    new-instance v0, Lcom/android/server/job/JobSchedulerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$5;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mTimeSetReceiver:Landroid/content/BroadcastReceiver;

    .line 1627
    new-instance v1, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobTimeUpdater:Ljava/lang/Runnable;

    .line 2271
    new-instance v1, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    invoke-direct {v1, p0}, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    .line 2410
    new-instance v1, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    invoke-direct {v1, p0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    .line 1530
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLocalPM:Landroid/content/pm/PackageManagerInternal;

    .line 1531
    const-class v1, Landroid/app/ActivityManagerInternal;

    .line 1532
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 1531
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 1534
    new-instance v1, Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/job/JobSchedulerService$JobHandler;-><init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 1535
    new-instance v1, Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-direct {v1}, Lcom/android/server/job/JobSchedulerService$Constants;-><init>()V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    .line 1536
    new-instance v2, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobSchedulerService$ConstantsObserver-IA;)V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConstantsObserver:Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

    .line 1537
    new-instance v2, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    invoke-direct {v2, p0}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    .line 1539
    new-instance v2, Lcom/android/server/job/JobConcurrencyManager;

    invoke-direct {v2, p0}, Lcom/android/server/job/JobConcurrencyManager;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 1542
    new-instance v2, Lcom/android/server/job/JobSchedulerService$StandbyTracker;

    invoke-direct {v2, p0}, Lcom/android/server/job/JobSchedulerService$StandbyTracker;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mStandbyTracker:Lcom/android/server/job/JobSchedulerService$StandbyTracker;

    .line 1543
    const-class v3, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 1544
    new-instance v3, Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v4, Lcom/android/server/job/JobSchedulerService;->QUOTA_CATEGORIZER:Lcom/android/server/utils/quota/Categorizer;

    invoke-direct {v3, p1, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;-><init>(Landroid/content/Context;Lcom/android/server/utils/quota/Categorizer;)V

    iput-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 1545
    sget-object v4, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

    iget v5, v1, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_COUNT:I

    iget-wide v6, v1, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_WINDOW_MS:J

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    .line 1549
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_LOGGED:Lcom/android/server/utils/quota/Category;

    const/4 v4, 0x1

    const-wide/32 v5, 0xea60

    invoke-virtual {v3, v1, v4, v5, v6}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    .line 1551
    const-class v1, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppStandbyInternal;

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    .line 1552
    invoke-interface {v1, v2}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 1555
    const-class v1, Lcom/android/server/job/JobSchedulerInternal;

    new-instance v2, Lcom/android/server/job/JobSchedulerService$LocalService;

    invoke-direct {v2, p0}, Lcom/android/server/job/JobSchedulerService$LocalService;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/job/JobSchedulerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1558
    invoke-static {p0}, Lcom/android/server/job/JobStore;->initAndGet(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/JobStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 1560
    new-instance v2, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-direct {v2, p0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    .line 1561
    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->startTracking()V

    .line 1564
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 1565
    new-instance v3, Lcom/android/server/job/controllers/ConnectivityController;

    invoke-direct {v3, p0}, Lcom/android/server/job/controllers/ConnectivityController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 1566
    .local v3, "connectivityController":Lcom/android/server/job/controllers/ConnectivityController;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1567
    new-instance v4, Lcom/android/server/job/controllers/TimeController;

    invoke-direct {v4, p0}, Lcom/android/server/job/controllers/TimeController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1568
    new-instance v4, Lcom/android/server/job/controllers/IdleController;

    invoke-direct {v4, p0}, Lcom/android/server/job/controllers/IdleController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 1569
    .local v4, "idleController":Lcom/android/server/job/controllers/IdleController;
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1570
    new-instance v5, Lcom/android/server/job/controllers/BatteryController;

    invoke-direct {v5, p0}, Lcom/android/server/job/controllers/BatteryController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 1571
    .local v5, "batteryController":Lcom/android/server/job/controllers/BatteryController;
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1572
    new-instance v6, Lcom/android/server/job/controllers/StorageController;

    invoke-direct {v6, p0}, Lcom/android/server/job/controllers/StorageController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v6, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    .line 1573
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1574
    new-instance v6, Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-direct {v6, p0}, Lcom/android/server/job/controllers/BackgroundJobsController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 1576
    .local v6, "backgroundJobsController":Lcom/android/server/job/controllers/BackgroundJobsController;
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1577
    new-instance v7, Lcom/android/server/job/controllers/ContentObserverController;

    invoke-direct {v7, p0}, Lcom/android/server/job/controllers/ContentObserverController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1578
    new-instance v7, Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-direct {v7, p0}, Lcom/android/server/job/controllers/DeviceIdleJobsController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v7, p0, Lcom/android/server/job/JobSchedulerService;->mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    .line 1579
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1580
    new-instance v7, Lcom/android/server/job/controllers/PrefetchController;

    invoke-direct {v7, p0}, Lcom/android/server/job/controllers/PrefetchController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v7, p0, Lcom/android/server/job/JobSchedulerService;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    .line 1581
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1582
    new-instance v7, Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {v7, p0, v6, v3}, Lcom/android/server/job/controllers/QuotaController;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/BackgroundJobsController;Lcom/android/server/job/controllers/ConnectivityController;)V

    iput-object v7, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaController:Lcom/android/server/job/controllers/QuotaController;

    .line 1584
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1585
    new-instance v7, Lcom/android/server/job/controllers/ComponentController;

    invoke-direct {v7, p0}, Lcom/android/server/job/controllers/ComponentController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1586
    new-instance v7, Lcom/android/server/job/controllers/TareController;

    invoke-direct {v7, p0, v6, v3}, Lcom/android/server/job/controllers/TareController;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/BackgroundJobsController;Lcom/android/server/job/controllers/ConnectivityController;)V

    iput-object v7, p0, Lcom/android/server/job/JobSchedulerService;->mTareController:Lcom/android/server/job/controllers/TareController;

    .line 1588
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1590
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mRestrictiveControllers:Ljava/util/List;

    .line 1591
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1592
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1593
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1596
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    .line 1597
    new-instance v7, Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    invoke-direct {v7, p0}, Lcom/android/server/job/restrictions/ThermalStatusRestriction;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1601
    invoke-virtual {v1}, Lcom/android/server/job/JobStore;->jobTimesInflatedValid()Z

    move-result v1

    if-nez v1, :cond_1c0

    .line 1602
    const-string v1, "JobScheduler"

    const-string v2, "!!! RTC not yet good; tracking time updates for job scheduling"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIME_SET"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1605
    :cond_1c0
    return-void
.end method

.method private adjustJobBias(ILcom/android/server/job/controllers/JobStatus;)I
    .registers 5
    .param p1, "curBias"    # I
    .param p2, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2649
    const/16 v0, 0x28

    if-ge p1, v0, :cond_1f

    .line 2650
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v0, p2}, Lcom/android/server/job/JobPackageTracker;->getLoadFactor(Lcom/android/server/job/controllers/JobStatus;)F

    move-result v0

    .line 2651
    .local v0, "factor":F
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_15

    .line 2652
    add-int/lit8 p1, p1, -0x50

    goto :goto_1f

    .line 2653
    :cond_15
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1f

    .line 2654
    add-int/lit8 p1, p1, -0x28

    .line 2657
    .end local v0    # "factor":F
    :cond_1f
    :goto_1f
    return p1
.end method

.method private cancelJob(IIII)Z
    .registers 13
    .param p1, "uid"    # I
    .param p2, "jobId"    # I
    .param p3, "callingUid"    # I
    .param p4, "reason"    # I

    .line 1370
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1371
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v1

    .line 1372
    .local v1, "toCancel":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v1, :cond_3a

    .line 1373
    const/4 v4, 0x0

    const/4 v6, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel() called by app, callingUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " jobId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, v1

    move v5, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    .line 1378
    :cond_3a
    if-eqz v1, :cond_3e

    const/4 v2, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v2, 0x0

    :goto_3f
    monitor-exit v0

    return v2

    .line 1379
    .end local v1    # "toCancel":Lcom/android/server/job/controllers/JobStatus;
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v1
.end method

.method private cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V
    .registers 10
    .param p1, "cancelled"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "reason"    # I
    .param p4, "internalReasonCode"    # I
    .param p5, "debugReason"    # Ljava/lang/String;

    .line 1390
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v1, "JobScheduler"

    if-eqz v0, :cond_20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CANCEL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    :cond_20
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->unprepareLocked()V

    .line 1392
    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/job/JobSchedulerService;->stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)Z

    .line 1394
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v2, p1}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1395
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1397
    :cond_34
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1399
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v2, p1, p3, p4, p5}, Lcom/android/server/job/JobConcurrencyManager;->stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)Z

    .line 1402
    if-eqz p2, :cond_5f

    .line 1403
    if-eqz v0, :cond_5c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tracking replacement job "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    :cond_5c
    invoke-direct {p0, p2, p1}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 1406
    :cond_5f
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    .line 1407
    return-void
.end method

.method private cancelJobsForNonExistentUsers()V
    .registers 5

    .line 1312
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 1313
    .local v0, "umi":Lcom/android/server/pm/UserManagerInternal;
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1314
    :try_start_b
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/job/JobStore;->removeJobsOfUnlistedUsers([I)V

    .line 1315
    monitor-exit v1

    .line 1316
    return-void

    .line 1315
    :catchall_16
    move-exception v2

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_16

    throw v2
.end method

.method private cancelJobsForPackageAndUidLocked(Ljava/lang/String;IIILjava/lang/String;)V
    .registers 15
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "reason"    # I
    .param p4, "internalReasonCode"    # I
    .param p5, "debugReason"    # Ljava/lang/String;

    .line 1320
    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1321
    const-string v0, "JobScheduler"

    const-string v1, "Can\'t cancel all jobs for system package"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    return-void

    .line 1324
    :cond_10
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, p2}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    move-result-object v0

    .line 1325
    .local v0, "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_1c
    if-ltz v1, :cond_3a

    .line 1326
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 1327
    .local v2, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1328
    const/4 v5, 0x0

    move-object v3, p0

    move-object v4, v2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    .line 1325
    .end local v2    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_37
    add-int/lit8 v1, v1, -0x1

    goto :goto_1c

    .line 1331
    .end local v1    # "i":I
    :cond_3a
    return-void
.end method

.method private cancelJobsForUserLocked(I)V
    .registers 11
    .param p1, "userHandle"    # I

    .line 1300
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore;->getJobsByUser(I)Ljava/util/List;

    move-result-object v0

    .line 1301
    .local v0, "jobsForUser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 1302
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 1306
    .local v2, "toRemove":Lcom/android/server/job/controllers/JobStatus;
    const/4 v5, 0x0

    const/16 v6, 0xd

    const/4 v7, 0x7

    const-string/jumbo v8, "user removed"

    move-object v3, p0

    move-object v4, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    .line 1301
    .end local v2    # "toRemove":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1309
    .end local v1    # "i":I
    :cond_22
    return-void
.end method

.method private checkChangedJobListLocked()V
    .registers 3

    .line 2429
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->removeMessages(I)V

    .line 2430
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_12

    .line 2431
    const-string v0, "JobScheduler"

    const-string v1, "Check changed jobs..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    :cond_12
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_1b

    .line 2434
    return-void

    .line 2437
    :cond_1b
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 2438
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->postProcessLocked()V

    .line 2439
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 2440
    return-void
.end method

.method private clearPendingJobQueue()V
    .registers 3

    .line 1798
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue;->resetIterator()V

    .line 1799
    :goto_5
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    move-object v1, v0

    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v0, :cond_12

    .line 1800
    invoke-direct {p0, v1}, Lcom/android/server/job/JobSchedulerService;->noteJobNonPending(Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_5

    .line 1802
    :cond_12
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue;->clear()V

    .line 1803
    return-void
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 3575
    const-string v0, "Job Scheduler (jobscheduler) dump options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3576
    const-string v0, "  [-h] [package] ..."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3577
    const-string v0, "    -h: print this help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3578
    const-string v0, "  [package] is an optional package name to limit the output to."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3579
    return-void
.end method

.method private getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 992
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 993
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 994
    .local v1, "pkg":Ljava/lang/String;
    :goto_c
    return-object v1
.end method

.method private isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 7
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2542
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 2544
    .local v0, "service":Landroid/content/pm/ServiceInfo;
    const-string v1, "JobScheduler"

    if-nez v0, :cond_2d

    .line 2545
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v2, :cond_2b

    .line 2546
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isComponentUsable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " component not present"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2549
    :cond_2b
    const/4 v1, 0x0

    return v1

    .line 2553
    :cond_2d
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v4}, Landroid/app/ActivityManagerInternal;->isAppBad(Ljava/lang/String;I)Z

    move-result v2

    .line 2555
    .local v2, "appIsBad":Z
    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v3, :cond_5f

    if-eqz v2, :cond_5f

    .line 2556
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App is bad for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " so not runnable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    :cond_5f
    xor-int/lit8 v1, v2, 0x1

    return v1
.end method

.method private isUidActive(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 1106
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/AppStateTrackerImpl;->isUidActiveSynced(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$dumpInternal$5(ILcom/android/server/job/controllers/JobStatus;)Z
    .registers 3
    .param p0, "filterAppId"    # I
    .param p1, "js"    # Lcom/android/server/job/controllers/JobStatus;

    .line 3606
    const/4 v0, -0x1

    if-eq p0, v0, :cond_1a

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-eq v0, p0, :cond_1a

    .line 3607
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-ne v0, p0, :cond_18

    goto :goto_1a

    :cond_18
    const/4 v0, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v0, 0x1

    .line 3606
    :goto_1b
    return v0
.end method

.method static synthetic lambda$dumpInternalProto$6(ILcom/android/server/job/controllers/JobStatus;)Z
    .registers 3
    .param p0, "filterAppId"    # I
    .param p1, "js"    # Lcom/android/server/job/controllers/JobStatus;

    .line 3871
    const/4 v0, -0x1

    if-eq p0, v0, :cond_1a

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-eq v0, p0, :cond_1a

    .line 3872
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-ne v0, p0, :cond_18

    goto :goto_1a

    :cond_18
    const/4 v0, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v0, 0x1

    .line 3871
    :goto_1b
    return v0
.end method

.method static synthetic lambda$static$0(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/utils/quota/Category;
    .registers 4
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 284
    const-string v0, ".schedulePersisted()"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 285
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

    return-object v0

    .line 287
    :cond_b
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_LOGGED:Lcom/android/server/utils/quota/Category;

    return-object v0
.end method

.method static synthetic lambda$updateMediaBackupExemptionLocked$3(ILjava/lang/String;Ljava/lang/String;Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 5
    .param p0, "userId"    # I
    .param p1, "oldPkg"    # Ljava/lang/String;
    .param p2, "newPkg"    # Ljava/lang/String;
    .param p3, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2446
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    if-ne v0, p0, :cond_1c

    .line 2447
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2448
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 2446
    :goto_1d
    return v0
.end method

.method private maybeQueueReadyJobsForExecutionLocked()V
    .registers 3

    .line 2414
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->removeMessages(I)V

    .line 2417
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->removeMessages(I)V

    .line 2418
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 2419
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_1d

    const-string v0, "JobScheduler"

    const-string v1, "Maybe queuing ready jobs..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    :cond_1d
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->clearPendingJobQueue()V

    .line 2422
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->stopNonReadyActiveJobsLocked()V

    .line 2423
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 2424
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->postProcessLocked()V

    .line 2425
    return-void
.end method

.method private noteJobNonPending(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1793
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1794
    return-void
.end method

.method private noteJobPending(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1783
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobPackageTracker;->notePending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1784
    return-void
.end method

.method private queueReadyJobsForExecutionLocked()V
    .registers 5

    .line 2219
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->removeMessages(I)V

    .line 2220
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->removeMessages(I)V

    .line 2223
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->removeMessages(I)V

    .line 2227
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->removeMessages(I)V

    .line 2228
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 2229
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v1, "JobScheduler"

    if-eqz v0, :cond_2a

    .line 2230
    const-string/jumbo v2, "queuing all ready jobs for execution:"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    :cond_2a
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->clearPendingJobQueue()V

    .line 2233
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->stopNonReadyActiveJobsLocked()V

    .line 2234
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    invoke-virtual {v2, v3}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 2235
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    invoke-static {v2}, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;->-$$Nest$mpostProcessLocked(Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;)V

    .line 2237
    if-eqz v0, :cond_62

    .line 2238
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue;->size()I

    move-result v0

    .line 2239
    .local v0, "queuedJobs":I
    if-nez v0, :cond_4c

    .line 2240
    const-string v2, "No jobs pending."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 2242
    :cond_4c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " jobs queued."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    .end local v0    # "queuedJobs":I
    :cond_62
    :goto_62
    return-void
.end method

.method private static sortJobs(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 3583
    .local p0, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    new-instance v0, Lcom/android/server/job/JobSchedulerService$6;

    invoke-direct {v0}, Lcom/android/server/job/JobSchedulerService$6;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3596
    return-void
.end method

.method public static standbyBucketForPackage(Ljava/lang/String;IJ)I
    .registers 8
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "elapsedNow"    # J

    .line 2955
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 2957
    .local v0, "usageStats":Landroid/app/usage/UsageStatsManagerInternal;
    if-eqz v0, :cond_f

    .line 2958
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result v1

    goto :goto_10

    .line 2959
    :cond_f
    const/4 v1, 0x0

    :goto_10
    nop

    .line 2961
    .local v1, "bucket":I
    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->standbyBucketToBucketIndex(I)I

    move-result v1

    .line 2963
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz v2, :cond_3f

    .line 2964
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " standby bucket index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JobScheduler"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    :cond_3f
    return v1
.end method

.method public static standbyBucketToBucketIndex(I)I
    .registers 3
    .param p0, "bucket"    # I

    .line 2936
    const/16 v0, 0x32

    if-ne p0, v0, :cond_6

    .line 2937
    const/4 v0, 0x4

    return v0

    .line 2938
    :cond_6
    const/16 v0, 0x28

    const/4 v1, 0x5

    if-le p0, v0, :cond_c

    .line 2939
    return v1

    .line 2940
    :cond_c
    const/16 v0, 0x1e

    if-le p0, v0, :cond_12

    .line 2941
    const/4 v0, 0x3

    return v0

    .line 2942
    :cond_12
    const/16 v0, 0x14

    if-le p0, v0, :cond_18

    .line 2943
    const/4 v0, 0x2

    return v0

    .line 2944
    :cond_18
    const/16 v0, 0xa

    if-le p0, v0, :cond_1e

    .line 2945
    const/4 v0, 0x1

    return v0

    .line 2946
    :cond_1e
    if-le p0, v1, :cond_22

    .line 2947
    const/4 v0, 0x0

    return v0

    .line 2949
    :cond_22
    const/4 v0, 0x6

    return v0
.end method

.method private startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 8
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1728
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPreparedLocked()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not yet prepared when started tracking: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    :cond_1e
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    .line 1732
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    .line 1733
    .local v0, "update":Z
    iget-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-eqz v1, :cond_4e

    .line 1734
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_31
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4e

    .line 1735
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    .line 1736
    .local v2, "controller":Lcom/android/server/job/controllers/StateController;
    if-eqz v0, :cond_48

    .line 1737
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/job/controllers/StateController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V

    .line 1739
    :cond_48
    invoke-virtual {v2, p1, p2}, Lcom/android/server/job/controllers/StateController;->maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 1734
    .end local v2    # "controller":Lcom/android/server/job/controllers/StateController;
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 1742
    .end local v1    # "i":I
    :cond_4e
    return-void
.end method

.method private stopNonReadyActiveJobsLocked()V
    .registers 2

    .line 2208
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v0}, Lcom/android/server/job/JobConcurrencyManager;->stopNonReadyActiveJobsLocked()V

    .line 2209
    return-void
.end method

.method private stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)Z
    .registers 8
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "removeFromPersisted"    # Z

    .line 1752
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1755
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/job/JobStore;->remove(Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v0

    .line 1756
    .local v0, "removed":Z
    if-nez v0, :cond_12

    .line 1765
    const-string v1, "JobScheduler"

    const-string v2, "Job didn\'t exist in JobStore: "

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    :cond_12
    iget-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-eqz v1, :cond_2e

    .line 1768
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 1769
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    .line 1770
    .local v2, "controller":Lcom/android/server/job/controllers/StateController;
    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/server/job/controllers/StateController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V

    .line 1768
    .end local v2    # "controller":Lcom/android/server/job/controllers/StateController;
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1773
    .end local v1    # "i":I
    :cond_2e
    return v0
.end method

.method private updateMediaBackupExemptionLocked(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "oldPkg"    # Ljava/lang/String;
    .param p3, "newPkg"    # Ljava/lang/String;

    .line 2445
    new-instance v0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2449
    .local v0, "shouldProcessJob":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    new-instance v2, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 2455
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/server/job/JobSchedulerService$JobHandler;->sendEmptyMessage(I)Z

    .line 2456
    return-void
.end method


# virtual methods
.method public areComponentsInPlaceLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 10
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2577
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore;->containsJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    .line 2578
    .local v0, "jobExists":Z
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    .line 2579
    .local v1, "userStarted":Z
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    .line 2581
    .local v2, "backingUp":Z
    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v4, "areComponentsInPlaceLocked: "

    const-string v5, "JobScheduler"

    if-eqz v3, :cond_52

    .line 2582
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " exists="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " userStarted="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " backingUp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    :cond_52
    const/4 v6, 0x0

    if-eqz v0, :cond_8e

    if-eqz v1, :cond_8e

    if-eqz v2, :cond_5a

    goto :goto_8e

    .line 2593
    :cond_5a
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v7

    .line 2594
    .local v7, "restriction":Lcom/android/server/job/restrictions/JobRestriction;
    if-eqz v7, :cond_89

    .line 2595
    if-eqz v3, :cond_88

    .line 2596
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " restricted due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2597
    invoke-virtual {v7}, Lcom/android/server/job/restrictions/JobRestriction;->getInternalReason()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2596
    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    :cond_88
    return v6

    .line 2606
    :cond_89
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    return v3

    .line 2590
    .end local v7    # "restriction":Lcom/android/server/job/restrictions/JobRestriction;
    :cond_8e
    :goto_8e
    return v6
.end method

.method public areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 5
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2461
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v0

    .line 2462
    .local v0, "sourceStarted":Z
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    if-ne v1, v2, :cond_15

    .line 2463
    return v0

    .line 2465
    :cond_15
    if-eqz v0, :cond_25

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v1, 0x1

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    return v1
.end method

.method public cancelJobsForUid(IIILjava/lang/String;)Z
    .registers 16
    .param p1, "uid"    # I
    .param p2, "reason"    # I
    .param p3, "internalReasonCode"    # I
    .param p4, "debugReason"    # Ljava/lang/String;

    .line 1342
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_d

    .line 1343
    const-string v0, "JobScheduler"

    const-string v1, "Can\'t cancel all jobs for system uid"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    const/4 v0, 0x0

    return v0

    .line 1347
    :cond_d
    const/4 v0, 0x0

    .line 1348
    .local v0, "jobsCanceled":Z
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1349
    :try_start_11
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v2, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    move-result-object v2

    .line 1350
    .local v2, "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_31

    .line 1351
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/android/server/job/controllers/JobStatus;

    .line 1352
    .local v6, "toRemove":Lcom/android/server/job/controllers/JobStatus;
    const/4 v7, 0x0

    move-object v5, p0

    move v8, p2

    move v9, p3

    move-object v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    .line 1353
    const/4 v0, 0x1

    .line 1350
    .end local v6    # "toRemove":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 1355
    .end local v2    # "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v3    # "i":I
    :cond_31
    monitor-exit v1

    .line 1356
    return v0

    .line 1355
    :catchall_33
    move-exception v2

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_11 .. :try_end_35} :catchall_33

    throw v2
.end method

.method checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;
    .registers 6
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2193
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x23

    if-lt v0, v2, :cond_a

    .line 2195
    return-object v1

    .line 2197
    :cond_a
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_12
    if-ltz v0, :cond_26

    .line 2198
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/restrictions/JobRestriction;

    .line 2199
    .local v2, "restriction":Lcom/android/server/job/restrictions/JobRestriction;
    invoke-virtual {v2, p1}, Lcom/android/server/job/restrictions/JobRestriction;->isJobRestricted(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 2200
    return-object v2

    .line 2197
    .end local v2    # "restriction":Lcom/android/server/job/restrictions/JobRestriction;
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 2203
    .end local v0    # "i":I
    :cond_26
    return-object v1
.end method

.method public deriveWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;
    .registers 7
    .param p1, "sourceUid"    # I
    .param p2, "sourcePackageName"    # Ljava/lang/String;

    .line 1045
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/WorkSource;->isChainedBatteryAttributionEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1046
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    .line 1047
    .local v0, "ws":Landroid/os/WorkSource;
    invoke-virtual {v0}, Landroid/os/WorkSource;->createWorkChain()Landroid/os/WorkSource$WorkChain;

    move-result-object v1

    .line 1048
    invoke-virtual {v1, p1, p2}, Landroid/os/WorkSource$WorkChain;->addNode(ILjava/lang/String;)Landroid/os/WorkSource$WorkChain;

    move-result-object v1

    const/16 v2, 0x3e8

    .line 1049
    const-string v3, "JobScheduler"

    invoke-virtual {v1, v2, v3}, Landroid/os/WorkSource$WorkChain;->addNode(ILjava/lang/String;)Landroid/os/WorkSource$WorkChain;

    .line 1050
    return-object v0

    .line 1052
    .end local v0    # "ws":Landroid/os/WorkSource;
    :cond_1f
    if-nez p2, :cond_27

    .line 1053
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(I)V

    goto :goto_2c

    :cond_27
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1, p2}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    .line 1052
    :goto_2c
    return-object v0
.end method

.method dumpInternal(Landroid/util/IndentingPrintWriter;I)V
    .registers 31
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "filterUid"    # I
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 3600
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    .line 3601
    .local v11, "filterAppId":I
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v12

    .line 3602
    .local v12, "now":J
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v14

    .line 3603
    .local v14, "nowElapsed":J
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v16

    .line 3605
    .local v16, "nowUptime":J
    new-instance v0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda6;

    invoke-direct {v0, v11}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda6;-><init>(I)V

    move-object v7, v0

    .line 3609
    .local v7, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v8, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 3610
    :try_start_25
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-virtual {v0, v9}, Lcom/android/server/job/JobSchedulerService$Constants;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 3611
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_34
    .catchall {:try_start_25 .. :try_end_34} :catchall_47b

    if-eqz v2, :cond_4f

    :try_start_36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    .line 3612
    .local v2, "controller":Lcom/android/server/job/controllers/StateController;
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3613
    invoke-virtual {v2, v9}, Lcom/android/server/job/controllers/StateController;->dumpConstants(Landroid/util/IndentingPrintWriter;)V

    .line 3614
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_45
    .catchall {:try_start_36 .. :try_end_45} :catchall_47

    .line 3615
    nop

    .end local v2    # "controller":Lcom/android/server/job/controllers/StateController;
    goto :goto_30

    .line 3860
    :catchall_47
    move-exception v0

    move-object/from16 v26, v8

    move/from16 v25, v11

    move-object v11, v7

    goto/16 :goto_481

    .line 3616
    :cond_4f
    :try_start_4f
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3618
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_58
    .catchall {:try_start_4f .. :try_end_58} :catchall_47b

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    .local v0, "i":I
    :goto_5a
    if-ltz v0, :cond_6a

    .line 3619
    :try_start_5c
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/restrictions/JobRestriction;

    invoke-virtual {v2, v9}, Lcom/android/server/job/restrictions/JobRestriction;->dumpConstants(Landroid/util/IndentingPrintWriter;)V
    :try_end_67
    .catchall {:try_start_5c .. :try_end_67} :catchall_47

    .line 3618
    add-int/lit8 v0, v0, -0x1

    goto :goto_5a

    .line 3621
    .end local v0    # "i":I
    :cond_6a
    :try_start_6a
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3623
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    invoke-virtual {v0, v9}, Lcom/android/server/utils/quota/CountQuotaTracker;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 3624
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3626
    const-string v0, "Battery charging: "

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3627
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isCharging()Z

    move-result v0

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 3628
    const-string v0, "Battery not low: "

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3629
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isBatteryNotLow()Z

    move-result v0

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 3630
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isMonitoring()Z

    move-result v0
    :try_end_97
    .catchall {:try_start_6a .. :try_end_97} :catchall_47b

    if-eqz v0, :cond_a7

    .line 3631
    :try_start_99
    const-string v0, "MONITORING: seq="

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3632
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->getSeq()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->println(I)V
    :try_end_a7
    .catchall {:try_start_99 .. :try_end_a7} :catchall_47

    .line 3634
    :cond_a7
    :try_start_a7
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Started users: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3637
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3639
    const-string v0, "Media Cloud Providers: "

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3640
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mCloudMediaProviderPackages:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3641
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3643
    const-string v0, "Registered "

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3644
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->size()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3645
    const-string v0, " jobs:"

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3646
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3647
    const/4 v0, 0x0

    .line 3648
    .local v0, "jobPrinted":Z
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v2}, Lcom/android/server/job/JobStore;->size()I

    move-result v2
    :try_end_f3
    .catchall {:try_start_a7 .. :try_end_f3} :catchall_47b

    if-lez v2, :cond_218

    .line 3649
    :try_start_f5
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v2, v2, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v2}, Lcom/android/server/job/JobStore$JobSet;->getAllJobs()Ljava/util/List;

    move-result-object v2

    .line 3650
    .local v2, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-static {v2}, Lcom/android/server/job/JobSchedulerService;->sortJobs(Ljava/util/List;)V

    .line 3651
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_104
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_215

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/JobStatus;

    .line 3653
    .local v6, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {v7, v6}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_117

    .line 3654
    goto :goto_104

    .line 3656
    :cond_117
    const/4 v0, 0x1

    .line 3658
    const-string v3, "JOB #"

    invoke-virtual {v9, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    const-string v3, ": "

    invoke-virtual {v9, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3659
    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->toShortStringExceptUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3661
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3662
    invoke-virtual {v6, v9, v5, v14, v15}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/IndentingPrintWriter;ZJ)V

    .line 3664
    const-string v3, "Restricted due to:"

    invoke-virtual {v9, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3665
    invoke-virtual {v1, v6}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v3

    if-eqz v3, :cond_13f

    move v3, v5

    goto :goto_140

    :cond_13f
    const/4 v3, 0x0

    .line 3666
    .local v3, "isRestricted":Z
    :goto_140
    if-eqz v3, :cond_17b

    .line 3667
    iget-object v5, v1, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/16 v19, 0x1

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_14c
    if-ltz v5, :cond_178

    .line 3668
    move/from16 v20, v0

    .end local v0    # "jobPrinted":Z
    .local v20, "jobPrinted":Z
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/restrictions/JobRestriction;

    .line 3669
    .local v0, "restriction":Lcom/android/server/job/restrictions/JobRestriction;
    invoke-virtual {v0, v6}, Lcom/android/server/job/restrictions/JobRestriction;->isJobRestricted(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v21

    if-eqz v21, :cond_171

    .line 3670
    invoke-virtual {v0}, Lcom/android/server/job/restrictions/JobRestriction;->getInternalReason()I

    move-result v21

    .line 3671
    .local v21, "reason":I
    move-object/from16 v22, v0

    .end local v0    # "restriction":Lcom/android/server/job/restrictions/JobRestriction;
    .local v22, "restriction":Lcom/android/server/job/restrictions/JobRestriction;
    const-string v0, " "

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3672
    invoke-static/range {v21 .. v21}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_173

    .line 3669
    .end local v21    # "reason":I
    .end local v22    # "restriction":Lcom/android/server/job/restrictions/JobRestriction;
    .restart local v0    # "restriction":Lcom/android/server/job/restrictions/JobRestriction;
    :cond_171
    move-object/from16 v22, v0

    .line 3667
    .end local v0    # "restriction":Lcom/android/server/job/restrictions/JobRestriction;
    :goto_173
    add-int/lit8 v5, v5, -0x1

    move/from16 v0, v20

    goto :goto_14c

    .end local v20    # "jobPrinted":Z
    .local v0, "jobPrinted":Z
    :cond_178
    move/from16 v20, v0

    .end local v0    # "jobPrinted":Z
    .end local v5    # "i":I
    .restart local v20    # "jobPrinted":Z
    goto :goto_184

    .line 3676
    .end local v20    # "jobPrinted":Z
    .restart local v0    # "jobPrinted":Z
    :cond_17b
    move/from16 v20, v0

    move/from16 v19, v5

    .end local v0    # "jobPrinted":Z
    .restart local v20    # "jobPrinted":Z
    const-string v0, " none"

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3678
    :goto_184
    const-string v0, "."

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3680
    const-string v0, "Ready: "

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3681
    invoke-virtual {v1, v6}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 3682
    const-string v0, " (job="

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3683
    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 3684
    const-string v0, " user="

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3685
    invoke-virtual {v1, v6}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 3686
    const-string v0, " !restricted="

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3687
    if-nez v3, :cond_1b7

    move/from16 v0, v19

    goto :goto_1b8

    :cond_1b7
    const/4 v0, 0x0

    :goto_1b8
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 3688
    const-string v0, " !pending="

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3689
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v0, v6}, Lcom/android/server/job/PendingJobQueue;->contains(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-nez v0, :cond_1cb

    move/from16 v0, v19

    goto :goto_1cc

    :cond_1cb
    const/4 v0, 0x0

    :goto_1cc
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 3690
    const-string v0, " !active="

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3691
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v0, v6}, Lcom/android/server/job/JobConcurrencyManager;->isJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-nez v0, :cond_1df

    move/from16 v0, v19

    goto :goto_1e0

    :cond_1df
    const/4 v0, 0x0

    :goto_1e0
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 3692
    const-string v0, " !backingup="

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3693
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_1f7

    move/from16 v0, v19

    goto :goto_1f8

    :cond_1f7
    const/4 v0, 0x0

    :goto_1f8
    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 3694
    const-string v0, " comp="

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3695
    invoke-direct {v1, v6}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 3696
    const-string v0, ")"

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3698
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3699
    move/from16 v5, v19

    move/from16 v0, v20

    .end local v3    # "isRestricted":Z
    .end local v6    # "job":Lcom/android/server/job/controllers/JobStatus;
    goto/16 :goto_104

    .line 3651
    .end local v20    # "jobPrinted":Z
    .restart local v0    # "jobPrinted":Z
    :cond_215
    move/from16 v19, v5

    goto :goto_21a

    .line 3648
    .end local v2    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_218
    move/from16 v19, v5

    .line 3701
    :goto_21a
    if-nez v0, :cond_221

    .line 3702
    const-string v2, "None."

    invoke-virtual {v9, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_221
    .catchall {:try_start_f5 .. :try_end_221} :catchall_47

    .line 3704
    :cond_221
    :try_start_221
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3706
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_225
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3
    :try_end_22b
    .catchall {:try_start_221 .. :try_end_22b} :catchall_47b

    if-ge v2, v3, :cond_26a

    .line 3707
    :try_start_22d
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3708
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3709
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3710
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v3, v9, v7}, Lcom/android/server/job/controllers/StateController;->dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V

    .line 3711
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_267
    .catchall {:try_start_22d .. :try_end_267} :catchall_47

    .line 3706
    add-int/lit8 v2, v2, 0x1

    goto :goto_225

    .line 3714
    .end local v2    # "i":I
    :cond_26a
    const/4 v2, 0x0

    .line 3715
    .local v2, "overridePrinted":Z
    const/4 v3, 0x0

    move/from16 v20, v2

    .end local v2    # "overridePrinted":Z
    .local v3, "i":I
    .local v20, "overridePrinted":Z
    :goto_26e
    :try_start_26e
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2
    :try_end_274
    .catchall {:try_start_26e .. :try_end_274} :catchall_47b

    const/4 v5, -0x1

    if-ge v3, v2, :cond_2ac

    .line 3716
    :try_start_277
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 3717
    .local v2, "uid":I
    if-eq v11, v5, :cond_285

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-ne v11, v4, :cond_2a9

    .line 3718
    :cond_285
    if-nez v20, :cond_294

    .line 3719
    const/16 v20, 0x1

    .line 3720
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3721
    const-string v4, "Uid bias overrides:"

    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3722
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3724
    :cond_294
    invoke-static {v2}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3725
    const-string v4, ": "

    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 3715
    .end local v2    # "uid":I
    :cond_2a9
    add-int/lit8 v3, v3, 0x1

    goto :goto_26e

    .line 3728
    .end local v3    # "i":I
    :cond_2ac
    if-eqz v20, :cond_2b1

    .line 3729
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_2b1
    .catchall {:try_start_277 .. :try_end_2b1} :catchall_47

    .line 3732
    :cond_2b1
    const/4 v2, 0x0

    .line 3733
    .local v2, "uidMapPrinted":Z
    const/4 v3, 0x0

    move/from16 v21, v2

    .end local v2    # "uidMapPrinted":Z
    .restart local v3    # "i":I
    .local v21, "uidMapPrinted":Z
    :goto_2b5
    :try_start_2b5
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v2}, Landroid/util/SparseSetArray;->size()I

    move-result v2
    :try_end_2bb
    .catchall {:try_start_2b5 .. :try_end_2bb} :catchall_47b

    if-ge v3, v2, :cond_2eb

    .line 3734
    :try_start_2bd
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v2

    .line 3735
    .local v2, "uid":I
    if-eq v10, v5, :cond_2c8

    if-eq v10, v2, :cond_2c8

    .line 3736
    goto :goto_2e8

    .line 3738
    :cond_2c8
    if-nez v21, :cond_2d7

    .line 3739
    const/16 v21, 0x1

    .line 3740
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3741
    const-string v4, "Cached UID->package map:"

    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3742
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3744
    :cond_2d7
    invoke-virtual {v9, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3745
    const-string v4, ": "

    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3746
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3733
    .end local v2    # "uid":I
    :goto_2e8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b5

    .line 3748
    .end local v3    # "i":I
    :cond_2eb
    if-eqz v21, :cond_2f0

    .line 3749
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_2f0
    .catchall {:try_start_2bd .. :try_end_2f0} :catchall_47

    .line 3752
    :cond_2f0
    const/4 v2, 0x0

    .line 3753
    .local v2, "backingPrinted":Z
    const/4 v3, 0x0

    move/from16 v22, v2

    .end local v2    # "backingPrinted":Z
    .restart local v3    # "i":I
    .local v22, "backingPrinted":Z
    :goto_2f4
    :try_start_2f4
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2
    :try_end_2fa
    .catchall {:try_start_2f4 .. :try_end_2fa} :catchall_47b

    if-ge v3, v2, :cond_329

    .line 3754
    :try_start_2fc
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 3755
    .local v2, "uid":I
    if-eq v11, v5, :cond_30a

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-ne v11, v4, :cond_326

    .line 3756
    :cond_30a
    if-nez v22, :cond_31a

    .line 3757
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3758
    const-string v4, "Backing up uids:"

    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3759
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3760
    const/16 v22, 0x1

    goto :goto_31f

    .line 3762
    :cond_31a
    const-string v4, ", "

    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3764
    :goto_31f
    invoke-static {v2}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3753
    .end local v2    # "uid":I
    :cond_326
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f4

    .line 3767
    .end local v3    # "i":I
    :cond_329
    if-eqz v22, :cond_331

    .line 3768
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3769
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V
    :try_end_331
    .catchall {:try_start_2fc .. :try_end_331} :catchall_47

    .line 3772
    :cond_331
    :try_start_331
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3773
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v2, v9, v11}, Lcom/android/server/job/JobPackageTracker;->dump(Landroid/util/IndentingPrintWriter;I)V

    .line 3774
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3775
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v2, v9, v11}, Lcom/android/server/job/JobPackageTracker;->dumpHistory(Landroid/util/IndentingPrintWriter;I)Z

    move-result v2
    :try_end_342
    .catchall {:try_start_331 .. :try_end_342} :catchall_47b

    if-eqz v2, :cond_347

    .line 3776
    :try_start_344
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V
    :try_end_347
    .catchall {:try_start_344 .. :try_end_347} :catchall_47

    .line 3779
    :cond_347
    const/4 v2, 0x0

    .line 3780
    .local v2, "pendingPrinted":Z
    :try_start_348
    const-string v3, "Pending queue:"

    invoke-virtual {v9, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3781
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3783
    const/4 v3, 0x0

    .line 3784
    .local v3, "pendingIdx":I
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v4}, Lcom/android/server/job/PendingJobQueue;->resetIterator()V

    move/from16 v23, v2

    move/from16 v24, v3

    .line 3785
    .end local v2    # "pendingPrinted":Z
    .end local v3    # "pendingIdx":I
    .local v23, "pendingPrinted":Z
    .local v24, "pendingIdx":I
    :goto_35a
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v2}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2
    :try_end_360
    .catchall {:try_start_348 .. :try_end_360} :catchall_47b

    move-object v6, v2

    .restart local v6    # "job":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v2, :cond_3bf

    .line 3786
    add-int/lit8 v2, v24, 0x1

    .line 3787
    .end local v24    # "pendingIdx":I
    .local v2, "pendingIdx":I
    :try_start_365
    invoke-interface {v7, v6}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36e

    .line 3788
    move/from16 v24, v2

    goto :goto_35a

    .line 3790
    :cond_36e
    if-nez v23, :cond_373

    .line 3791
    const/4 v3, 0x1

    move/from16 v23, v3

    .line 3794
    :cond_373
    const-string v3, "Pending #"

    invoke-virtual {v9, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {v9, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3795
    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3797
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3798
    const/4 v3, 0x0

    invoke-virtual {v6, v9, v3, v14, v15}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/IndentingPrintWriter;ZJ)V

    .line 3799
    invoke-virtual {v1, v6}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v4

    .line 3800
    .local v4, "bias":I
    const-string v3, "Evaluated bias: "

    invoke-virtual {v9, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3801
    invoke-static {v4}, Landroid/app/job/JobInfo;->getBiasString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3803
    const-string v3, "Tag: "

    invoke-virtual {v9, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3804
    const-string v3, "Enq: "

    invoke-virtual {v9, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3805
    move/from16 v24, v2

    .end local v2    # "pendingIdx":I
    .restart local v24    # "pendingIdx":I
    iget-wide v2, v6, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    sub-long v2, v2, v16

    invoke-static {v2, v3, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3806
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3807
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3808
    .end local v4    # "bias":I
    goto :goto_35a

    .line 3809
    :cond_3bf
    if-nez v23, :cond_3c6

    .line 3810
    const-string v2, "None"

    invoke-virtual {v9, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_3c6
    .catchall {:try_start_365 .. :try_end_3c6} :catchall_47

    .line 3812
    :cond_3c6
    :try_start_3c6
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3814
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3815
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;
    :try_end_3ce
    .catchall {:try_start_3c6 .. :try_end_3ce} :catchall_47b

    move-object/from16 v3, p1

    move-object v4, v7

    move-object/from16 v18, v6

    move/from16 v27, v19

    move/from16 v19, v0

    move/from16 v0, v27

    .end local v0    # "jobPrinted":Z
    .end local v6    # "job":Lcom/android/server/job/controllers/JobStatus;
    .local v18, "job":Lcom/android/server/job/controllers/JobStatus;
    .local v19, "jobPrinted":Z
    move-wide v5, v14

    move-object/from16 v26, v8

    move/from16 v25, v11

    move-object v11, v7

    .end local v7    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v11, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v25, "filterAppId":I
    move-wide/from16 v7, v16

    :try_start_3e1
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/job/JobConcurrencyManager;->dumpContextInfoLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;JJ)V

    .line 3817
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3818
    const/4 v2, 0x0

    .line 3819
    .local v2, "recentPrinted":Z
    const-string v3, "Recently completed jobs:"

    invoke-virtual {v9, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3820
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3821
    const/4 v3, 0x1

    move v8, v2

    .end local v2    # "recentPrinted":Z
    .local v3, "r":I
    .local v8, "recentPrinted":Z
    :goto_3f2
    const/16 v2, 0x14

    if-gt v3, v2, :cond_430

    .line 3823
    iget v4, v1, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobIndex:I

    add-int/2addr v4, v2

    sub-int/2addr v4, v3

    rem-int/2addr v4, v2

    move v2, v4

    .line 3825
    .local v2, "idx":I
    iget-object v4, v1, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobs:[Lcom/android/server/job/controllers/JobStatus;

    aget-object v4, v4, v2

    .line 3826
    .end local v18    # "job":Lcom/android/server/job/controllers/JobStatus;
    .local v4, "job":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v4, :cond_42b

    .line 3827
    invoke-interface {v11, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_409

    .line 3828
    goto :goto_42b

    .line 3830
    :cond_409
    const/4 v5, 0x1

    .line 3831
    .end local v8    # "recentPrinted":Z
    .local v5, "recentPrinted":Z
    iget-object v6, v1, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobTimeElapsed:[J

    aget-wide v6, v6, v2

    invoke-static {v6, v7, v14, v15, v9}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3832
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3834
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3835
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3836
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3837
    invoke-virtual {v4, v9, v0, v14, v15}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/IndentingPrintWriter;ZJ)V

    .line 3838
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3839
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    move v8, v5

    .line 3821
    .end local v2    # "idx":I
    .end local v5    # "recentPrinted":Z
    .restart local v8    # "recentPrinted":Z
    :cond_42b
    :goto_42b
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v18, v4

    goto :goto_3f2

    .line 3842
    .end local v3    # "r":I
    .end local v4    # "job":Lcom/android/server/job/controllers/JobStatus;
    .restart local v18    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_430
    if-nez v8, :cond_437

    .line 3843
    const-string v0, "None"

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3845
    :cond_437
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3846
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3848
    const/4 v0, -0x1

    if-ne v10, v0, :cond_459

    .line 3849
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3850
    const-string/jumbo v0, "mReadyToRock="

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 3851
    const-string/jumbo v0, "mReportedActive="

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 3853
    :cond_459
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3855
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    move-object/from16 v3, p1

    move-wide v4, v12

    move-wide v6, v14

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/JobConcurrencyManager;->dumpLocked(Landroid/util/IndentingPrintWriter;JJ)V

    .line 3857
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3858
    const-string v0, "PersistStats: "

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3859
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3860
    .end local v8    # "recentPrinted":Z
    .end local v18    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v19    # "jobPrinted":Z
    .end local v20    # "overridePrinted":Z
    .end local v21    # "uidMapPrinted":Z
    .end local v22    # "backingPrinted":Z
    .end local v23    # "pendingPrinted":Z
    .end local v24    # "pendingIdx":I
    monitor-exit v26
    :try_end_477
    .catchall {:try_start_3e1 .. :try_end_477} :catchall_483

    .line 3861
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3862
    return-void

    .line 3860
    .end local v25    # "filterAppId":I
    .restart local v7    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v11, "filterAppId":I
    :catchall_47b
    move-exception v0

    move-object/from16 v26, v8

    move/from16 v25, v11

    move-object v11, v7

    .end local v7    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v11, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v25    # "filterAppId":I
    :goto_481
    :try_start_481
    monitor-exit v26
    :try_end_482
    .catchall {:try_start_481 .. :try_end_482} :catchall_483

    throw v0

    :catchall_483
    move-exception v0

    goto :goto_481
.end method

.method dumpInternalProto(Ljava/io/FileDescriptor;I)V
    .registers 34
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "filterUid"    # I

    .line 3865
    move-object/from16 v1, p0

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v11, v0

    .line 3866
    .local v11, "proto":Landroid/util/proto/ProtoOutputStream;
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    .line 3867
    .local v12, "filterAppId":I
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v13

    .line 3868
    .local v13, "now":J
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v15

    .line 3869
    .local v15, "nowElapsed":J
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v17

    .line 3870
    .local v17, "nowUptime":J
    new-instance v0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;

    invoke-direct {v0, v12}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;-><init>(I)V

    move-object v10, v0

    .line 3875
    .local v10, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v8, v1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 3876
    const-wide v5, 0x10b00000001L

    :try_start_2e
    invoke-virtual {v11, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 3877
    .local v3, "settingsToken":J
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-virtual {v0, v11}, Lcom/android/server/job/JobSchedulerService$Constants;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 3878
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_41
    .catchall {:try_start_2e .. :try_end_41} :catchall_31f

    if-eqz v7, :cond_58

    :try_start_43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/StateController;

    .line 3879
    .local v7, "controller":Lcom/android/server/job/controllers/StateController;
    invoke-virtual {v7, v11}, Lcom/android/server/job/controllers/StateController;->dumpConstants(Landroid/util/proto/ProtoOutputStream;)V
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_4d

    .line 3880
    .end local v7    # "controller":Lcom/android/server/job/controllers/StateController;
    goto :goto_3d

    .line 3986
    .end local v3    # "settingsToken":J
    :catchall_4d
    move-exception v0

    move/from16 v24, v12

    move-wide/from16 v29, v13

    move/from16 v12, p2

    move-object v14, v8

    move-object v13, v10

    goto/16 :goto_328

    .line 3881
    .restart local v3    # "settingsToken":J
    :cond_58
    :try_start_58
    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3883
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_61
    .catchall {:try_start_58 .. :try_end_61} :catchall_31f

    const/16 v19, 0x1

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_65
    if-ltz v0, :cond_75

    .line 3884
    :try_start_67
    iget-object v7, v1, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/restrictions/JobRestriction;

    invoke-virtual {v7, v11}, Lcom/android/server/job/restrictions/JobRestriction;->dumpConstants(Landroid/util/proto/ProtoOutputStream;)V
    :try_end_72
    .catchall {:try_start_67 .. :try_end_72} :catchall_4d

    .line 3883
    add-int/lit8 v0, v0, -0x1

    goto :goto_65

    .line 3887
    .end local v0    # "i":I
    :cond_75
    :try_start_75
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    array-length v7, v0
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_31f

    const/16 v20, 0x0

    move/from16 v9, v20

    :goto_7c
    if-ge v9, v7, :cond_98

    :try_start_7e
    aget v21, v0, v9

    move/from16 v22, v21

    .line 3888
    .local v22, "u":I
    const-wide v5, 0x20500000002L

    move-object/from16 v21, v0

    move/from16 v0, v22

    .end local v22    # "u":I
    .local v0, "u":I
    invoke-virtual {v11, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V
    :try_end_8e
    .catchall {:try_start_7e .. :try_end_8e} :catchall_4d

    .line 3887
    .end local v0    # "u":I
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v21

    const-wide v5, 0x10b00000001L

    goto :goto_7c

    .line 3891
    :cond_98
    :try_start_98
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-wide v5, 0x10b00000016L

    invoke-virtual {v0, v11, v5, v6}, Lcom/android/server/utils/quota/CountQuotaTracker;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3893
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->size()I

    move-result v0
    :try_end_a8
    .catchall {:try_start_98 .. :try_end_a8} :catchall_31f

    if-lez v0, :cond_1c5

    .line 3894
    :try_start_aa
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v0, v0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore$JobSet;->getAllJobs()Ljava/util/List;

    move-result-object v0

    .line 3895
    .local v0, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService;->sortJobs(Ljava/util/List;)V

    .line 3896
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_b9
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b2

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/JobStatus;

    move-object v9, v7

    .line 3897
    .local v9, "job":Lcom/android/server/job/controllers/JobStatus;
    const-wide v5, 0x20b00000003L

    invoke-virtual {v11, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 3898
    .local v5, "rjToken":J
    move-wide/from16 v25, v5

    const-wide v5, 0x10b00000001L

    .end local v5    # "rjToken":J
    .local v25, "rjToken":J
    invoke-virtual {v9, v11, v5, v6}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3901
    invoke-interface {v10, v9}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7
    :try_end_dd
    .catchall {:try_start_aa .. :try_end_dd} :catchall_1ba

    if-nez v7, :cond_e0

    .line 3902
    goto :goto_b9

    .line 3905
    :cond_e0
    const-wide v22, 0x10b00000002L

    const/4 v7, 0x1

    move-wide/from16 v27, v3

    .end local v3    # "settingsToken":J
    .local v27, "settingsToken":J
    move-object v3, v9

    move-object v4, v11

    move/from16 v24, v12

    move-wide/from16 v29, v13

    const-wide v12, 0x1080000000bL

    .end local v12    # "filterAppId":I
    .end local v13    # "now":J
    .local v24, "filterAppId":I
    .local v29, "now":J
    move-wide/from16 v5, v22

    move-object v14, v8

    move-object v12, v9

    .end local v9    # "job":Lcom/android/server/job/controllers/JobStatus;
    .local v12, "job":Lcom/android/server/job/controllers/JobStatus;
    move-wide v8, v15

    :try_start_f8
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/proto/ProtoOutputStream;JZJ)V

    .line 3908
    const-wide v3, 0x1080000000aL

    .line 3910
    invoke-virtual {v1, v12}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    .line 3908
    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3911
    const-wide v3, 0x10800000003L

    .line 3912
    invoke-virtual {v12}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v5

    .line 3911
    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3913
    const-wide v3, 0x10800000004L

    .line 3914
    invoke-virtual {v1, v12}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    .line 3913
    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3915
    nop

    .line 3917
    invoke-virtual {v1, v12}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v3

    if-eqz v3, :cond_129

    move/from16 v3, v19

    goto :goto_12b

    :cond_129
    move/from16 v3, v20

    .line 3915
    :goto_12b
    const-wide v4, 0x1080000000bL

    invoke-virtual {v11, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3918
    const-wide v3, 0x10800000005L

    iget-object v5, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    .line 3919
    invoke-virtual {v5, v12}, Lcom/android/server/job/PendingJobQueue;->contains(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    .line 3918
    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3920
    const-wide v3, 0x10800000006L

    iget-object v5, v1, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 3921
    invoke-virtual {v5, v12}, Lcom/android/server/job/JobConcurrencyManager;->isJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    .line 3920
    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3922
    const-wide v3, 0x10800000007L

    iget-object v5, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    .line 3923
    invoke-virtual {v12}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    .line 3922
    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3924
    const-wide v3, 0x10800000008L

    .line 3925
    invoke-direct {v1, v12}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    .line 3924
    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3927
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_173
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/restrictions/JobRestriction;

    .line 3928
    .local v4, "restriction":Lcom/android/server/job/restrictions/JobRestriction;
    const-wide v5, 0x20b0000000cL

    invoke-virtual {v11, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 3930
    .local v5, "restrictionsToken":J
    const-wide v7, 0x10e00000001L

    .line 3931
    invoke-virtual {v4}, Lcom/android/server/job/restrictions/JobRestriction;->getInternalReason()I

    move-result v9

    .line 3930
    invoke-virtual {v11, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3932
    const-wide v7, 0x10800000002L

    .line 3933
    invoke-virtual {v4, v12}, Lcom/android/server/job/restrictions/JobRestriction;->isJobRestricted(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v9

    .line 3932
    invoke-virtual {v11, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3934
    invoke-virtual {v11, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3935
    .end local v4    # "restriction":Lcom/android/server/job/restrictions/JobRestriction;
    .end local v5    # "restrictionsToken":J
    goto :goto_173

    .line 3937
    :cond_1a4
    move-wide/from16 v3, v25

    .end local v25    # "rjToken":J
    .local v3, "rjToken":J
    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_1a9
    .catchall {:try_start_f8 .. :try_end_1a9} :catchall_1e7

    .line 3938
    .end local v3    # "rjToken":J
    .end local v12    # "job":Lcom/android/server/job/controllers/JobStatus;
    move-object v8, v14

    move/from16 v12, v24

    move-wide/from16 v3, v27

    move-wide/from16 v13, v29

    goto/16 :goto_b9

    .line 3896
    .end local v24    # "filterAppId":I
    .end local v27    # "settingsToken":J
    .end local v29    # "now":J
    .local v3, "settingsToken":J
    .local v12, "filterAppId":I
    .restart local v13    # "now":J
    :cond_1b2
    move-wide/from16 v27, v3

    move/from16 v24, v12

    move-wide/from16 v29, v13

    move-object v14, v8

    .end local v3    # "settingsToken":J
    .end local v12    # "filterAppId":I
    .end local v13    # "now":J
    .restart local v24    # "filterAppId":I
    .restart local v27    # "settingsToken":J
    .restart local v29    # "now":J
    goto :goto_1cc

    .line 3986
    .end local v0    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v24    # "filterAppId":I
    .end local v27    # "settingsToken":J
    .end local v29    # "now":J
    .restart local v12    # "filterAppId":I
    .restart local v13    # "now":J
    :catchall_1ba
    move-exception v0

    move-wide/from16 v29, v13

    move-object v14, v8

    move-object v13, v10

    move/from16 v24, v12

    move/from16 v12, p2

    .end local v12    # "filterAppId":I
    .end local v13    # "now":J
    .restart local v24    # "filterAppId":I
    .restart local v29    # "now":J
    goto/16 :goto_328

    .line 3893
    .end local v24    # "filterAppId":I
    .end local v29    # "now":J
    .restart local v3    # "settingsToken":J
    .restart local v12    # "filterAppId":I
    .restart local v13    # "now":J
    :cond_1c5
    move-wide/from16 v27, v3

    move/from16 v24, v12

    move-wide/from16 v29, v13

    move-object v14, v8

    .line 3940
    .end local v3    # "settingsToken":J
    .end local v12    # "filterAppId":I
    .end local v13    # "now":J
    .restart local v24    # "filterAppId":I
    .restart local v27    # "settingsToken":J
    .restart local v29    # "now":J
    :goto_1cc
    :try_start_1cc
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_1d6
    .catchall {:try_start_1cc .. :try_end_1d6} :catchall_31a

    if-eqz v3, :cond_1ed

    :try_start_1d8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/StateController;

    .line 3941
    .local v3, "controller":Lcom/android/server/job/controllers/StateController;
    const-wide v4, 0x20b00000004L

    invoke-virtual {v3, v11, v4, v5, v10}, Lcom/android/server/job/controllers/StateController;->dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    :try_end_1e6
    .catchall {:try_start_1d8 .. :try_end_1e6} :catchall_1e7

    .line 3943
    .end local v3    # "controller":Lcom/android/server/job/controllers/StateController;
    goto :goto_1d2

    .line 3986
    .end local v27    # "settingsToken":J
    :catchall_1e7
    move-exception v0

    move/from16 v12, p2

    move-object v13, v10

    goto/16 :goto_328

    .line 3944
    .restart local v27    # "settingsToken":J
    :cond_1ed
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1ee
    :try_start_1ee
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3
    :try_end_1f4
    .catchall {:try_start_1ee .. :try_end_1f4} :catchall_31a

    const/4 v12, -0x1

    if-ge v0, v3, :cond_23c

    .line 3945
    :try_start_1f7
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3
    :try_end_1fd
    .catchall {:try_start_1f7 .. :try_end_1fd} :catchall_236

    .line 3946
    .local v3, "uid":I
    move/from16 v13, v24

    .end local v24    # "filterAppId":I
    .local v13, "filterAppId":I
    if-eq v13, v12, :cond_207

    :try_start_201
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-ne v13, v4, :cond_229

    .line 3947
    :cond_207
    const-wide v4, 0x20b00000005L

    invoke-virtual {v11, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 3948
    .local v4, "pToken":J
    const-wide v6, 0x10500000001L

    invoke-virtual {v11, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3949
    const-wide v6, 0x11100000002L

    iget-object v8, v1, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    .line 3950
    invoke-virtual {v8, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    .line 3949
    invoke-virtual {v11, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3951
    invoke-virtual {v11, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_229
    .catchall {:try_start_201 .. :try_end_229} :catchall_22e

    .line 3944
    .end local v3    # "uid":I
    .end local v4    # "pToken":J
    :cond_229
    add-int/lit8 v0, v0, 0x1

    move/from16 v24, v13

    goto :goto_1ee

    .line 3986
    .end local v0    # "i":I
    .end local v27    # "settingsToken":J
    :catchall_22e
    move-exception v0

    move/from16 v12, p2

    move/from16 v24, v13

    move-object v13, v10

    goto/16 :goto_328

    .end local v13    # "filterAppId":I
    .restart local v24    # "filterAppId":I
    :catchall_236
    move-exception v0

    move/from16 v12, p2

    move-object v13, v10

    .end local v24    # "filterAppId":I
    .restart local v13    # "filterAppId":I
    goto/16 :goto_328

    .line 3944
    .end local v13    # "filterAppId":I
    .restart local v0    # "i":I
    .restart local v24    # "filterAppId":I
    .restart local v27    # "settingsToken":J
    :cond_23c
    move/from16 v13, v24

    .line 3954
    .end local v0    # "i":I
    .end local v24    # "filterAppId":I
    .restart local v13    # "filterAppId":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_23f
    :try_start_23f
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3
    :try_end_245
    .catchall {:try_start_23f .. :try_end_245} :catchall_313

    if-ge v0, v3, :cond_260

    .line 3955
    :try_start_247
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 3956
    .restart local v3    # "uid":I
    if-eq v13, v12, :cond_255

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-ne v13, v4, :cond_25d

    .line 3957
    :cond_255
    const-wide v4, 0x20500000006L

    invoke-virtual {v11, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V
    :try_end_25d
    .catchall {:try_start_247 .. :try_end_25d} :catchall_22e

    .line 3954
    .end local v3    # "uid":I
    :cond_25d
    add-int/lit8 v0, v0, 0x1

    goto :goto_23f

    .line 3961
    .end local v0    # "i":I
    :cond_260
    :try_start_260
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    const-wide v3, 0x10b00000008L

    invoke-virtual {v0, v11, v3, v4, v13}, Lcom/android/server/job/JobPackageTracker;->dump(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 3963
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    const-wide v3, 0x10b00000007L

    invoke-virtual {v0, v11, v3, v4, v13}, Lcom/android/server/job/JobPackageTracker;->dumpHistory(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 3967
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue;->resetIterator()V

    .line 3968
    :goto_279
    iget-object v0, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0
    :try_end_27f
    .catchall {:try_start_260 .. :try_end_27f} :catchall_313

    move-object v8, v0

    .local v8, "job":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v0, :cond_2cf

    .line 3969
    const-wide v3, 0x20b00000009L

    :try_start_287
    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    move-wide v5, v3

    .line 3971
    .local v5, "pjToken":J
    const-wide v3, 0x10b00000001L

    invoke-virtual {v8, v11, v3, v4}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V
    :try_end_294
    .catchall {:try_start_287 .. :try_end_294} :catchall_2c7

    .line 3972
    const-wide v19, 0x10b00000002L

    const/4 v7, 0x0

    move-wide/from16 v21, v3

    move-object v3, v8

    move-object v4, v11

    move/from16 v24, v13

    move-wide v12, v5

    .end local v5    # "pjToken":J
    .end local v13    # "filterAppId":I
    .local v12, "pjToken":J
    .restart local v24    # "filterAppId":I
    move-wide/from16 v5, v19

    move-object v0, v8

    .end local v8    # "job":Lcom/android/server/job/controllers/JobStatus;
    .local v0, "job":Lcom/android/server/job/controllers/JobStatus;
    move-wide v8, v15

    :try_start_2a5
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/proto/ProtoOutputStream;JZJ)V

    .line 3973
    const-wide v3, 0x11100000003L

    invoke-virtual {v1, v0}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v5

    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3974
    const-wide v3, 0x10300000004L

    iget-wide v5, v0, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    sub-long v5, v17, v5

    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3976
    invoke-virtual {v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_2c3
    .catchall {:try_start_2a5 .. :try_end_2c3} :catchall_1e7

    .line 3977
    .end local v12    # "pjToken":J
    move/from16 v13, v24

    const/4 v12, -0x1

    goto :goto_279

    .line 3986
    .end local v0    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v24    # "filterAppId":I
    .end local v27    # "settingsToken":J
    .restart local v13    # "filterAppId":I
    :catchall_2c7
    move-exception v0

    move/from16 v24, v13

    move/from16 v12, p2

    move-object v13, v10

    .end local v13    # "filterAppId":I
    .restart local v24    # "filterAppId":I
    goto/16 :goto_328

    .line 3978
    .end local v24    # "filterAppId":I
    .restart local v8    # "job":Lcom/android/server/job/controllers/JobStatus;
    .restart local v13    # "filterAppId":I
    .restart local v27    # "settingsToken":J
    :cond_2cf
    move-object v0, v8

    move/from16 v24, v13

    .end local v8    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v13    # "filterAppId":I
    .restart local v0    # "job":Lcom/android/server/job/controllers/JobStatus;
    .restart local v24    # "filterAppId":I
    move/from16 v12, p2

    const/4 v3, -0x1

    if-ne v12, v3, :cond_2ef

    .line 3979
    :try_start_2d7
    iget-boolean v3, v1, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    const-wide v4, 0x1080000000bL

    invoke-virtual {v11, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3980
    const-wide v3, 0x1080000000cL

    iget-boolean v5, v1, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V
    :try_end_2eb
    .catchall {:try_start_2d7 .. :try_end_2eb} :catchall_2ec

    goto :goto_2ef

    .line 3986
    .end local v0    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v27    # "settingsToken":J
    :catchall_2ec
    move-exception v0

    move-object v13, v10

    goto :goto_328

    .line 3982
    .restart local v0    # "job":Lcom/android/server/job/controllers/JobStatus;
    .restart local v27    # "settingsToken":J
    :cond_2ef
    :goto_2ef
    :try_start_2ef
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;
    :try_end_2f1
    .catchall {:try_start_2ef .. :try_end_2f1} :catchall_311

    const-wide v5, 0x10b00000014L

    move-object v4, v11

    move-wide/from16 v7, v29

    move-object v13, v10

    .end local v10    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v13, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    move-wide v9, v15

    :try_start_2fb
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/job/JobConcurrencyManager;->dumpProtoLocked(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 3985
    iget-object v3, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3}, Lcom/android/server/job/JobStore;->getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v3

    const-wide v4, 0x10b00000015L

    invoke-virtual {v3, v11, v4, v5}, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3986
    .end local v0    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v27    # "settingsToken":J
    monitor-exit v14
    :try_end_30d
    .catchall {:try_start_2fb .. :try_end_30d} :catchall_32a

    .line 3988
    invoke-virtual {v11}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 3989
    return-void

    .line 3986
    .end local v13    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v10    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    :catchall_311
    move-exception v0

    goto :goto_31d

    .end local v24    # "filterAppId":I
    .local v13, "filterAppId":I
    :catchall_313
    move-exception v0

    move/from16 v12, p2

    move/from16 v24, v13

    move-object v13, v10

    .end local v10    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v13, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v24    # "filterAppId":I
    goto :goto_328

    .end local v13    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v10    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    :catchall_31a
    move-exception v0

    move/from16 v12, p2

    :goto_31d
    move-object v13, v10

    .end local v10    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v13    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    goto :goto_328

    .end local v24    # "filterAppId":I
    .end local v29    # "now":J
    .restart local v10    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .local v12, "filterAppId":I
    .local v13, "now":J
    :catchall_31f
    move-exception v0

    move/from16 v24, v12

    move-wide/from16 v29, v13

    move/from16 v12, p2

    move-object v14, v8

    move-object v13, v10

    .end local v10    # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v12    # "filterAppId":I
    .local v13, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v24    # "filterAppId":I
    .restart local v29    # "now":J
    :goto_328
    :try_start_328
    monitor-exit v14
    :try_end_329
    .catchall {:try_start_328 .. :try_end_329} :catchall_32a

    throw v0

    :catchall_32a
    move-exception v0

    goto :goto_328
.end method

.method evaluateControllerStatesLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 4
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2563
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "c":I
    :goto_8
    if-ltz v0, :cond_18

    .line 2564
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/StateController;

    .line 2565
    .local v1, "sc":Lcom/android/server/job/controllers/StateController;
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/StateController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 2563
    .end local v1    # "sc":Lcom/android/server/job/controllers/StateController;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2567
    .end local v0    # "c":I
    :cond_18
    return-void
.end method

.method evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I
    .registers 6
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2661
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getBias()I

    move-result v0

    .line 2662
    .local v0, "bias":I
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_d

    .line 2663
    invoke-direct {p0, v0, p1}, Lcom/android/server/job/JobSchedulerService;->adjustJobBias(ILcom/android/server/job/controllers/JobStatus;)I

    move-result v1

    return v1

    .line 2665
    :cond_d
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 2666
    .local v1, "override":I
    if-eqz v1, :cond_1f

    .line 2667
    invoke-direct {p0, v1, p1}, Lcom/android/server/job/JobSchedulerService;->adjustJobBias(ILcom/android/server/job/controllers/JobStatus;)I

    move-result v2

    return v2

    .line 2669
    :cond_1f
    invoke-direct {p0, v0, p1}, Lcom/android/server/job/JobSchedulerService;->adjustJobBias(ILcom/android/server/job/controllers/JobStatus;)I

    move-result v2

    return v2
.end method

.method executeCancelCommand(Ljava/io/PrintWriter;Ljava/lang/String;IZI)I
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "hasJobId"    # Z
    .param p5, "jobId"    # I

    .line 3396
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_30

    .line 3397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeCancelCommand(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3400
    :cond_30
    const/4 v0, -0x1

    .line 3402
    .local v0, "pkgUid":I
    :try_start_31
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 3403
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    const-wide/16 v2, 0x0

    invoke-interface {v1, p2, v2, v3, p3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3b} :catch_3d

    move v0, v2

    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    goto :goto_3e

    .line 3404
    :catch_3d
    move-exception v1

    :goto_3e
    nop

    .line 3406
    if-gez v0, :cond_60

    .line 3407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3408
    const/16 v1, -0x3e8

    return v1

    .line 3411
    :cond_60
    const/4 v1, 0x0

    const/16 v2, 0xd

    const-string v3, " in user "

    if-nez p4, :cond_93

    .line 3412
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Canceling all jobs for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3413
    const-string v3, "cancel shell command for package"

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IIILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c8

    .line 3416
    const-string v2, "No matching jobs found."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c8

    .line 3419
    :cond_93
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Canceling job "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3420
    const/16 v3, 0x7d0

    invoke-direct {p0, v0, p5, v3, v2}, Lcom/android/server/job/JobSchedulerService;->cancelJob(IIII)Z

    move-result v2

    if-nez v2, :cond_c8

    .line 3421
    const-string v2, "No matching job found."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3425
    :cond_c8
    :goto_c8
    return v1
.end method

.method executeRunCommand(Ljava/lang/String;IIZZ)I
    .registers 12
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "jobId"    # I
    .param p4, "satisfied"    # Z
    .param p5, "force"    # Z

    .line 3331
    const-string v0, "JobScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeRunCommand(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " f="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3335
    const/16 v0, 0x320

    if-eq p3, v0, :cond_48

    const/16 v0, 0x321

    if-ne p3, v0, :cond_51

    .line 3336
    :cond_48
    const-string/jumbo v0, "persist.sys.idle_job"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3341
    :cond_51
    const/4 v0, 0x0

    :try_start_52
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 3342
    const/4 v4, -0x1

    if-eq p2, v4, :cond_5d

    move v4, p2

    goto :goto_5e

    :cond_5d
    move v4, v0

    .line 3341
    :goto_5e
    invoke-interface {v1, p1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    .line 3343
    .local v1, "uid":I
    if-gez v1, :cond_67

    .line 3344
    const/16 v0, -0x3e8

    return v0

    .line 3347
    :cond_67
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_6a} :catch_b0

    .line 3348
    :try_start_6a
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3, v1, p3}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    .line 3349
    .local v3, "js":Lcom/android/server/job/controllers/JobStatus;
    if-nez v3, :cond_76

    .line 3350
    const/16 v4, -0x3e9

    monitor-exit v2

    return v4

    .line 3353
    :cond_76
    const/4 v4, 0x1

    if-eqz p5, :cond_7b

    const/4 v5, 0x3

    goto :goto_80

    .line 3354
    :cond_7b
    if-eqz p4, :cond_7f

    move v5, v4

    goto :goto_80

    :cond_7f
    const/4 v5, 0x2

    :goto_80
    iput v5, v3, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    .line 3358
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    .local v5, "c":I
    :goto_89
    if-ltz v5, :cond_99

    .line 3359
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v4, v1}, Lcom/android/server/job/controllers/StateController;->reevaluateStateLocked(I)V

    .line 3358
    add-int/lit8 v5, v5, -0x1

    goto :goto_89

    .line 3362
    .end local v5    # "c":I
    :cond_99
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied()Z

    move-result v4

    if-nez v4, :cond_a5

    .line 3363
    iput v0, v3, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    .line 3364
    const/16 v4, -0x3ea

    monitor-exit v2

    return v4

    .line 3367
    :cond_a5
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->queueReadyJobsForExecutionLocked()V

    .line 3368
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->maybeRunPendingJobsLocked()V

    .line 3369
    .end local v3    # "js":Lcom/android/server/job/controllers/JobStatus;
    monitor-exit v2

    .line 3372
    .end local v1    # "uid":I
    goto :goto_b1

    .line 3369
    .restart local v1    # "uid":I
    :catchall_ad
    move-exception v3

    monitor-exit v2
    :try_end_af
    .catchall {:try_start_6a .. :try_end_af} :catchall_ad

    .end local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .end local p1    # "pkgName":Ljava/lang/String;
    .end local p2    # "userId":I
    .end local p3    # "jobId":I
    .end local p4    # "satisfied":Z
    .end local p5    # "force":Z
    :try_start_af
    throw v3
    :try_end_b0
    .catch Landroid/os/RemoteException; {:try_start_af .. :try_end_b0} :catch_b0

    .line 3370
    .end local v1    # "uid":I
    .restart local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .restart local p1    # "pkgName":Ljava/lang/String;
    .restart local p2    # "userId":I
    .restart local p3    # "jobId":I
    .restart local p4    # "satisfied":Z
    .restart local p5    # "force":Z
    :catch_b0
    move-exception v1

    .line 3373
    :goto_b1
    return v0
.end method

.method executeTimeoutCommand(Ljava/io/PrintWriter;Ljava/lang/String;IZI)I
    .registers 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "hasJobId"    # Z
    .param p5, "jobId"    # I

    .line 3379
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_30

    .line 3380
    const-string v0, "JobScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeTimeoutCommand(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3383
    :cond_30
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3384
    :try_start_33
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/JobConcurrencyManager;->executeTimeoutCommandLocked(Ljava/io/PrintWriter;Ljava/lang/String;IZI)Z

    move-result v1

    .line 3386
    .local v1, "foundSome":Z
    if-nez v1, :cond_45

    .line 3387
    const-string v2, "No matching executing jobs found."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3389
    .end local v1    # "foundSome":Z
    :cond_45
    monitor-exit v0

    .line 3390
    const/4 v0, 0x0

    return v0

    .line 3389
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_33 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method getBatterySeq()I
    .registers 3

    .line 3435
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3436
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->getSeq()I

    move-result v1

    monitor-exit v0

    return v1

    .line 3437
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getConstants()Lcom/android/server/job/JobSchedulerService$Constants;
    .registers 2

    .line 1035
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    return-object v0
.end method

.method getJobState(Ljava/io/PrintWriter;Ljava/lang/String;II)I
    .registers 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "jobId"    # I

    .line 3470
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 3471
    const/4 v4, -0x1

    if-eq p3, v4, :cond_c

    move v4, p3

    goto :goto_d

    :cond_c
    move v4, v0

    .line 3470
    :goto_d
    invoke-interface {v1, p2, v2, v3, v4}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    .line 3472
    .local v1, "uid":I
    if-gez v1, :cond_24

    .line 3473
    const-string/jumbo v2, "unknown("

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3474
    const/16 v0, -0x3e8

    return v0

    .line 3477
    :cond_24
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_27} :catch_13b

    .line 3478
    :try_start_27
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3, v1, p4}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    .line 3479
    .local v3, "js":Lcom/android/server/job/controllers/JobStatus;
    sget-boolean v4, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v4, :cond_5d

    const-string v4, "JobScheduler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get-job-state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3480
    :cond_5d
    if-nez v3, :cond_79

    .line 3481
    const-string/jumbo v4, "unknown("

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p1, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3482
    const-string v4, "/jid"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ")"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3483
    const/16 v4, -0x3e9

    monitor-exit v2

    return v4

    .line 3486
    :cond_79
    const/4 v4, 0x0

    .line 3487
    .local v4, "printed":Z
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v5, v3}, Lcom/android/server/job/PendingJobQueue;->contains(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 3488
    const-string/jumbo v5, "pending"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3489
    const/4 v4, 0x1

    .line 3491
    :cond_89
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v5, v3}, Lcom/android/server/job/JobConcurrencyManager;->isJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 3492
    if-eqz v4, :cond_98

    .line 3493
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3495
    :cond_98
    const/4 v4, 0x1

    .line 3496
    const-string v5, "active"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3498
    :cond_9e
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v5

    if-nez v5, :cond_b8

    .line 3499
    if-eqz v4, :cond_b1

    .line 3500
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3502
    :cond_b1
    const/4 v4, 0x1

    .line 3503
    const-string/jumbo v5, "user-stopped"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3505
    :cond_b8
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v5

    if-nez v5, :cond_d2

    .line 3506
    if-eqz v4, :cond_cb

    .line 3507
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3509
    :cond_cb
    const/4 v4, 0x1

    .line 3510
    const-string/jumbo v5, "source-user-stopped"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3512
    :cond_d2
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_eb

    .line 3513
    if-eqz v4, :cond_e5

    .line 3514
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3516
    :cond_e5
    const/4 v4, 0x1

    .line 3517
    const-string v5, "backing-up"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_eb
    .catchall {:try_start_27 .. :try_end_eb} :catchall_138

    .line 3519
    :cond_eb
    const/4 v5, 0x0

    .line 3521
    .local v5, "componentPresent":Z
    :try_start_ec
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    .line 3522
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v7

    const-wide/32 v8, 0x10000000

    .line 3524
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v10

    .line 3521
    invoke-interface {v6, v7, v8, v9, v10}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v6
    :try_end_ff
    .catch Landroid/os/RemoteException; {:try_start_ec .. :try_end_ff} :catch_106
    .catchall {:try_start_ec .. :try_end_ff} :catchall_138

    if-eqz v6, :cond_103

    const/4 v6, 0x1

    goto :goto_104

    :cond_103
    move v6, v0

    :goto_104
    move v5, v6

    .line 3526
    goto :goto_107

    .line 3525
    :catch_106
    move-exception v6

    .line 3527
    :goto_107
    if-nez v5, :cond_117

    .line 3528
    if-eqz v4, :cond_110

    .line 3529
    :try_start_10b
    const-string v6, " "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3531
    :cond_110
    const/4 v4, 0x1

    .line 3532
    const-string/jumbo v6, "no-component"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3534
    :cond_117
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v6

    if-eqz v6, :cond_12b

    .line 3535
    if-eqz v4, :cond_124

    .line 3536
    const-string v6, " "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3538
    :cond_124
    const/4 v4, 0x1

    .line 3539
    const-string/jumbo v6, "ready"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3541
    :cond_12b
    if-nez v4, :cond_133

    .line 3542
    const-string/jumbo v6, "waiting"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3544
    :cond_133
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3545
    .end local v3    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v4    # "printed":Z
    .end local v5    # "componentPresent":Z
    monitor-exit v2

    .line 3548
    .end local v1    # "uid":I
    goto :goto_13c

    .line 3545
    .restart local v1    # "uid":I
    :catchall_138
    move-exception v3

    monitor-exit v2
    :try_end_13a
    .catchall {:try_start_10b .. :try_end_13a} :catchall_138

    .end local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "pkgName":Ljava/lang/String;
    .end local p3    # "userId":I
    .end local p4    # "jobId":I
    :try_start_13a
    throw v3
    :try_end_13b
    .catch Landroid/os/RemoteException; {:try_start_13a .. :try_end_13b} :catch_13b

    .line 3546
    .end local v1    # "uid":I
    .restart local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    .restart local p2    # "pkgName":Ljava/lang/String;
    .restart local p3    # "userId":I
    .restart local p4    # "jobId":I
    :catch_13b
    move-exception v1

    .line 3549
    :goto_13c
    return v0
.end method

.method public getJobStore()Lcom/android/server/job/JobStore;
    .registers 2

    .line 1031
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    return-object v0
.end method

.method public getLock()Ljava/lang/Object;
    .registers 2

    .line 1027
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getMaxJobExecutionTimeMs(Lcom/android/server/job/controllers/JobStatus;)J
    .registers 7
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2627
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2628
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    .line 2629
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v3, v3, Lcom/android/server/job/JobSchedulerService$Constants;->USE_TARE_POLICY:Z

    if-eqz v3, :cond_14

    .line 2630
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mTareController:Lcom/android/server/job/controllers/TareController;

    invoke-virtual {v3, p1}, Lcom/android/server/job/controllers/TareController;->getMaxJobExecutionTimeMsLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v3

    goto :goto_1a

    .line 2631
    :cond_14
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaController:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {v3, p1}, Lcom/android/server/job/controllers/QuotaController;->getMaxJobExecutionTimeMsLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v3

    .line 2628
    :goto_1a
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 2632
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public getMinJobExecutionGuaranteeMs(Lcom/android/server/job/controllers/JobStatus;)J
    .registers 7
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2611
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2612
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 2614
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_15

    .line 2615
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_EJ_GUARANTEE_MS:J

    goto :goto_20

    .line 2616
    :cond_15
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_EJ_GUARANTEE_MS:J

    const-wide/32 v3, 0x493e0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :goto_20
    monitor-exit v0

    .line 2614
    return-wide v1

    .line 2617
    :cond_22
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_30

    .line 2618
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_HIGH_PRIORITY_GUARANTEE_MS:J

    monitor-exit v0

    return-wide v1

    .line 2620
    :cond_30
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_GUARANTEE_MS:J

    monitor-exit v0

    return-wide v1

    .line 2622
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public getPackagesForUidLocked(I)Landroid/util/ArraySet;
    .registers 8
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1060
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v0

    .line 1061
    .local v0, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v0, :cond_2a

    .line 1063
    :try_start_8
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 1064
    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 1065
    .local v1, "pkgs":[Ljava/lang/String;
    if-eqz v1, :cond_28

    .line 1066
    array-length v2, v1

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_21

    aget-object v4, v1, v3

    .line 1067
    .local v4, "pkg":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 1066
    nop

    .end local v4    # "pkg":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 1069
    :cond_21
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v2
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_27} :catch_29

    move-object v0, v2

    .line 1073
    .end local v1    # "pkgs":[Ljava/lang/String;
    :cond_28
    goto :goto_2a

    .line 1071
    :catch_29
    move-exception v1

    .line 1075
    :cond_2a
    :goto_2a
    return-object v0
.end method

.method public getPendingJob(II)Landroid/app/job/JobInfo;
    .registers 8
    .param p1, "uid"    # I
    .param p2, "jobId"    # I

    .line 1287
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1288
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    move-result-object v1

    .line 1289
    .local v1, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_f
    if-ltz v2, :cond_26

    .line 1290
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 1291
    .local v3, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v4

    if-ne v4, p2, :cond_23

    .line 1292
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    monitor-exit v0

    return-object v4

    .line 1289
    .end local v3    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_23
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    .line 1295
    .end local v2    # "i":I
    :cond_26
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 1296
    .end local v1    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method getPendingJobQueue()Lcom/android/server/job/PendingJobQueue;
    .registers 2

    .line 1040
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    return-object v0
.end method

.method public getPendingJobs(I)Ljava/util/List;
    .registers 8
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    .line 1275
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1276
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    move-result-object v1

    .line 1277
    .local v1, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1278
    .local v2, "outList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/job/JobInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_18
    if-ltz v3, :cond_2b

    .line 1279
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 1280
    .local v4, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1278
    nop

    .end local v4    # "job":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v3, v3, -0x1

    goto :goto_18

    .line 1282
    .end local v3    # "i":I
    :cond_2b
    monitor-exit v0

    return-object v2

    .line 1283
    .end local v1    # "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v2    # "outList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/job/JobInfo;>;"
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method getRescheduleJobForFailureLocked(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;
    .registers 23
    .param p1, "failureToReschedule"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1818
    move-object/from16 v0, p0

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 1819
    .local v1, "elapsedNowMillis":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v3

    .line 1821
    .local v3, "job":Landroid/app/job/JobInfo;
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v4

    .line 1822
    .local v4, "initialBackoffMillis":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 1825
    .local v6, "backoffAttempts":I
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v7

    packed-switch v7, :pswitch_data_9c

    .line 1834
    sget-boolean v7, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v7, :cond_39

    .line 1835
    const-string v7, "JobScheduler"

    const-string v8, "Unrecognised back-off policy, defaulting to exponential."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 1827
    :pswitch_29
    move-wide v7, v4

    .line 1828
    .local v7, "backoff":J
    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v9, v9, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME_MS:J

    cmp-long v9, v7, v9

    if-gez v9, :cond_36

    .line 1829
    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v7, v9, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME_MS:J

    .line 1831
    :cond_36
    int-to-long v9, v6

    mul-long/2addr v7, v9

    .line 1832
    .local v7, "delayMillis":J
    goto :goto_4f

    .line 1838
    .end local v7    # "delayMillis":J
    :cond_39
    :goto_39
    :pswitch_39
    move-wide v7, v4

    .line 1839
    .local v7, "backoff":J
    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v9, v9, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME_MS:J

    cmp-long v9, v7, v9

    if-gez v9, :cond_46

    .line 1840
    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v7, v9, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME_MS:J

    .line 1842
    :cond_46
    long-to-float v9, v7

    add-int/lit8 v10, v6, -0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->scalb(FI)F

    move-result v9

    float-to-long v9, v9

    move-wide v7, v9

    .line 1845
    .local v7, "delayMillis":J
    :goto_4f
    const-wide/32 v9, 0x112a880

    .line 1846
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v18

    .line 1847
    .end local v7    # "delayMillis":J
    .local v18, "delayMillis":J
    new-instance v20, Lcom/android/server/job/controllers/JobStatus;

    add-long v9, v1, v18

    const-wide v11, 0x7fffffffffffffffL

    .line 1850
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLastSuccessfulRunTime()J

    move-result-wide v14

    sget-object v7, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v7}, Ljava/time/Clock;->millis()J

    move-result-wide v16

    move-object/from16 v7, v20

    move-object/from16 v8, p1

    move v13, v6

    invoke-direct/range {v7 .. v17}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJIJJ)V

    .line 1851
    .local v7, "newJob":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v8

    if-eqz v8, :cond_7f

    .line 1852
    nop

    .line 1853
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getOriginalLatestRunTimeElapsed()J

    move-result-wide v8

    .line 1852
    invoke-virtual {v7, v8, v9}, Lcom/android/server/job/controllers/JobStatus;->setOriginalLatestRunTimeElapsed(J)V

    .line 1855
    :cond_7f
    const/4 v8, 0x0

    .local v8, "ic":I
    :goto_80
    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_98

    .line 1856
    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/StateController;

    .line 1857
    .local v9, "controller":Lcom/android/server/job/controllers/StateController;
    move-object/from16 v10, p1

    invoke-virtual {v9, v7, v10}, Lcom/android/server/job/controllers/StateController;->rescheduleForFailureLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 1855
    .end local v9    # "controller":Lcom/android/server/job/controllers/StateController;
    add-int/lit8 v8, v8, 0x1

    goto :goto_80

    :cond_98
    move-object/from16 v10, p1

    .line 1859
    .end local v8    # "ic":I
    return-object v7

    nop

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_29
        :pswitch_39
    .end packed-switch
.end method

.method getRescheduleJobForPeriodic(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;
    .registers 39
    .param p1, "periodicToReschedule"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1888
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1891
    .local v0, "elapsedNow":J
    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v2

    .line 1892
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v4

    const-wide v6, 0x757b12c00L

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 1891
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 1894
    .local v2, "period":J
    invoke-static {}, Landroid/app/job/JobInfo;->getMinFlexMillis()J

    move-result-wide v4

    .line 1895
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 1894
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 1896
    .local v4, "flex":J
    const-wide/16 v6, 0x0

    .line 1898
    .local v6, "rescheduleBuffer":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getOriginalLatestRunTimeElapsed()J

    move-result-wide v8

    .line 1899
    .local v8, "olrte":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    const-string v11, "JobScheduler"

    if-ltz v10, :cond_4a

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v10, v8, v12

    if-nez v10, :cond_61

    .line 1900
    :cond_4a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid periodic job original latest run time: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    move-wide v8, v0

    .line 1903
    :cond_61
    move-wide v12, v8

    .line 1905
    .local v12, "latestRunTimeElapsed":J
    sub-long v14, v0, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    .line 1906
    .local v14, "diffMs":J
    cmp-long v10, v0, v12

    const-wide/16 v16, 0x6

    if-lez v10, :cond_bd

    .line 1909
    sget-boolean v10, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v10, :cond_91

    .line 1910
    move-wide/from16 v18, v6

    .end local v6    # "rescheduleBuffer":J
    .local v18, "rescheduleBuffer":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Periodic job ran after its intended window by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_93

    .line 1909
    .end local v18    # "rescheduleBuffer":J
    .restart local v6    # "rescheduleBuffer":J
    :cond_91
    move-wide/from16 v18, v6

    .line 1912
    .end local v6    # "rescheduleBuffer":J
    .restart local v18    # "rescheduleBuffer":J
    :goto_93
    div-long v6, v14, v2

    const-wide/16 v20, 0x1

    add-long v6, v6, v20

    .line 1917
    .local v6, "numSkippedWindows":J
    cmp-long v22, v2, v4

    if-eqz v22, :cond_b2

    sub-long v22, v2, v4

    rem-long v24, v14, v2

    sub-long v22, v22, v24

    div-long v16, v4, v16

    cmp-long v16, v22, v16

    if-gtz v16, :cond_b2

    .line 1918
    if-eqz v10, :cond_b0

    .line 1919
    const-string v10, "Custom flex job ran too close to next window."

    invoke-static {v11, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    :cond_b0
    add-long v6, v6, v20

    .line 1925
    :cond_b2
    mul-long v16, v2, v6

    add-long v16, v12, v16

    .line 1926
    .end local v6    # "numSkippedWindows":J
    .local v16, "newLatestRuntimeElapsed":J
    move-wide/from16 v22, v8

    move-wide/from16 v8, v16

    move-wide/from16 v6, v18

    goto :goto_e3

    .line 1927
    .end local v16    # "newLatestRuntimeElapsed":J
    .end local v18    # "rescheduleBuffer":J
    .local v6, "rescheduleBuffer":J
    :cond_bd
    move-wide/from16 v18, v6

    .end local v6    # "rescheduleBuffer":J
    .restart local v18    # "rescheduleBuffer":J
    add-long v6, v12, v2

    .line 1928
    .local v6, "newLatestRuntimeElapsed":J
    move-wide/from16 v20, v6

    .end local v6    # "newLatestRuntimeElapsed":J
    .local v20, "newLatestRuntimeElapsed":J
    const-wide/32 v6, 0x1b7740

    cmp-long v10, v14, v6

    if-gez v10, :cond_dd

    div-long v22, v2, v16

    cmp-long v10, v14, v22

    if-gez v10, :cond_dd

    .line 1931
    div-long v16, v2, v16

    move-wide/from16 v22, v8

    .end local v8    # "olrte":J
    .local v22, "olrte":J
    sub-long v8, v16, v14

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    move-wide/from16 v8, v20

    .end local v18    # "rescheduleBuffer":J
    .local v6, "rescheduleBuffer":J
    goto :goto_e3

    .line 1928
    .end local v6    # "rescheduleBuffer":J
    .end local v22    # "olrte":J
    .restart local v8    # "olrte":J
    .restart local v18    # "rescheduleBuffer":J
    :cond_dd
    move-wide/from16 v22, v8

    .line 1935
    .end local v8    # "olrte":J
    .restart local v22    # "olrte":J
    move-wide/from16 v6, v18

    move-wide/from16 v8, v20

    .end local v18    # "rescheduleBuffer":J
    .end local v20    # "newLatestRuntimeElapsed":J
    .restart local v6    # "rescheduleBuffer":J
    .local v8, "newLatestRuntimeElapsed":J
    :goto_e3
    cmp-long v10, v8, v0

    if-gez v10, :cond_11b

    .line 1936
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v16, v12

    .end local v12    # "latestRunTimeElapsed":J
    .local v16, "latestRunTimeElapsed":J
    const-string v12, "Rescheduling calculated latest runtime in the past: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    new-instance v10, Lcom/android/server/job/controllers/JobStatus;

    add-long v11, v0, v2

    sub-long v26, v11, v4

    add-long v28, v0, v2

    const/16 v30, 0x0

    sget-object v11, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 1941
    invoke-virtual {v11}, Ljava/time/Clock;->millis()J

    move-result-wide v31

    .line 1942
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLastFailedRunTime()J

    move-result-wide v33

    move-object/from16 v24, v10

    move-object/from16 v25, p1

    invoke-direct/range {v24 .. v34}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJIJJ)V

    .line 1938
    return-object v10

    .line 1945
    .end local v16    # "latestRunTimeElapsed":J
    .restart local v12    # "latestRunTimeElapsed":J
    :cond_11b
    move-wide/from16 v16, v12

    .end local v12    # "latestRunTimeElapsed":J
    .restart local v16    # "latestRunTimeElapsed":J
    sub-long v12, v2, v6

    .line 1946
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    sub-long v12, v8, v12

    .line 1948
    .local v12, "newEarliestRunTimeElapsed":J
    sget-boolean v10, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v10, :cond_15a

    .line 1949
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v18, v0

    .end local v0    # "elapsedNow":J
    .local v18, "elapsedNow":J
    const-string v0, "Rescheduling executed periodic. New execution window ["

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v20, 0x3e8

    move-wide/from16 v35, v2

    .end local v2    # "period":J
    .local v35, "period":J
    div-long v1, v12, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-long v1, v8, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15e

    .line 1948
    .end local v18    # "elapsedNow":J
    .end local v35    # "period":J
    .restart local v0    # "elapsedNow":J
    .restart local v2    # "period":J
    :cond_15a
    move-wide/from16 v18, v0

    move-wide/from16 v35, v2

    .line 1953
    .end local v0    # "elapsedNow":J
    .end local v2    # "period":J
    .restart local v18    # "elapsedNow":J
    .restart local v35    # "period":J
    :goto_15e
    new-instance v0, Lcom/android/server/job/controllers/JobStatus;

    const/16 v30, 0x0

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 1956
    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v31

    .line 1957
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getLastFailedRunTime()J

    move-result-wide v33

    move-object/from16 v24, v0

    move-object/from16 v25, p1

    move-wide/from16 v26, v12

    move-wide/from16 v28, v8

    invoke-direct/range {v24 .. v34}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJIJJ)V

    .line 1953
    return-object v0
.end method

.method getStorageNotLow()Z
    .registers 3

    .line 3461
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3462
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    if-eqz v1, :cond_10

    .line 3463
    invoke-virtual {v1}, Lcom/android/server/job/controllers/StorageController;->getTracker()Lcom/android/server/job/controllers/StorageController$StorageTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->isStorageNotLow()Z

    move-result v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    monitor-exit v0

    .line 3462
    return v1

    .line 3464
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method getStorageSeq()I
    .registers 3

    .line 3455
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3456
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/android/server/job/controllers/StorageController;->getTracker()Lcom/android/server/job/controllers/StorageController$StorageTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->getSeq()I

    move-result v1

    goto :goto_11

    :cond_10
    const/4 v1, -0x1

    :goto_11
    monitor-exit v0

    return v1

    .line 3457
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getTestableContext()Landroid/content/Context;
    .registers 2

    .line 1023
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getUidBias(I)I
    .registers 5
    .param p1, "uid"    # I

    .line 1439
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1440
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1441
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public isBatteryCharging()Z
    .registers 3

    .line 3442
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3443
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isCharging()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 3444
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public isBatteryNotLow()Z
    .registers 3

    .line 3449
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3450
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isBatteryNotLow()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 3451
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 3
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1779
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobConcurrencyManager;->isJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    return v0
.end method

.method isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 3
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2480
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v0

    return v0
.end method

.method isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;Z)Z
    .registers 13
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "rejectActive"    # Z

    .line 2485
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v0

    .line 2487
    .local v0, "jobReady":Z
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string/jumbo v2, "isReadyToBeExecutedLocked: "

    const-string v3, "JobScheduler"

    if-eqz v1, :cond_2f

    .line 2488
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ready="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2495
    :cond_2f
    const/4 v4, 0x0

    if-nez v0, :cond_55

    .line 2496
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.jobscheduler.cts.jobtestapp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 2497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    NOT READY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    :cond_54
    return v4

    .line 2502
    :cond_55
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v5, p1}, Lcom/android/server/job/JobStore;->containsJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    .line 2503
    .local v5, "jobExists":Z
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v6

    .line 2504
    .local v6, "userStarted":Z
    iget-object v7, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    .line 2506
    .local v7, "backingUp":Z
    if-eqz v1, :cond_a1

    .line 2507
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " exists="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " userStarted="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " backingUp="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2514
    :cond_a1
    if-eqz v5, :cond_fb

    if-eqz v6, :cond_fb

    if-eqz v7, :cond_a8

    goto :goto_fb

    .line 2518
    :cond_a8
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v8

    if-eqz v8, :cond_af

    .line 2519
    return v4

    .line 2522
    :cond_af
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v8, p1}, Lcom/android/server/job/PendingJobQueue;->contains(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v8

    .line 2523
    .local v8, "jobPending":Z
    if-eqz p2, :cond_c1

    iget-object v9, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v9, p1}, Lcom/android/server/job/JobConcurrencyManager;->isJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v9

    if-eqz v9, :cond_c1

    const/4 v9, 0x1

    goto :goto_c2

    :cond_c1
    move v9, v4

    .line 2525
    .local v9, "jobActive":Z
    :goto_c2
    if-eqz v1, :cond_f0

    .line 2526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pending="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " active="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2533
    :cond_f0
    if-nez v8, :cond_fa

    if-eqz v9, :cond_f5

    goto :goto_fa

    .line 2538
    :cond_f5
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    return v1

    .line 2534
    :cond_fa
    :goto_fa
    return v4

    .line 2515
    .end local v8    # "jobPending":Z
    .end local v9    # "jobActive":Z
    :cond_fb
    :goto_fb
    return v4
.end method

.method synthetic lambda$new$1$com-android-server-job-JobSchedulerService()V
    .registers 14

    .line 1628
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1630
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1631
    .local v0, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/job/controllers/JobStatus;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1632
    .local v1, "toAdd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1635
    :try_start_11
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/android/server/job/JobStore;->getRtcCorrectedJobsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1639
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1640
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1d
    if-ge v4, v3, :cond_61

    .line 1641
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 1642
    .local v5, "oldJob":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/JobStatus;

    move-object v12, v6

    .line 1643
    .local v12, "newJob":Lcom/android/server/job/controllers/JobStatus;
    sget-boolean v6, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v6, :cond_52

    .line 1644
    const-string v6, "JobScheduler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  replacing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    :cond_52
    const/16 v9, 0xe

    const/16 v10, 0x9

    const-string v11, "deferred rtc calculation"

    move-object v6, p0

    move-object v7, v5

    move-object v8, v12

    invoke-direct/range {v6 .. v11}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    .line 1640
    .end local v5    # "oldJob":Lcom/android/server/job/controllers/JobStatus;
    .end local v12    # "newJob":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 1649
    .end local v3    # "N":I
    .end local v4    # "i":I
    :cond_61
    monitor-exit v2

    .line 1650
    return-void

    .line 1649
    :catchall_63
    move-exception v3

    monitor-exit v2
    :try_end_65
    .catchall {:try_start_11 .. :try_end_65} :catchall_63

    throw v3
.end method

.method synthetic lambda$onBootPhase$2$com-android-server-job-JobSchedulerService(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1711
    const/4 v0, 0x0

    .local v0, "controller":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 1712
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/StateController;

    .line 1713
    .local v1, "sc":Lcom/android/server/job/controllers/StateController;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/job/controllers/StateController;->maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 1711
    .end local v1    # "sc":Lcom/android/server/job/controllers/StateController;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1715
    .end local v0    # "controller":I
    :cond_18
    return-void
.end method

.method synthetic lambda$updateMediaBackupExemptionLocked$4$com-android-server-job-JobSchedulerService(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 3
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2451
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->updateMediaBackupExemptionStatus()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2452
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2454
    :cond_b
    return-void
.end method

.method maybeRunPendingJobsLocked()V
    .registers 3

    .line 2641
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_29

    .line 2642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pending queue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v1}, Lcom/android/server/job/PendingJobQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " jobs."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    :cond_29
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v0}, Lcom/android/server/job/JobConcurrencyManager;->assignJobsToContextsLocked()V

    .line 2645
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    .line 2646
    return-void
.end method

.method noteJobsPending(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 1787
    .local p1, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_14

    .line 1788
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    invoke-direct {p0, v1}, Lcom/android/server/job/JobSchedulerService;->noteJobPending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1787
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1790
    .end local v0    # "i":I
    :cond_14
    return-void
.end method

.method public onBootPhase(I)V
    .registers 13
    .param p1, "phase"    # I

    .line 1659
    const/4 v0, 0x1

    const/16 v1, 0x1f4

    if-ne v1, p1, :cond_ba

    .line 1660
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstantsObserver:Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->start()V

    .line 1661
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/StateController;

    .line 1662
    .local v2, "controller":Lcom/android/server/job/controllers/StateController;
    invoke-virtual {v2}, Lcom/android/server/job/controllers/StateController;->onSystemServicesReady()V

    .line 1663
    .end local v2    # "controller":Lcom/android/server/job/controllers/StateController;
    goto :goto_10

    .line 1665
    :cond_20
    const-class v1, Lcom/android/server/AppStateTracker;

    .line 1666
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppStateTracker;

    .line 1665
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppStateTrackerImpl;

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 1668
    const-class v1, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManagerInternal;

    new-instance v2, Lcom/android/server/job/JobSchedulerService$CloudProviderChangeListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/job/JobSchedulerService$CloudProviderChangeListener;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobSchedulerService$CloudProviderChangeListener-IA;)V

    .line 1669
    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManagerInternal;->registerCloudProviderChangeListener(Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;)V

    .line 1672
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1673
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1674
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1675
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1676
    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1677
    const-string v2, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1678
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1679
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, v1

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1681
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1682
    .local v2, "userFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1683
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    move-object v8, v2

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1686
    :try_start_8c
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mUidObserver:Landroid/app/IUidObserver;

    const/16 v6, 0xf

    const/4 v7, -0x1

    invoke-interface {v4, v5, v6, v7, v3}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_98
    .catch Landroid/os/RemoteException; {:try_start_8c .. :try_end_98} :catch_99

    .line 1692
    goto :goto_9a

    .line 1690
    :catch_99
    move-exception v3

    .line 1694
    :goto_9a
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v3}, Lcom/android/server/job/JobConcurrencyManager;->onSystemReady()V

    .line 1697
    invoke-direct {p0}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForNonExistentUsers()V

    .line 1699
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    .local v3, "i":I
    :goto_a9
    if-ltz v3, :cond_b9

    .line 1700
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/restrictions/JobRestriction;

    invoke-virtual {v0}, Lcom/android/server/job/restrictions/JobRestriction;->onSystemServicesReady()V

    .line 1699
    add-int/lit8 v3, v3, -0x1

    goto :goto_a9

    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "userFilter":Landroid/content/IntentFilter;
    .end local v3    # "i":I
    :cond_b9
    goto :goto_ea

    .line 1702
    :cond_ba
    const/16 v1, 0x258

    if-ne p1, v1, :cond_ea

    .line 1703
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1705
    :try_start_c1
    iput-boolean v0, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    .line 1706
    const-class v2, Lcom/android/server/DeviceIdleInternal;

    .line 1707
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DeviceIdleInternal;

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    .line 1708
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v2}, Lcom/android/server/job/JobConcurrencyManager;->onThirdPartyAppsCanStart()V

    .line 1710
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    new-instance v3, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-virtual {v2, v3}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    .line 1717
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1718
    monitor-exit v1

    goto :goto_eb

    :catchall_e7
    move-exception v0

    monitor-exit v1
    :try_end_e9
    .catchall {:try_start_c1 .. :try_end_e9} :catchall_e7

    throw v0

    .line 1702
    :cond_ea
    :goto_ea
    nop

    .line 1720
    :goto_eb
    return-void
.end method

.method public onControllerStateChanged(Landroid/util/ArraySet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 2049
    .local p1, "changedJobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-nez p1, :cond_d

    .line 2050
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2b

    .line 2051
    :cond_d
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_2b

    .line 2052
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2053
    :try_start_16
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 2054
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_28

    .line 2055
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2b

    .line 2054
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1

    .line 2057
    :cond_2b
    :goto_2b
    return-void
.end method

.method public onDeviceIdleStateChanged(Z)V
    .registers 6
    .param p1, "deviceIdle"    # Z

    .line 1446
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1447
    :try_start_3
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_1f

    .line 1448
    const-string v1, "JobScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Doze state changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    :cond_1f
    if-nez p1, :cond_3c

    .line 1452
    iget-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-eqz v1, :cond_3c

    .line 1453
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    const/4 v2, 0x1

    if-eqz v1, :cond_33

    .line 1454
    iget-boolean v3, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    if-nez v3, :cond_33

    .line 1455
    iput-boolean v2, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    .line 1456
    invoke-interface {v1, v2}, Lcom/android/server/DeviceIdleInternal;->setJobsActive(Z)V

    .line 1459
    :cond_33
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1462
    :cond_3c
    monitor-exit v0

    .line 1463
    return-void

    .line 1462
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public onJobCompletedLocked(Lcom/android/server/job/controllers/JobStatus;IZ)V
    .registers 10
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "debugStopReason"    # I
    .param p3, "needsReschedule"    # Z

    .line 1973
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v1, "JobScheduler"

    if-eqz v0, :cond_30

    .line 1974
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Completed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reschedule="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    :cond_30
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobs:[Lcom/android/server/job/controllers/JobStatus;

    iget v3, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobIndex:I

    aput-object p1, v2, v3

    .line 1979
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobTimeElapsed:[J

    sget-object v4, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 1980
    iget v2, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobIndex:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x14

    iput v2, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobIndex:I

    .line 1982
    const/4 v2, 0x7

    if-eq p2, v2, :cond_e8

    const/16 v2, 0x8

    if-ne p2, v2, :cond_51

    goto/16 :goto_e8

    .line 1998
    :cond_51
    if-eqz p3, :cond_58

    .line 1999
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->getRescheduleJobForFailureLocked(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    goto :goto_59

    :cond_58
    const/4 v2, 0x0

    .line 2000
    .local v2, "rescheduledJob":Lcom/android/server/job/controllers/JobStatus;
    :goto_59
    if-eqz v2, :cond_64

    const/4 v3, 0x3

    if-eq p2, v3, :cond_61

    const/4 v3, 0x2

    if-ne p2, v3, :cond_64

    .line 2003
    :cond_61
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->disallowRunInBatterySaverAndDoze()V

    .line 2008
    :cond_64
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/job/JobSchedulerService;->stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v3

    if-nez v3, :cond_96

    .line 2009
    if-eqz v0, :cond_7b

    .line 2010
    const-string v0, "Could not find job to remove. Was job removed while executing?"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    :cond_7b
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    .line 2013
    .local v0, "newJs":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v0, :cond_95

    .line 2016
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2018
    :cond_95
    return-void

    .line 2021
    .end local v0    # "newJs":Lcom/android/server/job/controllers/JobStatus;
    :cond_96
    const-string v0, "Unable to regrant job permissions for "

    if-eqz v2, :cond_b7

    .line 2023
    :try_start_9a
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked()V
    :try_end_9d
    .catch Ljava/lang/SecurityException; {:try_start_9a .. :try_end_9d} :catch_9e

    .line 2026
    goto :goto_b3

    .line 2024
    :catch_9e
    move-exception v3

    .line 2025
    .local v3, "e":Ljava/lang/SecurityException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    .end local v3    # "e":Ljava/lang/SecurityException;
    :goto_b3
    invoke-direct {p0, v2, p1}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_e1

    .line 2028
    :cond_b7
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v3

    if-eqz v3, :cond_e1

    .line 2029
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->getRescheduleJobForPeriodic(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    .line 2031
    .local v3, "rescheduledPeriodic":Lcom/android/server/job/controllers/JobStatus;
    :try_start_c5
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked()V
    :try_end_c8
    .catch Ljava/lang/SecurityException; {:try_start_c5 .. :try_end_c8} :catch_c9

    .line 2034
    goto :goto_de

    .line 2032
    :catch_c9
    move-exception v4

    .line 2033
    .local v4, "e":Ljava/lang/SecurityException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    .end local v4    # "e":Ljava/lang/SecurityException;
    :goto_de
    invoke-direct {p0, v3, p1}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    .line 2037
    .end local v3    # "rescheduledPeriodic":Lcom/android/server/job/controllers/JobStatus;
    :cond_e1
    :goto_e1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->unprepareLocked()V

    .line 2038
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    .line 2039
    return-void

    .line 1986
    .end local v2    # "rescheduledJob":Lcom/android/server/job/controllers/JobStatus;
    :cond_e8
    :goto_e8
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->unprepareLocked()V

    .line 1987
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    .line 1988
    return-void
.end method

.method public onRestrictedBucketChanged(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 1467
    .local p1, "jobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1468
    .local v0, "len":I
    if-nez v0, :cond_f

    .line 1469
    const-string v1, "JobScheduler"

    const-string/jumbo v2, "onRestrictedBucketChanged called with no jobs"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    return-void

    .line 1472
    :cond_f
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1473
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    const/4 v3, 0x1

    if-ge v2, v0, :cond_49

    .line 1474
    :try_start_16
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 1475
    .local v4, "js":Lcom/android/server/job/controllers/JobStatus;
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mRestrictiveControllers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    .local v5, "j":I
    :goto_23
    if-ltz v5, :cond_46

    .line 1478
    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v3

    const/4 v6, 0x5

    if-ne v3, v6, :cond_38

    .line 1479
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mRestrictiveControllers:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/RestrictingController;

    invoke-virtual {v3, v4}, Lcom/android/server/job/controllers/RestrictingController;->startTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_43

    .line 1481
    :cond_38
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mRestrictiveControllers:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/RestrictingController;

    invoke-virtual {v3, v4}, Lcom/android/server/job/controllers/RestrictingController;->stopTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1475
    :goto_43
    add-int/lit8 v5, v5, -0x1

    goto :goto_23

    .line 1473
    .end local v4    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v5    # "j":I
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1485
    .end local v2    # "i":I
    :cond_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_16 .. :try_end_4a} :catchall_54

    .line 1486
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1487
    return-void

    .line 1485
    :catchall_54
    move-exception v2

    :try_start_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v2
.end method

.method public onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 4
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2061
    if-nez p1, :cond_d

    .line 2062
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_17

    .line 2064
    :cond_d
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2066
    :goto_17
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 1654
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    const-string/jumbo v1, "jobscheduler"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/job/JobSchedulerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1655
    return-void
.end method

.method public onUserCompletedEvent(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$UserCompletedEventType;)V
    .registers 5
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;
    .param p2, "eventType"    # Lcom/android/server/SystemService$UserCompletedEventType;

    .line 1088
    invoke-virtual {p2}, Lcom/android/server/SystemService$UserCompletedEventType;->includesOnUserStarting()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p2}, Lcom/android/server/SystemService$UserCompletedEventType;->includesOnUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1091
    :cond_c
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1093
    :cond_16
    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 5
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 1080
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1081
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->appendInt([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    .line 1082
    monitor-exit v0

    .line 1083
    return-void

    .line 1082
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 5
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 1097
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1098
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils;->removeInt([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    .line 1099
    monitor-exit v0

    .line 1100
    return-void

    .line 1099
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method reportActiveLocked()V
    .registers 6

    .line 1491
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 1492
    .local v0, "active":Z
    :goto_c
    if-nez v0, :cond_2c

    .line 1493
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v2}, Lcom/android/server/job/JobConcurrencyManager;->getRunningJobsLocked()Landroid/util/ArraySet;

    move-result-object v2

    .line 1494
    .local v2, "runningJobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "i":I
    :goto_19
    if-ltz v3, :cond_2c

    .line 1495
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 1496
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->canRunInDoze()Z

    move-result v4

    if-nez v4, :cond_29

    .line 1499
    const/4 v0, 0x1

    .line 1500
    goto :goto_2c

    .line 1494
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_29
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 1505
    .end local v2    # "runningJobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v3    # "i":I
    :cond_2c
    :goto_2c
    iget-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    if-eq v1, v0, :cond_39

    .line 1506
    iput-boolean v0, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    .line 1507
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    if-eqz v1, :cond_39

    .line 1508
    invoke-interface {v1, v0}, Lcom/android/server/DeviceIdleInternal;->setJobsActive(Z)V

    .line 1511
    :cond_39
    return-void
.end method

.method reportAppUsage(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1516
    return-void
.end method

.method resetExecutionQuota(Ljava/lang/String;I)V
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3553
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3554
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaController:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {v1, p2, p1}, Lcom/android/server/job/controllers/QuotaController;->clearAppStatsLocked(ILjava/lang/String;)V

    .line 3555
    monitor-exit v0

    .line 3556
    return-void

    .line 3555
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method resetScheduleQuota()V
    .registers 2

    .line 3559
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    invoke-virtual {v0}, Lcom/android/server/utils/quota/CountQuotaTracker;->clear()V

    .line 3560
    return-void
.end method

.method public scheduleAsPackage(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;ILjava/lang/String;ILjava/lang/String;)I
    .registers 41
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .param p2, "work"    # Landroid/app/job/JobWorkItem;
    .param p3, "uId"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .param p6, "tag"    # Ljava/lang/String;

    .line 1114
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v15, p3

    move-object/from16 v14, p4

    move/from16 v13, p5

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 1115
    .local v12, "servicePkg":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v0

    const/16 v33, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_102

    if-eqz v14, :cond_25

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_102

    .line 1117
    :cond_25
    if-nez v14, :cond_29

    move-object v0, v12

    goto :goto_2a

    :cond_29
    move-object v0, v14

    :goto_2a
    move-object v2, v0

    .line 1118
    .local v2, "pkg":Ljava/lang/String;
    iget-object v0, v7, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-string v3, ".schedulePersisted()"

    invoke-virtual {v0, v13, v2, v3}, Lcom/android/server/utils/quota/CountQuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_fb

    .line 1119
    iget-object v0, v7, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-string v3, ".schedulePersisted out-of-quota logged"

    invoke-virtual {v0, v13, v2, v3}, Lcom/android/server/utils/quota/CountQuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 1121
    const-string v0, "JobScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has called schedule() too many times"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    iget-object v0, v7, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-string v3, ".schedulePersisted out-of-quota logged"

    invoke-virtual {v0, v13, v2, v3}, Lcom/android/server/utils/quota/CountQuotaTracker;->noteEvent(ILjava/lang/String;Ljava/lang/String;)Z

    .line 1124
    :cond_68
    iget-object v0, v7, Lcom/android/server/job/JobSchedulerService;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    const/4 v3, 0x4

    invoke-interface {v0, v2, v13, v3}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;II)V

    .line 1126
    iget-object v0, v7, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_THROW_EXCEPTION:Z

    if-eqz v0, :cond_f4

    .line 1128
    iget-object v3, v7, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1129
    :try_start_77
    iget-object v0, v7, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7d
    .catchall {:try_start_77 .. :try_end_7d} :catchall_f1

    if-nez v0, :cond_a8

    .line 1131
    :try_start_7f
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/16 v4, 0x0

    .line 1132
    invoke-interface {v0, v2, v4, v5, v13}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1133
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_9f

    .line 1134
    iget-object v4, v7, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_96

    move/from16 v5, v33

    goto :goto_97

    :cond_96
    move v5, v1

    .line 1135
    :goto_97
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 1134
    invoke-virtual {v4, v14, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_9e} :catch_a1
    .catchall {:try_start_7f .. :try_end_9e} :catchall_f1

    .line 1141
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_a8

    .line 1137
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_9f
    :try_start_9f
    monitor-exit v3

    return v1

    .line 1139
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_a1
    move-exception v0

    .line 1140
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v2    # "pkg":Ljava/lang/String;
    .end local v12    # "servicePkg":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .end local p1    # "job":Landroid/app/job/JobInfo;
    .end local p2    # "work":Landroid/app/job/JobWorkItem;
    .end local p3    # "uId":I
    .end local p4    # "packageName":Ljava/lang/String;
    .end local p5    # "userId":I
    .end local p6    # "tag":Ljava/lang/String;
    throw v1

    .line 1143
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "pkg":Ljava/lang/String;
    .restart local v12    # "servicePkg":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .restart local p1    # "job":Landroid/app/job/JobInfo;
    .restart local p2    # "work":Landroid/app/job/JobWorkItem;
    .restart local p3    # "uId":I
    .restart local p4    # "packageName":Ljava/lang/String;
    .restart local p5    # "userId":I
    .restart local p6    # "tag":Ljava/lang/String;
    :cond_a8
    :goto_a8
    iget-object v0, v7, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1144
    .local v0, "isDebuggable":Z
    monitor-exit v3
    :try_end_b5
    .catchall {:try_start_9f .. :try_end_b5} :catchall_f1

    .line 1145
    if-nez v0, :cond_b8

    goto :goto_f4

    .line 1147
    :cond_b8
    new-instance v1, Landroid/os/LimitExceededException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "schedule()/enqueue() called more than "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v7, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v5, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

    .line 1149
    invoke-virtual {v4, v5}, Lcom/android/server/utils/quota/CountQuotaTracker;->getLimit(Lcom/android/server/utils/quota/Category;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " times in the past "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v7, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 1152
    invoke-virtual {v4, v5}, Lcom/android/server/utils/quota/CountQuotaTracker;->getWindowSizeMs(Lcom/android/server/utils/quota/Category;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms. See the documentation for more information."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/LimitExceededException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1144
    .end local v0    # "isDebuggable":Z
    :catchall_f1
    move-exception v0

    :try_start_f2
    monitor-exit v3
    :try_end_f3
    .catchall {:try_start_f2 .. :try_end_f3} :catchall_f1

    throw v0

    .line 1157
    :cond_f4
    :goto_f4
    iget-object v0, v7, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT:Z

    if-eqz v0, :cond_fb

    .line 1158
    return v1

    .line 1161
    :cond_fb
    iget-object v0, v7, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-string v3, ".schedulePersisted()"

    invoke-virtual {v0, v13, v2, v3}, Lcom/android/server/utils/quota/CountQuotaTracker;->noteEvent(ILjava/lang/String;Ljava/lang/String;)Z

    .line 1164
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_102
    iget-object v0, v7, Lcom/android/server/job/JobSchedulerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, v15, v12}, Landroid/app/ActivityManagerInternal;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_137

    .line 1165
    const-string v0, "JobScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not scheduling job "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- package not allowed to start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    return v1

    .line 1170
    :cond_137
    iget-object v11, v7, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1171
    :try_start_13a
    iget-object v0, v7, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    invoke-virtual {v0, v15, v2}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0
    :try_end_144
    .catchall {:try_start_13a .. :try_end_144} :catchall_274

    .line 1173
    .local v0, "toCancel":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v9, :cond_161

    if-eqz v0, :cond_161

    .line 1176
    :try_start_148
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/job/JobInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_161

    .line 1178
    invoke-virtual {v0, v9}, Lcom/android/server/job/controllers/JobStatus;->enqueueWorkLocked(Landroid/app/job/JobWorkItem;)V

    .line 1182
    iget-object v1, v7, Lcom/android/server/job/JobSchedulerService;->mIsUidActivePredicate:Ljava/util/function/Predicate;

    invoke-virtual {v0, v1}, Lcom/android/server/job/controllers/JobStatus;->maybeAddForegroundExemption(Ljava/util/function/Predicate;)V

    .line 1184
    monitor-exit v11
    :try_end_15b
    .catchall {:try_start_148 .. :try_end_15b} :catchall_15c

    return v33

    .line 1270
    .end local v0    # "toCancel":Lcom/android/server/job/controllers/JobStatus;
    :catchall_15c
    move-exception v0

    move-object v1, v11

    move-object v6, v12

    goto/16 :goto_277

    .line 1188
    .restart local v0    # "toCancel":Lcom/android/server/job/controllers/JobStatus;
    :cond_161
    move-object/from16 v10, p6

    :try_start_163
    invoke-static {v8, v15, v14, v13, v10}, Lcom/android/server/job/controllers/JobStatus;->createFromJobInfo(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    move-object v6, v2

    .line 1191
    .local v6, "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v2
    :try_end_16c
    .catchall {:try_start_163 .. :try_end_16c} :catchall_274

    if-eqz v2, :cond_18c

    .line 1192
    :try_start_16e
    iget-object v2, v7, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v2, v2, Lcom/android/server/job/JobSchedulerService$Constants;->USE_TARE_POLICY:Z

    if-eqz v2, :cond_17c

    iget-object v2, v7, Lcom/android/server/job/JobSchedulerService;->mTareController:Lcom/android/server/job/controllers/TareController;

    invoke-virtual {v2, v6}, Lcom/android/server/job/controllers/TareController;->canScheduleEJ(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    if-eqz v2, :cond_18a

    :cond_17c
    iget-object v2, v7, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v2, v2, Lcom/android/server/job/JobSchedulerService$Constants;->USE_TARE_POLICY:Z

    if-nez v2, :cond_18c

    iget-object v2, v7, Lcom/android/server/job/JobSchedulerService;->mQuotaController:Lcom/android/server/job/controllers/QuotaController;

    .line 1194
    invoke-virtual {v2, v6}, Lcom/android/server/job/controllers/QuotaController;->isWithinEJQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    if-nez v2, :cond_18c

    .line 1195
    :cond_18a
    monitor-exit v11
    :try_end_18b
    .catchall {:try_start_16e .. :try_end_18b} :catchall_15c

    return v1

    .line 1203
    :cond_18c
    :try_start_18c
    iget-object v1, v7, Lcom/android/server/job/JobSchedulerService;->mIsUidActivePredicate:Ljava/util/function/Predicate;

    invoke-virtual {v6, v1}, Lcom/android/server/job/controllers/JobStatus;->maybeAddForegroundExemption(Ljava/util/function/Predicate;)V

    .line 1205
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z
    :try_end_193
    .catchall {:try_start_18c .. :try_end_193} :catchall_274

    if-eqz v1, :cond_1b1

    :try_start_195
    const-string v1, "JobScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SCHEDULE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    :cond_1b1
    if-nez v14, :cond_1de

    .line 1208
    iget-object v1, v7, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, v15}, Lcom/android/server/job/JobStore;->countJobsForUid(I)I

    move-result v1

    const/16 v2, 0x96

    if-gt v1, v2, :cond_1be

    goto :goto_1de

    .line 1209
    :cond_1be
    const-string v1, "JobScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many jobs for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Apps may not schedule more than 150 distinct jobs"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v12    # "servicePkg":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .end local p1    # "job":Landroid/app/job/JobInfo;
    .end local p2    # "work":Landroid/app/job/JobWorkItem;
    .end local p3    # "uId":I
    .end local p4    # "packageName":Ljava/lang/String;
    .end local p5    # "userId":I
    .end local p6    # "tag":Ljava/lang/String;
    throw v1
    :try_end_1de
    .catchall {:try_start_195 .. :try_end_1de} :catchall_15c

    .line 1216
    .restart local v12    # "servicePkg":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/job/JobSchedulerService;
    .restart local p1    # "job":Landroid/app/job/JobInfo;
    .restart local p2    # "work":Landroid/app/job/JobWorkItem;
    .restart local p3    # "uId":I
    .restart local p4    # "packageName":Ljava/lang/String;
    .restart local p5    # "userId":I
    .restart local p6    # "tag":Ljava/lang/String;
    :cond_1de
    :goto_1de
    :try_start_1de
    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked()V
    :try_end_1e1
    .catchall {:try_start_1de .. :try_end_1e1} :catchall_274

    .line 1218
    if-eqz v0, :cond_1f3

    .line 1220
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_1e5
    const-string/jumbo v16, "job rescheduled by app"

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v6

    move-object v15, v6

    .end local v6    # "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    .local v15, "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V
    :try_end_1f2
    .catchall {:try_start_1e5 .. :try_end_1f2} :catchall_15c

    goto :goto_1f8

    .line 1223
    .end local v15    # "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    .restart local v6    # "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    :cond_1f3
    move-object v15, v6

    .end local v6    # "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    .restart local v15    # "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    const/4 v1, 0x0

    :try_start_1f5
    invoke-direct {v7, v15, v1}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    :try_end_1f8
    .catchall {:try_start_1f5 .. :try_end_1f8} :catchall_274

    .line 1226
    :goto_1f8
    if-eqz v9, :cond_1fd

    .line 1228
    :try_start_1fa
    invoke-virtual {v15, v9}, Lcom/android/server/job/controllers/JobStatus;->enqueueWorkLocked(Landroid/app/job/JobWorkItem;)V
    :try_end_1fd
    .catchall {:try_start_1fa .. :try_end_1fd} :catchall_15c

    .line 1231
    :cond_1fd
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1232
    :try_start_200
    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, -0x1

    .line 1234
    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->getStandbyBucket()I

    move-result v16

    .line 1235
    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v17

    .line 1236
    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    move-result v18

    .line 1237
    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->hasBatteryNotLowConstraint()Z

    move-result v19

    .line 1238
    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->hasStorageNotLowConstraint()Z

    move-result v20

    .line 1239
    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v21

    .line 1240
    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v22

    .line 1241
    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    move-result v23

    .line 1242
    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v24

    .line 1243
    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v25

    .line 1244
    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    .line 1247
    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v29

    .line 1248
    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v30

    .line 1249
    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v31

    .line 1250
    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    move-result v32
    :try_end_24e
    .catchall {:try_start_200 .. :try_end_24e} :catchall_274

    .line 1231
    move v10, v1

    move-object v1, v11

    move/from16 v11, p3

    move-object v6, v12

    .end local v12    # "servicePkg":Ljava/lang/String;
    .local v6, "servicePkg":Ljava/lang/String;
    move-object v12, v2

    move-object v13, v3

    move v14, v4

    move-object v2, v15

    .end local v15    # "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    .local v2, "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    move v15, v5

    :try_start_258
    invoke-static/range {v10 .. v32}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;IIIIZZZZZZZZZZIZIII)V

    .line 1261
    invoke-virtual {v7, v2}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    if-eqz v3, :cond_26f

    .line 1264
    iget-object v3, v7, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v3, v2}, Lcom/android/server/job/JobPackageTracker;->notePending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1265
    iget-object v3, v7, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v3, v2}, Lcom/android/server/job/PendingJobQueue;->add(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1266
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobSchedulerService;->maybeRunPendingJobsLocked()V

    goto :goto_272

    .line 1268
    :cond_26f
    invoke-virtual {v7, v2}, Lcom/android/server/job/JobSchedulerService;->evaluateControllerStatesLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1270
    .end local v0    # "toCancel":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    :goto_272
    monitor-exit v1

    .line 1271
    return v33

    .line 1270
    .end local v6    # "servicePkg":Ljava/lang/String;
    .restart local v12    # "servicePkg":Ljava/lang/String;
    :catchall_274
    move-exception v0

    move-object v1, v11

    move-object v6, v12

    .end local v12    # "servicePkg":Ljava/lang/String;
    .restart local v6    # "servicePkg":Ljava/lang/String;
    :goto_277
    monitor-exit v1
    :try_end_278
    .catchall {:try_start_258 .. :try_end_278} :catchall_279

    throw v0

    :catchall_279
    move-exception v0

    goto :goto_277
.end method

.method setMonitorBattery(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 3429
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3430
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->setMonitorBatteryLocked(Z)V

    .line 3431
    monitor-exit v0

    .line 3432
    return-void

    .line 3431
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method triggerDockState(Z)V
    .registers 5
    .param p1, "idleState"    # Z

    .line 3564
    if-eqz p1, :cond_a

    .line 3565
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOCK_IDLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "dockIntent":Landroid/content/Intent;
    goto :goto_11

    .line 3567
    .end local v0    # "dockIntent":Landroid/content/Intent;
    :cond_a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOCK_ACTIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3569
    .restart local v0    # "dockIntent":Landroid/content/Intent;
    :goto_11
    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3570
    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3571
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3572
    return-void
.end method

.method updateQuotaTracker()V
    .registers 6

    .line 469
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_API_QUOTAS:Z

    invoke-virtual {v0, v1}, Lcom/android/server/utils/quota/CountQuotaTracker;->setEnabled(Z)V

    .line 470
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v2, v2, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_COUNT:I

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v3, v3, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_WINDOW_MS:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    .line 473
    return-void
.end method

.method updateUidState(II)V
    .registers 9
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .line 1410
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1411
    :try_start_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 1412
    .local v1, "prevBias":I
    const/4 v3, 0x2

    if-ne p2, v3, :cond_15

    .line 1416
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    const/16 v4, 0x28

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_30

    .line 1417
    :cond_15
    const/4 v3, 0x4

    if-gt p2, v3, :cond_20

    .line 1418
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    const/16 v4, 0x23

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_30

    .line 1419
    :cond_20
    const/4 v3, 0x5

    if-gt p2, v3, :cond_2b

    .line 1420
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    const/16 v4, 0x1e

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_30

    .line 1422
    :cond_2b
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1424
    :goto_30
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 1425
    .local v2, "newBias":I
    if-eq v1, v2, :cond_84

    .line 1426
    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v3, :cond_68

    .line 1427
    const-string v3, "JobScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bias changed from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    :cond_68
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_69
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7f

    .line 1430
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v4, p1, v1, v2}, Lcom/android/server/job/controllers/StateController;->onUidBiasChangedLocked(III)V

    .line 1429
    add-int/lit8 v3, v3, 0x1

    goto :goto_69

    .line 1432
    .end local v3    # "c":I
    :cond_7f
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/job/JobConcurrencyManager;->onUidBiasChangedLocked(II)V

    .line 1434
    .end local v1    # "prevBias":I
    .end local v2    # "newBias":I
    :cond_84
    monitor-exit v0

    .line 1435
    return-void

    .line 1434
    :catchall_86
    move-exception v1

    monitor-exit v0
    :try_end_88
    .catchall {:try_start_3 .. :try_end_88} :catchall_86

    throw v1
.end method
