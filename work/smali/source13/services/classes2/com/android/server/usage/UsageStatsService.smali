.class public Lcom/android/server/usage/UsageStatsService;
.super Lcom/android/server/SystemService;
.source "UsageStatsService.java"

# interfaces
.implements Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/UsageStatsService$MyPackageMonitor;,
        Lcom/android/server/usage/UsageStatsService$LocalService;,
        Lcom/android/server/usage/UsageStatsService$BinderService;,
        Lcom/android/server/usage/UsageStatsService$H;,
        Lcom/android/server/usage/UsageStatsService$UidRemovedReceiver;,
        Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;,
        Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;,
        Lcom/android/server/usage/UsageStatsService$Injector;,
        Lcom/android/server/usage/UsageStatsService$ActivityData;
    }
.end annotation


# static fields
.field private static final COMMON_USAGE_STATS_DE_DIR:Ljava/io/File;

.field static final COMPRESS_TIME:Z = false

.field static final DEBUG:Z = false

.field static final DEBUG_RESPONSE_STATS:Z

.field private static final ENABLE_KERNEL_UPDATES:Z = true

.field public static final ENABLE_TIME_CHANGE_CORRECTION:Z

.field private static final FLUSH_INTERVAL:J = 0x124f80L

.field private static final GLOBAL_COMPONENT_USAGE_FILE_NAME:Ljava/lang/String; = "globalcomponentusage"

.field private static final KEEP_LEGACY_DIR:Z = false

.field private static final KERNEL_COUNTER_FILE:Ljava/io/File;

.field static final MSG_FLUSH_TO_DISK:I = 0x1

.field static final MSG_HANDLE_LAUNCH_TIME_ON_USER_UNLOCK:I = 0x8

.field static final MSG_NOTIFY_ESTIMATED_LAUNCH_TIMES_CHANGED:I = 0x9

.field static final MSG_ON_START:I = 0x7

.field static final MSG_PACKAGE_REMOVED:I = 0x6

.field static final MSG_REMOVE_USER:I = 0x2

.field static final MSG_REPORT_EVENT:I = 0x0

.field static final MSG_REPORT_EVENT_TO_ALL_USERID:I = 0x4

.field static final MSG_UID_STATE_CHANGED:I = 0x3

.field static final MSG_UNLOCKED_USER:I = 0x5

.field private static final ONE_DAY:J = 0x5265c00L

.field private static final ONE_WEEK:J = 0x240c8400L

.field static final TAG:Ljava/lang/String; = "UsageStatsService"

.field private static final TEN_SECONDS:J = 0x2710L

.field static final TIME_CHANGE_THRESHOLD_MILLIS:J = 0x3e8L

.field private static final TOKEN_DELIMITER:C = '/'

.field private static final TWENTY_MINUTES:J = 0x124f80L

.field private static final UNKNOWN_LAUNCH_TIME_DELAY_MS:J = 0x757b12c00L

.field private static final USAGE_STATS_LEGACY_DIR:Ljava/io/File;


# instance fields
.field mAppOps:Landroid/app/AppOpsManager;

.field mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

.field mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

.field mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

.field private final mEstimatedLaunchTimeChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private final mInjector:Lcom/android/server/usage/UsageStatsService$Injector;

.field private final mLastTimeComponentUsedGlobal:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mLaunchTimeAlarmQueues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field mPackageManager:Landroid/content/pm/PackageManager;

.field mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private final mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRealTimeSnapshot:J

.field private final mReportedEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/LinkedList<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;>;"
        }
    .end annotation
.end field

.field private mResponseStatsTracker:Lcom/android/server/usage/BroadcastResponseStatsTracker;

.field mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

.field private mStandbyChangeListener:Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

.field private mSystemTimeSnapshot:J

.field private final mUidObserver:Landroid/app/IUidObserver;

.field private final mUidToKernelCounter:Landroid/util/SparseIntArray;

.field private final mUsageEventListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;",
            ">;"
        }
    .end annotation
.end field

.field final mUsageReporters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mUsageSource:I

.field mUserManager:Landroid/os/UserManager;

