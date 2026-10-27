.class Lcom/android/server/job/JobConcurrencyManager;
.super Ljava/lang/Object;
.source "JobConcurrencyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;,
        Lcom/android/server/job/JobConcurrencyManager$PackageStats;,
        Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;,
        Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;,
        Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;,
        Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;,
        Lcom/android/server/job/JobConcurrencyManager$Stats;,
        Lcom/android/server/job/JobConcurrencyManager$WorkType;
    }
.end annotation


# static fields
.field private static final ALL_WORK_TYPES:I = 0x3f

.field static final CONFIG_KEY_PREFIX_CONCURRENCY:Ljava/lang/String; = "concurrency_"

.field private static final CONFIG_LIMITS_SCREEN_OFF:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

.field private static final CONFIG_LIMITS_SCREEN_ON:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

.field private static final DEBUG:Z

.field private static final DEFAULT_PKG_CONCURRENCY_LIMIT_EJ:I = 0x3

.field private static final DEFAULT_PKG_CONCURRENCY_LIMIT_REGULAR:I = 0x8

.field private static final DEFAULT_SCREEN_OFF_ADJUSTMENT_DELAY_MS:J = 0x7530L

.field static final KEY_PKG_CONCURRENCY_LIMIT_EJ:Ljava/lang/String; = "concurrency_pkg_concurrency_limit_ej"

.field static final KEY_PKG_CONCURRENCY_LIMIT_REGULAR:Ljava/lang/String; = "concurrency_pkg_concurrency_limit_regular"

.field private static final KEY_SCREEN_OFF_ADJUSTMENT_DELAY_MS:Ljava/lang/String; = "concurrency_screen_off_adjustment_delay_ms"

.field private static final MAX_RETAINED_OBJECTS:I = 0x18

.field static final NUM_WORK_TYPES:I = 0x6

.field public static final STANDARD_CONCURRENCY_LIMIT:I = 0x10

.field private static final SYSTEM_STATE_REFRESH_MIN_INTERVAL:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "JobScheduler.Concurrency"

.field static final WORK_TYPE_BG:I = 0x8

.field static final WORK_TYPE_BGUSER:I = 0x20

.field static final WORK_TYPE_BGUSER_IMPORTANT:I = 0x10

.field static final WORK_TYPE_EJ:I = 0x4

.field static final WORK_TYPE_FGS:I = 0x2

.field static final WORK_TYPE_NONE:I = 0x0

.field static final WORK_TYPE_TOP:I = 0x1

.field private static final sDeterminationComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivePkgStats:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/job/JobConcurrencyManager$PackageStats;",
            ">;"
        }
    .end annotation
.end field

.field final mActiveServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/job/JobServiceContext;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mContextAssignmentPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool<",
            "Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentInteractiveState:Z

.field private mEffectiveInteractiveState:Z

.field mGracePeriodObserver:Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

.field private final mHandler:Landroid/os/Handler;

.field private final mIdleContexts:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/JobServiceContext;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMemoryTrimLevel:I

.field private mLastScreenOffRealtime:J

.field private mLastScreenOnRealtime:J

.field private final mLock:Ljava/lang/Object;

.field private mNextSystemStateRefreshTime:J

.field private mNumDroppedContexts:I

.field private final mPackageStatsStagingCountClearer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/job/JobConcurrencyManager$PackageStats;",
            ">;"
        }
    .end annotation
.end field

.field private mPkgConcurrencyLimitEj:I

.field private mPkgConcurrencyLimitRegular:I

.field private final mPkgStatsPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool<",
            "Lcom/android/server/job/JobConcurrencyManager$PackageStats;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mRampUpForScreenOff:Ljava/lang/Runnable;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRecycledChanged:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecycledIdle:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecycledPreferredUidOnly:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecycledStoppable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunningJobs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOffAdjustmentDelayMs:J

.field private final mService:Lcom/android/server/job/JobSchedulerService;

.field mShouldRestrictBgUser:Z

.field private final mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

.field private final mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

.field private mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;


# direct methods
.method public static synthetic $r8$lambda$q1zni_rSk5NsoVWlH1JE0tQHT2c(Lcom/android/server/job/JobConcurrencyManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/job/JobConcurrencyManager;->rampUpForScreenOff()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/job/JobConcurrencyManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPowerManager(Lcom/android/server/job/JobConcurrencyManager;)Landroid/os/PowerManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monInteractiveStateChanged(Lcom/android/server/job/JobConcurrencyManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/job/JobConcurrencyManager;->onInteractiveStateChanged(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopLongRunningJobsLocked(Lcom/android/server/job/JobConcurrencyManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/job/JobConcurrencyManager;->stopLongRunningJobsLocked(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopUnexemptedJobsForDoze(Lcom/android/server/job/JobConcurrencyManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/job/JobConcurrencyManager;->stopUnexemptedJobsForDoze()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 16

    .line 82
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    .line 193
    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    new-instance v1, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 197
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 198
    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    const/16 v9, 0x8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    .line 199
    const/16 v11, 0x10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v12, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v13

    .line 197
    invoke-static {v4, v6, v8, v10, v13}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 201
    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    .line 202
    invoke-static {v12, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    .line 203
    const/16 v13, 0x20

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v13, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    .line 201
    invoke-static {v8, v10, v14}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const-string/jumbo v10, "screen_on_normal"

    const/16 v14, 0xb

    invoke-direct {v1, v10, v14, v4, v8}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    new-instance v4, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 207
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-static {v5, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    .line 208
    invoke-static {v3, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    invoke-static {v9, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v15

    .line 209
    invoke-static {v12, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    .line 207
    invoke-static {v8, v10, v14, v15, v11}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 211
    invoke-static {v9, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    .line 212
    invoke-static {v12, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    .line 213
    invoke-static {v13, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    .line 211
    invoke-static {v10, v11, v14}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const-string/jumbo v11, "screen_on_moderate"

    const/16 v14, 0x9

    invoke-direct {v4, v11, v14, v8, v10}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    new-instance v8, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 217
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    invoke-static {v5, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    .line 218
    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v15

    .line 217
    invoke-static {v10, v11, v15}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 220
    invoke-static {v9, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    .line 221
    invoke-static {v12, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v15

    .line 222
    invoke-static {v13, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    .line 220
    invoke-static {v11, v15, v14}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string/jumbo v14, "screen_on_low"

    invoke-direct {v8, v14, v6, v10, v11}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    new-instance v10, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 226
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    invoke-static {v5, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    .line 227
    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v15

    .line 226
    invoke-static {v11, v14, v15}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 229
    invoke-static {v9, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    .line 230
    invoke-static {v12, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v15

    .line 231
    invoke-static {v13, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 229
    invoke-static {v14, v15, v6}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string/jumbo v14, "screen_on_critical"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v11, v6}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    invoke-direct {v0, v1, v4, v8, v10}, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;-><init>(Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;)V

    sput-object v0, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_ON:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    .line 234
    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    new-instance v1, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 238
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-static {v5, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 239
    invoke-static {v3, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-static {v9, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    .line 240
    invoke-static {v12, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    .line 238
    invoke-static {v4, v6, v8, v10, v11}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 242
    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    .line 243
    invoke-static {v12, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    .line 244
    invoke-static {v13, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    .line 242
    invoke-static {v6, v8, v10}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string/jumbo v8, "screen_off_normal"

    const/16 v10, 0x10

    invoke-direct {v1, v8, v10, v4, v6}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    new-instance v4, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 248
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-static {v5, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    .line 249
    invoke-static {v3, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    invoke-static {v9, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    .line 250
    invoke-static {v12, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    .line 248
    invoke-static {v6, v8, v10, v11, v14}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 252
    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    .line 253
    invoke-static {v12, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    .line 254
    invoke-static {v13, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    .line 252
    invoke-static {v8, v10, v11}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const-string/jumbo v10, "screen_off_moderate"

    const/16 v11, 0xe

    invoke-direct {v4, v10, v11, v6, v8}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    new-instance v6, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 258
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-static {v5, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    .line 259
    invoke-static {v3, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    invoke-static {v9, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    .line 258
    invoke-static {v8, v10, v11, v14}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 261
    invoke-static {v9, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    .line 262
    invoke-static {v12, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    .line 263
    invoke-static {v13, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    .line 261
    invoke-static {v7, v10, v11}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const-string/jumbo v10, "screen_off_low"

    const/16 v11, 0x9

    invoke-direct {v6, v10, v11, v8, v7}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    new-instance v7, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 267
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-static {v5, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    .line 268
    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 267
    invoke-static {v8, v5, v3}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 270
    invoke-static {v9, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    .line 271
    invoke-static {v12, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    .line 272
    invoke-static {v13, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 270
    invoke-static {v5, v8, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string/jumbo v5, "screen_off_critical"

    const/4 v8, 0x6

    invoke-direct {v7, v5, v8, v3, v2}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    invoke-direct {v0, v1, v4, v6, v7}, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;-><init>(Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;)V

    sput-object v0, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_OFF:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    .line 280
    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/job/JobConcurrencyManager;->sDeterminationComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledChanged:Landroid/util/ArraySet;

    .line 311
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledIdle:Landroid/util/ArraySet;

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPreferredUidOnly:Ljava/util/ArrayList;

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledStoppable:Ljava/util/ArrayList;

    .line 315
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 324
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    .line 326
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mNumDroppedContexts:I

    .line 328
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    .line 330
    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-direct {v0}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    .line 332
    new-instance v0, Landroid/util/Pools$SimplePool;

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgStatsPool:Landroid/util/Pools$Pool;

    .line 335
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    .line 337
    sget-object v0, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_OFF:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    iget-object v0, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 340
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mScreenOffAdjustmentDelayMs:J

    .line 346
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitEj:I

    .line 352
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitRegular:I

    .line 361
    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPackageStatsStagingCountClearer:Ljava/util/function/Consumer;

    .line 364
    new-instance v0, Lcom/android/internal/util/jobs/StatLogger;

    const-string v1, "assignJobsToContexts"

    const-string/jumbo v2, "refreshSystemState"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/jobs/StatLogger;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    .line 441
    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobConcurrencyManager$1;-><init>(Lcom/android/server/job/JobConcurrencyManager;)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 504
    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/job/JobConcurrencyManager;)V

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRampUpForScreenOff:Ljava/lang/Runnable;

    .line 381
    iput-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 382
    iget-object v0, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLock:Ljava/lang/Object;

    .line 383
    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->getTestableContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mContext:Landroid/content/Context;

    .line 385
    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mHandler:Landroid/os/Handler;

    .line 387
    new-instance v1, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

    invoke-direct {v1, v0}, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mGracePeriodObserver:Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

    .line 388
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110169

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mShouldRestrictBgUser:Z

    .line 390
    return-void
.end method

.method private assignJobsToContextsInternalLocked()V
    .registers 32

    .line 627
    move-object/from16 v0, p0

    sget-boolean v1, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    const-string v2, "JobScheduler.Concurrency"

    if-eqz v1, :cond_f

    .line 628
    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/JobConcurrencyManager;->printPendingQueueLocked()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_f
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->getPendingJobQueue()Lcom/android/server/job/PendingJobQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/job/PendingJobQueue;->size()I

    move-result v1

    if-nez v1, :cond_1c

    .line 633
    return-void

    .line 636
    :cond_1c
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->getPendingJobQueue()Lcom/android/server/job/PendingJobQueue;

    move-result-object v1

    .line 637
    .local v1, "pendingJobQueue":Lcom/android/server/job/PendingJobQueue;
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 640
    .local v3, "activeServices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/JobServiceContext;>;"
    iget-object v4, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledChanged:Landroid/util/ArraySet;

    .line 641
    .local v4, "changed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;>;"
    iget-object v5, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledIdle:Landroid/util/ArraySet;

    .line 642
    .local v5, "idle":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;>;"
    iget-object v6, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPreferredUidOnly:Ljava/util/ArrayList;

    .line 643
    .local v6, "preferredUidOnly":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;>;"
    iget-object v7, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledStoppable:Ljava/util/ArrayList;

    .line 645
    .local v7, "stoppable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/JobConcurrencyManager;->updateCounterConfigLocked()V

    .line 647
    iget-object v8, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v8}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->resetCounts()V

    .line 652
    const/4 v8, 0x1

    invoke-direct {v0, v1, v8}, Lcom/android/server/job/JobConcurrencyManager;->updateNonRunningPrioritiesLocked(Lcom/android/server/job/PendingJobQueue;Z)V

    .line 654
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    .line 655
    .local v9, "numRunningJobs":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3d
    const/4 v11, 0x0

    if-ge v10, v9, :cond_85

    .line 656
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/job/JobServiceContext;

    .line 657
    .local v12, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v12}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v13

    .line 659
    .local v13, "js":Lcom/android/server/job/controllers/JobStatus;
    iget-object v14, v0, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    invoke-interface {v14}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 660
    .local v14, "assignment":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    if-nez v14, :cond_5a

    .line 661
    new-instance v15, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    invoke-direct {v15, v11}, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;-><init>(Lcom/android/server/job/JobConcurrencyManager$ContextAssignment-IA;)V

    move-object v14, v15

    .line 664
    :cond_5a
    iput-object v12, v14, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 666
    if-eqz v13, :cond_6d

    .line 667
    iget-object v11, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v12}, Lcom/android/server/job/JobServiceContext;->getRunningJobWorkType()I

    move-result v15

    invoke-virtual {v11, v15}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->incrementRunningJobCount(I)V

    .line 668
    invoke-virtual {v12}, Lcom/android/server/job/JobServiceContext;->getRunningJobWorkType()I

    move-result v11

    iput v11, v14, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->workType:I

    .line 671
    :cond_6d
    invoke-virtual {v12}, Lcom/android/server/job/JobServiceContext;->getPreferredUid()I

    move-result v11

    iput v11, v14, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preferredUid:I

    .line 672
    invoke-virtual {v0, v12}, Lcom/android/server/job/JobConcurrencyManager;->shouldStopRunningJobLocked(Lcom/android/server/job/JobServiceContext;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v14, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->shouldStopJobReason:Ljava/lang/String;

    if-eqz v11, :cond_7f

    .line 673
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_82

    .line 675
    :cond_7f
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    .end local v12    # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v13    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v14    # "assignment":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    :goto_82
    add-int/lit8 v10, v10, 0x1

    goto :goto_3d

    .line 678
    .end local v10    # "i":I
    :cond_85
    sget-object v10, Lcom/android/server/job/JobConcurrencyManager;->sDeterminationComparator:Ljava/util/Comparator;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 679
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 680
    move v10, v9

    .restart local v10    # "i":I
    :goto_8e
    const/16 v12, 0x10

    if-ge v10, v12, :cond_c6

    .line 682
    iget-object v12, v0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v12

    .line 683
    .local v12, "numIdleContexts":I
    if-lez v12, :cond_a5

    .line 684
    iget-object v13, v0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    add-int/lit8 v14, v12, -0x1

    invoke-virtual {v13, v14}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/job/JobServiceContext;

    .local v13, "jsc":Lcom/android/server/job/JobServiceContext;
    goto :goto_ae

    .line 686
    .end local v13    # "jsc":Lcom/android/server/job/JobServiceContext;
    :cond_a5
    const-string v13, "Had fewer than 16 in existence"

    invoke-static {v2, v13}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/JobConcurrencyManager;->createNewJobServiceContext()Lcom/android/server/job/JobServiceContext;

    move-result-object v13

    .line 690
    .restart local v13    # "jsc":Lcom/android/server/job/JobServiceContext;
    :goto_ae
    iget-object v14, v0, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    invoke-interface {v14}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 691
    .restart local v14    # "assignment":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    if-nez v14, :cond_be

    .line 692
    new-instance v15, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    invoke-direct {v15, v11}, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;-><init>(Lcom/android/server/job/JobConcurrencyManager$ContextAssignment-IA;)V

    move-object v14, v15

    .line 695
    :cond_be
    iput-object v13, v14, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 696
    invoke-virtual {v5, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 680
    .end local v12    # "numIdleContexts":I
    .end local v13    # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v14    # "assignment":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    add-int/lit8 v10, v10, 0x1

    goto :goto_8e

    .line 698
    .end local v10    # "i":I
    :cond_c6
    sget-boolean v10, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    const/4 v13, 0x2

    const/4 v14, 0x0

    if-eqz v10, :cond_dc

    .line 699
    new-array v10, v13, [Ljava/util/Collection;

    aput-object v7, v10, v14

    aput-object v6, v10, v8

    const-string/jumbo v15, "running jobs initial"

    invoke-static {v15, v10}, Lcom/android/server/job/JobConcurrencyManager;->printAssignments(Ljava/lang/String;[Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_dc
    iget-object v10, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v10}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->onCountDone()V

    .line 705
    invoke-virtual {v1}, Lcom/android/server/job/PendingJobQueue;->resetIterator()V

    .line 706
    move v10, v9

    .line 707
    .local v10, "projectedRunningCount":I
    :goto_e5
    invoke-virtual {v1}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v15

    move-object/from16 v16, v15

    .local v16, "nextPending":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v15, :cond_372

    .line 708
    iget-object v15, v0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    move-object/from16 v14, v16

    .end local v16    # "nextPending":Lcom/android/server/job/controllers/JobStatus;
    .local v14, "nextPending":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v15, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11c

    .line 710
    const-string v15, "Pending queue contained a running job"

    invoke-static {v2, v15}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    sget-boolean v15, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v15, :cond_116

    .line 712
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Pending+running job: "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_116
    invoke-virtual {v1, v14}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 715
    const/4 v11, 0x0

    const/4 v14, 0x0

    goto :goto_e5

    .line 718
    :cond_11c
    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v11

    const/16 v15, 0x28

    if-eqz v11, :cond_12a

    iget v11, v14, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-ne v11, v15, :cond_12a

    move v11, v8

    goto :goto_12b

    :cond_12a
    const/4 v11, 0x0

    .line 720
    .local v11, "isTopEj":Z
    :goto_12b
    sget-boolean v17, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v17, :cond_15d

    invoke-direct {v0, v14}, Lcom/android/server/job/JobConcurrencyManager;->isSimilarJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v17

    if-eqz v17, :cond_15d

    .line 721
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Already running similar "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v11, :cond_145

    const-string v15, "TOP-EJ"

    goto :goto_148

    :cond_145
    const-string/jumbo v15, "job"

    :goto_148
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " to: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_15d
    const/4 v13, 0x0

    .line 731
    .local v13, "selectedContext":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    invoke-virtual {v0, v14}, Lcom/android/server/job/JobConcurrencyManager;->getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v15

    .line 732
    .local v15, "allWorkTypes":I
    invoke-virtual {v0, v14}, Lcom/android/server/job/JobConcurrencyManager;->isPkgConcurrencyLimitedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    .line 733
    .local v18, "pkgConcurrencyOkay":Z
    if-le v10, v12, :cond_16d

    move/from16 v19, v8

    goto :goto_16f

    :cond_16d
    const/16 v19, 0x0

    .line 734
    .local v19, "isInOverage":Z
    :goto_16f
    const/16 v20, 0x0

    .line 735
    .local v20, "startingJob":Z
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v21

    if-lez v21, :cond_1b1

    .line 736
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v21

    add-int/lit8 v12, v21, -0x1

    .line 737
    .local v12, "idx":I
    invoke-virtual {v5, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v8, v21

    check-cast v8, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 738
    .local v8, "assignment":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    move-object/from16 v21, v1

    .end local v1    # "pendingJobQueue":Lcom/android/server/job/PendingJobQueue;
    .local v21, "pendingJobQueue":Lcom/android/server/job/PendingJobQueue;
    iget v1, v8, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preferredUid:I

    move-object/from16 v22, v3

    .end local v3    # "activeServices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/JobServiceContext;>;"
    .local v22, "activeServices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/JobServiceContext;>;"
    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    if-eq v1, v3, :cond_199

    iget v1, v8, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preferredUid:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_197

    goto :goto_199

    :cond_197
    const/4 v1, 0x0

    goto :goto_19a

    :cond_199
    :goto_199
    const/4 v1, 0x1

    .line 740
    .local v1, "preferredUidOkay":Z
    :goto_19a
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v3, v15}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(I)I

    move-result v3

    .line 741
    .local v3, "workType":I
    if-eqz v1, :cond_1b5

    if-eqz v18, :cond_1b5

    if-eqz v3, :cond_1b5

    .line 744
    move-object v13, v8

    .line 745
    const/16 v20, 0x1

    .line 746
    invoke-virtual {v5, v12}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 747
    iput-object v14, v8, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    .line 748
    iput v3, v8, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    goto :goto_1b5

    .line 735
    .end local v8    # "assignment":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    .end local v12    # "idx":I
    .end local v21    # "pendingJobQueue":Lcom/android/server/job/PendingJobQueue;
    .end local v22    # "activeServices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/JobServiceContext;>;"
    .local v1, "pendingJobQueue":Lcom/android/server/job/PendingJobQueue;
    .local v3, "activeServices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/JobServiceContext;>;"
    :cond_1b1
    move-object/from16 v21, v1

    move-object/from16 v22, v3

    .line 751
    .end local v1    # "pendingJobQueue":Lcom/android/server/job/PendingJobQueue;
    .end local v3    # "activeServices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/JobServiceContext;>;"
    .restart local v21    # "pendingJobQueue":Lcom/android/server/job/PendingJobQueue;
    .restart local v22    # "activeServices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/JobServiceContext;>;"
    :cond_1b5
    :goto_1b5
    if-nez v13, :cond_26f

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_26f

    .line 752
    const/4 v1, 0x0

    .line 753
    .local v1, "topEjCount":I
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    const/4 v8, 0x1

    sub-int/2addr v3, v8

    .local v3, "r":I
    :goto_1c6
    if-ltz v3, :cond_1e4

    .line 754
    iget-object v8, v0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/JobStatus;

    .line 755
    .local v8, "js":Lcom/android/server/job/controllers/JobStatus;
    iget-boolean v12, v8, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v12, :cond_1df

    iget v12, v8, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    move-object/from16 v23, v8

    const/16 v8, 0x28

    .end local v8    # "js":Lcom/android/server/job/controllers/JobStatus;
    .local v23, "js":Lcom/android/server/job/controllers/JobStatus;
    if-ne v12, v8, :cond_1e1

    .line 756
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e1

    .line 755
    .end local v23    # "js":Lcom/android/server/job/controllers/JobStatus;
    .restart local v8    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_1df
    move-object/from16 v23, v8

    .line 753
    .end local v8    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_1e1
    :goto_1e1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1c6

    .line 759
    .end local v3    # "r":I
    :cond_1e4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v8, 0x1

    sub-int/2addr v3, v8

    .local v3, "s":I
    :goto_1ea
    if-ltz v3, :cond_266

    .line 760
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 761
    .local v8, "assignment":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    iget-object v12, v8, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v12}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v12

    .line 773
    .local v12, "runningJob":Lcom/android/server/job/controllers/JobStatus;
    move/from16 v23, v11

    .line 774
    .local v23, "canReplace":Z
    if-nez v23, :cond_231

    if-nez v19, :cond_231

    .line 775
    move/from16 v24, v9

    .end local v9    # "numRunningJobs":I
    .local v24, "numRunningJobs":I
    iget-object v9, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v9, v12}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v9

    .line 776
    .local v9, "currentJobBias":I
    move-object/from16 v25, v13

    .end local v13    # "selectedContext":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    .local v25, "selectedContext":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    iget v13, v12, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    move-object/from16 v26, v12

    const/16 v12, 0x28

    .end local v12    # "runningJob":Lcom/android/server/job/controllers/JobStatus;
    .local v26, "runningJob":Lcom/android/server/job/controllers/JobStatus;
    if-lt v13, v12, :cond_229

    if-lt v9, v12, :cond_229

    int-to-double v12, v1

    const-wide/high16 v27, 0x3fe0000000000000L    # 0.5

    move/from16 v29, v1

    .end local v1    # "topEjCount":I
    .local v29, "topEjCount":I
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 778
    invoke-virtual {v1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMaxTotal()I

    move-result v1

    move-object/from16 v30, v2

    int-to-double v1, v1

    mul-double v1, v1, v27

    cmpl-double v1, v12, v1

    if-lez v1, :cond_227

    goto :goto_22d

    :cond_227
    const/4 v1, 0x0

    goto :goto_22e

    .line 776
    .end local v29    # "topEjCount":I
    .restart local v1    # "topEjCount":I
    :cond_229
    move/from16 v29, v1

    move-object/from16 v30, v2

    .line 778
    .end local v1    # "topEjCount":I
    .restart local v29    # "topEjCount":I
    :goto_22d
    const/4 v1, 0x1

    :goto_22e
    move/from16 v23, v1

    goto :goto_23b

    .line 774
    .end local v24    # "numRunningJobs":I
    .end local v25    # "selectedContext":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    .end local v26    # "runningJob":Lcom/android/server/job/controllers/JobStatus;
    .end local v29    # "topEjCount":I
    .restart local v1    # "topEjCount":I
    .local v9, "numRunningJobs":I
    .restart local v12    # "runningJob":Lcom/android/server/job/controllers/JobStatus;
    .restart local v13    # "selectedContext":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    :cond_231
    move/from16 v29, v1

    move-object/from16 v30, v2

    move/from16 v24, v9

    move-object/from16 v26, v12

    move-object/from16 v25, v13

    .line 780
    .end local v1    # "topEjCount":I
    .end local v9    # "numRunningJobs":I
    .end local v12    # "runningJob":Lcom/android/server/job/controllers/JobStatus;
    .end local v13    # "selectedContext":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    .restart local v24    # "numRunningJobs":I
    .restart local v25    # "selectedContext":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    .restart local v26    # "runningJob":Lcom/android/server/job/controllers/JobStatus;
    .restart local v29    # "topEjCount":I
    :goto_23b
    if-eqz v23, :cond_25b

    .line 781
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    iget-object v2, v8, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 782
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getRunningJobWorkType()I

    move-result v2

    .line 781
    invoke-virtual {v1, v15, v2}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(II)I

    move-result v1

    .line 783
    .local v1, "replaceWorkType":I
    if-eqz v1, :cond_25b

    .line 787
    iget-object v2, v8, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->shouldStopJobReason:Ljava/lang/String;

    iput-object v2, v8, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReason:Ljava/lang/String;

    .line 788
    const/4 v2, 0x4

    iput v2, v8, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReasonCode:I

    .line 789
    move-object v13, v8

    .line 790
    .end local v25    # "selectedContext":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    .restart local v13    # "selectedContext":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 791
    iput-object v14, v8, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    .line 792
    iput v1, v8, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    .line 793
    goto :goto_277

    .line 759
    .end local v1    # "replaceWorkType":I
    .end local v8    # "assignment":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    .end local v13    # "selectedContext":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    .end local v23    # "canReplace":Z
    .end local v26    # "runningJob":Lcom/android/server/job/controllers/JobStatus;
    .restart local v25    # "selectedContext":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    :cond_25b
    add-int/lit8 v3, v3, -0x1

    move/from16 v9, v24

    move-object/from16 v13, v25

    move/from16 v1, v29

    move-object/from16 v2, v30

    goto :goto_1ea

    .end local v24    # "numRunningJobs":I
    .end local v25    # "selectedContext":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    .end local v29    # "topEjCount":I
    .local v1, "topEjCount":I
    .restart local v9    # "numRunningJobs":I
    .restart local v13    # "selectedContext":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    :cond_266
    move/from16 v29, v1

    move-object/from16 v30, v2

    move/from16 v24, v9

    move-object/from16 v25, v13

    .end local v1    # "topEjCount":I
    .end local v9    # "numRunningJobs":I
    .end local v13    # "selectedContext":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    .restart local v24    # "numRunningJobs":I
    .restart local v25    # "selectedContext":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    .restart local v29    # "topEjCount":I
    goto :goto_275

    .line 751
    .end local v3    # "s":I
    .end local v24    # "numRunningJobs":I
    .end local v25    # "selectedContext":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    .end local v29    # "topEjCount":I
    .restart local v9    # "numRunningJobs":I
    .restart local v13    # "selectedContext":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    :cond_26f
    move-object/from16 v30, v2

    move/from16 v24, v9

    move-object/from16 v25, v13

    .line 798
    .end local v9    # "numRunningJobs":I
    .end local v13    # "selectedContext":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    .restart local v24    # "numRunningJobs":I
    .restart local v25    # "selectedContext":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    :goto_275
    move-object/from16 v13, v25

    .end local v25    # "selectedContext":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    .restart local v13    # "selectedContext":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    :goto_277
    if-nez v13, :cond_2c2

    if-eqz v19, :cond_27d

    if-eqz v11, :cond_2c2

    .line 799
    :cond_27d
    const v1, 0x7fffffff

    .line 800
    .local v1, "lowestBiasSeen":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "p":I
    :goto_286
    if-ltz v2, :cond_2bb

    .line 801
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 802
    .local v3, "assignment":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    iget-object v8, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v8}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v8

    .line 803
    .local v8, "runningJob":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v9

    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v12

    if-eq v9, v12, :cond_29f

    .line 804
    goto :goto_2b8

    .line 806
    :cond_29f
    iget-object v9, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v9, v8}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v9

    .line 807
    .local v9, "jobBias":I
    iget v12, v14, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-lt v9, v12, :cond_2aa

    .line 808
    goto :goto_2b8

    .line 811
    :cond_2aa
    if-eqz v13, :cond_2ae

    if-le v1, v9, :cond_2b8

    .line 814
    :cond_2ae
    move v1, v9

    .line 815
    move-object v13, v3

    .line 816
    const-string/jumbo v12, "higher bias job found"

    iput-object v12, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReason:Ljava/lang/String;

    .line 817
    const/4 v12, 0x2

    iput v12, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReasonCode:I

    .line 800
    .end local v3    # "assignment":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    .end local v8    # "runningJob":Lcom/android/server/job/controllers/JobStatus;
    .end local v9    # "jobBias":I
    :cond_2b8
    :goto_2b8
    add-int/lit8 v2, v2, -0x1

    goto :goto_286

    .line 822
    .end local v2    # "p":I
    :cond_2bb
    if-eqz v13, :cond_2c2

    .line 823
    iput-object v14, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    .line 824
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 828
    .end local v1    # "lowestBiasSeen":I
    :cond_2c2
    if-eqz v11, :cond_321

    .line 829
    if-eqz v13, :cond_2da

    iget-object v1, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 830
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v1

    if-eqz v1, :cond_2da

    .line 834
    invoke-virtual {v4, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 835
    add-int/lit8 v10, v10, -0x1

    .line 836
    const/4 v1, 0x0

    iput-object v1, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    .line 837
    const/4 v1, 0x0

    iput v1, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    .line 838
    const/4 v13, 0x0

    .line 840
    :cond_2da
    if-nez v13, :cond_31f

    .line 841
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    invoke-interface {v1}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 842
    .end local v13    # "selectedContext":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    .local v1, "selectedContext":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    if-nez v1, :cond_2ef

    .line 843
    new-instance v2, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;-><init>(Lcom/android/server/job/JobConcurrencyManager$ContextAssignment-IA;)V

    move-object v1, v2

    move-object v13, v1

    goto :goto_2f1

    .line 842
    :cond_2ef
    const/4 v3, 0x0

    move-object v13, v1

    .line 845
    .end local v1    # "selectedContext":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    .restart local v13    # "selectedContext":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    :goto_2f1
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_308

    .line 846
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v8, 0x1

    sub-int/2addr v2, v8

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobServiceContext;

    goto :goto_30c

    .line 847
    :cond_308
    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/JobConcurrencyManager;->createNewJobServiceContext()Lcom/android/server/job/JobServiceContext;

    move-result-object v1

    :goto_30c
    iput-object v1, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 848
    iput-object v14, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    .line 849
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v1, v15}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(I)I

    move-result v1

    .line 850
    .local v1, "workType":I
    nop

    .line 851
    if-eqz v1, :cond_31b

    move v2, v1

    goto :goto_31c

    :cond_31b
    const/4 v2, 0x1

    :goto_31c
    iput v2, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    goto :goto_322

    .line 840
    .end local v1    # "workType":I
    :cond_31f
    const/4 v3, 0x0

    goto :goto_322

    .line 828
    :cond_321
    const/4 v3, 0x0

    .line 854
    :goto_322
    nop

    .line 855
    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    .line 854
    invoke-direct {v0, v1, v2}, Lcom/android/server/job/JobConcurrencyManager;->getPkgStatsLocked(ILjava/lang/String;)Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    move-result-object v1

    .line 856
    .local v1, "packageStats":Lcom/android/server/job/JobConcurrencyManager$PackageStats;
    if-eqz v13, :cond_34c

    .line 857
    invoke-virtual {v4, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 858
    iget-object v2, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    if-eqz v2, :cond_33e

    .line 859
    add-int/lit8 v10, v10, -0x1

    .line 861
    :cond_33e
    iget-object v2, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz v2, :cond_344

    .line 862
    add-int/lit8 v10, v10, 0x1

    .line 864
    :cond_344
    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v2

    const/4 v8, 0x1

    invoke-static {v1, v8, v2}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->-$$Nest$madjustStagedCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ZZ)V

    .line 866
    :cond_34c
    if-eqz v20, :cond_362

    .line 868
    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    iget v8, v13, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    invoke-virtual {v2, v8, v15}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->stageJob(II)V

    .line 869
    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    .line 870
    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v8

    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v9

    .line 869
    invoke-virtual {v2, v8, v9, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 873
    .end local v1    # "packageStats":Lcom/android/server/job/JobConcurrencyManager$PackageStats;
    .end local v11    # "isTopEj":Z
    .end local v13    # "selectedContext":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    .end local v15    # "allWorkTypes":I
    .end local v18    # "pkgConcurrencyOkay":Z
    .end local v19    # "isInOverage":Z
    .end local v20    # "startingJob":Z
    :cond_362
    move-object v11, v3

    move-object/from16 v1, v21

    move-object/from16 v3, v22

    move/from16 v9, v24

    move-object/from16 v2, v30

    const/4 v8, 0x1

    const/16 v12, 0x10

    const/4 v13, 0x2

    const/4 v14, 0x0

    goto/16 :goto_e5

    .line 874
    .end local v14    # "nextPending":Lcom/android/server/job/controllers/JobStatus;
    .end local v21    # "pendingJobQueue":Lcom/android/server/job/PendingJobQueue;
    .end local v22    # "activeServices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/JobServiceContext;>;"
    .end local v24    # "numRunningJobs":I
    .local v1, "pendingJobQueue":Lcom/android/server/job/PendingJobQueue;
    .local v3, "activeServices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/JobServiceContext;>;"
    .local v9, "numRunningJobs":I
    .restart local v16    # "nextPending":Lcom/android/server/job/controllers/JobStatus;
    :cond_372
    move-object/from16 v21, v1

    move-object/from16 v30, v2

    move-object/from16 v22, v3

    move/from16 v24, v9

    move-object/from16 v14, v16

    .end local v1    # "pendingJobQueue":Lcom/android/server/job/PendingJobQueue;
    .end local v3    # "activeServices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/JobServiceContext;>;"
    .end local v9    # "numRunningJobs":I
    .end local v16    # "nextPending":Lcom/android/server/job/controllers/JobStatus;
    .restart local v14    # "nextPending":Lcom/android/server/job/controllers/JobStatus;
    .restart local v21    # "pendingJobQueue":Lcom/android/server/job/PendingJobQueue;
    .restart local v22    # "activeServices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/JobServiceContext;>;"
    .restart local v24    # "numRunningJobs":I
    sget-boolean v1, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v1, :cond_3b5

    .line 875
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/util/Collection;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    const/4 v2, 0x1

    aput-object v6, v1, v2

    const/4 v2, 0x2

    aput-object v4, v1, v2

    const-string/jumbo v2, "running jobs final"

    invoke-static {v2, v1}, Lcom/android/server/job/JobConcurrencyManager;->printAssignments(Ljava/lang/String;[Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v30

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assignJobsToContexts: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v3}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b7

    .line 874
    :cond_3b5
    move-object/from16 v2, v30

    .line 881
    :goto_3b7
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    .local v1, "c":I
    :goto_3bd
    if-ltz v1, :cond_432

    .line 882
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 883
    .local v3, "assignment":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    iget-object v8, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v8}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v8

    .line 884
    .local v8, "js":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v8, :cond_3f3

    .line 885
    sget-boolean v9, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v9, :cond_3e8

    .line 886
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "preempting job: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_3e8
    iget-object v9, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    iget v11, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReasonCode:I

    iget-object v12, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReason:Ljava/lang/String;

    const/4 v13, 0x2

    invoke-virtual {v9, v11, v13, v12}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    goto :goto_427

    .line 893
    :cond_3f3
    const/4 v13, 0x2

    iget-object v9, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    .line 894
    .local v9, "pendingJob":Lcom/android/server/job/controllers/JobStatus;
    sget-boolean v11, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v11, :cond_420

    .line 895
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "About to run job on context "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 896
    invoke-virtual {v12}, Lcom/android/server/job/JobServiceContext;->getId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", job: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 895
    invoke-static {v2, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :cond_420
    iget-object v11, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    iget v12, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    invoke-direct {v0, v11, v9, v12}, Lcom/android/server/job/JobConcurrencyManager;->startJobLocked(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;I)V

    .line 901
    .end local v9    # "pendingJob":Lcom/android/server/job/controllers/JobStatus;
    :goto_427
    invoke-virtual {v3}, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->clear()V

    .line 902
    iget-object v9, v0, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    invoke-interface {v9, v3}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 881
    .end local v3    # "assignment":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    .end local v8    # "js":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v1, v1, -0x1

    goto :goto_3bd

    .line 904
    .end local v1    # "c":I
    :cond_432
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "s":I
    :goto_438
    if-ltz v1, :cond_44b

    .line 905
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 906
    .local v2, "assignment":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    invoke-virtual {v2}, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->clear()V

    .line 907
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    invoke-interface {v3, v2}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 904
    .end local v2    # "assignment":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    add-int/lit8 v1, v1, -0x1

    goto :goto_438

    .line 909
    .end local v1    # "s":I
    :cond_44b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "p":I
    :goto_451
    if-ltz v1, :cond_464

    .line 910
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 911
    .restart local v2    # "assignment":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    invoke-virtual {v2}, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->clear()V

    .line 912
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    invoke-interface {v3, v2}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 909
    .end local v2    # "assignment":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    add-int/lit8 v1, v1, -0x1

    goto :goto_451

    .line 914
    .end local v1    # "p":I
    :cond_464
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_46a
    if-ltz v1, :cond_484

    .line 915
    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 916
    .restart local v2    # "assignment":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    iget-object v8, v2, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v3, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 917
    invoke-virtual {v2}, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->clear()V

    .line 918
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    invoke-interface {v3, v2}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 914
    .end local v2    # "assignment":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    add-int/lit8 v1, v1, -0x1

    goto :goto_46a

    .line 920
    .end local v1    # "i":I
    :cond_484
    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    .line 921
    invoke-virtual {v5}, Landroid/util/ArraySet;->clear()V

    .line 922
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 923
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 924
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v1}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->resetStagingCount()V

    .line 925
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mPackageStatsStagingCountClearer:Ljava/util/function/Consumer;

    invoke-virtual {v1, v2}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 926
    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/JobConcurrencyManager;->noteConcurrency()V

    .line 927
    return-void
.end method

.method private createNewJobServiceContext()Lcom/android/server/job/JobServiceContext;
    .registers 8

    .line 1449
    new-instance v6, Lcom/android/server/job/JobServiceContext;

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 1451
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1450
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mContext:Landroid/content/Context;

    .line 1452
    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/job/JobServiceContext;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobConcurrencyManager;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobPackageTracker;Landroid/os/Looper;)V

    .line 1449
    return-object v6
.end method

.method private getPkgStatsLocked(ILjava/lang/String;)Lcom/android/server/job/JobConcurrencyManager$PackageStats;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1056
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    .line 1057
    .local v0, "packageStats":Lcom/android/server/job/JobConcurrencyManager$PackageStats;
    if-nez v0, :cond_1e

    .line 1058
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgStatsPool:Landroid/util/Pools$Pool;

    invoke-interface {v1}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    .line 1059
    if-nez v0, :cond_1b

    .line 1060
    new-instance v1, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    invoke-direct {v1}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;-><init>()V

    move-object v0, v1

    .line 1062
    :cond_1b
    invoke-static {v0, p1, p2}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->-$$Nest$msetPackage(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ILjava/lang/String;)V

    .line 1064
    :cond_1e
    return-object v0
.end method

.method private isSimilarJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 7
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 552
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_2a

    .line 553
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 554
    .local v2, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v4

    if-ne v3, v4, :cond_27

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v4

    if-ne v3, v4, :cond_27

    .line 555
    return v1

    .line 552
    .end local v2    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 558
    .end local v0    # "i":I
    :cond_2a
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$dumpLocked$2(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobConcurrencyManager$PackageStats;)V
    .registers 2
    .param p0, "pw"    # Landroid/util/IndentingPrintWriter;
    .param p1, "pkgStats"    # Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    .line 1579
    invoke-static {p1, p0}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->-$$Nest$mdumpLocked(Lcom/android/server/job/JobConcurrencyManager$PackageStats;Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method static synthetic lambda$new$1(Ljava/lang/Object;)V
    .registers 2
    .param p0, "rec$"    # Ljava/lang/Object;

    .line 362
    move-object v0, p0

    check-cast v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    invoke-static {v0}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->-$$Nest$mresetStagedCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;)V

    return-void
.end method

.method static synthetic lambda$static$0(Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;)I
    .registers 9
    .param p0, "ca1"    # Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    .param p1, "ca2"    # Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 281
    const/4 v0, 0x0

    if-ne p0, p1, :cond_4

    .line 282
    return v0

    .line 284
    :cond_4
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v1

    .line 285
    .local v1, "js1":Lcom/android/server/job/controllers/JobStatus;
    iget-object v2, p1, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    .line 287
    .local v2, "js2":Lcom/android/server/job/controllers/JobStatus;
    const/4 v3, 0x1

    if-nez v1, :cond_17

    .line 288
    if-nez v2, :cond_16

    .line 289
    return v0

    .line 291
    :cond_16
    return v3

    .line 292
    :cond_17
    const/4 v0, -0x1

    if-nez v2, :cond_1b

    .line 293
    return v0

    .line 296
    :cond_1b
    iget v4, v1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    const/16 v5, 0x28

    if-ne v4, v5, :cond_26

    .line 297
    iget v3, v2, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-eq v3, v5, :cond_2b

    .line 298
    return v0

    .line 300
    :cond_26
    iget v0, v2, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-ne v0, v5, :cond_2b

    .line 301
    return v3

    .line 304
    :cond_2b
    iget-object v0, p1, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 305
    invoke-virtual {v0}, Lcom/android/server/job/JobServiceContext;->getExecutionStartTimeElapsed()J

    move-result-wide v3

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 306
    invoke-virtual {v0}, Lcom/android/server/job/JobServiceContext;->getExecutionStartTimeElapsed()J

    move-result-wide v5

    .line 304
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method private noteConcurrency()V
    .registers 5

    .line 1028
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    .line 1030
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->getRunningJobCount(I)I

    move-result v2

    .line 1028
    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/JobPackageTracker;->noteConcurrency(II)V

    .line 1031
    return-void
.end method

.method private onInteractiveStateChanged(Z)V
    .registers 9
    .param p1, "interactive"    # Z

    .line 474
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 475
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mCurrentInteractiveState:Z

    if-ne v1, p1, :cond_9

    .line 476
    monitor-exit v0

    return-void

    .line 478
    :cond_9
    iput-boolean p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mCurrentInteractiveState:Z

    .line 479
    sget-boolean v1, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v1, :cond_27

    .line 480
    const-string v1, "JobScheduler.Concurrency"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interactive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_27
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 484
    .local v1, "nowRealtime":J
    if-eqz p1, :cond_3c

    .line 485
    iput-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOnRealtime:J

    .line 486
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    .line 488
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mRampUpForScreenOff:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_47

    .line 490
    :cond_3c
    iput-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOffRealtime:J

    .line 499
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mRampUpForScreenOff:Ljava/lang/Runnable;

    iget-wide v5, p0, Lcom/android/server/job/JobConcurrencyManager;->mScreenOffAdjustmentDelayMs:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 501
    .end local v1    # "nowRealtime":J
    :goto_47
    monitor-exit v0

    .line 502
    return-void

    .line 501
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_49

    throw v1
.end method

.method private static varargs printAssignments(Ljava/lang/String;[Ljava/util/Collection;)Ljava/lang/String;
    .registers 11
    .param p0, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/util/Collection<",
            "Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1472
    .local p1, "list":[Ljava/util/Collection;, "[Ljava/util/Collection<Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1473
    .local v0, "s":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "l":I
    :goto_19
    array-length v2, p1

    if-ge v1, v2, :cond_84

    .line 1474
    aget-object v2, p1, v1

    .line 1475
    .local v2, "assignments":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;>;"
    const/4 v3, 0x0

    .line 1476
    .local v3, "c":I
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_81

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 1477
    .local v5, "assignment":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    iget-object v6, v5, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    if-nez v6, :cond_3a

    .line 1478
    iget-object v6, v5, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v6}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v6

    goto :goto_3c

    :cond_3a
    iget-object v6, v5, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    .line 1480
    .local v6, "job":Lcom/android/server/job/controllers/JobStatus;
    :goto_3c
    if-gtz v1, :cond_40

    if-lez v3, :cond_45

    .line 1481
    :cond_40
    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1483
    :cond_45
    const-string v7, "("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v8}, Lcom/android/server/job/JobServiceContext;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1484
    if-nez v6, :cond_63

    .line 1485
    const-string/jumbo v7, "nothing"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_78

    .line 1487
    :cond_63
    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1489
    :goto_78
    const-string v7, ")"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1490
    nop

    .end local v5    # "assignment":Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
    .end local v6    # "job":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v3, v3, 0x1

    .line 1491
    goto :goto_23

    .line 1473
    .end local v2    # "assignments":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;>;"
    .end local v3    # "c":I
    :cond_81
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 1493
    .end local v1    # "l":I
    :cond_84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private printPendingQueueLocked()Ljava/lang/String;
    .registers 6

    .line 1457
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Pending queue: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1458
    .local v0, "s":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->getPendingJobQueue()Lcom/android/server/job/PendingJobQueue;

    move-result-object v1

    .line 1460
    .local v1, "pendingJobQueue":Lcom/android/server/job/PendingJobQueue;
    invoke-virtual {v1}, Lcom/android/server/job/PendingJobQueue;->resetIterator()V

    .line 1461
    :goto_10
    invoke-virtual {v1}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    move-object v3, v2

    .local v3, "js":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v2, :cond_3d

    .line 1462
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1463
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1464
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1465
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1466
    const-string v4, ") "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 1468
    :cond_3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private rampUpForScreenOff()V
    .registers 8

    .line 511
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 514
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    if-nez v1, :cond_9

    .line 515
    monitor-exit v0

    return-void

    .line 517
    :cond_9
    iget-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOnRealtime:J

    iget-wide v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOffRealtime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_13

    .line 518
    monitor-exit v0

    return-void

    .line 520
    :cond_13
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    .line 521
    .local v1, "now":J
    iget-wide v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOffRealtime:J

    iget-wide v5, p0, Lcom/android/server/job/JobConcurrencyManager;->mScreenOffAdjustmentDelayMs:J

    add-long/2addr v3, v5

    cmp-long v3, v3, v1

    if-lez v3, :cond_24

    .line 522
    monitor-exit v0

    return-void

    .line 525
    :cond_24
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    .line 527
    sget-boolean v3, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v3, :cond_32

    .line 528
    const-string v3, "JobScheduler.Concurrency"

    const-string v4, "Ramping up concurrency"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_32
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3}, Lcom/android/server/job/JobSchedulerService;->maybeRunPendingJobsLocked()V

    .line 532
    .end local v1    # "now":J
    monitor-exit v0

    .line 533
    return-void

    .line 532
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method private refreshSystemStateLocked()Z
    .registers 9

    .line 564
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 567
    .local v0, "nowUptime":J
    iget-wide v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mNextSystemStateRefreshTime:J

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gez v2, :cond_e

    .line 568
    return v3

    .line 571
    :cond_e
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v2}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v4

    .line 572
    .local v4, "start":J
    const-wide/16 v6, 0x3e8

    add-long/2addr v6, v0

    iput-wide v6, p0, Lcom/android/server/job/JobConcurrencyManager;->mNextSystemStateRefreshTime:J

    .line 574
    iput v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I

    .line 576
    :try_start_1b
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getMemoryTrimLevel()I

    move-result v2

    iput v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_25} :catch_26

    .line 578
    goto :goto_27

    .line 577
    :catch_26
    move-exception v2

    .line 580
    :goto_27
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 581
    return v3
.end method

.method private startJobLocked(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;I)V
    .registers 11
    .param p1, "worker"    # Lcom/android/server/job/JobServiceContext;
    .param p2, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "workType"    # I

    .line 1100
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 1101
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/StateController;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1102
    .local v1, "numControllers":I
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    .line 1103
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 1104
    .local v2, "wl":Landroid/os/PowerManager$WakeLock;
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 1105
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v5

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    .line 1104
    invoke-virtual {v3, v5, v6}, Lcom/android/server/job/JobSchedulerService;->deriveWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1106
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1110
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1112
    const/4 v5, 0x0

    .local v5, "ic":I
    :goto_2c
    if-ge v5, v1, :cond_3a

    .line 1113
    :try_start_2e
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v6, p2}, Lcom/android/server/job/controllers/StateController;->prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1112
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    .line 1115
    .end local v5    # "ic":I
    :cond_3a
    nop

    .line 1116
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v5

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    .line 1115
    invoke-direct {p0, v5, v6}, Lcom/android/server/job/JobConcurrencyManager;->getPkgStatsLocked(ILjava/lang/String;)Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    move-result-object v5

    .line 1117
    .local v5, "packageStats":Lcom/android/server/job/JobConcurrencyManager$PackageStats;
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v6

    invoke-static {v5, v3, v6}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->-$$Nest$madjustStagedCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ZZ)V

    .line 1118
    invoke-virtual {p1, p2, p3}, Lcom/android/server/job/JobServiceContext;->executeRunnableJob(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v3

    if-nez v3, :cond_81

    .line 1119
    const-string v3, "JobScheduler.Concurrency"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error executing "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v3, p3}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->onStagedJobFailed(I)V

    .line 1121
    const/4 v3, 0x0

    .local v3, "ic":I
    :goto_72
    if-ge v3, v1, :cond_80

    .line 1122
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v4, p2}, Lcom/android/server/job/controllers/StateController;->unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1121
    add-int/lit8 v3, v3, 0x1

    goto :goto_72

    .end local v3    # "ic":I
    :cond_80
    goto :goto_a9

    .line 1125
    :cond_81
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v3, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1126
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1127
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1128
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v3, p3}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->onJobStarted(I)V

    .line 1129
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v3

    invoke-static {v5, v4, v3}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->-$$Nest$madjustRunningCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ZZ)V

    .line 1130
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    .line 1131
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v4

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    .line 1130
    invoke-virtual {v3, v4, v6, v5}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1134
    :goto_a9
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3}, Lcom/android/server/job/JobSchedulerService;->getPendingJobQueue()Lcom/android/server/job/PendingJobQueue;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 1135
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v3, p2}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V
    :try_end_bc
    .catchall {:try_start_2e .. :try_end_bc} :catchall_c1

    .line 1138
    .end local v5    # "packageStats":Lcom/android/server/job/JobConcurrencyManager$PackageStats;
    :cond_bc
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1139
    nop

    .line 1140
    return-void

    .line 1138
    :catchall_c1
    move-exception v3

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1139
    throw v3
.end method

.method private stopLongRunningJobsLocked(Ljava/lang/String;)V
    .registers 7
    .param p1, "debugReason"    # Ljava/lang/String;

    .line 981
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 982
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobServiceContext;

    .line 983
    .local v1, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    .line 985
    .local v2, "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v2, :cond_22

    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->isWithinExecutionGuaranteeTime()Z

    move-result v3

    if-nez v3, :cond_22

    .line 986
    const/4 v3, 0x4

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4, p1}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    .line 981
    .end local v1    # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v2    # "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 990
    .end local v0    # "i":I
    :cond_25
    return-void
.end method

.method private stopUnexemptedJobsForDoze()V
    .registers 6

    .line 968
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 969
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobServiceContext;

    .line 970
    .local v1, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    .line 971
    .local v2, "executing":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v2, :cond_23

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->canRunInDoze()Z

    move-result v3

    if-nez v3, :cond_23

    .line 972
    const/4 v3, 0x4

    const-string v4, "cancelled due to doze"

    invoke-virtual {v1, v3, v3, v4}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    .line 968
    .end local v1    # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v2    # "executing":Lcom/android/server/job/controllers/JobStatus;
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 977
    .end local v0    # "i":I
    :cond_26
    return-void
.end method

.method private updateCounterConfigLocked()V
    .registers 4

    .line 586
    invoke-direct {p0}, Lcom/android/server/job/JobConcurrencyManager;->refreshSystemStateLocked()Z

    move-result v0

    if-nez v0, :cond_7

    .line 587
    return-void

    .line 590
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    if-eqz v0, :cond_e

    .line 591
    sget-object v0, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_ON:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    goto :goto_10

    :cond_e
    sget-object v0, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_OFF:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    .line 593
    .local v0, "workConfigs":Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;
    :goto_10
    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I

    packed-switch v1, :pswitch_data_32

    .line 604
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iput-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    goto :goto_29

    .line 601
    :pswitch_1a
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iput-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 602
    goto :goto_29

    .line 598
    :pswitch_1f
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iput-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 599
    goto :goto_29

    .line 595
    :pswitch_24
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    iput-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 596
    nop

    .line 608
    :goto_29
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v1, v2}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->setConfig(Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;)V

    .line 609
    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_24
        :pswitch_1f
        :pswitch_1a
    .end packed-switch
.end method

.method private updateNonRunningPrioritiesLocked(Lcom/android/server/job/PendingJobQueue;Z)V
    .registers 6
    .param p1, "jobQueue"    # Lcom/android/server/job/PendingJobQueue;
    .param p2, "updateCounter"    # Z

    .line 1037
    invoke-virtual {p1}, Lcom/android/server/job/PendingJobQueue;->resetIterator()V

    .line 1038
    :cond_3
    :goto_3
    invoke-virtual {p1}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    move-object v1, v0

    .local v1, "pending":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v0, :cond_27

    .line 1041
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1042
    goto :goto_3

    .line 1045
    :cond_13
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v0

    iput v0, v1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    .line 1047
    if-eqz p2, :cond_3

    .line 1048
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {p0, v1}, Lcom/android/server/job/JobConcurrencyManager;->getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->incrementPendingJobCount(I)V

    goto :goto_3

    .line 1051
    :cond_27
    return-void
.end method

.method static workTypeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "workType"    # I

    .line 160
    sparse-switch p0, :sswitch_data_32

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WORK("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 172
    :sswitch_1d
    const-string v0, "BGUSER"

    return-object v0

    .line 174
    :sswitch_20
    const-string v0, "BGUSER_IMPORTANT"

    return-object v0

    .line 170
    :sswitch_23
    const-string v0, "BG"

    return-object v0

    .line 168
    :sswitch_26
    const-string v0, "EJ"

    return-object v0

    .line 166
    :sswitch_29
    const-string v0, "FGS"

    return-object v0

    .line 164
    :sswitch_2c
    const-string v0, "TOP"

    return-object v0

    .line 162
    :sswitch_2f
    const-string v0, "NONE"

    return-object v0

    :sswitch_data_32
    .sparse-switch
        0x0 -> :sswitch_2f
        0x1 -> :sswitch_2c
        0x2 -> :sswitch_29
        0x4 -> :sswitch_26
        0x8 -> :sswitch_23
        0x10 -> :sswitch_20
        0x20 -> :sswitch_1d
    .end sparse-switch
.end method


# virtual methods
.method addRunningJobForTesting(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 5
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 2308
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2309
    nop

    .line 2310
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobConcurrencyManager;->getPackageStatsForTesting(ILjava/lang/String;)Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    move-result-object v0

    .line 2311
    .local v0, "packageStats":Lcom/android/server/job/JobConcurrencyManager$PackageStats;
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->-$$Nest$madjustRunningCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ZZ)V

    .line 2312
    return-void
.end method

.method assignJobsToContextsLocked()V
    .registers 5

    .line 618
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v0

    .line 620
    .local v0, "start":J
    invoke-direct {p0}, Lcom/android/server/job/JobConcurrencyManager;->assignJobsToContextsInternalLocked()V

    .line 622
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 623
    return-void
.end method

.method dumpContextInfoLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;JJ)V
    .registers 14
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;
    .param p3, "nowElapsed"    # J
    .param p5, "nowUptime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;JJ)V"
        }
    .end annotation

    .line 1596
    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    const-string v0, "Active jobs:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1597
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1598
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_15

    .line 1599
    const-string v0, "N/A"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1601
    :cond_15
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8d

    .line 1602
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobServiceContext;

    .line 1603
    .local v1, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    .line 1605
    .local v2, "job":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v2, :cond_33

    invoke-interface {p2, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 1606
    goto :goto_8a

    .line 1609
    :cond_33
    const-string v3, "Slot #"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1610
    const-string v3, "(ID="

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getId()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v3, "): "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1611
    invoke-virtual {v1, p1, p3, p4}, Lcom/android/server/job/JobServiceContext;->dumpLocked(Landroid/util/IndentingPrintWriter;J)V

    .line 1613
    if-eqz v2, :cond_8a

    .line 1614
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1616
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1617
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, p3, p4}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/IndentingPrintWriter;ZJ)V

    .line 1618
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1620
    const-string v3, "Evaluated bias: "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1621
    iget v3, v2, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    invoke-static {v3}, Landroid/app/job/JobInfo;->getBiasString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1623
    const-string v3, "Active at "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1624
    iget-wide v3, v2, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    sub-long/2addr v3, p5

    invoke-static {v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1625
    const-string v3, ", pending for "

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1626
    iget-wide v3, v2, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    iget-wide v5, v2, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1627
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1628
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1601
    .end local v1    # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v2    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_8a
    :goto_8a
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 1631
    .end local v0    # "i":I
    :cond_8d
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1633
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1634
    const-string v0, "Idle contexts ("

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1635
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1636
    const-string v0, "):"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1637
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1638
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_aa
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_d1

    .line 1639
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobServiceContext;

    .line 1641
    .restart local v1    # "jsc":Lcom/android/server/job/JobServiceContext;
    const-string v2, "ID="

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1642
    invoke-virtual {v1, p1, p3, p4}, Lcom/android/server/job/JobServiceContext;->dumpLocked(Landroid/util/IndentingPrintWriter;J)V

    .line 1638
    .end local v1    # "jsc":Lcom/android/server/job/JobServiceContext;
    add-int/lit8 v0, v0, 0x1

    goto :goto_aa

    .line 1644
    .end local v0    # "i":I
    :cond_d1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1646
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mNumDroppedContexts:I

    if-lez v0, :cond_ea

    .line 1647
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1648
    const-string v0, "Dropped "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1649
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mNumDroppedContexts:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1650
    const-string v0, " contexts"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1652
    :cond_ea
    return-void
.end method

.method public dumpLocked(Landroid/util/IndentingPrintWriter;JJ)V
    .registers 10
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "now"    # J
    .param p4, "nowRealtime"    # J

    .line 1524
    const-string v0, "Concurrency:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1526
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1528
    :try_start_8
    const-string v0, "Configuration:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1529
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1530
    const-string v0, "concurrency_screen_off_adjustment_delay_ms"

    iget-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mScreenOffAdjustmentDelayMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1531
    const-string v0, "concurrency_pkg_concurrency_limit_ej"

    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitEj:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1532
    const-string v0, "concurrency_pkg_concurrency_limit_regular"

    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitRegular:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1533
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1534
    sget-object v0, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_ON:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1535
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1536
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1537
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1538
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1539
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1540
    iget-object v0, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1541
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1542
    sget-object v0, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_OFF:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1543
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1544
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1545
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1546
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1547
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1548
    iget-object v0, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 1549
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1550
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1552
    const-string v0, "Screen state: current "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1553
    iget-boolean v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mCurrentInteractiveState:Z
    :try_end_8e
    .catchall {:try_start_8 .. :try_end_8e} :catchall_11a

    const-string v1, "ON"

    const-string v2, "OFF"

    if-eqz v0, :cond_96

    move-object v0, v1

    goto :goto_97

    :cond_96
    move-object v0, v2

    :goto_97
    :try_start_97
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1554
    const-string v0, "  effective "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1555
    iget-boolean v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    if-eqz v0, :cond_a4

    goto :goto_a5

    :cond_a4
    move-object v1, v2

    :goto_a5
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1556
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1558
    const-string v0, "Last screen ON: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1559
    sub-long v0, p2, p4

    iget-wide v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOnRealtime:J

    add-long/2addr v0, v2

    invoke-static {p1, v0, v1, p2, p3}, Landroid/util/TimeUtils;->dumpTimeWithDelta(Ljava/io/PrintWriter;JJ)V

    .line 1560
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1562
    const-string v0, "Last screen OFF: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1563
    sub-long v0, p2, p4

    iget-wide v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOffRealtime:J

    add-long/2addr v0, v2

    invoke-static {p1, v0, v1, p2, p3}, Landroid/util/TimeUtils;->dumpTimeWithDelta(Ljava/io/PrintWriter;JJ)V

    .line 1564
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1566
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1568
    const-string v0, "Current work counts: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1569
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1571
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1573
    const-string/jumbo v0, "mLastMemoryTrimLevel: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1574
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1575
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1577
    const-string v0, "Active Package stats:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1578
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1579
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    new-instance v1, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda3;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 1580
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1581
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1583
    const-string v0, "User Grace Period: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1584
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mGracePeriodObserver:Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

    iget-object v0, v0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mGracePeriodExpiration:Landroid/util/SparseLongArray;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1585
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1587
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/jobs/StatLogger;->dump(Landroid/util/IndentingPrintWriter;)V
    :try_end_115
    .catchall {:try_start_97 .. :try_end_115} :catchall_11a

    .line 1589
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1590
    nop

    .line 1591
    return-void

    .line 1589
    :catchall_11a
    move-exception v0

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1590
    throw v0
.end method

.method public dumpProtoLocked(Landroid/util/proto/ProtoOutputStream;JJJ)V
    .registers 14
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "tag"    # J
    .param p4, "now"    # J
    .param p6, "nowRealtime"    # J

    .line 1655
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1657
    .local v0, "token":J
    iget-boolean v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mCurrentInteractiveState:Z

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1658
    iget-boolean v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    const-wide v3, 0x10800000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1661
    iget-wide v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOnRealtime:J

    sub-long v2, p6, v2

    const-wide v4, 0x10300000003L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1663
    iget-wide v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOffRealtime:J

    sub-long v2, p6, v2

    const-wide v4, 0x10300000004L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1666
    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I

    const-wide v3, 0x10500000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1668
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const-wide v3, 0x10b00000007L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/internal/util/jobs/StatLogger;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1670
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1671
    return-void
.end method

.method executeTimeoutCommandLocked(Ljava/io/PrintWriter;Ljava/lang/String;IZI)Z
    .registers 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "hasJobId"    # Z
    .param p5, "jobId"    # I

    .line 1432
    const/4 v0, 0x0

    .line 1433
    .local v0, "foundSome":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_40

    .line 1434
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobServiceContext;

    .line 1435
    .local v2, "jc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v9

    .line 1436
    .local v9, "js":Lcom/android/server/job/controllers/JobStatus;
    const-string/jumbo v8, "shell"

    move-object v3, v2

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/job/JobServiceContext;->timeoutIfExecutingLocked(Ljava/lang/String;IZILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 1437
    const/4 v0, 0x1

    .line 1438
    const-string v3, "Timing out: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1439
    invoke-virtual {v9, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 1440
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1441
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1433
    .end local v2    # "jc":Lcom/android/server/job/JobServiceContext;
    .end local v9    # "js":Lcom/android/server/job/controllers/JobStatus;
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1444
    .end local v1    # "i":I
    :cond_40
    return v0
.end method

.method getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I
    .registers 6
    .param p1, "js"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1702
    const/4 v0, 0x0

    .line 1704
    .local v0, "classification":I
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobConcurrencyManager;->shouldRunAsFgUserJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    const/16 v2, 0x23

    if-eqz v1, :cond_24

    .line 1705
    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    const/16 v3, 0x28

    if-lt v1, v3, :cond_12

    .line 1706
    or-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 1707
    :cond_12
    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-lt v1, v2, :cond_19

    .line 1708
    or-int/lit8 v0, v0, 0x2

    goto :goto_1b

    .line 1710
    :cond_19
    or-int/lit8 v0, v0, 0x8

    .line 1713
    :goto_1b
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1714
    or-int/lit8 v0, v0, 0x4

    goto :goto_32

    .line 1717
    :cond_24
    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-ge v1, v2, :cond_2e

    .line 1718
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1719
    :cond_2e
    or-int/lit8 v0, v0, 0x10

    .line 1722
    :cond_30
    or-int/lit8 v0, v0, 0x20

    .line 1725
    :cond_32
    :goto_32
    return v0
.end method

.method getPackageConcurrencyLimitEj()I
    .registers 2

    .line 2316
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitEj:I

    return v0
.end method

.method getPackageConcurrencyLimitRegular()I
    .registers 2

    .line 2320
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitRegular:I

    return v0
.end method

.method getPackageStatsForTesting(ILjava/lang/String;)Lcom/android/server/job/JobConcurrencyManager$PackageStats;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2327
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobConcurrencyManager;->getPkgStatsLocked(ILjava/lang/String;)Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    move-result-object v0

    .line 2328
    .local v0, "packageStats":Lcom/android/server/job/JobConcurrencyManager$PackageStats;
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2329
    return-object v0
.end method

.method getRunningJobsLocked()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .line 537
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    return-object v0
.end method

.method isJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 3
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 542
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isPkgConcurrencyLimitedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 7
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1070
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    const/4 v1, 0x0

    const/16 v2, 0x28

    if-lt v0, v2, :cond_8

    .line 1073
    return v1

    .line 1077
    :cond_8
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getPendingJobQueue()Lcom/android/server/job/PendingJobQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 1078
    invoke-virtual {v2}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMaxTotal()I

    move-result v2

    if-ge v0, v2, :cond_22

    .line 1081
    return v1

    .line 1083
    :cond_22
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    .line 1084
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    .line 1085
    .local v0, "packageStats":Lcom/android/server/job/JobConcurrencyManager$PackageStats;
    if-nez v0, :cond_35

    .line 1087
    return v1

    .line 1089
    :cond_35
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_47

    .line 1090
    iget v2, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningEj:I

    iget v4, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedEj:I

    add-int/2addr v2, v4

    iget v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitEj:I

    if-lt v2, v4, :cond_46

    move v1, v3

    :cond_46
    return v1

    .line 1092
    :cond_47
    iget v2, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningRegular:I

    iget v4, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedRegular:I

    add-int/2addr v2, v4

    iget v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitRegular:I

    if-lt v2, v4, :cond_51

    move v1, v3

    :cond_51
    return v1
.end method

.method onAppRemovedLocked(Ljava/lang/String;I)V
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 424
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    .line 425
    .local v0, "packageStats":Lcom/android/server/job/JobConcurrencyManager$PackageStats;
    if-eqz v0, :cond_43

    .line 426
    iget v1, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningEj:I

    if-gtz v1, :cond_21

    iget v1, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningRegular:I

    if-lez v1, :cond_17

    goto :goto_21

    .line 432
    :cond_17
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    .line 429
    :cond_21
    :goto_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") marked as removed before jobs stopped running"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JobScheduler.Concurrency"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_43
    :goto_43
    return-void
.end method

.method onJobCompletedLocked(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;I)V
    .registers 22
    .param p1, "worker"    # Lcom/android/server/job/JobServiceContext;
    .param p2, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "workType"    # I

    .line 1145
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    move/from16 v4, p3

    invoke-virtual {v3, v4}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->onJobFinished(I)V

    .line 1146
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1147
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1148
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    const/16 v5, 0x18

    if-ge v3, v5, :cond_27

    .line 1151
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 1153
    :cond_27
    iget v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mNumDroppedContexts:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mNumDroppedContexts:I

    .line 1155
    :goto_2d
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    .line 1156
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    .line 1157
    .local v3, "packageStats":Lcom/android/server/job/JobConcurrencyManager$PackageStats;
    const/4 v5, 0x0

    const-string v6, "JobScheduler.Concurrency"

    if-nez v3, :cond_48

    .line 1158
    const-string v7, "Running job didn\'t have an active PackageStats object"

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 1160
    :cond_48
    iget-boolean v7, v2, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    invoke-static {v3, v5, v7}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->-$$Nest$madjustRunningCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ZZ)V

    .line 1161
    iget v7, v3, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningEj:I

    if-gtz v7, :cond_63

    iget v7, v3, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningRegular:I

    if-gtz v7, :cond_63

    .line 1162
    iget-object v7, v0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    iget v8, v3, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->userId:I

    iget-object v9, v3, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1163
    iget-object v7, v0, Lcom/android/server/job/JobConcurrencyManager;->mPkgStatsPool:Landroid/util/Pools$Pool;

    invoke-interface {v7, v3}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 1167
    :cond_63
    :goto_63
    iget-object v7, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v7}, Lcom/android/server/job/JobSchedulerService;->getPendingJobQueue()Lcom/android/server/job/PendingJobQueue;

    move-result-object v7

    .line 1168
    .local v7, "pendingJobQueue":Lcom/android/server/job/PendingJobQueue;
    iget-object v8, v0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/16 v9, 0x10

    if-ge v8, v9, :cond_282

    invoke-virtual {v7}, Lcom/android/server/job/PendingJobQueue;->size()I

    move-result v8

    if-nez v8, :cond_7d

    move-object/from16 v16, v3

    goto/16 :goto_284

    .line 1176
    :cond_7d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/JobServiceContext;->getPreferredUid()I

    move-result v8

    const/4 v9, -0x1

    const-string v10, "Already running similar job to: "

    const-string v11, "Pending+running job: "

    const-string v12, "Pending queue contained a running job"

    if-eq v8, v9, :cond_1c8

    .line 1177
    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/JobConcurrencyManager;->updateCounterConfigLocked()V

    .line 1179
    invoke-direct {v0, v7, v5}, Lcom/android/server/job/JobConcurrencyManager;->updateNonRunningPrioritiesLocked(Lcom/android/server/job/PendingJobQueue;Z)V

    .line 1181
    const/4 v5, 0x0

    .line 1182
    .local v5, "highestBiasJob":Lcom/android/server/job/controllers/JobStatus;
    move/from16 v8, p3

    .line 1183
    .local v8, "highBiasWorkType":I
    move/from16 v9, p3

    .line 1184
    .local v9, "highBiasAllWorkTypes":I
    const/4 v13, 0x0

    .line 1185
    .local v13, "backupJob":Lcom/android/server/job/controllers/JobStatus;
    const/4 v14, 0x0

    .line 1186
    .local v14, "backupWorkType":I
    const/4 v15, 0x0

    .line 1189
    .local v15, "backupAllWorkTypes":I
    invoke-virtual {v7}, Lcom/android/server/job/PendingJobQueue;->resetIterator()V

    .line 1190
    :goto_9b
    invoke-virtual {v7}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v16

    move-object/from16 v17, v16

    .local v17, "nextPending":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v16, :cond_14f

    .line 1191
    move-object/from16 v16, v3

    .end local v3    # "packageStats":Lcom/android/server/job/JobConcurrencyManager$PackageStats;
    .local v16, "packageStats":Lcom/android/server/job/JobConcurrencyManager$PackageStats;
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    move-object/from16 v4, v17

    .end local v17    # "nextPending":Lcom/android/server/job/controllers/JobStatus;
    .local v4, "nextPending":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    .line 1193
    invoke-static {v6, v12}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    sget-boolean v3, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v3, :cond_ca

    .line 1195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    :cond_ca
    invoke-virtual {v7, v4}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 1198
    move-object/from16 v17, v10

    goto :goto_12e

    .line 1201
    :cond_d0
    sget-boolean v3, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v3, :cond_ee

    invoke-direct {v0, v4}, Lcom/android/server/job/JobConcurrencyManager;->isSimilarJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    if-eqz v3, :cond_ee

    .line 1202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    :cond_ee
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/JobServiceContext;->getPreferredUid()I

    move-result v3

    move-object/from16 v17, v10

    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v10

    if-eq v3, v10, :cond_118

    .line 1206
    if-nez v13, :cond_12e

    invoke-virtual {v0, v4}, Lcom/android/server/job/JobConcurrencyManager;->isPkgConcurrencyLimitedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    if-nez v3, :cond_12e

    .line 1207
    invoke-virtual {v0, v4}, Lcom/android/server/job/JobConcurrencyManager;->getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v3

    .line 1208
    .local v3, "allWorkTypes":I
    iget-object v10, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v10, v3}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(I)I

    move-result v10

    .line 1209
    .local v10, "workAsType":I
    if-eqz v10, :cond_111

    .line 1210
    move-object v13, v4

    .line 1211
    move v14, v10

    .line 1212
    move v15, v3

    .line 1214
    .end local v3    # "allWorkTypes":I
    .end local v10    # "workAsType":I
    :cond_111
    move/from16 v4, p3

    move-object/from16 v3, v16

    move-object/from16 v10, v17

    goto :goto_9b

    .line 1220
    :cond_118
    iget v3, v4, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    iget v10, v2, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-gt v3, v10, :cond_125

    .line 1221
    invoke-virtual {v0, v4}, Lcom/android/server/job/JobConcurrencyManager;->isPkgConcurrencyLimitedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    if-eqz v3, :cond_125

    .line 1222
    goto :goto_12e

    .line 1225
    :cond_125
    if-eqz v5, :cond_136

    iget v3, v5, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    iget v10, v4, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-ge v3, v10, :cond_12e

    goto :goto_136

    .line 1190
    .end local v4    # "nextPending":Lcom/android/server/job/controllers/JobStatus;
    :cond_12e
    :goto_12e
    move/from16 v4, p3

    move-object/from16 v3, v16

    move-object/from16 v10, v17

    goto/16 :goto_9b

    .line 1227
    .restart local v4    # "nextPending":Lcom/android/server/job/controllers/JobStatus;
    :cond_136
    :goto_136
    move-object v5, v4

    .line 1236
    invoke-virtual {v0, v4}, Lcom/android/server/job/JobConcurrencyManager;->getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v9

    .line 1237
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v3, v9}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(I)I

    move-result v3

    .line 1238
    .local v3, "workAsType":I
    if-nez v3, :cond_146

    .line 1241
    move/from16 v8, p3

    goto :goto_147

    .line 1243
    :cond_146
    move v8, v3

    .line 1245
    .end local v3    # "workAsType":I
    :goto_147
    move/from16 v4, p3

    move-object/from16 v3, v16

    move-object/from16 v10, v17

    goto/16 :goto_9b

    .line 1246
    .end local v4    # "nextPending":Lcom/android/server/job/controllers/JobStatus;
    .end local v16    # "packageStats":Lcom/android/server/job/JobConcurrencyManager$PackageStats;
    .local v3, "packageStats":Lcom/android/server/job/JobConcurrencyManager$PackageStats;
    .restart local v17    # "nextPending":Lcom/android/server/job/controllers/JobStatus;
    :cond_14f
    move-object/from16 v16, v3

    move-object/from16 v4, v17

    .end local v3    # "packageStats":Lcom/android/server/job/JobConcurrencyManager$PackageStats;
    .end local v17    # "nextPending":Lcom/android/server/job/controllers/JobStatus;
    .restart local v4    # "nextPending":Lcom/android/server/job/controllers/JobStatus;
    .restart local v16    # "packageStats":Lcom/android/server/job/JobConcurrencyManager$PackageStats;
    const-string v3, "Running job "

    if-eqz v5, :cond_17f

    .line 1247
    sget-boolean v10, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v10, :cond_175

    .line 1248
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " as preemption"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    :cond_175
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v3, v8, v9}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->stageJob(II)V

    .line 1251
    invoke-direct {v0, v1, v5, v8}, Lcom/android/server/job/JobConcurrencyManager;->startJobLocked(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;I)V

    goto/16 :goto_27d

    .line 1253
    :cond_17f
    sget-boolean v10, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v10, :cond_19d

    .line 1254
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Couldn\'t find preemption job for uid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/JobServiceContext;->getPreferredUid()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    :cond_19d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/JobServiceContext;->clearPreferredUid()V

    .line 1257
    if-eqz v13, :cond_27d

    .line 1258
    if-eqz v10, :cond_1be

    .line 1259
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " instead"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    :cond_1be
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v3, v14, v15}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->stageJob(II)V

    .line 1262
    invoke-direct {v0, v1, v13, v14}, Lcom/android/server/job/JobConcurrencyManager;->startJobLocked(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;I)V

    goto/16 :goto_27d

    .line 1265
    .end local v4    # "nextPending":Lcom/android/server/job/controllers/JobStatus;
    .end local v5    # "highestBiasJob":Lcom/android/server/job/controllers/JobStatus;
    .end local v8    # "highBiasWorkType":I
    .end local v9    # "highBiasAllWorkTypes":I
    .end local v13    # "backupJob":Lcom/android/server/job/controllers/JobStatus;
    .end local v14    # "backupWorkType":I
    .end local v15    # "backupAllWorkTypes":I
    .end local v16    # "packageStats":Lcom/android/server/job/JobConcurrencyManager$PackageStats;
    .restart local v3    # "packageStats":Lcom/android/server/job/JobConcurrencyManager$PackageStats;
    :cond_1c8
    move-object/from16 v16, v3

    move-object/from16 v17, v10

    .end local v3    # "packageStats":Lcom/android/server/job/JobConcurrencyManager$PackageStats;
    .restart local v16    # "packageStats":Lcom/android/server/job/JobConcurrencyManager$PackageStats;
    invoke-virtual {v7}, Lcom/android/server/job/PendingJobQueue;->size()I

    move-result v3

    if-lez v3, :cond_27d

    .line 1266
    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/JobConcurrencyManager;->updateCounterConfigLocked()V

    .line 1267
    invoke-direct {v0, v7, v5}, Lcom/android/server/job/JobConcurrencyManager;->updateNonRunningPrioritiesLocked(Lcom/android/server/job/PendingJobQueue;Z)V

    .line 1270
    const/4 v3, 0x0

    .line 1271
    .local v3, "highestBiasJob":Lcom/android/server/job/controllers/JobStatus;
    move/from16 v4, p3

    .line 1272
    .local v4, "highBiasWorkType":I
    move/from16 v5, p3

    .line 1275
    .local v5, "highBiasAllWorkTypes":I
    invoke-virtual {v7}, Lcom/android/server/job/PendingJobQueue;->resetIterator()V

    .line 1276
    :goto_1e0
    invoke-virtual {v7}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v8

    move-object v9, v8

    .local v9, "nextPending":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v8, :cond_258

    .line 1278
    iget-object v8, v0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_210

    .line 1280
    invoke-static {v6, v12}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    sget-boolean v8, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v8, :cond_20a

    .line 1282
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    :cond_20a
    invoke-virtual {v7, v9}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 1285
    move-object/from16 v10, v17

    goto :goto_247

    .line 1288
    :cond_210
    sget-boolean v8, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v8, :cond_231

    invoke-direct {v0, v9}, Lcom/android/server/job/JobConcurrencyManager;->isSimilarJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v8

    if-eqz v8, :cond_231

    .line 1289
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v10, v17

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_233

    .line 1288
    :cond_231
    move-object/from16 v10, v17

    .line 1292
    :goto_233
    invoke-virtual {v0, v9}, Lcom/android/server/job/JobConcurrencyManager;->isPkgConcurrencyLimitedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v8

    if-eqz v8, :cond_23a

    .line 1293
    goto :goto_247

    .line 1296
    :cond_23a
    invoke-virtual {v0, v9}, Lcom/android/server/job/JobConcurrencyManager;->getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v8

    .line 1297
    .local v8, "allWorkTypes":I
    iget-object v13, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v13, v8}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(I)I

    move-result v13

    .line 1298
    .local v13, "workAsType":I
    if-nez v13, :cond_24a

    .line 1299
    nop

    .line 1276
    .end local v8    # "allWorkTypes":I
    .end local v9    # "nextPending":Lcom/android/server/job/controllers/JobStatus;
    .end local v13    # "workAsType":I
    :goto_247
    move-object/from16 v17, v10

    goto :goto_1e0

    .line 1301
    .restart local v8    # "allWorkTypes":I
    .restart local v9    # "nextPending":Lcom/android/server/job/controllers/JobStatus;
    .restart local v13    # "workAsType":I
    :cond_24a
    if-eqz v3, :cond_252

    iget v14, v3, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    iget v15, v9, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-ge v14, v15, :cond_255

    .line 1303
    :cond_252
    move-object v3, v9

    .line 1304
    move v4, v13

    .line 1305
    move v5, v8

    .line 1307
    .end local v8    # "allWorkTypes":I
    .end local v13    # "workAsType":I
    :cond_255
    move-object/from16 v17, v10

    goto :goto_1e0

    .line 1309
    :cond_258
    if-eqz v3, :cond_27e

    .line 1312
    sget-boolean v8, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-eqz v8, :cond_274

    .line 1313
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "About to run job: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :cond_274
    iget-object v6, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v6, v4, v5}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->stageJob(II)V

    .line 1316
    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/job/JobConcurrencyManager;->startJobLocked(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;I)V

    goto :goto_27e

    .line 1265
    .end local v3    # "highestBiasJob":Lcom/android/server/job/controllers/JobStatus;
    .end local v4    # "highBiasWorkType":I
    .end local v5    # "highBiasAllWorkTypes":I
    .end local v9    # "nextPending":Lcom/android/server/job/controllers/JobStatus;
    :cond_27d
    :goto_27d
    nop

    .line 1320
    :cond_27e
    :goto_27e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/JobConcurrencyManager;->noteConcurrency()V

    .line 1321
    return-void

    .line 1168
    .end local v16    # "packageStats":Lcom/android/server/job/JobConcurrencyManager$PackageStats;
    .local v3, "packageStats":Lcom/android/server/job/JobConcurrencyManager$PackageStats;
    :cond_282
    move-object/from16 v16, v3

    .line 1169
    .end local v3    # "packageStats":Lcom/android/server/job/JobConcurrencyManager$PackageStats;
    .restart local v16    # "packageStats":Lcom/android/server/job/JobConcurrencyManager$PackageStats;
    :goto_284
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/JobServiceContext;->clearPreferredUid()V

    .line 1172
    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/JobConcurrencyManager;->noteConcurrency()V

    .line 1173
    return-void
.end method

.method public onSystemReady()V
    .registers 5

    .line 393
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    .line 395
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 396
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 397
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 398
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 401
    :try_start_29
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mGracePeriodObserver:Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

    const-string v3, "JobScheduler.Concurrency"

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_34} :catch_35

    .line 403
    goto :goto_36

    .line 402
    :catch_35
    move-exception v1

    .line 405
    :goto_36
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/job/JobConcurrencyManager;->onInteractiveStateChanged(Z)V

    .line 406
    return-void
.end method

.method onThirdPartyAppsCanStart()V
    .registers 11

    .line 413
    nop

    .line 414
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 413
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    .line 415
    .local v0, "batteryStats":Lcom/android/internal/app/IBatteryStats;
    const/4 v1, 0x0

    move v7, v1

    .local v7, "i":I
    :goto_d
    const/16 v1, 0x10

    if-ge v7, v1, :cond_2b

    .line 416
    iget-object v8, p0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    new-instance v9, Lcom/android/server/job/JobServiceContext;

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, v2, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mContext:Landroid/content/Context;

    .line 418
    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v1, v9

    move-object v3, p0

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/job/JobServiceContext;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobConcurrencyManager;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobPackageTracker;Landroid/os/Looper;)V

    .line 416
    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 415
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 420
    .end local v7    # "i":I
    :cond_2b
    return-void
.end method

.method onUidBiasChangedLocked(II)V
    .registers 4
    .param p1, "prevBias"    # I
    .param p2, "newBias"    # I

    .line 931
    const/16 v0, 0x28

    if-eq p1, v0, :cond_7

    if-eq p2, v0, :cond_7

    .line 933
    return-void

    .line 935
    :cond_7
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getPendingJobQueue()Lcom/android/server/job/PendingJobQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue;->size()I

    move-result v0

    if-nez v0, :cond_14

    .line 937
    return-void

    .line 941
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/job/JobConcurrencyManager;->assignJobsToContextsLocked()V

    .line 942
    return-void
.end method

.method onUserRemoved(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 438
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mGracePeriodObserver:Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->onUserRemoved(I)V

    .line 439
    return-void
.end method

.method shouldRunAsFgUserJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 8
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 1678
    iget-boolean v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mShouldRestrictBgUser:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 1679
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v0

    .line 1680
    .local v0, "userId":I
    const-class v2, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerInternal;

    .line 1681
    .local v2, "um":Lcom/android/server/pm/UserManagerInternal;
    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 1685
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v5, -0x2710

    if-eq v4, v5, :cond_26

    iget v4, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-eq v4, v0, :cond_26

    .line 1687
    iget v0, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1688
    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 1691
    :cond_26
    const-class v4, Landroid/app/ActivityManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManagerInternal;

    .line 1692
    invoke-virtual {v4}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v4

    .line 1697
    .local v4, "currentUser":I
    if-eq v4, v0, :cond_45

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v5

    if-nez v5, :cond_45

    iget-object v5, p0, Lcom/android/server/job/JobConcurrencyManager;->mGracePeriodObserver:Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

    .line 1698
    invoke-virtual {v5, v0}, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->isWithinGracePeriodForUser(I)Z

    move-result v5

    if-eqz v5, :cond_43

    goto :goto_45

    :cond_43
    const/4 v1, 0x0

    goto :goto_46

    :cond_45
    :goto_45
    nop

    .line 1697
    :goto_46
    return v1
.end method

.method shouldStopRunningJobLocked(Lcom/android/server/job/JobServiceContext;)Ljava/lang/String;
    .registers 14
    .param p1, "context"    # Lcom/android/server/job/JobServiceContext;

    .line 1332
    invoke-virtual {p1}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    .line 1333
    .local v0, "js":Lcom/android/server/job/controllers/JobStatus;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1335
    return-object v1

    .line 1338
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/job/JobServiceContext;->isWithinExecutionGuaranteeTime()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1339
    return-object v1

    .line 1346
    :cond_f
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1347
    const-string v1, "battery saver"

    return-object v1

    .line 1349
    :cond_1a
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1350
    const-string v1, "deep doze"

    return-object v1

    .line 1354
    :cond_25
    invoke-direct {p0}, Lcom/android/server/job/JobConcurrencyManager;->updateCounterConfigLocked()V

    .line 1356
    invoke-virtual {p1}, Lcom/android/server/job/JobServiceContext;->getRunningJobWorkType()I

    move-result v2

    .line 1358
    .local v2, "workType":I
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v4}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMaxTotal()I

    move-result v4

    if-gt v3, v4, :cond_15e

    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    .line 1359
    invoke-virtual {v3, v2}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->isOverTypeLimit(I)Z

    move-result v3

    if-eqz v3, :cond_44

    goto/16 :goto_15e

    .line 1363
    :cond_44
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3}, Lcom/android/server/job/JobSchedulerService;->getPendingJobQueue()Lcom/android/server/job/PendingJobQueue;

    move-result-object v3

    .line 1364
    .local v3, "pendingJobQueue":Lcom/android/server/job/PendingJobQueue;
    invoke-virtual {v3}, Lcom/android/server/job/PendingJobQueue;->size()I

    move-result v4

    .line 1365
    .local v4, "numPending":I
    if-nez v4, :cond_51

    .line 1367
    return-object v1

    .line 1371
    :cond_51
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v5

    const-string v6, " queue"

    const-string v7, "blocking "

    if-nez v5, :cond_a8

    iget-boolean v5, v0, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v5, :cond_60

    goto :goto_a8

    .line 1405
    :cond_60
    iget-object v5, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v5, v2}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->getPendingJobCount(I)I

    move-result v5

    if-lez v5, :cond_82

    .line 1406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/android/server/job/JobConcurrencyManager;->workTypeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1410
    :cond_82
    const/16 v5, 0x3f

    .line 1412
    .local v5, "remainingWorkTypes":I
    invoke-virtual {v3}, Lcom/android/server/job/PendingJobQueue;->resetIterator()V

    .line 1413
    :goto_87
    invoke-virtual {v3}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v6

    move-object v7, v6

    .local v7, "pending":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v6, :cond_a7

    .line 1414
    invoke-virtual {p0, v7}, Lcom/android/server/job/JobConcurrencyManager;->getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v6

    .line 1415
    .local v6, "workTypes":I
    and-int v8, v6, v5

    if-lez v8, :cond_a1

    iget-object v8, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    .line 1416
    invoke-virtual {v8, v6, v2}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(II)I

    move-result v8

    if-eqz v8, :cond_a1

    .line 1417
    const-string v1, "blocking other pending jobs"

    return-object v1

    .line 1420
    :cond_a1
    not-int v8, v6

    and-int/2addr v5, v8

    .line 1421
    if-nez v5, :cond_a6

    .line 1422
    goto :goto_a7

    .line 1424
    .end local v6    # "workTypes":I
    :cond_a6
    goto :goto_87

    .line 1426
    :cond_a7
    :goto_a7
    return-object v1

    .line 1373
    .end local v5    # "remainingWorkTypes":I
    .end local v7    # "pending":Lcom/android/server/job/controllers/JobStatus;
    :cond_a8
    :goto_a8
    const/16 v5, 0x10

    const/4 v8, 0x4

    if-eq v2, v5, :cond_111

    const/16 v9, 0x20

    if-ne v2, v9, :cond_b2

    goto :goto_111

    .line 1384
    :cond_b2
    iget-object v5, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v5, v8}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->getPendingJobCount(I)I

    move-result v5

    if-lez v5, :cond_d4

    .line 1385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Lcom/android/server/job/JobConcurrencyManager;->workTypeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1386
    :cond_d4
    iget-boolean v5, v0, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v5, :cond_15d

    iget v5, v0, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    const/16 v6, 0x28

    if-ne v5, v6, :cond_15d

    .line 1388
    const/4 v5, 0x0

    .line 1389
    .local v5, "topEjCount":I
    iget-object v7, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .local v7, "r":I
    :goto_e7
    if-ltz v7, :cond_fe

    .line 1390
    iget-object v8, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/JobStatus;

    .line 1391
    .local v8, "j":Lcom/android/server/job/controllers/JobStatus;
    iget-boolean v9, v8, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v9, :cond_fb

    iget v9, v8, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-ne v9, v6, :cond_fb

    .line 1392
    add-int/lit8 v5, v5, 0x1

    .line 1389
    .end local v8    # "j":Lcom/android/server/job/controllers/JobStatus;
    :cond_fb
    add-int/lit8 v7, v7, -0x1

    goto :goto_e7

    .line 1395
    .end local v7    # "r":I
    :cond_fe
    int-to-double v6, v5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    iget-object v10, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v10}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->getMaxTotal()I

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v10, v8

    cmpl-double v6, v6, v10

    if-lez v6, :cond_15d

    .line 1396
    const-string/jumbo v1, "prevent top EJ dominance"

    return-object v1

    .line 1375
    .end local v5    # "topEjCount":I
    :cond_111
    :goto_111
    iget-object v9, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v9, v5}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->getPendingJobCount(I)I

    move-result v9

    if-lez v9, :cond_133

    .line 1376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v5}, Lcom/android/server/job/JobConcurrencyManager;->workTypeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1379
    :cond_133
    iget-object v5, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    invoke-virtual {v5, v8}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->getPendingJobCount(I)I

    move-result v5

    if-lez v5, :cond_15d

    iget-object v5, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    .line 1380
    invoke-virtual {v5, v8, v2}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(II)I

    move-result v5

    if-eqz v5, :cond_15d

    .line 1382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Lcom/android/server/job/JobConcurrencyManager;->workTypeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1400
    :cond_15d
    return-object v1

    .line 1360
    .end local v3    # "pendingJobQueue":Lcom/android/server/job/PendingJobQueue;
    .end local v4    # "numPending":I
    :cond_15e
    :goto_15e
    const-string/jumbo v1, "too many jobs running"

    return-object v1
.end method

.method stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)Z
    .registers 9
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "reason"    # I
    .param p3, "internalReasonCode"    # I
    .param p4, "debugReason"    # Ljava/lang/String;

    .line 947
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 948
    return v1

    .line 951
    :cond_a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_29

    .line 952
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobServiceContext;

    .line 953
    .local v2, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    .line 954
    .local v3, "executing":Lcom/android/server/job/controllers/JobStatus;
    if-ne v3, p1, :cond_26

    .line 955
    invoke-virtual {v2, p2, p3, p4}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    .line 956
    const/4 v1, 0x1

    return v1

    .line 951
    .end local v2    # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v3    # "executing":Lcom/android/server/job/controllers/JobStatus;
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 959
    .end local v0    # "i":I
    :cond_29
    const-string v0, "JobScheduler.Concurrency"

    const-string v2, "Couldn\'t find running job on a context"

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 961
    return v1
.end method

.method stopNonReadyActiveJobsLocked()V
    .registers 9

    .line 994
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_73

    .line 995
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobServiceContext;

    .line 996
    .local v1, "serviceContext":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->getRunningJobLocked()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    .line 997
    .local v2, "running":Lcom/android/server/job/controllers/JobStatus;
    if-nez v2, :cond_18

    .line 998
    goto :goto_70

    .line 1000
    :cond_18
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v3

    if-nez v3, :cond_45

    .line 1001
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_39

    .line 1002
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getStopReason()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_39

    .line 1003
    nop

    .line 1004
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getStopReason()I

    move-result v3

    const/4 v4, 0x6

    .line 1003
    const-string v5, "cancelled due to restricted bucket"

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    goto :goto_70

    .line 1008
    :cond_39
    nop

    .line 1009
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getStopReason()I

    move-result v3

    .line 1008
    const/4 v4, 0x1

    const-string v5, "cancelled due to unsatisfied constraints"

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    goto :goto_70

    .line 1014
    :cond_45
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3, v2}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v3

    .line 1015
    .local v3, "restriction":Lcom/android/server/job/restrictions/JobRestriction;
    if-eqz v3, :cond_70

    .line 1016
    invoke-virtual {v3}, Lcom/android/server/job/restrictions/JobRestriction;->getInternalReason()I

    move-result v4

    .line 1017
    .local v4, "internalReasonCode":I
    invoke-virtual {v3}, Lcom/android/server/job/restrictions/JobRestriction;->getReason()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restricted due to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1020
    invoke-static {v4}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1017
    invoke-virtual {v1, v5, v4, v6}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    .line 994
    .end local v1    # "serviceContext":Lcom/android/server/job/JobServiceContext;
    .end local v2    # "running":Lcom/android/server/job/controllers/JobStatus;
    .end local v3    # "restriction":Lcom/android/server/job/restrictions/JobRestriction;
    .end local v4    # "internalReasonCode":I
    :cond_70
    :goto_70
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1025
    .end local v0    # "i":I
    :cond_73
    return-void
.end method

.method updateConfigLocked()V
    .registers 6

    .line 1498
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 1499
    const-string/jumbo v1, "jobscheduler"

    invoke-static {v1, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    .line 1501
    .local v0, "properties":Landroid/provider/DeviceConfig$Properties;
    const-string v1, "concurrency_screen_off_adjustment_delay_ms"

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mScreenOffAdjustmentDelayMs:J

    .line 1504
    sget-object v1, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_ON:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    iget-object v2, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v2, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;)V

    .line 1505
    iget-object v2, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v2, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;)V

    .line 1506
    iget-object v2, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v2, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;)V

    .line 1507
    iget-object v1, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v1, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;)V

    .line 1509
    sget-object v1, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_OFF:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    iget-object v2, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v2, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;)V

    .line 1510
    iget-object v2, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v2, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;)V

    .line 1511
    iget-object v2, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v2, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;)V

    .line 1512
    iget-object v1, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    invoke-virtual {v1, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;)V

    .line 1515
    nop

    .line 1516
    const-string v1, "concurrency_pkg_concurrency_limit_ej"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1515
    const/16 v2, 0x10

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitEj:I

    .line 1517
    nop

    .line 1518
    const-string v1, "concurrency_pkg_concurrency_limit_regular"

    const/16 v4, 0x8

    invoke-virtual {v0, v1, v4}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1517
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitRegular:I

    .line 1520
    return-void
.end method