.field private final mUserState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usage/UserUsageStatsService;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mVisibleActivities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usage/UsageStatsService$ActivityData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmEstimatedLaunchTimeChangedListeners(Lcom/android/server/usage/UsageStatsService;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mEstimatedLaunchTimeChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastTimeComponentUsedGlobal(Lcom/android/server/usage/UsageStatsService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mLastTimeComponentUsedGlobal:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingLaunchTimeChangePackages(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseSetArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResponseStatsTracker(Lcom/android/server/usage/UsageStatsService;)Lcom/android/server/usage/BroadcastResponseStatsTracker;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mResponseStatsTracker:Lcom/android/server/usage/BroadcastResponseStatsTracker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUidToKernelCounter(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseIntArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUidToKernelCounter:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserUnlockedStates(Lcom/android/server/usage/UsageStatsService;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mbuildFullToken(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->buildFullToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetDpmInternal(Lcom/android/server/usage/UsageStatsService;)Landroid/app/admin/DevicePolicyManagerInternal;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetUserUsageStatsServiceLocked(Lcom/android/server/usage/UsageStatsService;I)Lcom/android/server/usage/UserUsageStatsService;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleEstimatedLaunchTimesOnUserUnlock(Lcom/android/server/usage/UsageStatsService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->handleEstimatedLaunchTimesOnUserUnlock(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadGlobalComponentUsageLocked(Lcom/android/server/usage/UsageStatsService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->loadGlobalComponentUsageLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monPackageRemoved(Lcom/android/server/usage/UsageStatsService;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->onPackageRemoved(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monUserUnlocked(Lcom/android/server/usage/UsageStatsService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->onUserUnlocked(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpruneUninstalledPackagesData(Lcom/android/server/usage/UsageStatsService;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->pruneUninstalledPackagesData(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mreadUsageSourceSetting(Lcom/android/server/usage/UsageStatsService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->readUsageSourceSetting()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterLaunchTimeChangedListener(Lcom/android/server/usage/UsageStatsService;Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->registerLaunchTimeChangedListener(Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterListener(Lcom/android/server/usage/UsageStatsService;Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreportEventOrAddToQueue(Lcom/android/server/usage/UsageStatsService;ILandroid/app/usage/UsageEvents$Event;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->reportEventOrAddToQueue(ILandroid/app/usage/UsageEvents$Event;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetEstimatedLaunchTime(Lcom/android/server/usage/UsageStatsService;ILjava/lang/String;J)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/usage/UsageStatsService;->setEstimatedLaunchTime(ILjava/lang/String;J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetEstimatedLaunchTimes(Lcom/android/server/usage/UsageStatsService;ILjava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->setEstimatedLaunchTimes(ILjava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshouldDeleteObsoleteData(Lcom/android/server/usage/UsageStatsService;Landroid/os/UserHandle;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->shouldDeleteObsoleteData(Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshouldHideLocusIdEvents(Lcom/android/server/usage/UsageStatsService;II)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->shouldHideLocusIdEvents(II)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshouldHideShortcutInvocationEvents(Lcom/android/server/usage/UsageStatsService;ILjava/lang/String;II)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/usage/UsageStatsService;->shouldHideShortcutInvocationEvents(ILjava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshouldObfuscateInstantAppsForCaller(Lcom/android/server/usage/UsageStatsService;II)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->shouldObfuscateInstantAppsForCaller(II)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshouldObfuscateNotificationEvents(Lcom/android/server/usage/UsageStatsService;II)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->shouldObfuscateNotificationEvents(II)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$munregisterLaunchTimeChangedListener(Lcom/android/server/usage/UsageStatsService;Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->unregisterLaunchTimeChangedListener(Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterListener(Lcom/android/server/usage/UsageStatsService;Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->unregisterListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePackageMappingsData(Lcom/android/server/usage/UsageStatsService;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->updatePackageMappingsData()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetKERNEL_COUNTER_FILE()Ljava/io/File;
    .registers 1

    sget-object v0, Lcom/android/server/usage/UsageStatsService;->KERNEL_COUNTER_FILE:Ljava/io/File;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 145
    nop

    .line 146
    const-string/jumbo v0, "persist.debug.time_correction"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/usage/UsageStatsService;->ENABLE_TIME_CHANGE_CORRECTION:Z

    .line 149
    const-string v0, "UsageStatsService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/usage/UsageStatsService;->DEBUG_RESPONSE_STATS:Z

    .line 168
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/uid_procstat/set"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usage/UsageStatsService;->KERNEL_COUNTER_FILE:Ljava/io/File;

    .line 170
    new-instance v0, Ljava/io/File;

    .line 171
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "usagestats"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usage/UsageStatsService;->USAGE_STATS_LEGACY_DIR:Ljava/io/File;

    .line 175
    new-instance v0, Ljava/io/File;

    .line 176
    invoke-static {}, Landroid/os/Environment;->getDataSystemDeDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usage/UsageStatsService;->COMMON_USAGE_STATS_DE_DIR:Ljava/io/File;

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 274
    new-instance v0, Lcom/android/server/usage/UsageStatsService$Injector;

    invoke-direct {v0}, Lcom/android/server/usage/UsageStatsService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/usage/UsageStatsService;-><init>(Landroid/content/Context;Lcom/android/server/usage/UsageStatsService$Injector;)V

    .line 275
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/usage/UsageStatsService$Injector;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/usage/UsageStatsService$Injector;

    .line 279
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 193
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 204
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    .line 205
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 206
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUidToKernelCounter:Landroid/util/SparseIntArray;

    .line 212
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLastTimeComponentUsedGlobal:Ljava/util/Map;

    .line 220
    new-instance v0, Lcom/android/server/usage/UsageStatsService$MyPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/UsageStatsService$MyPackageMonitor;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$MyPackageMonitor-IA;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 223
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    .line 224
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    .line 225
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    .line 226
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    .line 228
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageEventListeners:Landroid/util/ArraySet;

    .line 230
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mEstimatedLaunchTimeChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 232
    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    .line 250
    new-instance v0, Lcom/android/server/usage/UsageStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/usage/UsageStatsService$1;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mStandbyChangeListener:Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    .line 592
    new-instance v0, Lcom/android/server/usage/UsageStatsService$3;

    invoke-direct {v0, p0}, Lcom/android/server/usage/UsageStatsService$3;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUidObserver:Landroid/app/IUidObserver;

    .line 280
    iput-object p2, p0, Lcom/android/server/usage/UsageStatsService;->mInjector:Lcom/android/server/usage/UsageStatsService$Injector;

    .line 281
    return-void
.end method

.method private buildFullToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .line 1739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1740
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1741
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1742
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1743
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private calculateEstimatedPackageLaunchTime(ILjava/lang/String;)J
    .registers 20
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1530
    move-object/from16 v9, p0

    iget-object v10, v9, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1531
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v11, v0

    .line 1532
    .local v11, "endTime":J
    const-wide/32 v0, 0x240c8400

    sub-long v13, v11, v0

    .line 1533
    .local v13, "beginTime":J
    const-wide v0, 0x757b12c00L

    add-long v15, v11, v0

    .line 1534
    .local v15, "unknownTime":J
    const/4 v8, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide v3, v13

    move-wide v5, v11

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/UsageStatsService;->queryEarliestEventsForPackage(IJJLjava/lang/String;I)Landroid/app/usage/UsageEvents;

    move-result-object v0

    .line 1536
    .local v0, "events":Landroid/app/usage/UsageEvents;
    if-nez v0, :cond_27

    .line 1540
    monitor-exit v10

    return-wide v15

    .line 1542
    :cond_27
    new-instance v1, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v1}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 1544
    .local v1, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-virtual {v0, v1}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 1545
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v2

    sub-long v2, v11, v2

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-lez v2, :cond_42

    move v2, v3

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    .line 1557
    .local v2, "hasMoreThan24HoursOfHistory":Z
    :cond_43
    :goto_43
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v4

    if-ne v4, v3, :cond_58

    .line 1558
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v4

    .line 1559
    .local v4, "timestamp":J
    nop

    .line 1560
    invoke-static {v2, v4, v5}, Lcom/android/server/usage/UsageStatsService;->calculateNextLaunchTime(ZJ)J

    move-result-wide v6

    .line 1561
    .local v6, "nextLaunch":J
    cmp-long v8, v6, v11

    if-lez v8, :cond_58

    .line 1562
    monitor-exit v10

    return-wide v6

    .line 1565
    .end local v4    # "timestamp":J
    .end local v6    # "nextLaunch":J
    :cond_58
    invoke-virtual {v0, v1}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    move-result v4

    if-nez v4, :cond_43

    .line 1566
    monitor-exit v10

    return-wide v15

    .line 1554
    .end local v2    # "hasMoreThan24HoursOfHistory":Z
    :cond_60
    monitor-exit v10

    return-wide v15

    .line 1567
    .end local v0    # "events":Landroid/app/usage/UsageEvents;
    .end local v1    # "event":Landroid/app/usage/UsageEvents$Event;
    .end local v11    # "endTime":J
    .end local v13    # "beginTime":J
    .end local v15    # "unknownTime":J
    :catchall_62
    move-exception v0

    monitor-exit v10
    :try_end_64
    .catchall {:try_start_5 .. :try_end_64} :catchall_62

    throw v0
.end method

.method private static calculateNextLaunchTime(ZJ)J
    .registers 5
    .param p0, "hasMoreThan24HoursOfHistory"    # Z
    .param p1, "eventTimestamp"    # J

    .line 1580
    if-eqz p0, :cond_7

    .line 1581
    const-wide/32 v0, 0x240c8400

    add-long/2addr v0, p1

    return-wide v0

    .line 1583
    :cond_7
    const-wide/32 v0, 0x5265c00

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V
    .registers 14
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;

    .line 1014
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1015
    .local v0, "actualSystemTime":J
    sget-boolean v2, Lcom/android/server/usage/UsageStatsService;->ENABLE_TIME_CHANGE_CORRECTION:Z

    if-eqz v2, :cond_43

    .line 1016
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1017
    .local v2, "actualRealtime":J
    iget-wide v4, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    sub-long v4, v2, v4

    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    add-long/2addr v4, v6

    .line 1019
    .local v4, "expectedSystemTime":J
    sub-long v6, v0, v4

    .line 1020
    .local v6, "diffSystemTime":J
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    cmp-long v8, v8, v10

    if-lez v8, :cond_43

    .line 1022
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Time changed in by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    div-long v9, v6, v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " seconds"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UsageStatsService"

    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    iput-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    .line 1024
    iput-wide v0, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    .line 1027
    .end local v2    # "actualRealtime":J
    .end local v4    # "expectedSystemTime":J
    .end local v6    # "diffSystemTime":J
    :cond_43
    const-wide/16 v2, 0x0

    iget-wide v4, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 1028
    return-void
.end method

.method private static copyRecursively(Ljava/io/File;Ljava/io/File;)V
    .registers 9
    .param p0, "parent"    # Ljava/io/File;
    .param p1, "f"    # Ljava/io/File;

    .line 778
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 779
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x1

    if-nez v0, :cond_47

    .line 781
    :try_start_7
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    new-array v1, v1, [Ljava/nio/file/CopyOption;

    const/4 v4, 0x0

    sget-object v5, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v5, v1, v4

    invoke-static {v2, v3, v1}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_22} :catch_24

    .line 786
    nop

    .line 787
    return-void

    .line 783
    :catch_24
    move-exception v1

    .line 784
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to move usage stats file : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UsageStatsService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 790
    .end local v1    # "e":Ljava/io/IOException;
    :cond_47
    array-length v2, v0

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_49
    if-ltz v2, :cond_92

    .line 791
    move-object v1, p0

    .line 792
    .local v1, "newParent":Ljava/io/File;
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 793
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v3

    .line 794
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    .line 795
    .local v3, "mkdirSuccess":Z
    if-nez v3, :cond_8a

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6d

    goto :goto_8a

    .line 796
    :cond_6d
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to create usage stats directory during migration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 798
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 801
    .end local v3    # "mkdirSuccess":Z
    :cond_8a
    :goto_8a
    aget-object v3, v0, v2

    invoke-static {v1, v3}, Lcom/android/server/usage/UsageStatsService;->copyRecursively(Ljava/io/File;Ljava/io/File;)V

    .line 790
    .end local v1    # "newParent":Ljava/io/File;
    add-int/lit8 v2, v2, -0x1

    goto :goto_49

    .line 803
    .end local v2    # "i":I
    :cond_92
    return-void
.end method

.method private deleteLegacyDir(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 806
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/usage/UsageStatsService;->USAGE_STATS_LEGACY_DIR:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 807
    .local v0, "legacyUserDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 808
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    .line 809
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "UsageStatsService"

    if-eqz v2, :cond_32

    .line 810
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occurred while attempting to delete legacy usage stats dir for user "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_32
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4a

    .line 815
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_4a

    .line 816
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 817
    const-string v1, "Error occurred while attempting to delete legacy usage stats dir"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_4a
    return-void
.end method

.method private static deleteRecursively(Ljava/io/File;)V
    .registers 5
    .param p0, "f"    # Ljava/io/File;

    .line 675
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 676
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_12

    .line 677
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 678
    .local v3, "subFile":Ljava/io/File;
    invoke-static {v3}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    .line 677
    .end local v3    # "subFile":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 682
    :cond_12
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_36

    .line 683
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsageStatsService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_36
    return-void
.end method

.method private flushToDiskLocked()V
    .registers 6

    .line 1747
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1748
    .local v0, "userCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_2f

    .line 1749
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1750
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 1751
    invoke-direct {p0, v2}, Lcom/android/server/usage/UsageStatsService;->persistPendingEventsLocked(I)V

    .line 1752
    goto :goto_2c

    .line 1754
    :cond_1f
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usage/UserUsageStatsService;

    .line 1755
    .local v3, "service":Lcom/android/server/usage/UserUsageStatsService;
    if-eqz v3, :cond_2c

    .line 1756
    invoke-virtual {v3}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 1748
    .end local v2    # "userId":I
    .end local v3    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :cond_2c
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1759
    .end local v1    # "i":I
    :cond_2f
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1760
    return-void
.end method

.method private getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;
    .registers 2

    .line 512
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    if-nez v0, :cond_e

    .line 513
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 515
    :cond_e
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    return-object v0
.end method

.method private getInstalledPackages(I)Ljava/util/HashMap;
    .registers 9
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 498
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_6

    .line 499
    const/4 v0, 0x0

    return-object v0

    .line 501
    :cond_6
    const/16 v1, 0x2000

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    .line 503
    .local v0, "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 504
    .local v1, "packagesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_17
    if-ltz v2, :cond_2d

    .line 505
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 506
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-wide v5, v3, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    .line 508
    .end local v2    # "i":I
    :cond_2d
    return-object v1
.end method

.method private getShortcutServiceInternal()Landroid/content/pm/ShortcutServiceInternal;
    .registers 2

    .line 519
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    if-nez v0, :cond_e

    .line 520
    const-class v0, Landroid/content/pm/ShortcutServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutServiceInternal;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 522
    :cond_e
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    return-object v0
.end method

.method private getUsageSourcePackage(Landroid/app/usage/UsageEvents$Event;)Ljava/lang/String;
    .registers 3
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;

    .line 1214
    iget v0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageSource:I

    packed-switch v0, :pswitch_data_c

    .line 1219
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    return-object v0

    .line 1216
    :pswitch_8
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    return-object v0

    nop

    :pswitch_data_c
    .packed-switch 0x2
        :pswitch_8
    .end packed-switch
.end method

.method private getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;
    .registers 5
    .param p1, "userId"    # I

    .line 691
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/UserUsageStatsService;

    .line 692
    .local v0, "service":Lcom/android/server/usage/UserUsageStatsService;
    if-nez v0, :cond_28

    .line 693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to fetch usage stats service for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". The user might not have been initialized yet."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsageStatsService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_28
    return-object v0
.end method

.method private handleEstimatedLaunchTimesOnUserUnlock(I)V
    .registers 27
    .param p1, "userId"    # I

    .line 1588
    move-object/from16 v8, p0

    move/from16 v9, p1

    iget-object v10, v8, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1589
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    move-wide v11, v0

    .line 1590
    .local v11, "nowElapsed":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v13, v0

    .line 1591
    .local v13, "now":J
    const-wide/32 v15, 0x240c8400

    sub-long v17, v13, v15

    .line 1592
    .local v17, "beginTime":J
    const/4 v7, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v3, v17

    move-wide v5, v13

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usage/UsageStatsService;->queryEarliestAppEvents(IJJI)Landroid/app/usage/UsageEvents;

    move-result-object v0

    .line 1594
    .local v0, "events":Landroid/app/usage/UsageEvents;
    if-nez v0, :cond_26

    .line 1595
    monitor-exit v10

    return-void

    .line 1597
    :cond_26
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1598
    .local v1, "hasMoreThan24HoursOfHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v2, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v2}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 1599
    .local v2, "event":Landroid/app/usage/UsageEvents$Event;
    iget-object v3, v8, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;

    .line 1600
    .local v3, "alarmQueue":Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;
    if-nez v3, :cond_51

    .line 1601
    new-instance v4, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;

    .line 1602
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v8, v9, v5, v6}, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;-><init>(Lcom/android/server/usage/UsageStatsService;ILandroid/content/Context;Landroid/os/Looper;)V

    move-object v3, v4

    .line 1603
    iget-object v4, v8, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    invoke-virtual {v4, v9, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1605
    :cond_51
    const/4 v4, 0x0

    .line 1606
    .local v4, "changedTimes":Z
    invoke-virtual {v0, v2}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    move-result v5

    .local v5, "unprocessedEvent":Z
    :goto_56
    if-eqz v5, :cond_de

    .line 1608
    invoke-virtual {v2}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1609
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_79

    .line 1610
    invoke-virtual {v2}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v21

    sub-long v21, v13, v21

    const-wide/32 v23, 0x5265c00

    cmp-long v7, v21, v23

    if-lez v7, :cond_71

    const/4 v7, 0x1

    goto :goto_72

    :cond_71
    const/4 v7, 0x0

    .line 1615
    .local v7, "hasHistory":Z
    :goto_72
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v1, v6, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1617
    .end local v7    # "hasHistory":Z
    :cond_79
    invoke-virtual {v2}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v7

    const/4 v15, 0x1

    if-ne v7, v15, :cond_cc

    .line 1618
    iget-object v7, v8, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 1619
    invoke-interface {v7, v6, v9}, Lcom/android/server/usage/AppStandbyInternal;->getEstimatedLaunchTime(Ljava/lang/String;I)J

    move-result-wide v15

    .line 1620
    .local v15, "estimatedLaunchTime":J
    cmp-long v7, v15, v13

    if-ltz v7, :cond_99

    const-wide v21, 0x7fffffffffffffffL

    cmp-long v7, v15, v21

    if-nez v7, :cond_94

    goto :goto_99

    :cond_94
    move-object/from16 v21, v0

    move-object/from16 v22, v1

    goto :goto_b6

    .line 1622
    :cond_99
    :goto_99
    nop

    .line 1623
    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move-object/from16 v21, v0

    move-object/from16 v22, v1

    .end local v0    # "events":Landroid/app/usage/UsageEvents;
    .end local v1    # "hasMoreThan24HoursOfHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .local v21, "events":Landroid/app/usage/UsageEvents;
    .local v22, "hasMoreThan24HoursOfHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-virtual {v2}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v0

    .line 1622
    invoke-static {v7, v0, v1}, Lcom/android/server/usage/UsageStatsService;->calculateNextLaunchTime(ZJ)J

    move-result-wide v0

    .line 1624
    .end local v15    # "estimatedLaunchTime":J
    .local v0, "estimatedLaunchTime":J
    iget-object v7, v8, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v7, v6, v9, v0, v1}, Lcom/android/server/usage/AppStandbyInternal;->setEstimatedLaunchTime(Ljava/lang/String;IJ)V

    move-wide v15, v0

    .line 1627
    .end local v0    # "estimatedLaunchTime":J
    .restart local v15    # "estimatedLaunchTime":J
    :goto_b6
    const-wide/32 v0, 0x240c8400

    add-long v19, v13, v0

    cmp-long v7, v15, v19

    if-gez v7, :cond_c4

    .line 1635
    invoke-direct {v8, v9, v6}, Lcom/android/server/usage/UsageStatsService;->stageChangedEstimatedLaunchTime(ILjava/lang/String;)Z

    move-result v7

    or-int/2addr v4, v7

    .line 1637
    :cond_c4
    sub-long v19, v15, v13

    add-long v0, v11, v19

    invoke-virtual {v3, v6, v0, v1}, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->addAlarm(Ljava/lang/Object;J)V

    goto :goto_d0

    .line 1617
    .end local v15    # "estimatedLaunchTime":J
    .end local v21    # "events":Landroid/app/usage/UsageEvents;
    .end local v22    # "hasMoreThan24HoursOfHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .local v0, "events":Landroid/app/usage/UsageEvents;
    .restart local v1    # "hasMoreThan24HoursOfHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_cc
    move-object/from16 v21, v0

    move-object/from16 v22, v1

    .line 1607
    .end local v0    # "events":Landroid/app/usage/UsageEvents;
    .end local v1    # "hasMoreThan24HoursOfHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v6    # "packageName":Ljava/lang/String;
    .restart local v21    # "events":Landroid/app/usage/UsageEvents;
    .restart local v22    # "hasMoreThan24HoursOfHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :goto_d0
    move-object/from16 v0, v21

    .end local v21    # "events":Landroid/app/usage/UsageEvents;
    .restart local v0    # "events":Landroid/app/usage/UsageEvents;
    invoke-virtual {v0, v2}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    move-result v1

    move v5, v1

    move-object/from16 v1, v22

    const-wide/32 v15, 0x240c8400

    goto/16 :goto_56

    .line 1606
    .end local v22    # "hasMoreThan24HoursOfHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .restart local v1    # "hasMoreThan24HoursOfHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_de
    move-object/from16 v22, v1

    .line 1640
    .end local v1    # "hasMoreThan24HoursOfHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v5    # "unprocessedEvent":Z
    .restart local v22    # "hasMoreThan24HoursOfHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz v4, :cond_e9

    .line 1641
    iget-object v1, v8, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x9

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1643
    .end local v0    # "events":Landroid/app/usage/UsageEvents;
    .end local v2    # "event":Landroid/app/usage/UsageEvents$Event;
    .end local v3    # "alarmQueue":Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;
    .end local v4    # "changedTimes":Z
    .end local v11    # "nowElapsed":J
    .end local v13    # "now":J
    .end local v17    # "beginTime":J
    .end local v22    # "hasMoreThan24HoursOfHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_e9
    monitor-exit v10

    .line 1644
    return-void

    .line 1643
    :catchall_eb
    move-exception v0

    monitor-exit v10
    :try_end_ed
    .catchall {:try_start_7 .. :try_end_ed} :catchall_eb

    throw v0
.end method

.method private initializeUserUsageStatsServiceLocked(IJLjava/util/HashMap;Z)V
    .registers 12
    .param p1, "userId"    # I
    .param p2, "currentTimeMillis"    # J
    .param p5, "deleteObsoleteData"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .line 705
    .local p4, "installedPackages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "usagestats"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 707
    .local v0, "usageStatsDir":Ljava/io/File;
    new-instance v1, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0, p0}, Lcom/android/server/usage/UserUsageStatsService;-><init>(Landroid/content/Context;ILjava/io/File;Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;)V

    .line 710
    .local v1, "service":Lcom/android/server/usage/UserUsageStatsService;
    :try_start_15
    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/android/server/usage/UserUsageStatsService;->init(JLjava/util/HashMap;Z)V

    .line 711
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1d} :catch_1e

    .line 720
    goto :goto_3f

    .line 712
    :catch_1e
    move-exception v2

    .line 713
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v3

    const-string v4, "UsageStatsService"

    if-nez v3, :cond_40

    .line 717
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to initialize service for stopped or removed user "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3f
    return-void

    .line 714
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to initialized unlocked user "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    throw v2
.end method

.method static synthetic lambda$loadGlobalComponentUsageLocked$0(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "name"    # Ljava/lang/String;

    .line 925
    const-string v0, "globalcomponentusage"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private loadGlobalComponentUsageLocked()V
    .registers 11

    .line 924
    sget-object v0, Lcom/android/server/usage/UsageStatsService;->COMMON_USAGE_STATS_DE_DIR:Ljava/io/File;

    new-instance v1, Lcom/android/server/usage/UsageStatsService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/usage/UsageStatsService$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 926
    .local v0, "packageUsageFile":[Ljava/io/File;
    if-eqz v0, :cond_7a

    array-length v1, v0

    if-nez v1, :cond_11

    goto :goto_7a

    .line 930
    :cond_11
    new-instance v1, Landroid/util/AtomicFile;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-direct {v1, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 931
    .local v1, "af":Landroid/util/AtomicFile;
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 933
    .local v3, "tmpUsage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :try_start_1e
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_22} :catch_5e

    .line 934
    .local v4, "in":Ljava/io/FileInputStream;
    :try_start_22
    invoke-static {v4, v3}, Lcom/android/server/usage/UsageStatsProtoV2;->readGlobalComponentUsage(Ljava/io/InputStream;Ljava/util/Map;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_52

    .line 935
    if-eqz v4, :cond_2a

    :try_start_27
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 937
    .end local v4    # "in":Ljava/io/FileInputStream;
    :cond_2a
    nop

    .line 938
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/util/Map$Entry;

    .line 939
    .local v4, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    array-length v5, v4

    .line 940
    .local v5, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_37
    if-ge v6, v5, :cond_51

    .line 943
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mLastTimeComponentUsedGlobal:Ljava/util/Map;

    aget-object v8, v4, v6

    .line 944
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aget-object v9, v4, v6

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 943
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_4e} :catch_5e

    .line 940
    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    .line 949
    .end local v4    # "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v5    # "size":I
    .end local v6    # "i":I
    :cond_51
    goto :goto_79

    .line 933
    .local v4, "in":Ljava/io/FileInputStream;
    :catchall_52
    move-exception v5

    if-eqz v4, :cond_5d

    :try_start_55
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_59

    goto :goto_5d

    :catchall_59
    move-exception v6

    :try_start_5a
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "packageUsageFile":[Ljava/io/File;
    .end local v1    # "af":Landroid/util/AtomicFile;
    .end local v3    # "tmpUsage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local p0    # "this":Lcom/android/server/usage/UsageStatsService;
    :cond_5d
    :goto_5d
    throw v5
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5e} :catch_5e

    .line 946
    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "packageUsageFile":[Ljava/io/File;
    .restart local v1    # "af":Landroid/util/AtomicFile;
    .restart local v3    # "tmpUsage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsService;
    :catch_5e
    move-exception v4

    .line 948
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v2, v0, v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "UsageStatsService"

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_79
    return-void

    .line 927
    .end local v1    # "af":Landroid/util/AtomicFile;
    .end local v3    # "tmpUsage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_7a
    :goto_7a
    return-void
.end method

.method private loadPendingEventsLocked(ILjava/util/LinkedList;)V
    .registers 13
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/LinkedList<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;)V"
        }
    .end annotation

    .line 857
    .local p2, "pendingEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/usage/UsageEvents$Event;>;"
    const-string v0, "UsageStatsService"

    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "usagestats"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 859
    .local v1, "usageStatsDeDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 860
    .local v2, "pendingEventsFiles":[Ljava/io/File;
    if-eqz v2, :cond_9e

    array-length v3, v2

    if-nez v3, :cond_19

    goto/16 :goto_9e

    .line 863
    :cond_19
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 865
    array-length v3, v2

    .line 866
    .local v3, "numFiles":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1e
    if-ge v4, v3, :cond_9d

    .line 867
    new-instance v5, Landroid/util/AtomicFile;

    aget-object v6, v2, v4

    invoke-direct {v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 868
    .local v5, "af":Landroid/util/AtomicFile;
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 870
    .local v6, "tmpEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/usage/UsageEvents$Event;>;"
    :try_start_2c
    invoke-virtual {v5}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v7
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_30} :catch_77

    .line 871
    .local v7, "in":Ljava/io/FileInputStream;
    :try_start_30
    invoke-static {v7, v6}, Lcom/android/server/usage/UsageStatsProtoV2;->readPendingEvents(Ljava/io/InputStream;Ljava/util/LinkedList;)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_6b

    .line 872
    if-eqz v7, :cond_38

    :try_start_35
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 875
    .end local v7    # "in":Ljava/io/FileInputStream;
    :cond_38
    invoke-static {}, Lcom/android/server/usage/UsageStatsServiceStub;->getInstance()Lcom/android/server/usage/UsageStatsServiceStub;

    move-result-object v7

    invoke-interface {v7, p2, v6, v2}, Lcom/android/server/usage/UsageStatsServiceStub;->safeLoadPendingEventsLocked(Ljava/util/List;Ljava/util/List;[Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_67

    .line 877
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Too many persistent pending events for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Reserved: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 878
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 877
    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    return-void

    .line 884
    :cond_67
    invoke-virtual {p2, v6}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_6a} :catch_77

    .line 889
    goto :goto_9a

    .line 870
    .restart local v7    # "in":Ljava/io/FileInputStream;
    :catchall_6b
    move-exception v8

    if-eqz v7, :cond_76

    :try_start_6e
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_72

    goto :goto_76

    :catchall_72
    move-exception v9

    :try_start_73
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "usageStatsDeDir":Ljava/io/File;
    .end local v2    # "pendingEventsFiles":[Ljava/io/File;
    .end local v3    # "numFiles":I
    .end local v4    # "i":I
    .end local v5    # "af":Landroid/util/AtomicFile;
    .end local v6    # "tmpEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/usage/UsageEvents$Event;>;"
    .end local p0    # "this":Lcom/android/server/usage/UsageStatsService;
    .end local p1    # "userId":I
    .end local p2    # "pendingEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/usage/UsageEvents$Event;>;"
    :cond_76
    :goto_76
    throw v8
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_77} :catch_77

    .line 885
    .end local v7    # "in":Ljava/io/FileInputStream;
    .restart local v1    # "usageStatsDeDir":Ljava/io/File;
    .restart local v2    # "pendingEventsFiles":[Ljava/io/File;
    .restart local v3    # "numFiles":I
    .restart local v4    # "i":I
    .restart local v5    # "af":Landroid/util/AtomicFile;
    .restart local v6    # "tmpEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/usage/UsageEvents$Event;>;"
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsService;
    .restart local p1    # "userId":I
    .restart local p2    # "pendingEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/usage/UsageEvents$Event;>;"
    :catch_77
    move-exception v7

    .line 888
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not read "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v2, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    .end local v5    # "af":Landroid/util/AtomicFile;
    .end local v6    # "tmpEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/usage/UsageEvents$Event;>;"
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_9a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 891
    .end local v4    # "i":I
    :cond_9d
    return-void

    .line 861
    .end local v3    # "numFiles":I
    :cond_9e
    :goto_9e
    return-void
.end method

.method private migrateStatsToSystemCeIfNeededLocked(I)V
    .registers 10
    .param p1, "userId"    # I

    .line 724
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "usagestats"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 726
    .local v0, "usageStatsDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    const-string v2, "Usage stats directory does not exist: "

    if-nez v1, :cond_36

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_36

    .line 727
    :cond_1b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 728
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 731
    :cond_36
    :goto_36
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "migrated"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 732
    .local v1, "migrated":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x4

    const-string v5, "UsageStatsService"

    if-eqz v3, :cond_b2

    .line 733
    :try_start_47
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_51
    .catch Ljava/lang/NumberFormatException; {:try_start_47 .. :try_end_51} :catch_70
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_51} :catch_70

    .line 734
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_51
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 736
    .local v6, "previousVersion":I
    if-lt v6, v4, :cond_62

    .line 737
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->deleteLegacyDir(I)V
    :try_end_5e
    .catchall {:try_start_51 .. :try_end_5e} :catchall_66

    .line 741
    :try_start_5e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 738
    return-void

    .line 741
    .end local v6    # "previousVersion":I
    :cond_62
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_65
    .catch Ljava/lang/NumberFormatException; {:try_start_5e .. :try_end_65} :catch_70
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_65} :catch_70

    .line 754
    .end local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_b2

    .line 733
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_66
    move-exception v6

    :try_start_67
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6b

    goto :goto_6f

    :catchall_6b
    move-exception v7

    :try_start_6c
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "usageStatsDir":Ljava/io/File;
    .end local v1    # "migrated":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/usage/UsageStatsService;
    .end local p1    # "userId":I
    :goto_6f
    throw v6
    :try_end_70
    .catch Ljava/lang/NumberFormatException; {:try_start_6c .. :try_end_70} :catch_70
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_70} :catch_70

    .line 741
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "usageStatsDir":Ljava/io/File;
    .restart local v1    # "migrated":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsService;
    .restart local p1    # "userId":I
    :catch_70
    move-exception v3

    .line 742
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "Failed to read migration status file, possibly corrupted."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    .line 744
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_a7

    .line 749
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_b2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_8c

    goto :goto_b2

    .line 750
    :cond_8c
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 751
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 745
    :cond_a7
    const-string v2, "Unable to delete usage stats CE directory."

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 757
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_b2
    :goto_b2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting migration to system CE for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/server/usage/UsageStatsService;->USAGE_STATS_LEGACY_DIR:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 759
    .local v2, "legacyUserDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_dc

    .line 760
    invoke-static {v0, v2}, Lcom/android/server/usage/UsageStatsService;->copyRecursively(Ljava/io/File;Ljava/io/File;)V

    .line 763
    :cond_dc
    :try_start_dc
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_e6} :catch_11d

    .line 764
    .local v3, "writer":Ljava/io/BufferedWriter;
    :try_start_e6
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 765
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 766
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_f5
    .catchall {:try_start_e6 .. :try_end_f5} :catchall_113

    .line 767
    :try_start_f5
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_f8} :catch_11d

    .line 770
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    nop

    .line 771
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finished migration to system CE for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->deleteLegacyDir(I)V

    .line 775
    return-void

    .line 763
    .restart local v3    # "writer":Ljava/io/BufferedWriter;
    :catchall_113
    move-exception v4

    :try_start_114
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_117
    .catchall {:try_start_114 .. :try_end_117} :catchall_118

    goto :goto_11c

    :catchall_118
    move-exception v6

    :try_start_119
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "usageStatsDir":Ljava/io/File;
    .end local v1    # "migrated":Ljava/io/File;
    .end local v2    # "legacyUserDir":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/usage/UsageStatsService;
    .end local p1    # "userId":I
    :goto_11c
    throw v4
    :try_end_11d
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_11d} :catch_11d

    .line 767
    .end local v3    # "writer":Ljava/io/BufferedWriter;
    .restart local v0    # "usageStatsDir":Ljava/io/File;
    .restart local v1    # "migrated":Ljava/io/File;
    .restart local v2    # "legacyUserDir":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsService;
    .restart local p1    # "userId":I
    :catch_11d
    move-exception v3

    .line 768
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "Failed to write migrated status file"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private onPackageRemoved(ILjava/lang/String;)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1286
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    monitor-enter v0

    .line 1287
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v1

    .line 1288
    .local v1, "pkgNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v1, :cond_e

    .line 1289
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1291
    .end local v1    # "pkgNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_51

    .line 1294
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1295
    :try_start_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1296
    .local v2, "timeRemoved":J
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 1299
    monitor-exit v1

    return-void

    .line 1301
    :cond_24
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;

    .line 1302
    .local v0, "alarmQueue":Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;
    if-eqz v0, :cond_31

    .line 1303
    invoke-virtual {v0, p2}, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 1305
    :cond_31
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usage/UserUsageStatsService;

    .line 1306
    .local v4, "userService":Lcom/android/server/usage/UserUsageStatsService;
    if-nez v4, :cond_3d

    .line 1307
    monitor-exit v1

    return-void

    .line 1310
    :cond_3d
    invoke-virtual {v4, p2, v2, v3}, Lcom/android/server/usage/UserUsageStatsService;->onPackageRemoved(Ljava/lang/String;J)I

    move-result v5

    move v0, v5

    .line 1311
    .end local v2    # "timeRemoved":J
    .end local v4    # "userService":Lcom/android/server/usage/UserUsageStatsService;
    .local v0, "tokenRemoved":I
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_12 .. :try_end_43} :catchall_4e

    .line 1314
    const/4 v1, -0x1

    if-eq v0, v1, :cond_4d

    .line 1315
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/server/usage/UsageStatsIdleService;->scheduleJob(Landroid/content/Context;I)V

    .line 1317
    :cond_4d
    return-void

    .line 1311
    .end local v0    # "tokenRemoved":I
    :catchall_4e
    move-exception v0

    :try_start_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v0

    .line 1291
    :catchall_51
    move-exception v1

    :try_start_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v1
.end method

.method private onUserUnlocked(I)V
    .registers 16
    .param p1, "userId"    # I

    .line 430
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getInstalledPackages(I)Ljava/util/HashMap;

    move-result-object v6

    .line 433
    .local v6, "installedPackages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez p1, :cond_d

    .line 434
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsIdleService;->scheduleUpdateMappingsJob(Landroid/content/Context;)V

    .line 436
    :cond_d
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/usage/UsageStatsService;->shouldDeleteObsoleteData(Landroid/os/UserHandle;)Z

    move-result v7

    .line 437
    .local v7, "deleteObsoleteData":Z
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 442
    :try_start_18
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 444
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    const/16 v1, 0x1c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    move-object v9, v0

    .line 445
    .local v9, "unlockEvent":Landroid/app/usage/UsageEvents$Event;
    const-string v0, "android"

    iput-object v0, v9, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 447
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->migrateStatsToSystemCeIfNeededLocked(I)V

    .line 450
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object v10, v0

    .line 451
    .local v10, "pendingEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/usage/UsageEvents$Event;>;"
    invoke-direct {p0, p1, v10}, Lcom/android/server/usage/UsageStatsService;->loadPendingEventsLocked(ILjava/util/LinkedList;)V

    .line 452
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    move-object v11, v0

    .line 453
    .local v11, "eventsInMem":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/usage/UsageEvents$Event;>;"
    if-eqz v11, :cond_4b

    .line 454
    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 456
    :cond_4b
    invoke-virtual {v10}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    const/4 v12, 0x0

    if-nez v0, :cond_54

    const/4 v0, 0x1

    goto :goto_55

    :cond_54
    move v0, v12

    :goto_55
    move v13, v0

    .line 458
    .local v13, "needToFlush":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v0, p0

    move v1, p1

    move-object v4, v6

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsService;->initializeUserUsageStatsServiceLocked(IJLjava/util/HashMap;Z)V

    .line 460
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v0

    .line 461
    .local v0, "userService":Lcom/android/server/usage/UserUsageStatsService;
    if-nez v0, :cond_81

    .line 462
    const-string v1, "UsageStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to unlock stopped or removed user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    monitor-exit v8

    return-void

    .line 467
    :cond_81
    :goto_81
    invoke-virtual {v10}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_91

    .line 468
    invoke-virtual {v10}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/usage/UsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;I)V

    goto :goto_81

    .line 470
    :cond_91
    invoke-virtual {p0, v9, p1}, Lcom/android/server/usage/UsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;I)V

    .line 472
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, p1, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 475
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 476
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "usagestats"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    .line 481
    if-eqz v13, :cond_b8

    .line 482
    invoke-virtual {v0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 484
    .end local v0    # "userService":Lcom/android/server/usage/UserUsageStatsService;
    .end local v9    # "unlockEvent":Landroid/app/usage/UsageEvents$Event;
    .end local v10    # "pendingEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/usage/UsageEvents$Event;>;"
    .end local v11    # "eventsInMem":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/usage/UsageEvents$Event;>;"
    .end local v13    # "needToFlush":Z
    :cond_b8
    monitor-exit v8

    .line 485
    return-void

    .line 484
    :catchall_ba
    move-exception v0

    monitor-exit v8
    :try_end_bc
    .catchall {:try_start_18 .. :try_end_bc} :catchall_ba

    throw v0
.end method

.method private parseUserIdFromArgs([Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)I
    .registers 8
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1944
    add-int/lit8 v0, p2, 0x1

    const/16 v1, -0x2710

    :try_start_4
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_a} :catch_2e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_a} :catch_2e

    .line 1948
    .local v0, "userId":I
    nop

    .line 1949
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_1a

    .line 1950
    const-string/jumbo v2, "the specified user does not exist."

    invoke-virtual {p3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1951
    return v1

    .line 1953
    :cond_1a
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 1954
    const-string/jumbo v2, "the specified user is currently in a locked state."

    invoke-virtual {p3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1955
    return v1

    .line 1957
    :cond_2d
    return v0

    .line 1945
    .end local v0    # "userId":I
    :catch_2e
    move-exception v0

    .line 1946
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "invalid user specified."

    invoke-virtual {p3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1947
    return v1
.end method

.method private persistGlobalComponentUsageLocked()V
    .registers 8

    .line 953
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLastTimeComponentUsedGlobal:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 954
    return-void

    .line 957
    :cond_9
    sget-object v0, Lcom/android/server/usage/UsageStatsService;->COMMON_USAGE_STATS_DE_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_35

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_35

    .line 958
    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Common usage stats DE directory does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 959
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 961
    :cond_35
    :goto_35
    new-instance v1, Ljava/io/File;

    const-string v2, "globalcomponentusage"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    .line 963
    .local v0, "lastTimePackageFile":Ljava/io/File;
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 964
    .local v1, "af":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    .line 966
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_43
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 967
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mLastTimeComponentUsedGlobal:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/android/server/usage/UsageStatsProtoV2;->writeGlobalComponentUsage(Ljava/io/OutputStream;Ljava/util/Map;)V

    .line 968
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_50} :catch_58
    .catchall {:try_start_43 .. :try_end_50} :catchall_56

    .line 969
    const/4 v2, 0x0

    .line 973
    nop

    :goto_52
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 974
    goto :goto_77

    .line 973
    :catchall_56
    move-exception v3

    goto :goto_78

    .line 970
    :catch_58
    move-exception v3

    .line 971
    .local v3, "e":Ljava/lang/Exception;
    :try_start_59
    const-string v4, "UsageStatsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to write "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catchall {:try_start_59 .. :try_end_75} :catchall_56

    .line 973
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_52

    .line 975
    :goto_77
    return-void

    .line 973
    :goto_78
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 974
    throw v3
.end method

.method private persistPendingEventsLocked(I)V
    .registers 11
    .param p1, "userId"    # I

    .line 894
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 895
    .local v0, "pendingEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/usage/UsageEvents$Event;>;"
    if-eqz v0, :cond_af

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    goto/16 :goto_af

    .line 899
    :cond_12
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "usagestats"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 901
    .local v1, "usageStatsDeDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_48

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2b

    goto :goto_48

    .line 902
    :cond_2b
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Usage stats DE directory does not exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 903
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 905
    :cond_48
    :goto_48
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pendingevents_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 906
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 907
    .local v2, "pendingEventsFile":Ljava/io/File;
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 908
    .local v3, "af":Landroid/util/AtomicFile;
    const/4 v4, 0x0

    .line 910
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_6b
    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    move-object v4, v5

    .line 911
    invoke-static {v4, v0}, Lcom/android/server/usage/UsageStatsProtoV2;->writePendingEvents(Ljava/io/OutputStream;Ljava/util/LinkedList;)V

    .line 912
    invoke-virtual {v3, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 913
    const/4 v4, 0x0

    .line 914
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_7a} :catch_81
    .catchall {:try_start_6b .. :try_end_7a} :catchall_7f

    .line 919
    nop

    :goto_7b
    invoke-virtual {v3, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 920
    goto :goto_aa

    .line 919
    :catchall_7f
    move-exception v5

    goto :goto_ab

    .line 915
    :catch_81
    move-exception v5

    .line 916
    .local v5, "e":Ljava/lang/Exception;
    :try_start_82
    const-string v6, "UsageStatsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to write "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catchall {:try_start_82 .. :try_end_a8} :catchall_7f

    .line 919
    nop

    .end local v5    # "e":Ljava/lang/Exception;
    goto :goto_7b

    .line 921
    :goto_aa
    return-void

    .line 919
    :goto_ab
    invoke-virtual {v3, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 920
    throw v5

    .line 896
    .end local v1    # "usageStatsDeDir":Ljava/io/File;
    .end local v2    # "pendingEventsFile":Ljava/io/File;
    .end local v3    # "af":Landroid/util/AtomicFile;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_af
    :goto_af
    return-void
.end method

.method private pruneUninstalledPackagesData(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 1323
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1324
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_12

    .line 1325
    monitor-exit v0

    return v2

    .line 1328
    :cond_12
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/UserUsageStatsService;

    .line 1329
    .local v1, "userService":Lcom/android/server/usage/UserUsageStatsService;
    if-nez v1, :cond_1e

    .line 1330
    monitor-exit v0

    return v2

    .line 1333
    :cond_1e
    invoke-virtual {v1}, Lcom/android/server/usage/UserUsageStatsService;->pruneUninstalledPackagesData()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1334
    .end local v1    # "userService":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private queryEarliestAppEvents(IJJI)Landroid/app/usage/UsageEvents;
    .registers 16
    .param p1, "userId"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .param p6, "eventType"    # I

    .line 1474
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1475
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2a

    .line 1476
    const-string v1, "UsageStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to query earliest events for locked user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    monitor-exit v0

    return-object v2

    .line 1480
    :cond_2a
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v1

    .line 1481
    .local v1, "service":Lcom/android/server/usage/UserUsageStatsService;
    if-nez v1, :cond_32

    .line 1482
    monitor-exit v0

    return-object v2

    .line 1484
    :cond_32
    move-object v3, v1

    move-wide v4, p2

    move-wide v6, p4

    move v8, p6

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/usage/UserUsageStatsService;->queryEarliestAppEvents(JJI)Landroid/app/usage/UsageEvents;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1485
    .end local v1    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method private queryEarliestEventsForPackage(IJJLjava/lang/String;I)Landroid/app/usage/UsageEvents;
    .registers 21
    .param p1, "userId"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "eventType"    # I

    .line 1491
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1492
    :try_start_4
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_2c

    .line 1493
    const-string v0, "UsageStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to query earliest package events for locked user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_43

    move v5, p1

    :try_start_1f
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    monitor-exit v2

    return-object v3

    .line 1497
    :cond_2c
    move v5, p1

    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v0

    .line 1498
    .local v0, "service":Lcom/android/server/usage/UserUsageStatsService;
    if-nez v0, :cond_35

    .line 1499
    monitor-exit v2

    return-object v3

    .line 1501
    :cond_35
    move-object v6, v0

    move-wide v7, p2

    move-wide/from16 v9, p4

    move-object/from16 v11, p6

    move/from16 v12, p7

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/usage/UserUsageStatsService;->queryEarliestEventsForPackage(JJLjava/lang/String;I)Landroid/app/usage/UsageEvents;

    move-result-object v3

    monitor-exit v2

    return-object v3

    .line 1503
    .end local v0    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_43
    move-exception v0

    move v5, p1

    :goto_45
    monitor-exit v2
    :try_end_46
    .catchall {:try_start_1f .. :try_end_46} :catchall_47

    throw v0

    :catchall_47
    move-exception v0

    goto :goto_45
.end method

.method private readUsageSourceSetting()V
    .registers 5

    .line 526
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 527
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "app_time_limit_usage_source"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageSource:I

    .line 529
    monitor-exit v0

    .line 530
    return-void

    .line 529
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private registerLaunchTimeChangedListener(Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;

    .line 1720
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mEstimatedLaunchTimeChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 1721
    return-void
.end method

.method private registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;

    .line 1700
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1701
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageEventListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1702
    monitor-exit v0

    .line 1703
    return-void

    .line 1702
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private reportEventOrAddToQueue(ILandroid/app/usage/UsageEvents$Event;)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "event"    # Landroid/app/usage/UsageEvents$Event;

    .line 978
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 980
    invoke-static {}, Lcom/android/server/am/SpeedTestModeServiceStub;->get()Lcom/android/server/am/SpeedTestModeServiceStub;

    move-result-object v0

    .line 981
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v1

    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 980
    invoke-interface {v0, v1, v2}, Lcom/android/server/am/SpeedTestModeServiceStub;->reportAppUsageEvents(ILjava/lang/String;)V

    .line 983
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 984
    return-void

    .line 986
    :cond_26
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 987
    :try_start_29
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 988
    .local v1, "events":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/usage/UsageEvents$Event;>;"
    if-nez v1, :cond_3e

    .line 989
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object v1, v2

    .line 990
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 993
    :cond_3e
    invoke-static {}, Lcom/android/server/usage/UsageStatsServiceStub;->getInstance()Lcom/android/server/usage/UsageStatsServiceStub;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/server/usage/UsageStatsServiceStub;->isPendingEventsTooMuch(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 994
    const-string v2, "UsageStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many pending events for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Ignore event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    monitor-exit v0

    return-void

    .line 999
    :cond_6c
    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1000
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7e

    .line 1003
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const-wide/32 v4, 0x124f80

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1005
    .end local v1    # "events":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/usage/UsageEvents$Event;>;"
    :cond_7e
    monitor-exit v0

    .line 1006
    return-void

    .line 1005
    :catchall_80
    move-exception v1

    monitor-exit v0
    :try_end_82
    .catchall {:try_start_29 .. :try_end_82} :catchall_80

    throw v1
.end method

.method private setEstimatedLaunchTime(ILjava/lang/String;J)V
    .registers 11
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "estimatedLaunchTime"    # J

    .line 1648
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1649
    .local v0, "now":J
    cmp-long v2, p3, v0

    if-gtz v2, :cond_9

    .line 1654
    return-void

    .line 1656
    :cond_9
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v2, p2, p1}, Lcom/android/server/usage/AppStandbyInternal;->getEstimatedLaunchTime(Ljava/lang/String;I)J

    move-result-wide v2

    .line 1657
    .local v2, "oldEstimatedLaunchTime":J
    cmp-long v4, p3, v2

    if-eqz v4, :cond_25

    .line 1658
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v4, p2, p1, p3, p4}, Lcom/android/server/usage/AppStandbyInternal;->setEstimatedLaunchTime(Ljava/lang/String;IJ)V

    .line 1659
    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->stageChangedEstimatedLaunchTime(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 1660
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1663
    :cond_25
    return-void
.end method

.method private setEstimatedLaunchTimes(ILjava/util/List;)V
    .registers 14
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/app/usage/AppLaunchEstimateInfo;",
            ">;)V"
        }
    .end annotation

    .line 1666
    .local p2, "launchEstimates":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/AppLaunchEstimateInfo;>;"
    const/4 v0, 0x0

    .line 1667
    .local v0, "changedTimes":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1668
    .local v1, "now":J
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_b
    if-ltz v3, :cond_3b

    .line 1669
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/AppLaunchEstimateInfo;

    .line 1670
    .local v4, "estimate":Landroid/app/usage/AppLaunchEstimateInfo;
    iget-wide v5, v4, Landroid/app/usage/AppLaunchEstimateInfo;->estimatedLaunchTime:J

    cmp-long v5, v5, v1

    if-gtz v5, :cond_1a

    .line 1675
    goto :goto_38

    .line 1677
    :cond_1a
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    iget-object v6, v4, Landroid/app/usage/AppLaunchEstimateInfo;->packageName:Ljava/lang/String;

    .line 1678
    invoke-interface {v5, v6, p1}, Lcom/android/server/usage/AppStandbyInternal;->getEstimatedLaunchTime(Ljava/lang/String;I)J

    move-result-wide v5

    .line 1679
    .local v5, "oldEstimatedLaunchTime":J
    iget-wide v7, v4, Landroid/app/usage/AppLaunchEstimateInfo;->estimatedLaunchTime:J

    cmp-long v7, v7, v5

    if-eqz v7, :cond_38

    .line 1680
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    iget-object v8, v4, Landroid/app/usage/AppLaunchEstimateInfo;->packageName:Ljava/lang/String;

    iget-wide v9, v4, Landroid/app/usage/AppLaunchEstimateInfo;->estimatedLaunchTime:J

    invoke-interface {v7, v8, p1, v9, v10}, Lcom/android/server/usage/AppStandbyInternal;->setEstimatedLaunchTime(Ljava/lang/String;IJ)V

    .line 1682
    iget-object v7, v4, Landroid/app/usage/AppLaunchEstimateInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v7}, Lcom/android/server/usage/UsageStatsService;->stageChangedEstimatedLaunchTime(ILjava/lang/String;)Z

    move-result v7

    or-int/2addr v0, v7

    .line 1668
    .end local v4    # "estimate":Landroid/app/usage/AppLaunchEstimateInfo;
    .end local v5    # "oldEstimatedLaunchTime":J
    :cond_38
    :goto_38
    add-int/lit8 v3, v3, -0x1

    goto :goto_b

    .line 1685
    .end local v3    # "i":I
    :cond_3b
    if-eqz v0, :cond_44

    .line 1686
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1688
    :cond_44
    return-void
.end method

.method private shouldDeleteObsoleteData(Landroid/os/UserHandle;)Z
    .registers 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 1732
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v0

    .line 1734
    .local v0, "dpmInternal":Landroid/app/admin/DevicePolicyManagerInternal;
    if-eqz v0, :cond_f

    .line 1735
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v1, 0x1

    .line 1734
    :goto_10
    return v1
.end method

.method private shouldHideLocusIdEvents(II)Z
    .registers 6
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I

    .line 653
    const/4 v0, 0x0

    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_6

    .line 654
    return v0

    .line 656
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_LOCUS_ID_USAGE_STATS"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0
.end method

.method private shouldHideShortcutInvocationEvents(ILjava/lang/String;II)Z
    .registers 8
    .param p1, "userId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I

    .line 644
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->getShortcutServiceInternal()Landroid/content/pm/ShortcutServiceInternal;

    move-result-object v0

    .line 645
    .local v0, "shortcutServiceInternal":Landroid/content/pm/ShortcutServiceInternal;
    const/4 v1, 0x1

    if-eqz v0, :cond_d

    .line 646
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/pm/ShortcutServiceInternal;->hasShortcutHostPermission(ILjava/lang/String;II)Z

    move-result v2

    xor-int/2addr v1, v2

    return v1

    .line 649
    :cond_d
    return v1
.end method

.method private shouldObfuscateInstantAppsForCaller(II)Z
    .registers 4
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I

    .line 639
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->canAccessInstantApps(II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private shouldObfuscateNotificationEvents(II)Z
    .registers 6
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I

    .line 667
    const/4 v0, 0x0

    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_6

    .line 668
    return v0

    .line 670
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.MANAGE_NOTIFICATIONS"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0
.end method

.method private stageChangedEstimatedLaunchTime(ILjava/lang/String;)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1691
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    monitor-enter v0

    .line 1692
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1693
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private unregisterLaunchTimeChangedListener(Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;

    .line 1728
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mEstimatedLaunchTimeChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 1729
    return-void
.end method

.method private unregisterListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;

    .line 1710
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1711
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageEventListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1712
    monitor-exit v0

    .line 1713
    return-void

    .line 1712
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private updatePackageMappingsData()Z
    .registers 6

    .line 1342
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-direct {p0, v0}, Lcom/android/server/usage/UsageStatsService;->shouldDeleteObsoleteData(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1343
    const/4 v0, 0x1

    return v0

    .line 1346
    :cond_a
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/usage/UsageStatsService;->getInstalledPackages(I)Ljava/util/HashMap;

    move-result-object v1

    .line 1347
    .local v1, "installedPkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1348
    :try_start_12
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 1349
    monitor-exit v2

    return v0

    .line 1352
    :cond_20
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usage/UserUsageStatsService;

    .line 1353
    .local v3, "userService":Lcom/android/server/usage/UserUsageStatsService;
    if-nez v3, :cond_2c

    .line 1354
    monitor-exit v2

    return v0

    .line 1357
    :cond_2c
    invoke-virtual {v3, v1}, Lcom/android/server/usage/UserUsageStatsService;->updatePackageMappingsLocked(Ljava/util/HashMap;)Z

    move-result v0

    monitor-exit v2

    return v0

    .line 1358
    .end local v3    # "userService":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_32
    move-exception v0

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_12 .. :try_end_34} :catchall_32

    throw v0
.end method


# virtual methods
.method clearLastUsedTimestamps(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2073
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, p1, p2}, Lcom/android/server/usage/AppStandbyInternal;->clearLastUsedTimestampsForTest(Ljava/lang/String;I)V

    .line 2074
    return-void
.end method

.method dump([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 20
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 1766
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v4, "  "

    invoke-direct {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v4, v0

    .line 1768
    .local v4, "idpw":Lcom/android/internal/util/IndentingPrintWriter;
    const/4 v0, 0x0

    .line 1769
    .local v0, "checkin":Z
    const/4 v5, 0x0

    .line 1770
    .local v5, "compact":Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1772
    .local v6, "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    if-eqz v2, :cond_21b

    .line 1773
    const/4 v8, 0x0

    move v9, v8

    move v8, v5

    move v5, v0

    .end local v0    # "checkin":Z
    .local v5, "checkin":Z
    .local v8, "compact":Z
    .local v9, "i":I
    :goto_1c
    array-length v0, v2

    if-ge v9, v0, :cond_21d

    .line 1774
    aget-object v10, v2, v9

    .line 1775
    .local v10, "arg":Ljava/lang/String;
    const-string v0, "--checkin"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1776
    const/4 v0, 0x1

    move v5, v0

    .end local v5    # "checkin":Z
    .restart local v0    # "checkin":Z
    goto/16 :goto_216

    .line 1777
    .end local v0    # "checkin":Z
    .restart local v5    # "checkin":Z
    :cond_2d
    const-string v0, "-c"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1778
    const/4 v0, 0x1

    move v8, v0

    .end local v8    # "compact":Z
    .local v0, "compact":Z
    goto/16 :goto_216

    .line 1779
    .end local v0    # "compact":Z
    .restart local v8    # "compact":Z
    :cond_39
    const-string v0, "flush"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 1780
    iget-object v11, v1, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1781
    :try_start_44
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V

    .line 1782
    monitor-exit v11
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_53

    .line 1783
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0}, Lcom/android/server/usage/AppStandbyInternal;->flushToDisk()V

    .line 1784
    const-string v0, "Flushed stats to disk"

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1785
    return-void

    .line 1782
    :catchall_53
    move-exception v0

    :try_start_54
    monitor-exit v11
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v0

    .line 1786
    :cond_56
    const-string v0, "is-app-standby-enabled"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 1787
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0}, Lcom/android/server/usage/AppStandbyInternal;->isAppIdleEnabled()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1788
    return-void

    .line 1789
    :cond_68
    const-string v0, "apptimelimit"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 1790
    iget-object v11, v1, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1791
    add-int/lit8 v0, v9, 0x1

    :try_start_75
    array-length v12, v2

    if-lt v0, v12, :cond_7e

    .line 1792
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v0, v7, v3}, Lcom/android/server/usage/AppTimeLimitController;->dump([Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_8c

    .line 1794
    :cond_7e
    add-int/lit8 v0, v9, 0x1

    array-length v7, v2

    .line 1795
    invoke-static {v2, v0, v7}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1796
    .local v0, "remainingArgs":[Ljava/lang/String;
    iget-object v7, v1, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v7, v0, v3}, Lcom/android/server/usage/AppTimeLimitController;->dump([Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1798
    .end local v0    # "remainingArgs":[Ljava/lang/String;
    :goto_8c
    monitor-exit v11

    return-void

    .line 1799
    :catchall_8e
    move-exception v0

    monitor-exit v11
    :try_end_90
    .catchall {:try_start_75 .. :try_end_90} :catchall_8e

    throw v0

    .line 1800
    :cond_91
    const-string v0, "file"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v11, -0x2710

    if-eqz v0, :cond_114

    .line 1801
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v12, "  "

    invoke-direct {v0, v3, v12}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v12, v0

    .line 1802
    .local v12, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v13, v1, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 1803
    add-int/lit8 v0, v9, 0x1

    :try_start_a8
    array-length v14, v2

    if-lt v0, v14, :cond_f5

    .line 1805
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1806
    .local v0, "numUsers":I
    const/4 v11, 0x0

    .local v11, "user":I
    :goto_b2
    if-ge v11, v0, :cond_f4

    .line 1807
    iget-object v14, v1, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v14, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    .line 1808
    .local v14, "userId":I
    iget-object v15, v1, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c7

    .line 1809
    goto :goto_f0

    .line 1811
    :cond_c7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "user="

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1812
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1813
    iget-object v7, v1, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v7, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/usage/UserUsageStatsService;

    const/4 v15, 0x0

    invoke-virtual {v7, v12, v15}, Lcom/android/server/usage/UserUsageStatsService;->dumpFile(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 1814
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1806
    .end local v14    # "userId":I
    :goto_f0
    add-int/lit8 v11, v11, 0x1

    const/4 v7, 0x0

    goto :goto_b2

    .line 1816
    .end local v0    # "numUsers":I
    .end local v11    # "user":I
    :cond_f4
    goto :goto_10f

    .line 1817
    :cond_f5
    invoke-direct {v1, v2, v9, v12}, Lcom/android/server/usage/UsageStatsService;->parseUserIdFromArgs([Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)I

    move-result v0

    .line 1818
    .local v0, "user":I
    if-eq v0, v11, :cond_10f

    .line 1819
    add-int/lit8 v7, v9, 0x2

    array-length v11, v2

    invoke-static {v2, v7, v11}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 1822
    .local v7, "remainingArgs":[Ljava/lang/String;
    iget-object v11, v1, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v11, v12, v7}, Lcom/android/server/usage/UserUsageStatsService;->dumpFile(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 1825
    .end local v0    # "user":I
    .end local v7    # "remainingArgs":[Ljava/lang/String;
    :cond_10f
    :goto_10f
    monitor-exit v13

    return-void

    .line 1826
    :catchall_111
    move-exception v0

    monitor-exit v13
    :try_end_113
    .catchall {:try_start_a8 .. :try_end_113} :catchall_111

    throw v0

    .line 1827
    .end local v12    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_114
    const-string v0, "database-info"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18a

    .line 1828
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v7, "  "

    invoke-direct {v0, v3, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v7, v0

    .line 1829
    .local v7, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v12, v1, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1830
    add-int/lit8 v0, v9, 0x1

    :try_start_129
    array-length v13, v2

    if-lt v0, v13, :cond_174

    .line 1832
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1833
    .local v0, "numUsers":I
    const/4 v11, 0x0

    .restart local v11    # "user":I
    :goto_133
    if-ge v11, v0, :cond_173

    .line 1834
    iget-object v13, v1, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v13, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 1835
    .local v13, "userId":I
    iget-object v14, v1, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_148

    .line 1836
    goto :goto_170

    .line 1838
    :cond_148
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "user="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1839
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1840
    iget-object v14, v1, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v14, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v14, v7}, Lcom/android/server/usage/UserUsageStatsService;->dumpDatabaseInfo(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1841
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1833
    .end local v13    # "userId":I
    :goto_170
    add-int/lit8 v11, v11, 0x1

    goto :goto_133

    .line 1843
    .end local v0    # "numUsers":I
    .end local v11    # "user":I
    :cond_173
    goto :goto_185

    .line 1844
    :cond_174
    invoke-direct {v1, v2, v9, v7}, Lcom/android/server/usage/UsageStatsService;->parseUserIdFromArgs([Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)I

    move-result v0

    .line 1845
    .local v0, "user":I
    if-eq v0, v11, :cond_185

    .line 1847
    iget-object v11, v1, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v11, v7}, Lcom/android/server/usage/UserUsageStatsService;->dumpDatabaseInfo(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1850
    .end local v0    # "user":I
    :cond_185
    :goto_185
    monitor-exit v12

    return-void

    .line 1851
    :catchall_187
    move-exception v0

    monitor-exit v12
    :try_end_189
    .catchall {:try_start_129 .. :try_end_189} :catchall_187

    throw v0

    .line 1852
    .end local v7    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_18a
    const-string v0, "appstandby"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_198

    .line 1853
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, v2, v3}, Lcom/android/server/usage/AppStandbyInternal;->dumpState([Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1854
    return-void

    .line 1855
    :cond_198
    const-string/jumbo v0, "stats-directory"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ca

    .line 1856
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v7, "  "

    invoke-direct {v0, v3, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v7, v0

    .line 1857
    .restart local v7    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v12, v1, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1858
    :try_start_1ac
    invoke-direct {v1, v2, v9, v7}, Lcom/android/server/usage/UsageStatsService;->parseUserIdFromArgs([Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)I

    move-result v0

    .line 1859
    .local v0, "userId":I
    if-eq v0, v11, :cond_1c5

    .line 1860
    new-instance v11, Ljava/io/File;

    invoke-static {v0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v13

    const-string/jumbo v14, "usagestats"

    invoke-direct {v11, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1861
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 1860
    invoke-virtual {v7, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1863
    :cond_1c5
    monitor-exit v12

    return-void

    .line 1864
    .end local v0    # "userId":I
    :catchall_1c7
    move-exception v0

    monitor-exit v12
    :try_end_1c9
    .catchall {:try_start_1ac .. :try_end_1c9} :catchall_1c7

    throw v0

    .line 1865
    .end local v7    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_1ca
    const-string/jumbo v0, "mappings"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f4

    .line 1866
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v7, "  "

    invoke-direct {v0, v3, v7}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v7, v0

    .line 1867
    .restart local v7    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v12, v1, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1868
    :try_start_1de
    invoke-direct {v1, v2, v9, v7}, Lcom/android/server/usage/UsageStatsService;->parseUserIdFromArgs([Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)I

    move-result v0

    .line 1869
    .restart local v0    # "userId":I
    if-eq v0, v11, :cond_1ef

    .line 1870
    iget-object v11, v1, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v11, v7}, Lcom/android/server/usage/UserUsageStatsService;->dumpMappings(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1872
    :cond_1ef
    monitor-exit v12

    return-void

    .line 1873
    .end local v0    # "userId":I
    :catchall_1f1
    move-exception v0

    monitor-exit v12
    :try_end_1f3
    .catchall {:try_start_1de .. :try_end_1f3} :catchall_1f1

    throw v0

    .line 1874
    .end local v7    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_1f4
    const-string v0, "broadcast-response-stats"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_209

    .line 1875
    iget-object v7, v1, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1876
    :try_start_1ff
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mResponseStatsTracker:Lcom/android/server/usage/BroadcastResponseStatsTracker;

    invoke-virtual {v0, v4}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1877
    monitor-exit v7

    .line 1878
    return-void

    .line 1877
    :catchall_206
    move-exception v0

    monitor-exit v7
    :try_end_208
    .catchall {:try_start_1ff .. :try_end_208} :catchall_206

    throw v0

    .line 1879
    :cond_209
    if-eqz v10, :cond_216

    const-string v0, "-"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_216

    .line 1881
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1773
    .end local v10    # "arg":Ljava/lang/String;
    :cond_216
    :goto_216
    add-int/lit8 v9, v9, 0x1

    const/4 v7, 0x0

    goto/16 :goto_1c

    .line 1772
    .end local v8    # "compact":Z
    .end local v9    # "i":I
    .local v0, "checkin":Z
    .local v5, "compact":Z
    :cond_21b
    move v8, v5

    move v5, v0

    .line 1887
    .end local v0    # "checkin":Z
    .local v5, "checkin":Z
    .restart local v8    # "compact":Z
    :cond_21d
    iget-object v7, v1, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1888
    :try_start_220
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1889
    .local v0, "userCount":I
    new-array v9, v0, [I

    .line 1890
    .local v9, "userIds":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_229
    if-ge v10, v0, :cond_2c6

    .line 1891
    iget-object v11, v1, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 1892
    .local v11, "userId":I
    aput v11, v9, v10

    .line 1893
    const-string/jumbo v12, "user"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1894
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1895
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1896
    iget-object v12, v1, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_270

    .line 1897
    if-eqz v5, :cond_25f

    .line 1898
    iget-object v12, v1, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v12, v4}, Lcom/android/server/usage/UserUsageStatsService;->checkin(Lcom/android/internal/util/IndentingPrintWriter;)V

    move/from16 v16, v0

    goto :goto_2bc

    .line 1900
    :cond_25f
    iget-object v12, v1, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v12, v4, v6, v8}, Lcom/android/server/usage/UserUsageStatsService;->dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/List;Z)V

    .line 1901
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    move/from16 v16, v0

    goto :goto_2bc

    .line 1904
    :cond_270
    iget-object v12, v1, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/LinkedList;

    .line 1905
    .local v12, "pendingEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/usage/UsageEvents$Event;>;"
    if-eqz v12, :cond_2ba

    invoke-virtual {v12}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2ba

    .line 1906
    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v13

    .line 1907
    .local v13, "eventCount":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Pending events: count="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1908
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1909
    const/4 v14, 0x0

    .local v14, "idx":I
    :goto_29e
    if-ge v14, v13, :cond_2b1

    .line 1910
    invoke-virtual {v12, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/usage/UsageEvents$Event;

    move/from16 v16, v0

    .end local v0    # "userCount":I
    .local v16, "userCount":I
    const/4 v0, 0x1

    invoke-static {v4, v15, v0}, Lcom/android/server/usage/UserUsageStatsService;->printEvent(Lcom/android/internal/util/IndentingPrintWriter;Landroid/app/usage/UsageEvents$Event;Z)V

    .line 1909
    add-int/lit8 v14, v14, 0x1

    move/from16 v0, v16

    goto :goto_29e

    .end local v16    # "userCount":I
    .restart local v0    # "userCount":I
    :cond_2b1
    move/from16 v16, v0

    .line 1912
    .end local v0    # "userCount":I
    .end local v14    # "idx":I
    .restart local v16    # "userCount":I
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1913
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_2bc

    .line 1905
    .end local v13    # "eventCount":I
    .end local v16    # "userCount":I
    .restart local v0    # "userCount":I
    :cond_2ba
    move/from16 v16, v0

    .line 1916
    .end local v0    # "userCount":I
    .end local v12    # "pendingEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/usage/UsageEvents$Event;>;"
    .restart local v16    # "userCount":I
    :goto_2bc
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1890
    nop

    .end local v11    # "userId":I
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v16

    goto/16 :goto_229

    .end local v16    # "userCount":I
    .restart local v0    # "userCount":I
    :cond_2c6
    move/from16 v16, v0

    .line 1919
    .end local v0    # "userCount":I
    .end local v10    # "i":I
    .restart local v16    # "userCount":I
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1920
    const-string v0, "Usage Source"

    iget v10, v1, Lcom/android/server/usage/UsageStatsService;->mUsageSource:I

    invoke-static {v10}, Landroid/app/usage/UsageStatsManager;->usageSourceToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1921
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1923
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v3}, Lcom/android/server/usage/AppTimeLimitController;->dump([Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1925
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1926
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mResponseStatsTracker:Lcom/android/server/usage/BroadcastResponseStatsTracker;

    invoke-virtual {v0, v4}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1929
    invoke-static {}, Lcom/android/server/usage/UsageStatsServiceStub;->getInstance()Lcom/android/server/usage/UsageStatsServiceStub;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/android/server/usage/UsageStatsServiceStub;->dumpCountQuotaTracker(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1931
    .end local v16    # "userCount":I
    monitor-exit v7
    :try_end_2ef
    .catchall {:try_start_220 .. :try_end_2ef} :catchall_303

    .line 1933
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, v4, v9, v6}, Lcom/android/server/usage/AppStandbyInternal;->dumpUsers(Landroid/util/IndentingPrintWriter;[ILjava/util/List;)V

    .line 1935
    invoke-static {v6}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_302

    .line 1936
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1937
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, v2, v3}, Lcom/android/server/usage/AppStandbyInternal;->dumpState([Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1939
    :cond_302
    return-void

    .line 1931
    .end local v9    # "userIds":[I
    :catchall_303
    move-exception v0

    :try_start_304
    monitor-exit v7
    :try_end_305
    .catchall {:try_start_304 .. :try_end_305} :catchall_303

    throw v0
.end method

.method flushToDisk()V
    .registers 6

    .line 1241
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1247
    :try_start_3
    new-instance v1, Landroid/app/usage/UsageEvents$Event;

    const/16 v2, 0x19

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 1248
    .local v1, "event":Landroid/app/usage/UsageEvents$Event;
    const-string v2, "android"

    iput-object v2, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 1249
    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService;->reportEventToAllUserId(Landroid/app/usage/UsageEvents$Event;)V

    .line 1250
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V

    .line 1251
    .end local v1    # "event":Landroid/app/usage/UsageEvents$Event;
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1f

    .line 1252
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0}, Lcom/android/server/usage/AppStandbyInternal;->flushToDisk()V

    .line 1253
    return-void

    .line 1251
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method getEstimatedPackageLaunchTime(ILjava/lang/String;)J
    .registers 13
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1508
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, p2, p1}, Lcom/android/server/usage/AppStandbyInternal;->getEstimatedLaunchTime(Ljava/lang/String;I)J

    move-result-wide v0

    .line 1509
    .local v0, "estimatedLaunchTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1510
    .local v2, "now":J
    cmp-long v4, v0, v2

    if-ltz v4, :cond_17

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v0, v4

    if-nez v4, :cond_50

    .line 1511
    :cond_17
    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->calculateEstimatedPackageLaunchTime(ILjava/lang/String;)J

    move-result-wide v0

    .line 1512
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v4, p2, p1, v0, v1}, Lcom/android/server/usage/AppStandbyInternal;->setEstimatedLaunchTime(Ljava/lang/String;IJ)V

    .line 1514
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1515
    :try_start_23
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;

    .line 1516
    .local v5, "alarmQueue":Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;
    if-nez v5, :cond_44

    .line 1517
    new-instance v6, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;

    .line 1518
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v6, p0, p1, v7, v8}, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;-><init>(Lcom/android/server/usage/UsageStatsService;ILandroid/content/Context;Landroid/os/Looper;)V

    move-object v5, v6

    .line 1519
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    invoke-virtual {v6, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1521
    :cond_44
    nop

    .line 1522
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v8, v0, v2

    add-long/2addr v6, v8

    .line 1521
    invoke-virtual {v5, p2, v6, v7}, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->addAlarm(Ljava/lang/Object;J)V

    .line 1523
    .end local v5    # "alarmQueue":Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;
    monitor-exit v4

    .line 1525
    :cond_50
    return-wide v0

    .line 1523
    :catchall_51
    move-exception v5

    monitor-exit v4
    :try_end_53
    .catchall {:try_start_23 .. :try_end_53} :catchall_51

    throw v5
.end method

.method public onBootPhase(I)V
    .registers 7
    .param p1, "phase"    # I

    .line 358
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, p1}, Lcom/android/server/usage/AppStandbyInternal;->onBootPhase(I)V

    .line 359
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_5a

    .line 361
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    .line 363
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->getShortcutServiceInternal()Landroid/content/pm/ShortcutServiceInternal;

    .line 364
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mResponseStatsTracker:Lcom/android/server/usage/BroadcastResponseStatsTracker;

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->onSystemServicesReady(Landroid/content/Context;)V

    .line 366
    sget-object v0, Lcom/android/server/usage/UsageStatsService;->KERNEL_COUNTER_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 368
    :try_start_20
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2c} :catch_2d

    .line 374
    goto :goto_4c

    .line 372
    :catch_2d
    move-exception v0

    .line 373
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 376
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing procfs interface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsageStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :goto_4c
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->readUsageSourceSetting()V

    .line 381
    invoke-static {}, Lcom/android/server/usage/UsageStatsServiceStub;->getInstance()Lcom/android/server/usage/UsageStatsServiceStub;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/usage/UsageStatsServiceStub;->init(Landroid/content/Context;)V

    .line 384
    :cond_5a
    return-void
.end method

.method public onNewUpdate(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 635
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, p1}, Lcom/android/server/usage/AppStandbyInternal;->initializeDefaultsForSystemApps(I)V

    .line 636
    return-void
.end method

.method public onStart()V
    .registers 18

    .line 286
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "appops"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mUserManager:Landroid/os/UserManager;

    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 289
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    iput-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 290
    new-instance v1, Lcom/android/server/usage/UsageStatsService$H;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/server/usage/UsageStatsService$H;-><init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    .line 292
    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mInjector:Lcom/android/server/usage/UsageStatsService$Injector;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/usage/UsageStatsService$Injector;->getAppStandbyController(Landroid/content/Context;)Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 293
    new-instance v2, Lcom/android/server/usage/BroadcastResponseStatsTracker;

    invoke-direct {v2, v1}, Lcom/android/server/usage/BroadcastResponseStatsTracker;-><init>(Lcom/android/server/usage/AppStandbyInternal;)V

    iput-object v2, v0, Lcom/android/server/usage/UsageStatsService;->mResponseStatsTracker:Lcom/android/server/usage/BroadcastResponseStatsTracker;

    .line 295
    new-instance v1, Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/server/usage/UsageStatsService$2;

    invoke-direct {v3, v0}, Lcom/android/server/usage/UsageStatsService$2;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    iget-object v4, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    .line 327
    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/usage/AppTimeLimitController;-><init>(Landroid/content/Context;Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    .line 329
    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    iget-object v2, v0, Lcom/android/server/usage/UsageStatsService;->mStandbyChangeListener:Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    invoke-interface {v1, v2}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 331
    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v4, v3, v5}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 333
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 334
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;

    invoke-direct {v6, v0, v4}, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$UserActionsReceiver-IA;)V

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v10, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    move-object v8, v1

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v11

    new-instance v12, Lcom/android/server/usage/UsageStatsService$UidRemovedReceiver;

    invoke-direct {v12, v0, v4}, Lcom/android/server/usage/UsageStatsService$UidRemovedReceiver;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$UidRemovedReceiver-IA;)V

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v14, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.UID_REMOVED"

    invoke-direct {v14, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x0

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v16}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 341
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    .line 344
    const-class v2, Landroid/app/usage/UsageStatsManagerInternal;

    new-instance v3, Lcom/android/server/usage/UsageStatsService$LocalService;

    invoke-direct {v3, v0, v4}, Lcom/android/server/usage/UsageStatsService$LocalService;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$LocalService-IA;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/server/usage/UsageStatsService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 345
    const-class v2, Lcom/android/server/usage/AppStandbyInternal;

    iget-object v3, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/usage/UsageStatsService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsService;->publishBinderServices()V

    .line 348
    iget-object v2, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 349
    return-void
.end method

.method public onStatsReloaded()V
    .registers 2

    .line 630
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0}, Lcom/android/server/usage/AppStandbyInternal;->postOneTimeCheckIdleStates()V

    .line 631
    return-void
.end method

.method public onStatsUpdated()V
    .registers 5

    .line 623
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/32 v2, 0x124f80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 624
    return-void
.end method

.method onUserRemoved(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 1259
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1260
    :try_start_3
    const-string v1, "UsageStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and all data."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1262
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppTimeLimitController;->onUserRemoved(I)V

    .line 1263
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;

    .line 1264
    .local v1, "alarmQueue":Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;
    if-eqz v1, :cond_3d

    .line 1265
    invoke-virtual {v1}, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->removeAllAlarms()V

    .line 1266
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1268
    .end local v1    # "alarmQueue":Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;
    :cond_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_5e

    .line 1271
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    monitor-enter v1

    .line 1272
    :try_start_41
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->remove(I)V

    .line 1273
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_5b

    .line 1274
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, p1}, Lcom/android/server/usage/AppStandbyInternal;->onUserRemoved(I)V

    .line 1276
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/usage/UsageStatsIdleService;->cancelJob(Landroid/content/Context;I)V

    .line 1277
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsIdleService;->cancelUpdateMappingsJob(Landroid/content/Context;)V

    .line 1278
    return-void

    .line 1273
    :catchall_5b
    move-exception v0

    :try_start_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v0

    .line 1268
    :catchall_5e
    move-exception v1

    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v1
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 5
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 391
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 392
    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 8
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 401
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    .line 403
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 405
    :try_start_7
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 406
    invoke-direct {p0, v0}, Lcom/android/server/usage/UsageStatsService;->persistPendingEventsLocked(I)V

    .line 407
    monitor-exit v1

    return-void

    .line 411
    :cond_18
    new-instance v2, Landroid/app/usage/UsageEvents$Event;

    const/16 v3, 0x1d

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 412
    .local v2, "event":Landroid/app/usage/UsageEvents$Event;
    const-string v3, "android"

    iput-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 413
    invoke-virtual {p0, v2, v0}, Lcom/android/server/usage/UsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;I)V

    .line 414
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usage/UserUsageStatsService;

    .line 415
    .local v3, "userService":Lcom/android/server/usage/UserUsageStatsService;
    if-eqz v3, :cond_37

    .line 416
    invoke-virtual {v3}, Lcom/android/server/usage/UserUsageStatsService;->userStopped()V

    .line 418
    :cond_37
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 419
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 420
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;

    .line 421
    .local v4, "alarmQueue":Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;
    if-eqz v4, :cond_58

    .line 422
    invoke-virtual {v4}, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;->removeAllAlarms()V

    .line 423
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 425
    .end local v2    # "event":Landroid/app/usage/UsageEvents$Event;
    .end local v3    # "userService":Lcom/android/server/usage/UserUsageStatsService;
    .end local v4    # "alarmQueue":Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;
    :cond_58
    monitor-exit v1

    .line 426
    return-void

    .line 425
    :catchall_5a
    move-exception v2

    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_7 .. :try_end_5c} :catchall_5a

    throw v2
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 6
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 396
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 397
    return-void
.end method

.method prepareForPossibleShutdown()V
    .registers 5

    .line 850
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/16 v3, 0x1a

    invoke-direct {v0, v3, v1, v2}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 851
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    const-string v1, "android"

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 852
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 853
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 854
    return-void
.end method

.method publishBinderServices()V
    .registers 3

    .line 353
    new-instance v0, Lcom/android/server/usage/UsageStatsService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/UsageStatsService$BinderService;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$BinderService-IA;)V

    const-string/jumbo v1, "usagestats"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/usage/UsageStatsService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 354
    return-void
.end method

.method queryConfigurationStats(IIJJ)Ljava/util/List;
    .registers 16
    .param p1, "userId"    # I
    .param p2, "bucketType"    # I
    .param p3, "beginTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    .line 1400
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1401
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2a

    .line 1402
    const-string v1, "UsageStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to query configuration stats for locked user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    monitor-exit v0

    return-object v2

    .line 1406
    :cond_2a
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v1

    .line 1407
    .local v1, "service":Lcom/android/server/usage/UserUsageStatsService;
    if-nez v1, :cond_32

    .line 1408
    monitor-exit v0

    return-object v2

    .line 1410
    :cond_32
    move-object v3, v1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/usage/UserUsageStatsService;->queryConfigurationStats(IJJ)Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1411
    .end local v1    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method queryEventStats(IIJJ)Ljava/util/List;
    .registers 16
    .param p1, "userId"    # I
    .param p2, "bucketType"    # I
    .param p3, "beginTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/EventStats;",
            ">;"
        }
    .end annotation

    .line 1419
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1420
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2a

    .line 1421
    const-string v1, "UsageStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to query event stats for locked user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    monitor-exit v0

    return-object v2

    .line 1425
    :cond_2a
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v1

    .line 1426
    .local v1, "service":Lcom/android/server/usage/UserUsageStatsService;
    if-nez v1, :cond_32

    .line 1427
    monitor-exit v0

    return-object v2

    .line 1429
    :cond_32
    move-object v3, v1

    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/usage/UserUsageStatsService;->queryEventStats(IJJ)Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1430
    .end local v1    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method queryEvents(IJJI)Landroid/app/usage/UsageEvents;
    .registers 16
    .param p1, "userId"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .param p6, "flags"    # I

    .line 1437
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1438
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2a

    .line 1439
    const-string v1, "UsageStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to query events for locked user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    monitor-exit v0

    return-object v2

    .line 1443
    :cond_2a
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v1

    .line 1444
    .local v1, "service":Lcom/android/server/usage/UserUsageStatsService;
    if-nez v1, :cond_32

    .line 1445
    monitor-exit v0

    return-object v2

    .line 1447
    :cond_32
    move-object v3, v1

    move-wide v4, p2

    move-wide v6, p4

    move v8, p6

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/usage/UserUsageStatsService;->queryEvents(JJI)Landroid/app/usage/UsageEvents;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1448
    .end local v1    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method queryEventsForPackage(IJJLjava/lang/String;Z)Landroid/app/usage/UsageEvents;
    .registers 21
    .param p1, "userId"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "includeTaskRoot"    # Z

    .line 1457
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1458
    :try_start_4
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_2c

    .line 1459
    const-string v0, "UsageStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to query package events for locked user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_43

    move v5, p1

    :try_start_1f
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    monitor-exit v2

    return-object v3

    .line 1463
    :cond_2c
    move v5, p1

    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v0

    .line 1464
    .local v0, "service":Lcom/android/server/usage/UserUsageStatsService;
    if-nez v0, :cond_35

    .line 1465
    monitor-exit v2

    return-object v3

    .line 1467
    :cond_35
    move-object v6, v0

    move-wide v7, p2

    move-wide/from16 v9, p4

    move-object/from16 v11, p6

    move/from16 v12, p7

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/usage/UserUsageStatsService;->queryEventsForPackage(JJLjava/lang/String;Z)Landroid/app/usage/UsageEvents;

    move-result-object v3

    monitor-exit v2

    return-object v3

    .line 1468
    .end local v0    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_43
    move-exception v0

    move v5, p1

    :goto_45
    monitor-exit v2
    :try_end_46
    .catchall {:try_start_1f .. :try_end_46} :catchall_47

    throw v0

    :catchall_47
    move-exception v0

    goto :goto_45
.end method

.method queryUsageStats(IIJJZ)Ljava/util/List;
    .registers 19
    .param p1, "userId"    # I
    .param p2, "bucketType"    # I
    .param p3, "beginTime"    # J
    .param p5, "endTime"    # J
    .param p7, "obfuscateInstantApps"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJZ)",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .line 1366
    move-object v1, p0

    move v2, p1

    iget-object v3, v1, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1367
    :try_start_5
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_2c

    .line 1368
    const-string v0, "UsageStatsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to query usage stats for locked user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    monitor-exit v3

    return-object v4

    .line 1372
    :cond_2c
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v0

    .line 1373
    .local v0, "service":Lcom/android/server/usage/UserUsageStatsService;
    if-nez v0, :cond_34

    .line 1374
    monitor-exit v3

    return-object v4

    .line 1376
    :cond_34
    move-object v5, v0

    move v6, p2

    move-wide v7, p3

    move-wide/from16 v9, p5

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/usage/UserUsageStatsService;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v5

    .line 1377
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    if-nez v5, :cond_41

    .line 1378
    monitor-exit v3

    return-object v4

    .line 1383
    :cond_41
    if-eqz p7, :cond_65

    .line 1384
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_49
    if-ltz v4, :cond_65

    .line 1385
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/UsageStats;

    .line 1386
    .local v6, "stats":Landroid/app/usage/UsageStats;
    iget-object v7, v1, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v8, v6, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, p1, v8}, Landroid/content/pm/PackageManagerInternal;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_62

    .line 1387
    invoke-virtual {v6}, Landroid/app/usage/UsageStats;->getObfuscatedForInstantApp()Landroid/app/usage/UsageStats;

    move-result-object v7

    invoke-interface {v5, v4, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1384
    .end local v6    # "stats":Landroid/app/usage/UsageStats;
    :cond_62
    add-int/lit8 v4, v4, -0x1

    goto :goto_49

    .line 1391
    .end local v4    # "i":I
    :cond_65
    monitor-exit v3

    return-object v5

    .line 1392
    .end local v0    # "service":Lcom/android/server/usage/UserUsageStatsService;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    :catchall_67
    move-exception v0

    monitor-exit v3
    :try_end_69
    .catchall {:try_start_5 .. :try_end_69} :catchall_67

    throw v0
.end method

.method registerAppUsageLimitObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;I)V
    .registers 21
    .param p1, "callingUid"    # I
    .param p2, "observerId"    # I
    .param p3, "packages"    # [Ljava/lang/String;
    .param p4, "timeLimitMs"    # J
    .param p6, "timeUsedMs"    # J
    .param p8, "callbackIntent"    # Landroid/app/PendingIntent;
    .param p9, "userId"    # I

    .line 2951
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/usage/AppTimeLimitController;->addAppUsageLimitObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;I)V

    .line 2953
    return-void
.end method

.method registerAppUsageObserver(II[Ljava/lang/String;JLandroid/app/PendingIntent;I)V
    .registers 16
    .param p1, "callingUid"    # I
    .param p2, "observerId"    # I
    .param p3, "packages"    # [Ljava/lang/String;
    .param p4, "timeLimitMs"    # J
    .param p6, "callbackIntent"    # Landroid/app/PendingIntent;
    .param p7, "userId"    # I

    .line 2929
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppTimeLimitController;->addAppUsageObserver(II[Ljava/lang/String;JLandroid/app/PendingIntent;I)V

    .line 2932
    return-void
.end method

.method registerUsageSessionObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .registers 23
    .param p1, "callingUid"    # I
    .param p2, "observerId"    # I
    .param p3, "observed"    # [Ljava/lang/String;
    .param p4, "timeLimitMs"    # J
    .param p6, "sessionThresholdTime"    # J
    .param p8, "limitReachedCallbackIntent"    # Landroid/app/PendingIntent;
    .param p9, "sessionEndCallbackIntent"    # Landroid/app/PendingIntent;
    .param p10, "userId"    # I

    .line 2941
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/usage/AppTimeLimitController;->addUsageSessionObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    .line 2943
    return-void
.end method

.method reportEvent(Landroid/app/usage/UsageEvents$Event;I)V
    .registers 16
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;
    .param p2, "userId"    # I

    .line 1035
    invoke-static {}, Lcom/android/server/usage/UsageStatsServiceStub;->getInstance()Lcom/android/server/usage/UsageStatsServiceStub;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/usage/UsageStatsServiceStub;->isEventInQuota(Landroid/app/usage/UsageEvents$Event;I)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1036
    const-string v0, "UsageStatsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event over quota! userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    return-void

    .line 1043
    :cond_2d
    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const-wide/16 v1, 0x0

    sparse-switch v0, :sswitch_data_27a

    .line 1050
    const/4 v0, 0x0

    .local v0, "uid":I
    goto :goto_3f

    .line 1047
    .end local v0    # "uid":I
    :sswitch_36
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v3, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .line 1048
    .restart local v0    # "uid":I
    nop

    .line 1053
    :goto_3f
    iget-object v3, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const/4 v4, 0x1

    if-eqz v3, :cond_53

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v5, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 1054
    invoke-virtual {v3, p2, v5}, Landroid/content/pm/PackageManagerInternal;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 1055
    iget v3, p1, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    or-int/2addr v3, v4

    iput v3, p1, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    .line 1058
    :cond_53
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1060
    :try_start_56
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b2

    .line 1061
    const-string v1, "UsageStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to report event for locked user "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " eventType:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " instanceId:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    monitor-exit v3

    return-void

    .line 1068
    :cond_b2
    iget v5, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v6, 0x0

    const/16 v7, 0x10d

    const/4 v8, 0x2

    sparse-switch v5, :sswitch_data_288

    goto/16 :goto_253

    .line 1139
    :sswitch_bd
    const/16 v1, 0x17

    iput v1, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 1142
    :sswitch_c1
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 1143
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/UsageStatsService$ActivityData;

    .line 1144
    .local v1, "prevData":Lcom/android/server/usage/UsageStatsService$ActivityData;
    if-nez v1, :cond_113

    .line 1145
    const-string v2, "UsageStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected activity event reported! ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " event : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " instanceId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    monitor-exit v3

    return-void

    .line 1151
    :cond_113
    iget v2, v1, Lcom/android/server/usage/UsageStatsService$ActivityData;->lastEvent:I

    if-eq v2, v8, :cond_11e

    .line 1152
    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v7, v0, v2, v4, v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)V

    .line 1162
    :cond_11e
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_121
    .catchall {:try_start_56 .. :try_end_121} :catchall_277

    .line 1163
    :try_start_121
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    iget v5, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 1164
    .local v4, "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    monitor-exit v2
    :try_end_12c
    .catchall {:try_start_121 .. :try_end_12c} :catchall_18f

    .line 1165
    if-eqz v4, :cond_169

    .line 1166
    :try_start_12e
    monitor-enter v4
    :try_end_12f
    .catchall {:try_start_12e .. :try_end_12f} :catchall_277

    .line 1167
    :try_start_12f
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 1169
    .local v2, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_134
    if-ge v5, v2, :cond_164

    .line 1170
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_13c
    .catchall {:try_start_12f .. :try_end_13c} :catchall_166

    .line 1172
    .local v6, "token":Ljava/lang/String;
    :try_start_13c
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    iget-object v8, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 1173
    invoke-direct {p0, v8, v6}, Lcom/android/server/usage/UsageStatsService;->buildFullToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1172
    invoke-virtual {v7, v8, p2}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStop(Ljava/lang/String;I)V
    :try_end_147
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13c .. :try_end_147} :catch_148
    .catchall {:try_start_13c .. :try_end_147} :catchall_166

    .line 1177
    goto :goto_161

    .line 1174
    :catch_148
    move-exception v7

    .line 1175
    .local v7, "iae":Ljava/lang/IllegalArgumentException;
    :try_start_149
    const-string v8, "UsageStatsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to stop usage for during reporter death: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    .end local v6    # "token":Ljava/lang/String;
    .end local v7    # "iae":Ljava/lang/IllegalArgumentException;
    :goto_161
    add-int/lit8 v5, v5, 0x1

    goto :goto_134

    .line 1179
    .end local v2    # "size":I
    .end local v5    # "i":I
    :cond_164
    monitor-exit v4

    goto :goto_169

    :catchall_166
    move-exception v2

    monitor-exit v4
    :try_end_168
    .catchall {:try_start_149 .. :try_end_168} :catchall_166

    .end local v0    # "uid":I
    .end local p0    # "this":Lcom/android/server/usage/UsageStatsService;
    .end local p1    # "event":Landroid/app/usage/UsageEvents$Event;
    .end local p2    # "userId":I
    :try_start_168
    throw v2

    .line 1181
    .restart local v0    # "uid":I
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsService;
    .restart local p1    # "event":Landroid/app/usage/UsageEvents$Event;
    .restart local p2    # "userId":I
    :cond_169
    :goto_169
    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-nez v2, :cond_179

    .line 1183
    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService$ActivityData;->-$$Nest$fgetmTaskRootPackage(Lcom/android/server/usage/UsageStatsService$ActivityData;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 1184
    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService$ActivityData;->-$$Nest$fgetmTaskRootClass(Lcom/android/server/usage/UsageStatsService$ActivityData;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;
    :try_end_179
    .catchall {:try_start_168 .. :try_end_179} :catchall_277

    .line 1187
    :cond_179
    :try_start_179
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService$ActivityData;->-$$Nest$fgetmUsageSourcePackage(Lcom/android/server/usage/UsageStatsService$ActivityData;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, p2}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStop(Ljava/lang/String;I)V
    :try_end_182
    .catch Ljava/lang/IllegalArgumentException; {:try_start_179 .. :try_end_182} :catch_184
    .catchall {:try_start_179 .. :try_end_182} :catchall_277

    .line 1190
    goto/16 :goto_253

    .line 1188
    :catch_184
    move-exception v2

    .line 1189
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    :try_start_185
    const-string v5, "UsageStatsService"

    const-string v6, "Failed to note usage stop"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18c
    .catchall {:try_start_185 .. :try_end_18c} :catchall_277

    .line 1191
    nop

    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    goto/16 :goto_253

    .line 1164
    .end local v4    # "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_18f
    move-exception v4

    :try_start_190
    monitor-exit v2
    :try_end_191
    .catchall {:try_start_190 .. :try_end_191} :catchall_18f

    .end local v0    # "uid":I
    .end local p0    # "this":Lcom/android/server/usage/UsageStatsService;
    .end local p1    # "event":Landroid/app/usage/UsageEvents$Event;
    .end local p2    # "userId":I
    :try_start_191
    throw v4

    .line 1195
    .end local v1    # "prevData":Lcom/android/server/usage/UsageStatsService$ActivityData;
    .restart local v0    # "uid":I
    .restart local p0    # "this":Lcom/android/server/usage/UsageStatsService;
    .restart local p1    # "event":Landroid/app/usage/UsageEvents$Event;
    .restart local p2    # "userId":I
    :sswitch_192
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V

    .line 1196
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLastTimeComponentUsedGlobal:Ljava/util/Map;

    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-wide v4, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_253

    .line 1108
    :sswitch_1a4
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/UsageStatsService$ActivityData;

    .line 1109
    .local v1, "pausedData":Lcom/android/server/usage/UsageStatsService$ActivityData;
    if-nez v1, :cond_1d4

    .line 1111
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUsageSourcePackage(Landroid/app/usage/UsageEvents$Event;)Ljava/lang/String;

    move-result-object v2
    :try_end_1b4
    .catchall {:try_start_191 .. :try_end_1b4} :catchall_277

    .line 1113
    .local v2, "usageSourcePackage2":Ljava/lang/String;
    :try_start_1b4
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v4, v2, p2}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStart(Ljava/lang/String;I)V
    :try_end_1b9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b4 .. :try_end_1b9} :catch_1ba
    .catchall {:try_start_1b4 .. :try_end_1b9} :catchall_277

    .line 1116
    goto :goto_1c2

    .line 1114
    :catch_1ba
    move-exception v4

    .line 1115
    .local v4, "iae":Ljava/lang/IllegalArgumentException;
    :try_start_1bb
    const-string v5, "UsageStatsService"

    const-string v7, "Failed to note usage start"

    invoke-static {v5, v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1117
    .end local v4    # "iae":Ljava/lang/IllegalArgumentException;
    :goto_1c2
    new-instance v4, Lcom/android/server/usage/UsageStatsService$ActivityData;

    iget-object v5, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    iget-object v7, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    invoke-direct {v4, v5, v7, v2, v6}, Lcom/android/server/usage/UsageStatsService$ActivityData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/usage/UsageStatsService$ActivityData-IA;)V

    move-object v1, v4

    .line 1119
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    iget v5, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1120
    .end local v2    # "usageSourcePackage2":Ljava/lang/String;
    goto :goto_1db

    .line 1121
    :cond_1d4
    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v7, v0, v2, v4, v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)V

    .line 1130
    :goto_1db
    iput v8, v1, Lcom/android/server/usage/UsageStatsService$ActivityData;->lastEvent:I

    .line 1131
    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-nez v2, :cond_253

    .line 1133
    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService$ActivityData;->-$$Nest$fgetmTaskRootPackage(Lcom/android/server/usage/UsageStatsService$ActivityData;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 1134
    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService$ActivityData;->-$$Nest$fgetmTaskRootClass(Lcom/android/server/usage/UsageStatsService$ActivityData;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    goto :goto_253

    .line 1070
    .end local v1    # "pausedData":Lcom/android/server/usage/UsageStatsService$ActivityData;
    :sswitch_1ee
    iget-object v5, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const-string v8, ""

    invoke-static {v7, v0, v5, v8, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)V

    .line 1078
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    iget v7, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_200

    goto :goto_253

    .line 1079
    :cond_200
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUsageSourcePackage(Landroid/app/usage/UsageEvents$Event;)Ljava/lang/String;

    move-result-object v5
    :try_end_204
    .catchall {:try_start_1bb .. :try_end_204} :catchall_277

    .line 1081
    .local v5, "usageSourcePackage":Ljava/lang/String;
    :try_start_204
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v7, v5, p2}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStart(Ljava/lang/String;I)V
    :try_end_209
    .catch Ljava/lang/IllegalArgumentException; {:try_start_204 .. :try_end_209} :catch_20a
    .catchall {:try_start_204 .. :try_end_209} :catchall_277

    .line 1084
    goto :goto_212

    .line 1082
    :catch_20a
    move-exception v7

    .line 1083
    .restart local v7    # "iae":Ljava/lang/IllegalArgumentException;
    :try_start_20b
    const-string v8, "UsageStatsService"

    const-string v9, "Failed to note usage start"

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1085
    .end local v7    # "iae":Ljava/lang/IllegalArgumentException;
    :goto_212
    new-instance v7, Lcom/android/server/usage/UsageStatsService$ActivityData;

    iget-object v8, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    iget-object v9, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v5, v6}, Lcom/android/server/usage/UsageStatsService$ActivityData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/usage/UsageStatsService$ActivityData-IA;)V

    move-object v6, v7

    .line 1087
    .local v6, "resumedData":Lcom/android/server/usage/UsageStatsService$ActivityData;
    iput v4, v6, Lcom/android/server/usage/UsageStatsService$ActivityData;->lastEvent:I

    .line 1088
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    iget v7, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v4, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1089
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    iget-object v7, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 1090
    invoke-interface {v4, v7, p2}, Lcom/android/server/usage/AppStandbyInternal;->getEstimatedLaunchTime(Ljava/lang/String;I)J

    move-result-wide v7

    .line 1091
    .local v7, "estimatedLaunchTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 1092
    .local v9, "now":J
    cmp-long v4, v7, v9

    if-ltz v4, :cond_23d

    const-wide/32 v11, 0x240c8400

    add-long/2addr v11, v9

    cmp-long v4, v7, v11

    if-lez v4, :cond_253

    .line 1101
    :cond_23d
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    iget-object v11, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-interface {v4, v11, p2, v1, v2}, Lcom/android/server/usage/AppStandbyInternal;->setEstimatedLaunchTime(Ljava/lang/String;IJ)V

    .line 1102
    iget-object v1, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-direct {p0, p2, v1}, Lcom/android/server/usage/UsageStatsService;->stageChangedEstimatedLaunchTime(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_253

    .line 1103
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1200
    .end local v5    # "usageSourcePackage":Ljava/lang/String;
    .end local v6    # "resumedData":Lcom/android/server/usage/UsageStatsService$ActivityData;
    .end local v7    # "estimatedLaunchTime":J
    .end local v9    # "now":J
    :cond_253
    :goto_253
    invoke-direct {p0, p2}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v1

    .line 1201
    .local v1, "service":Lcom/android/server/usage/UserUsageStatsService;
    if-nez v1, :cond_25b

    .line 1202
    monitor-exit v3

    return-void

    .line 1204
    :cond_25b
    invoke-virtual {v1, p1}, Lcom/android/server/usage/UserUsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;)V

    .line 1205
    .end local v1    # "service":Lcom/android/server/usage/UserUsageStatsService;
    monitor-exit v3
    :try_end_25f
    .catchall {:try_start_20b .. :try_end_25f} :catchall_277

    .line 1207
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageEventListeners:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 1208
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_266
    if-ge v2, v1, :cond_276

    .line 1209
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUsageEventListeners:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;

    invoke-interface {v3, p2, p1}, Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;->onUsageEvent(ILandroid/app/usage/UsageEvents$Event;)V

    .line 1208
    add-int/lit8 v2, v2, 0x1

    goto :goto_266

    .line 1211
    .end local v2    # "i":I
    :cond_276
    return-void

    .line 1205
    .end local v1    # "size":I
    :catchall_277
    move-exception v1

    :try_start_278
    monitor-exit v3
    :try_end_279
    .catchall {:try_start_278 .. :try_end_279} :catchall_277

    throw v1

    :sswitch_data_27a
    .sparse-switch
        0x1 -> :sswitch_36
        0x2 -> :sswitch_36
        0x17 -> :sswitch_36
    .end sparse-switch

    :sswitch_data_288
    .sparse-switch
        0x1 -> :sswitch_1ee
        0x2 -> :sswitch_1a4
        0x7 -> :sswitch_192
        0x17 -> :sswitch_c1
        0x18 -> :sswitch_bd
        0x1f -> :sswitch_192
    .end sparse-switch
.end method

.method reportEventToAllUserId(Landroid/app/usage/UsageEvents$Event;)V
    .registers 7
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;

    .line 1228
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1229
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1230
    .local v1, "userCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_1d

    .line 1231
    new-instance v3, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v3, p1}, Landroid/app/usage/UsageEvents$Event;-><init>(Landroid/app/usage/UsageEvents$Event;)V

    .line 1232
    .local v3, "copy":Landroid/app/usage/UsageEvents$Event;
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-direct {p0, v4, v3}, Lcom/android/server/usage/UsageStatsService;->reportEventOrAddToQueue(ILandroid/app/usage/UsageEvents$Event;)V

    .line 1230
    .end local v3    # "copy":Landroid/app/usage/UsageEvents$Event;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1234
    .end local v1    # "userCount":I
    .end local v2    # "i":I
    :cond_1d
    monitor-exit v0

    .line 1235
    return-void

    .line 1234
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method shutdown()V
    .registers 6

    .line 827
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 828
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 829
    new-instance v1, Landroid/app/usage/UsageEvents$Event;

    const/16 v2, 0x1a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 830
    .local v1, "event":Landroid/app/usage/UsageEvents$Event;
    const-string v2, "android"

    iput-object v2, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 832
    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService;->reportEventToAllUserId(Landroid/app/usage/UsageEvents$Event;)V

    .line 833
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V

    .line 834
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->persistGlobalComponentUsageLocked()V

    .line 835
    .end local v1    # "event":Landroid/app/usage/UsageEvents$Event;
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_28

    .line 837
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0}, Lcom/android/server/usage/AppStandbyInternal;->flushToDisk()V

    .line 838
    return-void

    .line 835
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method unregisterAppUsageLimitObserver(III)V
    .registers 5
    .param p1, "callingUid"    # I
    .param p2, "observerId"    # I
    .param p3, "userId"    # I

    .line 2956
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController;->removeAppUsageLimitObserver(III)V

    .line 2957
    return-void
.end method

.method unregisterAppUsageObserver(III)V
    .registers 5
    .param p1, "callingUid"    # I
    .param p2, "observerId"    # I
    .param p3, "userId"    # I

    .line 2935
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController;->removeAppUsageObserver(III)V

    .line 2936
    return-void
.end method

.method unregisterUsageSessionObserver(III)V
    .registers 5
    .param p1, "callingUid"    # I
    .param p2, "sessionObserverId"    # I
    .param p3, "userId"    # I

    .line 2946
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController;->removeUsageSessionObserver(III)V

    .line 2947
    return-void
.end method
