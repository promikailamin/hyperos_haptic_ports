.class public Lcom/android/server/usage/UsageStatsService;
.super Lcom/android/server/SystemService;
.source "UsageStatsService.java"

# interfaces
.implements Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;


# static fields
.field public static final COMMON_USAGE_STATS_DIR:Ljava/io/File;

.field public static final DEBUG_RESPONSE_STATS:Z

.field public static final ENABLE_TIME_CHANGE_CORRECTION:Z

.field public static final KERNEL_COUNTER_FILE:Ljava/io/File;

.field public static final LEGACY_COMMON_USAGE_STATS_DIR:Ljava/io/File;

.field public static final LEGACY_USER_USAGE_STATS_DIR:Ljava/io/File;


# instance fields
.field public mAppOps:Landroid/app/AppOpsManager;

.field public mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

.field public mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

.field public mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

.field public final mEstimatedLaunchTimeChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/usage/UsageStatsService$Injector;

.field public mIoHandler:Landroid/os/Handler;

.field public final mIoHandlerCallback:Landroid/os/Handler$Callback;

.field public final mLastTimeComponentUsedGlobal:Ljava/util/Map;

.field public final mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

.field public final mLock:Ljava/lang/Object;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field public final mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

.field public mRealTimeSnapshot:J

.field public final mReportedEvents:Landroid/util/SparseArray;

.field public mResponseStatsTracker:Lcom/android/server/usage/BroadcastResponseStatsTracker;

.field public mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

.field public mStandbyChangeListener:Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

.field public mSupervisionManagerInternal:Landroid/app/supervision/SupervisionManagerInternal;

.field public mSystemTimeSnapshot:J

.field public final mUidObserver:Landroid/app/IUidObserver;

.field public final mUidToKernelCounter:Landroid/util/SparseIntArray;

.field public final mUsageEventListeners:Landroid/util/ArraySet;

.field public final mUsageReporters:Landroid/util/SparseArray;

.field public mUsageSource:I

.field public mUserManager:Landroid/os/UserManager;

.field public final mUserState:Landroid/util/SparseArray;

.field public final mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final mVisibleActivities:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$TpcNng9zAtQEa_4AWZmaJYBdR0c(Lcom/android/server/usage/UsageStatsService;Landroid/os/Message;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->lambda$new$0(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEstimatedLaunchTimeChangedListeners(Lcom/android/server/usage/UsageStatsService;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mEstimatedLaunchTimeChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/usage/UsageStatsService;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIoHandler(Lcom/android/server/usage/UsageStatsService;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mIoHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastTimeComponentUsedGlobal(Lcom/android/server/usage/UsageStatsService;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mLastTimeComponentUsedGlobal:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingLaunchTimeChangePackages(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseSetArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmResponseStatsTracker(Lcom/android/server/usage/UsageStatsService;)Lcom/android/server/usage/BroadcastResponseStatsTracker;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mResponseStatsTracker:Lcom/android/server/usage/BroadcastResponseStatsTracker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserUnlockedStates(Lcom/android/server/usage/UsageStatsService;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mbuildFullToken(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->buildFullToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetDpmInternal(Lcom/android/server/usage/UsageStatsService;)Landroid/app/admin/DevicePolicyManagerInternal;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUserUsageStatsServiceLocked(Lcom/android/server/usage/UsageStatsService;I)Lcom/android/server/usage/UserUsageStatsService;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misInstantApp(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;I)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->isInstantApp(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misSupervisionEnabled(Lcom/android/server/usage/UsageStatsService;I)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->isSupervisionEnabled(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mloadGlobalComponentUsageLocked(Lcom/android/server/usage/UsageStatsService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->loadGlobalComponentUsageLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPackageRemoved(Lcom/android/server/usage/UsageStatsService;ILjava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->onPackageRemoved(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserUnlocked(Lcom/android/server/usage/UsageStatsService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->onUserUnlocked(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpruneUninstalledPackagesData(Lcom/android/server/usage/UsageStatsService;I)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->pruneUninstalledPackagesData(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreadUsageSourceSetting(Lcom/android/server/usage/UsageStatsService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->readUsageSourceSetting()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterLaunchTimeChangedListener(Lcom/android/server/usage/UsageStatsService;Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->registerLaunchTimeChangedListener(Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterListener(Lcom/android/server/usage/UsageStatsService;Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreportEventOrAddToQueue(Lcom/android/server/usage/UsageStatsService;ILandroid/app/usage/UsageEvents$Event;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->reportEventOrAddToQueue(ILandroid/app/usage/UsageEvents$Event;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msameApp(Lcom/android/server/usage/UsageStatsService;IILjava/lang/String;)Z
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usage/UsageStatsService;->sameApp(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetEstimatedLaunchTime(Lcom/android/server/usage/UsageStatsService;ILjava/lang/String;J)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usage/UsageStatsService;->setEstimatedLaunchTime(ILjava/lang/String;J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetEstimatedLaunchTimes(Lcom/android/server/usage/UsageStatsService;ILjava/util/List;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->setEstimatedLaunchTimes(ILjava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshouldDeleteObsoleteData(Lcom/android/server/usage/UsageStatsService;Landroid/os/UserHandle;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->shouldDeleteObsoleteData(Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mshouldHideLocusIdEvents(Lcom/android/server/usage/UsageStatsService;II)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->shouldHideLocusIdEvents(II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mshouldHideShortcutInvocationEvents(Lcom/android/server/usage/UsageStatsService;ILjava/lang/String;II)Z
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usage/UsageStatsService;->shouldHideShortcutInvocationEvents(ILjava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mshouldObfuscateInstantAppsForCaller(Lcom/android/server/usage/UsageStatsService;II)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->shouldObfuscateInstantAppsForCaller(II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mshouldObfuscateNotificationEvents(Lcom/android/server/usage/UsageStatsService;II)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->shouldObfuscateNotificationEvents(II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$munregisterListener(Lcom/android/server/usage/UsageStatsService;Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->unregisterListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdatePackageMappingsData(Lcom/android/server/usage/UsageStatsService;I)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->updatePackageMappingsData(I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 153
    const-string/jumbo v0, "persist.debug.time_correction"

    const/4 v1, 0x1

    .line 154
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/usage/UsageStatsService;->ENABLE_TIME_CHANGE_CORRECTION:Z

    .line 157
    const-string v0, "UsageStatsService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/usage/UsageStatsService;->DEBUG_RESPONSE_STATS:Z

    .line 173
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/uid_procstat/set"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usage/UsageStatsService;->KERNEL_COUNTER_FILE:Ljava/io/File;

    .line 177
    new-instance v0, Ljava/io/File;

    .line 178
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "usagestats"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usage/UsageStatsService;->COMMON_USAGE_STATS_DIR:Ljava/io/File;

    .line 179
    sput-object v0, Lcom/android/server/usage/UsageStatsService;->LEGACY_USER_USAGE_STATS_DIR:Ljava/io/File;

    .line 192
    new-instance v0, Ljava/io/File;

    .line 193
    invoke-static {}, Landroid/os/Environment;->getDataSystemDeDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usage/UsageStatsService;->LEGACY_COMMON_USAGE_STATS_DIR:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 346
    new-instance v0, Lcom/android/server/usage/UsageStatsService$Injector;

    invoke-direct {v0}, Lcom/android/server/usage/UsageStatsService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/usage/UsageStatsService;-><init>(Landroid/content/Context;Lcom/android/server/usage/UsageStatsService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usage/UsageStatsService$Injector;)V
    .registers 4

    .line 351
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 219
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 232
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    .line 233
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 234
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mUidToKernelCounter:Landroid/util/SparseIntArray;

    .line 240
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mLastTimeComponentUsedGlobal:Ljava/util/Map;

    .line 248
    new-instance p1, Lcom/android/server/usage/UsageStatsService$MyPackageMonitor;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/usage/UsageStatsService$MyPackageMonitor;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService-IA;)V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 251
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    .line 252
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    .line 253
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    .line 254
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    .line 256
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageEventListeners:Landroid/util/ArraySet;

    .line 259
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mEstimatedLaunchTimeChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 261
    new-instance p1, Landroid/util/SparseSetArray;

    invoke-direct {p1}, Landroid/util/SparseSetArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    .line 279
    new-instance p1, Lcom/android/server/usage/UsageStatsService$1;

    invoke-direct {p1, p0}, Lcom/android/server/usage/UsageStatsService$1;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mStandbyChangeListener:Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    .line 300
    new-instance p1, Lcom/android/server/usage/UsageStatsService$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/usage/UsageStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mIoHandlerCallback:Landroid/os/Handler$Callback;

    .line 681
    new-instance p1, Lcom/android/server/usage/UsageStatsService$3;

    invoke-direct {p1, p0}, Lcom/android/server/usage/UsageStatsService$3;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mUidObserver:Landroid/app/IUidObserver;

    .line 352
    iput-object p2, p0, Lcom/android/server/usage/UsageStatsService;->mInjector:Lcom/android/server/usage/UsageStatsService$Injector;

    return-void
.end method

.method public static calculateNextLaunchTime(ZJ)J
    .registers 5

    .line 0
    if-eqz p0, :cond_7

    const-wide/32 v0, 0x240c8400

    :goto_5
    add-long/2addr p1, v0

    return-wide p1

    :cond_7
    const-wide/32 v0, 0x5265c00

    goto :goto_5
.end method

.method public static copyRecursively(Ljava/io/File;Ljava/io/File;)V
    .registers 6

    .line 872
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_44

    .line 875
    :try_start_7
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    new-array v1, v1, [Ljava/nio/file/CopyOption;

    sget-object v2, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, p0, v1}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception p0

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to move usage stats file : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UsageStatsService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 884
    :cond_44
    array-length p1, v0

    sub-int/2addr p1, v1

    :goto_46
    if-ltz p1, :cond_8c

    .line 886
    aget-object v1, v0, p1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 887
    new-instance v1, Ljava/io/File;

    aget-object v2, v0, p1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 888
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_84

    .line 889
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_68

    goto :goto_84

    .line 890
    :cond_68
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to create usage stats directory during migration: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_83
    move-object v1, p0

    .line 895
    :cond_84
    :goto_84
    aget-object v2, v0, p1

    invoke-static {v1, v2}, Lcom/android/server/usage/UsageStatsService;->copyRecursively(Ljava/io/File;Ljava/io/File;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_46

    :cond_8c
    return-void
.end method

.method public static deleteRecursively(Ljava/io/File;)V
    .registers 5

    .line 767
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 768
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 770
    array-length v1, v0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 771
    invoke-static {v3}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 776
    :cond_18
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UsageStatsService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    return-void
.end method

.method public static getTrimmedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_f

    .line 1897
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7f

    if-le v0, v1, :cond_f

    const/4 v0, 0x0

    .line 1898
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_f
    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/os/Message;)Z
    .registers 8

    .line 301
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_5b

    const/16 v1, 0x8

    if-eq v0, v1, :cond_35

    const/16 v1, 0xc

    if-eq v0, v1, :cond_10

    return v2

    .line 329
    :cond_10
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 330
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/usage/UsageEvents$Event;

    .line 331
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageEventListeners:Landroid/util/ArraySet;

    monitor-enter v1

    .line 332
    :try_start_19
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mUsageEventListeners:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    :goto_1f
    if-ge v2, v4, :cond_31

    .line 334
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService;->mUsageEventListeners:Landroid/util/ArraySet;

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;

    invoke-interface {v5, v0, p1}, Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;->onUsageEvent(ILandroid/app/usage/UsageEvents$Event;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :catchall_2f
    move-exception p0

    goto :goto_33

    .line 336
    :cond_31
    monitor-exit v1

    return v3

    :goto_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_19 .. :try_end_34} :catchall_2f

    throw p0

    .line 321
    :cond_35
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "usageStatsHandleEstimatedLaunchTimesOnUser("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 324
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->handleEstimatedLaunchTimesOnUserUnlock(I)V

    .line 325
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    .line 303
    :cond_5b
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 304
    iget p1, p1, Landroid/os/Message;->arg2:I

    const/4 v1, 0x2

    if-gt p1, v1, :cond_64

    move p1, v2

    goto :goto_65

    :cond_64
    move p1, v3

    .line 307
    :goto_65
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUidToKernelCounter:Landroid/util/SparseIntArray;

    monitor-enter v1

    .line 308
    :try_start_68
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mUidToKernelCounter:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-eq p1, v2, :cond_a8

    .line 310
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUidToKernelCounter:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_75
    .catchall {:try_start_68 .. :try_end_75} :catchall_8f

    .line 312
    :try_start_75
    sget-object p0, Lcom/android/server/usage/UsageStatsService;->KERNEL_COUNTER_FILE:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_8e} :catch_91
    .catchall {:try_start_75 .. :try_end_8e} :catchall_8f

    goto :goto_a8

    :catchall_8f
    move-exception p0

    goto :goto_aa

    :catch_91
    move-exception p0

    .line 314
    :try_start_92
    const-string p1, "UsageStatsService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to update counter set: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_a8
    :goto_a8
    monitor-exit v1

    return v3

    :goto_aa
    monitor-exit v1
    :try_end_ab
    .catchall {:try_start_92 .. :try_end_ab} :catchall_8f

    throw p0
.end method


# virtual methods
.method public final buildFullToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1873
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1874
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    .line 1875
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1876
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1877
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final calculateEstimatedPackageLaunchTime(ILjava/lang/String;)J
    .registers 13

    .line 1665
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v0, 0x240c8400

    sub-long v2, v4, v0

    const-wide v0, 0x757b12c00L

    add-long v8, v4, v0

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v6, p2

    .line 1668
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/UsageStatsService;->queryEarliestEventsForPackage(IJJLjava/lang/String;I)Landroid/app/usage/UsageEvents;

    move-result-object p0

    if-nez p0, :cond_1b

    goto :goto_50

    .line 1676
    :cond_1b
    new-instance p1, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {p1}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 1678
    invoke-virtual {p0, p1}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    move-result p2

    if-eqz p2, :cond_50

    .line 1679
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v0

    sub-long v0, v4, v0

    const-wide/32 v2, 0x5265c00

    cmp-long p2, v0, v2

    const/4 v0, 0x1

    if-lez p2, :cond_36

    move p2, v0

    goto :goto_37

    :cond_36
    const/4 p2, 0x0

    .line 1691
    :cond_37
    :goto_37
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v1

    if-ne v1, v0, :cond_4a

    .line 1692
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v1

    .line 1694
    invoke-static {p2, v1, v2}, Lcom/android/server/usage/UsageStatsService;->calculateNextLaunchTime(ZJ)J

    move-result-wide v1

    cmp-long v3, v1, v4

    if-lez v3, :cond_4a

    return-wide v1

    .line 1699
    :cond_4a
    invoke-virtual {p0, p1}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    move-result v1

    if-nez v1, :cond_37

    :cond_50
    :goto_50
    return-wide v8
.end method

.method public clearLastUsedTimestamps(Ljava/lang/String;I)V
    .registers 3

    .line 2224
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0, p1, p2}, Lcom/android/server/usage/AppStandbyInternal;->clearLastUsedTimestampsForTest(Ljava/lang/String;I)V

    return-void
.end method

.method public final convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V
    .registers 12

    .line 1106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1107
    sget-boolean v2, Lcom/android/server/usage/UsageStatsService;->ENABLE_TIME_CHANGE_CORRECTION:Z

    if-eqz v2, :cond_41

    .line 1108
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1109
    iget-wide v4, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    sub-long v4, v2, v4

    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    add-long/2addr v4, v6

    sub-long v4, v0, v4

    .line 1112
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x7d0

    cmp-long v6, v6, v8

    if-lez v6, :cond_41

    .line 1114
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Time changed in by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v7, 0x3e8

    div-long/2addr v4, v7

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " seconds"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UsageStatsService"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    iput-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    .line 1116
    iput-wide v0, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    .line 1119
    :cond_41
    iget-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    return-void
.end method

.method public final deleteLegacyUserDir(I)V
    .registers 4

    .line 900
    new-instance p0, Ljava/io/File;

    sget-object v0, Lcom/android/server/usage/UsageStatsService;->LEGACY_USER_USAGE_STATS_DIR:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 901
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 902
    invoke-static {p0}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    .line 903
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_30

    .line 904
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error occurred while attempting to delete legacy usage stats dir for user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UsageStatsService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    return-void
.end method

.method public deletePackageData(Ljava/lang/String;I)V
    .registers 4

    .line 2228
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2229
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {p0, p1}, Lcom/android/server/usage/UserUsageStatsService;->deleteDataFor(Ljava/lang/String;)V

    .line 2230
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public dump([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1907
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v4, "  "

    invoke-direct {v3, v2, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1911
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_27b

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1914
    :goto_19
    array-length v11, v1

    if-ge v8, v11, :cond_27d

    .line 1915
    aget-object v11, v1, v8

    .line 1916
    const-string v12, "--checkin"

    invoke-virtual {v12, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_29

    move v9, v6

    goto/16 :goto_277

    .line 1918
    :cond_29
    const-string v12, "-c"

    invoke-virtual {v12, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_34

    move v10, v6

    goto/16 :goto_277

    .line 1920
    :cond_34
    const-string v12, "flush"

    invoke-virtual {v12, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_51

    .line 1921
    iget-object v12, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1922
    :try_start_3f
    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V

    .line 1923
    monitor-exit v12
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_4e

    .line 1924
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0}, Lcom/android/server/usage/AppStandbyInternal;->flushToDisk()V

    .line 1925
    const-string v0, "Flushed stats to disk"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_4e
    move-exception v0

    .line 1923
    :try_start_4f
    monitor-exit v12
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v0

    .line 1927
    :cond_51
    const-string v12, "is-app-standby-enabled"

    invoke-virtual {v12, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_63

    .line 1928
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0}, Lcom/android/server/usage/AppStandbyInternal;->isAppIdleEnabled()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void

    .line 1930
    :cond_63
    const-string v12, "apptimelimit"

    invoke-virtual {v12, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8a

    .line 1931
    iget-object v12, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    add-int/2addr v8, v6

    .line 1932
    :try_start_6f
    array-length v3, v1

    if-lt v8, v3, :cond_7a

    .line 1933
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v0, v5, v2}, Lcom/android/server/usage/AppTimeLimitController;->dump([Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_86

    :catchall_78
    move-exception v0

    goto :goto_88

    .line 1935
    :cond_7a
    array-length v3, v1

    .line 1936
    invoke-static {v1, v8, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 1937
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usage/AppTimeLimitController;->dump([Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1939
    :goto_86
    monitor-exit v12

    return-void

    .line 1940
    :goto_88
    monitor-exit v12
    :try_end_89
    .catchall {:try_start_6f .. :try_end_89} :catchall_78

    throw v0

    .line 1941
    :cond_8a
    const-string v12, "file"

    invoke-virtual {v12, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/16 v13, -0x2710

    if-eqz v12, :cond_108

    .line 1942
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v4, "  "

    invoke-direct {v3, v2, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1943
    iget-object v12, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    add-int/lit8 v2, v8, 0x1

    .line 1944
    :try_start_a0
    array-length v4, v1

    if-lt v2, v4, :cond_ea

    .line 1946
    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v7, 0x0

    :goto_aa
    if-ge v7, v1, :cond_104

    .line 1948
    iget-object v2, v0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1949
    iget-object v4, v0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_bf

    goto :goto_e5

    .line 1952
    :cond_bf
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "user="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1953
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1954
    iget-object v2, v0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v2, v3, v5}, Lcom/android/server/usage/UserUsageStatsService;->dumpFile(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 1955
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :goto_e5
    add-int/lit8 v7, v7, 0x1

    goto :goto_aa

    :catchall_e8
    move-exception v0

    goto :goto_106

    .line 1958
    :cond_ea
    invoke-virtual {v0, v1, v8, v3}, Lcom/android/server/usage/UsageStatsService;->parseUserIdFromArgs([Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)I

    move-result v2

    if-eq v2, v13, :cond_104

    add-int/lit8 v8, v8, 0x2

    .line 1960
    array-length v4, v1

    invoke-static {v1, v8, v4}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 1963
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v0, v3, v1}, Lcom/android/server/usage/UserUsageStatsService;->dumpFile(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 1966
    :cond_104
    monitor-exit v12

    return-void

    .line 1967
    :goto_106
    monitor-exit v12
    :try_end_107
    .catchall {:try_start_a0 .. :try_end_107} :catchall_e8

    throw v0

    .line 1968
    :cond_108
    const-string v12, "database-info"

    invoke-virtual {v12, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17b

    .line 1969
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v4, "  "

    invoke-direct {v3, v2, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1970
    iget-object v12, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    add-int/lit8 v2, v8, 0x1

    .line 1971
    :try_start_11c
    array-length v4, v1

    if-lt v2, v4, :cond_166

    .line 1973
    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v7, 0x0

    :goto_126
    if-ge v7, v1, :cond_177

    .line 1975
    iget-object v2, v0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1976
    iget-object v4, v0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13b

    goto :goto_161

    .line 1979
    :cond_13b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "user="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1980
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1981
    iget-object v2, v0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v2, v3}, Lcom/android/server/usage/UserUsageStatsService;->dumpDatabaseInfo(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1982
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :goto_161
    add-int/lit8 v7, v7, 0x1

    goto :goto_126

    :catchall_164
    move-exception v0

    goto :goto_179

    .line 1985
    :cond_166
    invoke-virtual {v0, v1, v8, v3}, Lcom/android/server/usage/UsageStatsService;->parseUserIdFromArgs([Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)I

    move-result v1

    if-eq v1, v13, :cond_177

    .line 1988
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v0, v3}, Lcom/android/server/usage/UserUsageStatsService;->dumpDatabaseInfo(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1991
    :cond_177
    monitor-exit v12

    return-void

    .line 1992
    :goto_179
    monitor-exit v12
    :try_end_17a
    .catchall {:try_start_11c .. :try_end_17a} :catchall_164

    throw v0

    .line 1993
    :cond_17b
    const-string v12, "appstandby"

    invoke-virtual {v12, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_189

    .line 1994
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, v1, v2}, Lcom/android/server/usage/AppStandbyInternal;->dumpState([Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void

    .line 1996
    :cond_189
    const-string/jumbo v12, "stats-directory"

    invoke-virtual {v12, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1bc

    .line 1997
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v4, "  "

    invoke-direct {v3, v2, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1998
    iget-object v12, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1999
    :try_start_19c
    invoke-virtual {v0, v1, v8, v3}, Lcom/android/server/usage/UsageStatsService;->parseUserIdFromArgs([Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)I

    move-result v0

    if-eq v0, v13, :cond_1b8

    .line 2001
    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v0

    const-string/jumbo v2, "usagestats"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2002
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 2001
    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1b8

    :catchall_1b6
    move-exception v0

    goto :goto_1ba

    .line 2004
    :cond_1b8
    :goto_1b8
    monitor-exit v12

    return-void

    .line 2005
    :goto_1ba
    monitor-exit v12
    :try_end_1bb
    .catchall {:try_start_19c .. :try_end_1bb} :catchall_1b6

    throw v0

    .line 2006
    :cond_1bc
    const-string v12, "mappings"

    invoke-virtual {v12, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1e6

    .line 2007
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v4, "  "

    invoke-direct {v3, v2, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2008
    iget-object v12, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2009
    :try_start_1ce
    invoke-virtual {v0, v1, v8, v3}, Lcom/android/server/usage/UsageStatsService;->parseUserIdFromArgs([Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)I

    move-result v1

    if-eq v1, v13, :cond_1e2

    .line 2011
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v0, v3}, Lcom/android/server/usage/UserUsageStatsService;->dumpMappings(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_1e2

    :catchall_1e0
    move-exception v0

    goto :goto_1e4

    .line 2013
    :cond_1e2
    :goto_1e2
    monitor-exit v12

    return-void

    .line 2014
    :goto_1e4
    monitor-exit v12
    :try_end_1e5
    .catchall {:try_start_1ce .. :try_end_1e5} :catchall_1e0

    throw v0

    .line 2015
    :cond_1e6
    const-string v12, "broadcast-response-stats"

    invoke-virtual {v12, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1fb

    .line 2016
    iget-object v12, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2017
    :try_start_1f1
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mResponseStatsTracker:Lcom/android/server/usage/BroadcastResponseStatsTracker;

    invoke-virtual {v0, v3}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2018
    monitor-exit v12

    return-void

    :catchall_1f8
    move-exception v0

    monitor-exit v12
    :try_end_1fa
    .catchall {:try_start_1f1 .. :try_end_1fa} :catchall_1f8

    throw v0

    .line 2020
    :cond_1fb
    const-string v12, "app-component-usage"

    invoke-virtual {v12, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_26a

    .line 2021
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2022
    iget-object v12, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2023
    :try_start_20d
    iget-object v2, v0, Lcom/android/server/usage/UsageStatsService;->mLastTimeComponentUsedGlobal:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_266

    .line 2024
    const-string v2, "App Component Usages:"

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2025
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2026
    iget-object v2, v0, Lcom/android/server/usage/UsageStatsService;->mLastTimeComponentUsedGlobal:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_227
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_263

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2027
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "package="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " lastUsed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/usage/UsageStatsService;->mLastTimeComponentUsedGlobal:Ljava/util/Map;

    .line 2029
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 2028
    invoke-static {v7, v8, v6}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2027
    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_227

    :catchall_261
    move-exception v0

    goto :goto_268

    .line 2031
    :cond_263
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2033
    :cond_266
    monitor-exit v12

    return-void

    :goto_268
    monitor-exit v12
    :try_end_269
    .catchall {:try_start_20d .. :try_end_269} :catchall_261

    throw v0

    :cond_26a
    if-eqz v11, :cond_277

    .line 2035
    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_277

    .line 2037
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_277
    :goto_277
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_19

    :cond_27b
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 2043
    :cond_27d
    const-string v8, "Flags:"

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2044
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    android.app.usage.user_interaction_type_api: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2045
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2044
    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2046
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    android.app.usage.filter_based_event_query_api: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2047
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2046
    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2050
    iget-object v8, v0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2051
    :try_start_2ad
    iget-object v11, v0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 2052
    new-array v12, v11, [I

    const/4 v13, 0x0

    :goto_2b6
    if-ge v13, v11, :cond_355

    .line 2054
    iget-object v14, v0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    .line 2055
    aput v14, v12, v13

    .line 2056
    const-string/jumbo v15, "user"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v15, v7}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2057
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2058
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2059
    iget-object v7, v0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2fd

    if-eqz v9, :cond_2ee

    .line 2061
    iget-object v7, v0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v7, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v7, v3}, Lcom/android/server/usage/UserUsageStatsService;->checkin(Lcom/android/internal/util/IndentingPrintWriter;)V

    :goto_2e9
    move v5, v6

    goto :goto_34a

    :catchall_2eb
    move-exception v0

    goto/16 :goto_389

    .line 2063
    :cond_2ee
    iget-object v7, v0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v7, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v7, v3, v4, v10}, Lcom/android/server/usage/UserUsageStatsService;->dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/List;Z)V

    .line 2064
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_2e9

    .line 2067
    :cond_2fd
    iget-object v7, v0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    monitor-enter v7
    :try_end_300
    .catchall {:try_start_2ad .. :try_end_300} :catchall_2eb

    .line 2068
    :try_start_300
    iget-object v15, v0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/LinkedList;

    if-eqz v14, :cond_348

    .line 2069
    invoke-virtual {v14}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_348

    .line 2070
    invoke-virtual {v14}, Ljava/util/LinkedList;->size()I

    move-result v15

    .line 2071
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pending events: count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2072
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v5, 0x0

    :goto_32c
    if-ge v5, v15, :cond_340

    .line 2074
    invoke-virtual {v14, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/UsageEvents$Event;

    move/from16 v16, v5

    const/4 v5, 0x1

    invoke-static {v3, v6, v5}, Lcom/android/server/usage/UserUsageStatsService;->printEvent(Lcom/android/internal/util/IndentingPrintWriter;Landroid/app/usage/UsageEvents$Event;Z)V

    add-int/lit8 v6, v16, 0x1

    move v5, v6

    goto :goto_32c

    :catchall_33e
    move-exception v0

    goto :goto_353

    :cond_340
    const/4 v5, 0x1

    .line 2077
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2078
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_349

    :cond_348
    move v5, v6

    .line 2080
    :goto_349
    monitor-exit v7
    :try_end_34a
    .catchall {:try_start_300 .. :try_end_34a} :catchall_33e

    .line 2082
    :goto_34a
    :try_start_34a
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    :try_end_34d
    .catchall {:try_start_34a .. :try_end_34d} :catchall_2eb

    add-int/lit8 v13, v13, 0x1

    move v6, v5

    const/4 v5, 0x0

    goto/16 :goto_2b6

    .line 2080
    :goto_353
    :try_start_353
    monitor-exit v7
    :try_end_354
    .catchall {:try_start_353 .. :try_end_354} :catchall_33e

    :try_start_354
    throw v0

    .line 2085
    :cond_355
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2086
    const-string v5, "Usage Source"

    iget v6, v0, Lcom/android/server/usage/UsageStatsService;->mUsageSource:I

    invoke-static {v6}, Landroid/app/usage/UsageStatsManager;->usageSourceToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 2087
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2089
    iget-object v5, v0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v2}, Lcom/android/server/usage/AppTimeLimitController;->dump([Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2091
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2092
    iget-object v5, v0, Lcom/android/server/usage/UsageStatsService;->mResponseStatsTracker:Lcom/android/server/usage/BroadcastResponseStatsTracker;

    invoke-virtual {v5, v3}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2093
    monitor-exit v8
    :try_end_375
    .catchall {:try_start_354 .. :try_end_375} :catchall_2eb

    .line 2095
    iget-object v5, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v5, v3, v12, v4}, Lcom/android/server/usage/AppStandbyInternal;->dumpUsers(Landroid/util/IndentingPrintWriter;[ILjava/util/List;)V

    .line 2097
    invoke-static {v4}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_388

    .line 2098
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 2099
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, v1, v2}, Lcom/android/server/usage/AppStandbyInternal;->dumpState([Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_388
    return-void

    .line 2093
    :goto_389
    :try_start_389
    monitor-exit v8
    :try_end_38a
    .catchall {:try_start_389 .. :try_end_38a} :catchall_2eb

    throw v0
.end method

.method public flushToDisk()V
    .registers 6

    .line 1354
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1360
    :try_start_3
    new-instance v1, Landroid/app/usage/UsageEvents$Event;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/16 v4, 0x19

    invoke-direct {v1, v4, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 1361
    const-string v2, "android"

    iput-object v2, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 1362
    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService;->reportEventToAllUserId(Landroid/app/usage/UsageEvents$Event;)V

    .line 1363
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V

    .line 1364
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1f

    .line 1365
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0}, Lcom/android/server/usage/AppStandbyInternal;->flushToDisk()V

    return-void

    :catchall_1f
    move-exception p0

    .line 1364
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public final flushToDiskLocked()V
    .registers 6

    .line 1881
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_2f

    .line 1883
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1884
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 1885
    invoke-virtual {p0, v2}, Lcom/android/server/usage/UsageStatsService;->persistPendingEventsLocked(I)V

    goto :goto_2c

    .line 1888
    :cond_1f
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/UserUsageStatsService;

    if-eqz v2, :cond_2c

    .line 1890
    invoke-virtual {v2}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    :cond_2c
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1893
    :cond_2f
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final getAppUsageEventOccurredAtomEventType(I)I
    .registers 3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_34

    const/4 p0, 0x2

    if-eq p1, p0, :cond_34

    const/4 p0, 0x7

    if-eq p1, p0, :cond_34

    const/16 p0, 0x8

    if-eq p1, p0, :cond_34

    const/16 p0, 0x9

    if-eq p1, p0, :cond_34

    const/16 p0, 0xb

    if-eq p1, p0, :cond_34

    const/16 p0, 0x13

    if-eq p1, p0, :cond_34

    const/16 p0, 0x14

    if-eq p1, p0, :cond_34

    .line 1321
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported usage event logging: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UsageStatsService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :cond_34
    return p0
.end method

.method public final getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;
    .registers 2

    .line 595
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    if-nez v0, :cond_e

    .line 596
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 598
    :cond_e
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    return-object p0
.end method

.method public getEstimatedPackageLaunchTime(ILjava/lang/String;)J
    .registers 9

    .line 1639
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, p2, p1}, Lcom/android/server/usage/AppStandbyInternal;->getEstimatedLaunchTime(Ljava/lang/String;I)J

    move-result-wide v0

    .line 1640
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_19

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v0, v4

    if-nez v4, :cond_18

    goto :goto_19

    :cond_18
    return-wide v0

    .line 1642
    :cond_19
    :goto_19
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->calculateEstimatedPackageLaunchTime(ILjava/lang/String;)J

    move-result-wide v0

    .line 1643
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v4, p2, p1, v0, v1}, Lcom/android/server/usage/AppStandbyInternal;->setEstimatedLaunchTime(Ljava/lang/String;IJ)V

    .line 1645
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getOrCreateLaunchTimeAlarmQueue(I)Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;

    move-result-object p0

    .line 1646
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v0, v2

    add-long/2addr v4, v2

    .line 1645
    invoke-virtual {p0, p2, v4, v5}, Lcom/android/server/utils/AlarmQueue;->addAlarm(Ljava/lang/Object;J)V

    return-wide v0
.end method

.method public final getInstalledPackages(I)Ljava/util/HashMap;
    .registers 7

    .line 581
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    const/16 v0, 0x2000

    .line 584
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object p0

    .line 586
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 587
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_17
    if-ltz v0, :cond_2d

    .line 588
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 589
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-wide v3, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    :cond_2d
    return-object p1
.end method

.method public final getOrCreateLaunchTimeAlarmQueue(I)Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;
    .registers 6

    .line 1652
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1653
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;

    if-nez v1, :cond_24

    .line 1655
    new-instance v1, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;-><init>(Lcom/android/server/usage/UsageStatsService;ILandroid/content/Context;Landroid/os/Looper;)V

    .line 1656
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_24

    :catchall_22
    move-exception p0

    goto :goto_26

    .line 1659
    :cond_24
    :goto_24
    monitor-exit v0

    return-object v1

    .line 1660
    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_22

    throw p0
.end method

.method public final getShortcutServiceInternal()Landroid/content/pm/ShortcutServiceInternal;
    .registers 2

    .line 611
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    if-nez v0, :cond_e

    .line 612
    const-class v0, Landroid/content/pm/ShortcutServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutServiceInternal;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 614
    :cond_e
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    return-object p0
.end method

.method public final getSupervisionManagerInternal()Landroid/app/supervision/SupervisionManagerInternal;
    .registers 2

    .line 603
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mSupervisionManagerInternal:Landroid/app/supervision/SupervisionManagerInternal;

    if-nez v0, :cond_e

    .line 604
    const-class v0, Landroid/app/supervision/SupervisionManagerInternal;

    .line 605
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/supervision/SupervisionManagerInternal;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mSupervisionManagerInternal:Landroid/app/supervision/SupervisionManagerInternal;

    .line 607
    :cond_e
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mSupervisionManagerInternal:Landroid/app/supervision/SupervisionManagerInternal;

    return-object p0
.end method

.method public final getUsageEventProcessingHandler()Landroid/os/Handler;
    .registers 3

    .line 505
    new-instance v0, Lcom/android/server/usage/UsageStatsService$H;

    invoke-static {}, Lcom/android/server/usage/UsageStatsHandlerThread;->get()Lcom/android/server/usage/UsageStatsHandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/UsageStatsService$H;-><init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Looper;)V

    return-object v0
.end method

.method public final getUsageSourcePackage(Landroid/app/usage/UsageEvents$Event;)Ljava/lang/String;
    .registers 3

    .line 1327
    iget p0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageSource:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8

    .line 1332
    iget-object p0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    return-object p0

    .line 1329
    :cond_8
    iget-object p0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    return-object p0
.end method

.method public final getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;
    .registers 4

    .line 785
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/UserUsageStatsService;

    if-nez p0, :cond_25

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to fetch usage stats service for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". The user might not have been initialized yet."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UsageStatsService"

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return-object p0
.end method

.method public final handleEstimatedLaunchTimesOnUserUnlock(I)V
    .registers 24

    .line 1721
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1722
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v9, 0x240c8400

    sub-long v2, v4, v9

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1724
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usage/UsageStatsService;->queryEarliestAppEvents(IJJI)Landroid/app/usage/UsageEvents;

    move-result-object v2

    if-nez v2, :cond_1a

    goto/16 :goto_ad

    .line 1729
    :cond_1a
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 1730
    new-instance v6, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v6}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 1732
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/UsageStatsService;->getOrCreateLaunchTimeAlarmQueue(I)Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;

    move-result-object v11

    .line 1733
    invoke-virtual {v2, v6}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    move-result v12

    const/4 v14, 0x0

    :goto_2d
    if-eqz v12, :cond_a3

    .line 1735
    invoke-virtual {v6}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 1736
    invoke-virtual {v3, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    move-wide/from16 v16, v9

    const/4 v9, 0x1

    if-nez v15, :cond_53

    .line 1737
    invoke-virtual {v6}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v18

    sub-long v18, v4, v18

    const-wide/32 v20, 0x5265c00

    cmp-long v10, v18, v20

    if-lez v10, :cond_4b

    move v10, v9

    goto :goto_4c

    :cond_4b
    const/4 v10, 0x0

    .line 1742
    :goto_4c
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v3, v12, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1744
    :cond_53
    invoke-virtual {v6}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v10

    if-ne v10, v9, :cond_9b

    .line 1745
    iget-object v9, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 1746
    invoke-interface {v9, v12, v1}, Lcom/android/server/usage/AppStandbyInternal;->getEstimatedLaunchTime(Ljava/lang/String;I)J

    move-result-wide v9

    cmp-long v15, v9, v4

    if-ltz v15, :cond_70

    const-wide v18, 0x7fffffffffffffffL

    cmp-long v15, v9, v18

    if-nez v15, :cond_6d

    goto :goto_70

    :cond_6d
    move v15, v14

    move-wide v13, v9

    goto :goto_88

    .line 1750
    :cond_70
    :goto_70
    invoke-virtual {v3, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    move v15, v14

    invoke-virtual {v6}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v13

    .line 1749
    invoke-static {v9, v13, v14}, Lcom/android/server/usage/UsageStatsService;->calculateNextLaunchTime(ZJ)J

    move-result-wide v13

    .line 1751
    iget-object v9, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v9, v12, v1, v13, v14}, Lcom/android/server/usage/AppStandbyInternal;->setEstimatedLaunchTime(Ljava/lang/String;IJ)V

    :goto_88
    add-long v18, v4, v16

    cmp-long v9, v13, v18

    if-gez v9, :cond_94

    .line 1762
    invoke-virtual {v0, v1, v12}, Lcom/android/server/usage/UsageStatsService;->stageChangedEstimatedLaunchTime(ILjava/lang/String;)Z

    move-result v9

    or-int/2addr v9, v15

    move v15, v9

    :cond_94
    sub-long/2addr v13, v4

    add-long/2addr v13, v7

    .line 1764
    invoke-virtual {v11, v12, v13, v14}, Lcom/android/server/utils/AlarmQueue;->addAlarm(Ljava/lang/Object;J)V

    move v14, v15

    goto :goto_9c

    :cond_9b
    move v15, v14

    .line 1734
    :goto_9c
    invoke-virtual {v2, v6}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    move-result v12

    move-wide/from16 v9, v16

    goto :goto_2d

    :cond_a3
    move v15, v14

    if-eqz v15, :cond_ad

    .line 1768
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_ad
    :goto_ad
    return-void
.end method

.method public final initializeUserUsageStatsServiceLocked(IJLjava/util/HashMap;Z)V
    .registers 9

    .line 799
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "usagestats"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 801
    new-instance v1, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0, p0}, Lcom/android/server/usage/UserUsageStatsService;-><init>(Landroid/content/Context;ILjava/io/File;Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;)V

    .line 804
    :try_start_15
    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/android/server/usage/UserUsageStatsService;->init(JLjava/util/HashMap;Z)V

    .line 805
    iget-object p2, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1d} :catch_1e

    return-void

    :catch_1e
    move-exception p2

    .line 807
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p0

    const-string p3, "UsageStatsService"

    if-nez p0, :cond_3e

    .line 811
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Attempted to initialize service for stopped or removed user "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 808
    :cond_3e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to initialized unlocked user "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    throw p2
.end method

.method public final isInstantApp(Ljava/lang/String;I)Z
    .registers 3

    .line 717
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManagerInternal;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isSupervisionEnabled(I)Z
    .registers 2

    .line 758
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getSupervisionManagerInternal()Landroid/app/supervision/SupervisionManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 759
    invoke-virtual {p0, p1}, Landroid/app/supervision/SupervisionManagerInternal;->isActiveSupervisionApp(I)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final loadGlobalComponentUsageLocked()V
    .registers 9

    .line 1007
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/server/usage/UsageStatsService;->COMMON_USAGE_STATS_DIR:Ljava/io/File;

    const-string v3, "globalcomponentusage"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1009
    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    const-string v2, "UsageStatsService"

    if-nez v1, :cond_2e

    .line 1010
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    sget-object v4, Lcom/android/server/usage/UsageStatsService;->LEGACY_COMMON_USAGE_STATS_DIR:Ljava/io/File;

    invoke-direct {v1, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1012
    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    if-nez v1, :cond_29

    goto :goto_65

    .line 1015
    :cond_29
    const-string v1, "Reading globalcomponentusage file from old location"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :cond_2e
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 1019
    :try_start_33
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_37} :catch_72

    .line 1020
    :try_start_37
    invoke-static {v3, v1}, Lcom/android/server/usage/UsageStatsProtoV2;->readGlobalComponentUsage(Ljava/io/InputStream;Ljava/util/Map;)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_66

    if-eqz v3, :cond_3f

    .line 1021
    :try_start_3c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 1024
    :cond_3f
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/Map$Entry;

    .line 1025
    array-length v3, v1

    const/4 v4, 0x0

    :goto_4b
    if-ge v4, v3, :cond_65

    .line 1029
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService;->mLastTimeComponentUsedGlobal:Ljava/util/Map;

    aget-object v6, v1, v4

    .line 1030
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aget-object v7, v1, v4

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 1029
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_62} :catch_72

    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    :cond_65
    :goto_65
    return-void

    :catchall_66
    move-exception p0

    if-eqz v3, :cond_71

    .line 1019
    :try_start_69
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_6d

    goto :goto_71

    :catchall_6d
    move-exception v1

    :try_start_6e
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_71
    :goto_71
    throw p0
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_72} :catch_72

    .line 1034
    :catch_72
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not read "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final loadPendingEventsLocked(ILjava/util/LinkedList;)V
    .registers 7

    .line 944
    new-instance p0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "usagestats"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 946
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_68

    .line 947
    array-length v0, p0

    if-nez v0, :cond_16

    goto :goto_68

    .line 950
    :cond_16
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 952
    array-length v0, p0

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_68

    .line 954
    new-instance v2, Landroid/util/AtomicFile;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 955
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 957
    :try_start_29
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2d} :catch_45

    .line 958
    :try_start_2d
    invoke-static {v2, v3}, Lcom/android/server/usage/UsageStatsProtoV2;->readPendingEvents(Ljava/io/InputStream;Ljava/util/LinkedList;)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_39

    if-eqz v2, :cond_35

    .line 959
    :try_start_32
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 961
    :cond_35
    invoke-virtual {p2, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_38} :catch_45

    goto :goto_65

    :catchall_39
    move-exception v3

    if-eqz v2, :cond_44

    .line 957
    :try_start_3c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_44

    :catchall_40
    move-exception v2

    :try_start_41
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_44
    :goto_44
    throw v3
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_45} :catch_45

    .line 965
    :catch_45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UsageStatsService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_68
    :goto_68
    return-void
.end method

.method public final logAppUsageEventReportedAtomLocked(IILjava/lang/String;)V
    .registers 5

    .line 1289
    const-string v0, ""

    .line 1290
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getAppUsageEventOccurredAtomEventType(I)I

    move-result p0

    const/16 p1, 0x10d

    .line 1289
    invoke-static {p1, p2, p3, v0, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final migrateStatsToSystemCeIfNeededLocked(I)V
    .registers 9

    .line 818
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "usagestats"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 820
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    const-string v2, "Usage stats directory does not exist: "

    if-nez v1, :cond_34

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_34

    .line 821
    :cond_1b
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 825
    :cond_34
    :goto_34
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "migrated"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 826
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x4

    const-string v5, "UsageStatsService"

    if-eqz v3, :cond_b0

    .line 827
    :try_start_45
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4f
    .catch Ljava/lang/NumberFormatException; {:try_start_45 .. :try_end_4f} :catch_60
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4f} :catch_60

    .line 828
    :try_start_4f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lt v6, v4, :cond_64

    .line 831
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->deleteLegacyUserDir(I)V
    :try_end_5c
    .catchall {:try_start_4f .. :try_end_5c} :catchall_62

    .line 835
    :try_start_5c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    return-void

    :catch_60
    move-exception v3

    goto :goto_71

    :catchall_62
    move-exception v6

    goto :goto_68

    :cond_64
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_67
    .catch Ljava/lang/NumberFormatException; {:try_start_5c .. :try_end_67} :catch_60
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_67} :catch_60

    goto :goto_b0

    .line 827
    :goto_68
    :try_start_68
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_6c

    goto :goto_70

    :catchall_6c
    move-exception v3

    :try_start_6d
    invoke-virtual {v6, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_70
    throw v6
    :try_end_71
    .catch Ljava/lang/NumberFormatException; {:try_start_6d .. :try_end_71} :catch_60
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_71} :catch_60

    .line 836
    :goto_71
    const-string v6, "Failed to read migration status file, possibly corrupted."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    .line 838
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_a5

    .line 843
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_b0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8c

    goto :goto_b0

    .line 844
    :cond_8c
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 839
    :cond_a5
    const-string p0, "Unable to delete usage stats CE directory."

    invoke-static {v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 851
    :cond_b0
    :goto_b0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting migration to system CE for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/server/usage/UsageStatsService;->LEGACY_USER_USAGE_STATS_DIR:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 853
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_d8

    .line 854
    invoke-static {v0, v2}, Lcom/android/server/usage/UsageStatsService;->copyRecursively(Ljava/io/File;Ljava/io/File;)V

    .line 857
    :cond_d8
    :try_start_d8
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_e2} :catch_10c

    .line 858
    :try_start_e2
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 859
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 860
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_f1
    .catchall {:try_start_e2 .. :try_end_f1} :catchall_10e

    .line 861
    :try_start_f1
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_f4} :catch_10c

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished migration to system CE for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->deleteLegacyUserDir(I)V

    return-void

    :catch_10c
    move-exception p0

    goto :goto_118

    :catchall_10e
    move-exception p0

    .line 857
    :try_start_10f
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_112
    .catchall {:try_start_10f .. :try_end_112} :catchall_113

    goto :goto_117

    :catchall_113
    move-exception p1

    :try_start_114
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_117
    throw p0
    :try_end_118
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_118} :catch_10c

    .line 862
    :goto_118
    const-string p1, "Failed to write migrated status file"

    invoke-static {v5, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public onBootPhase(I)V
    .registers 6

    .line 432
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, p1}, Lcom/android/server/usage/AppStandbyInternal;->onBootPhase(I)V

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_50

    .line 435
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    .line 438
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getSupervisionManagerInternal()Landroid/app/supervision/SupervisionManagerInternal;

    .line 440
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getShortcutServiceInternal()Landroid/content/pm/ShortcutServiceInternal;

    .line 441
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService;->mResponseStatsTracker:Lcom/android/server/usage/BroadcastResponseStatsTracker;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->onSystemServicesReady(Landroid/content/Context;)V

    .line 443
    sget-object p1, Lcom/android/server/usage/UsageStatsService;->KERNEL_COUNTER_FILE:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 445
    :try_start_23
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-interface {p1, v0, v3, v1, v2}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2f} :catch_30

    goto :goto_4d

    :catch_30
    move-exception p0

    .line 450
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 453
    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing procfs interface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UsageStatsService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :goto_4d
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->readUsageSourceSetting()V

    :cond_50
    return-void
.end method

.method public onNewUpdate(I)V
    .registers 2

    .line 708
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0, p1}, Lcom/android/server/usage/AppStandbyInternal;->initializeDefaultsForSystemApps(I)V

    return-void
.end method

.method public final onPackageRemoved(ILjava/lang/String;)V
    .registers 8

    .line 1404
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    monitor-enter v0

    .line 1405
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 1407
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_5d

    .line 1409
    :cond_11
    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_f

    .line 1411
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1412
    :try_start_15
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;

    if-eqz v0, :cond_25

    .line 1414
    invoke-virtual {v0, p2}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    goto :goto_25

    :catchall_23
    move-exception p0

    goto :goto_5b

    .line 1416
    :cond_25
    :goto_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_15 .. :try_end_26} :catchall_23

    .line 1419
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1420
    :try_start_29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1421
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 1424
    monitor-exit v0

    return-void

    :catchall_3b
    move-exception p0

    goto :goto_59

    .line 1427
    :cond_3d
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usage/UserUsageStatsService;

    if-nez v3, :cond_49

    .line 1429
    monitor-exit v0

    return-void

    .line 1432
    :cond_49
    invoke-virtual {v3, p2, v1, v2}, Lcom/android/server/usage/UserUsageStatsService;->onPackageRemoved(Ljava/lang/String;J)I

    move-result p2

    .line 1433
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_29 .. :try_end_4e} :catchall_3b

    const/4 v0, -0x1

    if-eq p2, v0, :cond_58

    .line 1437
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsIdleService;->schedulePruneJob(Landroid/content/Context;I)V

    :cond_58
    return-void

    .line 1433
    :goto_59
    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_3b

    throw p0

    .line 1416
    :goto_5b
    :try_start_5b
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_23

    throw p0

    .line 1409
    :goto_5d
    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_f

    throw p0
.end method

.method public onStart()V
    .registers 10

    .line 358
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    .line 359
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserManager:Landroid/os/UserManager;

    .line 360
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 361
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 362
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getUsageEventProcessingHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    .line 363
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mIoHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mIoHandler:Landroid/os/Handler;

    .line 365
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mInjector:Lcom/android/server/usage/UsageStatsService$Injector;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/usage/UsageStatsService$Injector;->getAppStandbyController(Landroid/content/Context;)Lcom/android/server/usage/AppStandbyInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 366
    new-instance v1, Lcom/android/server/usage/BroadcastResponseStatsTracker;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/server/usage/BroadcastResponseStatsTracker;-><init>(Lcom/android/server/usage/AppStandbyInternal;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mResponseStatsTracker:Lcom/android/server/usage/BroadcastResponseStatsTracker;

    .line 368
    new-instance v0, Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/usage/UsageStatsService$2;

    invoke-direct {v2, p0}, Lcom/android/server/usage/UsageStatsService$2;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    .line 400
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/usage/AppTimeLimitController;-><init>(Landroid/content/Context;Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    .line 402
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mStandbyChangeListener:Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    invoke-interface {v0, v1}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 404
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 407
    new-instance v6, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 408
    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService-IA;)V

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 412
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/android/server/usage/UsageStatsService$UidRemovedReceiver;

    invoke-direct {v4, p0, v0}, Lcom/android/server/usage/UsageStatsService$UidRemovedReceiver;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService-IA;)V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.UID_REMOVED"

    invoke-direct {v6, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 415
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    .line 416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    .line 418
    new-instance v1, Lcom/android/server/usage/UsageStatsService$LocalService;

    invoke-direct {v1, p0, v0}, Lcom/android/server/usage/UsageStatsService$LocalService;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService-IA;)V

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 419
    const-class v0, Lcom/android/server/usage/AppStandbyInternal;

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 420
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->publishBinderServices()V

    .line 422
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onStatsReloaded()V
    .registers 1

    .line 703
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0}, Lcom/android/server/usage/AppStandbyInternal;->postOneTimeCheckIdleStates()V

    return-void
.end method

.method public onStatsUpdated()V
    .registers 4

    .line 696
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    const-wide/32 v1, 0x124f80

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onUserRemoved(I)V
    .registers 6

    .line 1372
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1373
    :try_start_3
    const-string v1, "UsageStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and all data."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1375
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppTimeLimitController;->onUserRemoved(I)V

    .line 1376
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_69

    .line 1378
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1379
    :try_start_2c
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;

    if-eqz v0, :cond_41

    .line 1381
    invoke-virtual {v0}, Lcom/android/server/utils/AlarmQueue;->removeAllAlarms()V

    .line 1382
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_41

    :catchall_3f
    move-exception p0

    goto :goto_67

    .line 1384
    :cond_41
    :goto_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_2c .. :try_end_42} :catchall_3f

    .line 1387
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    monitor-enter v0

    .line 1388
    :try_start_45
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseSetArray;->remove(I)V

    .line 1389
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_45 .. :try_end_4b} :catchall_64

    .line 1390
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, p1}, Lcom/android/server/usage/AppStandbyInternal;->onUserRemoved(I)V

    .line 1391
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mResponseStatsTracker:Lcom/android/server/usage/BroadcastResponseStatsTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->onUserRemoved(I)V

    .line 1394
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/usage/UsageStatsIdleService;->cancelPruneJob(Landroid/content/Context;I)V

    .line 1395
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsIdleService;->cancelUpdateMappingsJob(Landroid/content/Context;I)V

    return-void

    :catchall_64
    move-exception p0

    .line 1389
    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw p0

    .line 1384
    :goto_67
    :try_start_67
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_3f

    throw p0

    :catchall_69
    move-exception p0

    .line 1376
    :try_start_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw p0
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 464
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 7

    .line 474
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    .line 476
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 478
    :try_start_7
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 479
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->persistPendingEventsLocked(I)V

    .line 480
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    goto :goto_65

    .line 484
    :cond_1a
    new-instance v1, Landroid/app/usage/UsageEvents$Event;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/16 v4, 0x1d

    invoke-direct {v1, v4, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 485
    const-string v2, "android"

    iput-object v2, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 486
    invoke-virtual {p0, v1, p1}, Lcom/android/server/usage/UsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;I)V

    .line 487
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/UserUsageStatsService;

    if-eqz v1, :cond_39

    .line 489
    invoke-virtual {v1}, Lcom/android/server/usage/UserUsageStatsService;->userStopped()V

    .line 491
    :cond_39
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 492
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 493
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_7 .. :try_end_49} :catchall_18

    .line 495
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    monitor-enter v1

    .line 496
    :try_start_4c
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/UsageStatsService$LaunchTimeAlarmQueue;

    if-eqz v0, :cond_61

    .line 498
    invoke-virtual {v0}, Lcom/android/server/utils/AlarmQueue;->removeAllAlarms()V

    .line 499
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mLaunchTimeAlarmQueues:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_61

    :catchall_5f
    move-exception p0

    goto :goto_63

    .line 501
    :cond_61
    :goto_61
    monitor-exit v1

    return-void

    :goto_63
    monitor-exit v1
    :try_end_64
    .catchall {:try_start_4c .. :try_end_64} :catchall_5f

    throw p0

    .line 493
    :goto_65
    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_18

    throw p0
.end method

.method public final onUserUnlocked(I)V
    .registers 12

    .line 510
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getInstalledPackages(I)Ljava/util/HashMap;

    move-result-object v4

    .line 512
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/usage/UsageStatsIdleService;->scheduleUpdateMappingsJob(Landroid/content/Context;I)V

    .line 514
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/usage/UsageStatsService;->shouldDeleteObsoleteData(Landroid/os/UserHandle;)Z

    move-result v5

    .line 515
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 520
    :try_start_16
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 522
    new-instance v7, Landroid/app/usage/UsageEvents$Event;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/16 v2, 0x1c

    invoke-direct {v7, v2, v0, v1}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 523
    const-string v0, "android"

    iput-object v0, v7, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 525
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->migrateStatsToSystemCeIfNeededLocked(I)V

    .line 528
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 529
    const-string v0, "loadPendingEvents"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 530
    invoke-virtual {p0, p1, v8}, Lcom/android/server/usage/UsageStatsService;->loadPendingEventsLocked(ILjava/util/LinkedList;)V

    .line 531
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 532
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_47
    .catchall {:try_start_16 .. :try_end_47} :catchall_89

    .line 533
    :try_start_47
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-eqz v0, :cond_5d

    .line 535
    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 536
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_5d

    :catchall_5a
    move-exception v0

    move-object p0, v0

    goto :goto_c1

    .line 538
    :cond_5d
    :goto_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_47 .. :try_end_5e} :catchall_5a

    .line 539
    :try_start_5e
    invoke-virtual {v8}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v9

    .line 541
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsService;->initializeUserUsageStatsServiceLocked(IJLjava/util/HashMap;Z)V

    .line 543
    invoke-virtual {v0, v1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object p0

    if-nez p0, :cond_8c

    .line 545
    const-string p0, "UsageStatsService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempted to unlock stopped or removed user "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    monitor-exit v6

    return-void

    :catchall_89
    move-exception v0

    move-object p0, v0

    goto :goto_c3

    .line 550
    :cond_8c
    :goto_8c
    invoke-virtual {v8}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_9c

    .line 551
    invoke-virtual {v8}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/usage/UsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;I)V

    goto :goto_8c

    .line 553
    :cond_9c
    invoke-virtual {v0, v7, v1}, Lcom/android/server/usage/UsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;I)V

    .line 556
    new-instance p1, Ljava/io/File;

    invoke-static {v1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "usagestats"

    invoke-direct {p1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    if-nez v9, :cond_b3

    .line 563
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 565
    :cond_b3
    monitor-exit v6
    :try_end_b4
    .catchall {:try_start_5e .. :try_end_b4} :catchall_89

    .line 567
    iget-object p0, v0, Lcom/android/server/usage/UsageStatsService;->mIoHandler:Landroid/os/Handler;

    const/16 p1, 0x8

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 538
    :goto_c1
    :try_start_c1
    monitor-exit v1
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_5a

    :try_start_c2
    throw p0

    .line 565
    :goto_c3
    monitor-exit v6
    :try_end_c4
    .catchall {:try_start_c2 .. :try_end_c4} :catchall_89

    throw p0
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    .line 469
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final parseUserIdFromArgs([Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)I
    .registers 5

    add-int/lit8 p2, p2, 0x1

    const/16 v0, -0x2710

    .line 2106
    :try_start_4
    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_a} :catch_2d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_a} :catch_2d

    .line 2111
    iget-object p2, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p2

    if-gez p2, :cond_19

    .line 2112
    const-string/jumbo p0, "the specified user does not exist."

    invoke-virtual {p3, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return v0

    .line 2115
    :cond_19
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    .line 2116
    const-string/jumbo p0, "the specified user is currently in a locked state."

    invoke-virtual {p3, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_2c
    return p1

    .line 2108
    :catch_2d
    const-string p0, "invalid user specified."

    invoke-virtual {p3, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return v0
.end method

.method public final persistGlobalComponentUsageLocked()V
    .registers 6

    .line 1039
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLastTimeComponentUsedGlobal:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1043
    :cond_9
    sget-object v0, Lcom/android/server/usage/UsageStatsService;->COMMON_USAGE_STATS_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_33

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_33

    .line 1044
    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Common usage stats directory does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1047
    :cond_33
    :goto_33
    new-instance v1, Ljava/io/File;

    const-string v2, "globalcomponentusage"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1049
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    .line 1052
    :try_start_40
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_44} :catch_57
    .catchall {:try_start_40 .. :try_end_44} :catchall_55

    .line 1053
    :try_start_44
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mLastTimeComponentUsedGlobal:Ljava/util/Map;

    invoke-static {v3, p0}, Lcom/android/server/usage/UsageStatsProtoV2;->writeGlobalComponentUsage(Ljava/io/OutputStream;Ljava/util/Map;)V

    .line 1054
    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4c} :catch_53
    .catchall {:try_start_44 .. :try_end_4c} :catchall_50

    .line 1059
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void

    :catchall_50
    move-exception p0

    move-object v2, v3

    goto :goto_75

    :catch_53
    move-object v2, v3

    goto :goto_57

    :catchall_55
    move-exception p0

    goto :goto_75

    .line 1057
    :catch_57
    :goto_57
    :try_start_57
    const-string p0, "UsageStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_57 .. :try_end_71} :catchall_55

    .line 1059
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void

    :goto_75
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1060
    throw p0
.end method

.method public final persistPendingEventsLocked(I)V
    .registers 8

    .line 972
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedList;

    if-eqz p0, :cond_c4

    .line 973
    invoke-virtual {p0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_c4

    .line 977
    :cond_12
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 978
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "usagestats"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 979
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    const-string v3, "UsageStatsService"

    if-nez v2, :cond_64

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_64

    .line 980
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 981
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to create "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 983
    :cond_47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " was already removed! Discarding pending events"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    return-void

    .line 988
    :cond_64
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pendingevents_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 990
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    .line 993
    :try_start_85
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_89} :catch_9c
    .catchall {:try_start_85 .. :try_end_89} :catchall_96

    .line 994
    :try_start_89
    invoke-static {v4, p0}, Lcom/android/server/usage/UsageStatsProtoV2;->writePendingEvents(Ljava/io/OutputStream;Ljava/util/LinkedList;)V

    .line 995
    invoke-virtual {v1, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8f} :catch_9b
    .catchall {:try_start_89 .. :try_end_8f} :catchall_98

    .line 997
    :try_start_8f
    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_92} :catch_9c
    .catchall {:try_start_8f .. :try_end_92} :catchall_96

    .line 1002
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void

    :catchall_96
    move-exception p0

    goto :goto_c0

    :catchall_98
    move-exception p0

    move-object v2, v4

    goto :goto_c0

    :catch_9b
    move-object v2, v4

    .line 999
    :catch_9c
    :try_start_9c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bc
    .catchall {:try_start_9c .. :try_end_bc} :catchall_96

    .line 1002
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void

    :goto_c0
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1003
    throw p0

    :cond_c4
    :goto_c4
    return-void
.end method

.method public prepareForPossibleShutdown()V
    .registers 5

    .line 937
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    const/16 v1, 0x1a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 938
    const-string v1, "android"

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 939
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 940
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final pruneUninstalledPackagesData(I)Z
    .registers 5

    .line 1445
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1446
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 1447
    monitor-exit v0

    return v2

    :catchall_12
    move-exception p0

    goto :goto_26

    .line 1450
    :cond_14
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/UserUsageStatsService;

    if-nez p0, :cond_20

    .line 1452
    monitor-exit v0

    return v2

    .line 1455
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->pruneUninstalledPackagesData()Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1456
    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_12

    throw p0
.end method

.method public publishBinderServices()V
    .registers 3

    .line 427
    new-instance v0, Lcom/android/server/usage/UsageStatsService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/UsageStatsService$BinderService;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService-IA;)V

    const-string/jumbo v1, "usagestats"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public queryConfigurationStats(IIJJ)Ljava/util/List;
    .registers 10

    .line 1522
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1523
    :try_start_3
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2b

    .line 1524
    const-string p0, "UsageStatsService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to query configuration stats for locked user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    monitor-exit v1

    return-object v2

    :catchall_28
    move-exception v0

    move-object p0, v0

    goto :goto_39

    .line 1528
    :cond_2b
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object p1

    if-nez p1, :cond_33

    .line 1530
    monitor-exit v1

    return-object v2

    .line 1532
    :cond_33
    invoke-virtual/range {p1 .. p6}, Lcom/android/server/usage/UserUsageStatsService;->queryConfigurationStats(IJJ)Ljava/util/List;

    move-result-object p0

    monitor-exit v1

    return-object p0

    .line 1533
    :goto_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_28

    throw p0
.end method

.method public final queryEarliestAppEvents(IJJI)Landroid/app/usage/UsageEvents;
    .registers 10

    .line 1605
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1606
    :try_start_3
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2b

    .line 1607
    const-string p0, "UsageStatsService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to query earliest events for locked user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    monitor-exit v1

    return-object v2

    :catchall_28
    move-exception v0

    move-object p0, v0

    goto :goto_39

    .line 1611
    :cond_2b
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object p1

    if-nez p1, :cond_33

    .line 1613
    monitor-exit v1

    return-object v2

    .line 1615
    :cond_33
    invoke-virtual/range {p1 .. p6}, Lcom/android/server/usage/UserUsageStatsService;->queryEarliestAppEvents(JJI)Landroid/app/usage/UsageEvents;

    move-result-object p0

    monitor-exit v1

    return-object p0

    .line 1616
    :goto_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_28

    throw p0
.end method

.method public final queryEarliestEventsForPackage(IJJLjava/lang/String;I)Landroid/app/usage/UsageEvents;
    .registers 11

    .line 1622
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1623
    :try_start_3
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2b

    .line 1624
    const-string p0, "UsageStatsService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to query earliest package events for locked user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    monitor-exit v1

    return-object v2

    :catchall_28
    move-exception v0

    move-object p0, v0

    goto :goto_39

    .line 1628
    :cond_2b
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object p1

    if-nez p1, :cond_33

    .line 1630
    monitor-exit v1

    return-object v2

    .line 1632
    :cond_33
    invoke-virtual/range {p1 .. p7}, Lcom/android/server/usage/UserUsageStatsService;->queryEarliestEventsForPackage(JJLjava/lang/String;I)Landroid/app/usage/UsageEvents;

    move-result-object p0

    monitor-exit v1

    return-object p0

    .line 1634
    :goto_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_28

    throw p0
.end method

.method public queryEventStats(IIJJ)Ljava/util/List;
    .registers 10

    .line 1541
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1542
    :try_start_3
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2b

    .line 1543
    const-string p0, "UsageStatsService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to query event stats for locked user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    monitor-exit v1

    return-object v2

    :catchall_28
    move-exception v0

    move-object p0, v0

    goto :goto_39

    .line 1547
    :cond_2b
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object p1

    if-nez p1, :cond_33

    .line 1549
    monitor-exit v1

    return-object v2

    .line 1551
    :cond_33
    invoke-virtual/range {p1 .. p6}, Lcom/android/server/usage/UserUsageStatsService;->queryEventStats(IJJ)Ljava/util/List;

    move-result-object p0

    monitor-exit v1

    return-object p0

    .line 1552
    :goto_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_28

    throw p0
.end method

.method public queryEvents(IJJI)Landroid/app/usage/UsageEvents;
    .registers 16

    .line 1559
    sget-object v7, Llibcore/util/EmptyArray;->INT:[I

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/usage/UsageStatsService;->queryEventsWithQueryFilters(IJJI[ILandroid/util/ArraySet;)Landroid/app/usage/UsageEvents;

    move-result-object p0

    return-object p0
.end method

.method public queryEventsForPackage(IJJLjava/lang/String;Z)Landroid/app/usage/UsageEvents;
    .registers 11

    .line 1588
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1589
    :try_start_3
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2b

    .line 1590
    const-string p0, "UsageStatsService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to query package events for locked user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    monitor-exit v1

    return-object v2

    :catchall_28
    move-exception v0

    move-object p0, v0

    goto :goto_39

    .line 1594
    :cond_2b
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object p1

    if-nez p1, :cond_33

    .line 1596
    monitor-exit v1

    return-object v2

    .line 1598
    :cond_33
    invoke-virtual/range {p1 .. p7}, Lcom/android/server/usage/UserUsageStatsService;->queryEventsForPackage(JJLjava/lang/String;Z)Landroid/app/usage/UsageEvents;

    move-result-object p0

    monitor-exit v1

    return-object p0

    .line 1599
    :goto_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_28

    throw p0
.end method

.method public queryEventsWithQueryFilters(IJJI[ILandroid/util/ArraySet;)Landroid/app/usage/UsageEvents;
    .registers 12

    .line 1568
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1569
    :try_start_3
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2b

    .line 1570
    const-string p0, "UsageStatsService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to query events for locked user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    monitor-exit v1

    return-object v2

    :catchall_28
    move-exception v0

    move-object p0, v0

    goto :goto_39

    .line 1574
    :cond_2b
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object p1

    if-nez p1, :cond_33

    .line 1576
    monitor-exit v1

    return-object v2

    .line 1578
    :cond_33
    invoke-virtual/range {p1 .. p8}, Lcom/android/server/usage/UserUsageStatsService;->queryEvents(JJI[ILandroid/util/ArraySet;)Landroid/app/usage/UsageEvents;

    move-result-object p0

    monitor-exit v1

    return-object p0

    .line 1579
    :goto_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_28

    throw p0
.end method

.method public queryUsageStats(IIJJZ)Ljava/util/List;
    .registers 17

    .line 1488
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1489
    :try_start_3
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2b

    .line 1490
    const-string p0, "UsageStatsService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to query usage stats for locked user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    monitor-exit v1

    return-object v2

    :catchall_28
    move-exception v0

    move-object p0, v0

    goto :goto_62

    .line 1494
    :cond_2b
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v3

    if-nez v3, :cond_33

    .line 1496
    monitor-exit v1

    return-object v2

    :cond_33
    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    .line 1498
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/usage/UserUsageStatsService;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_3e

    .line 1500
    monitor-exit v1

    return-object v2

    :cond_3e
    if-eqz p7, :cond_60

    .line 1506
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_46
    if-ltz p3, :cond_60

    .line 1507
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/usage/UsageStats;

    .line 1508
    iget-object v0, p4, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/usage/UsageStatsService;->isInstantApp(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1509
    invoke-virtual {p4}, Landroid/app/usage/UsageStats;->getObfuscatedForInstantApp()Landroid/app/usage/UsageStats;

    move-result-object p4

    invoke-interface {p2, p3, p4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5d
    add-int/lit8 p3, p3, -0x1

    goto :goto_46

    .line 1513
    :cond_60
    monitor-exit v1

    return-object p2

    .line 1514
    :goto_62
    monitor-exit v1
    :try_end_63
    .catchall {:try_start_3 .. :try_end_63} :catchall_28

    throw p0
.end method

.method public final readUsageSourceSetting()V
    .registers 5

    .line 618
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 619
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "app_time_limit_usage_source"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageSource:I

    .line 621
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public registerAppUsageLimitObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;I)V
    .registers 10

    .line 3193
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual/range {p0 .. p9}, Lcom/android/server/usage/AppTimeLimitController;->addAppUsageLimitObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;I)V

    return-void
.end method

.method public registerAppUsageObserver(II[Ljava/lang/String;JLandroid/app/PendingIntent;I)V
    .registers 8

    .line 3171
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/usage/AppTimeLimitController;->addAppUsageObserver(II[Ljava/lang/String;JLandroid/app/PendingIntent;I)V

    return-void
.end method

.method public final registerLaunchTimeChangedListener(Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;)V
    .registers 2

    .line 1846
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mEstimatedLaunchTimeChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V
    .registers 3

    .line 1826
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageEventListeners:Landroid/util/ArraySet;

    monitor-enter v0

    .line 1827
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageEventListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1828
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public registerUsageSessionObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .registers 11

    .line 3183
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual/range {p0 .. p10}, Lcom/android/server/usage/AppTimeLimitController;->addUsageSessionObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    return-void
.end method

.method public reportEvent(Landroid/app/usage/UsageEvents$Event;I)V
    .registers 16

    .line 1128
    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x17

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v0, v6, :cond_11

    if-eq v0, v5, :cond_11

    if-eq v0, v4, :cond_11

    move v0, v3

    goto :goto_19

    .line 1132
    :cond_11
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v7, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v7, v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .line 1138
    :goto_19
    iget-object v7, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz v7, :cond_28

    invoke-virtual {p0, v7, p2}, Lcom/android/server/usage/UsageStatsService;->isInstantApp(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 1139
    iget v7, p1, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    or-int/2addr v7, v6

    iput v7, p1, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    .line 1142
    :cond_28
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1144
    :try_start_2b
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7f

    .line 1145
    const-string p0, "UsageStatsService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to report event for locked user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " eventType:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " instanceId:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    monitor-exit v7

    return-void

    :catchall_7c
    move-exception p0

    goto/16 :goto_248

    .line 1152
    :cond_7f
    iget v8, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v9, 0x0

    const/16 v10, 0x9

    if-eq v8, v6, :cond_1d0

    if-eq v8, v5, :cond_189

    const/4 v1, 0x7

    if-eq v8, v1, :cond_172

    const/16 v1, 0x8

    if-eq v8, v1, :cond_16b

    if-eq v8, v10, :cond_16b

    const/16 v1, 0x13

    if-eq v8, v1, :cond_16b

    const/16 v1, 0x14

    if-eq v8, v1, :cond_16b

    if-eq v8, v4, :cond_a7

    const/16 v1, 0x18

    if-eq v8, v1, :cond_a5

    const/16 v0, 0x1f

    if-eq v8, v0, :cond_177

    goto/16 :goto_230

    .line 1213
    :cond_a5
    iput v4, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 1216
    :cond_a7
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 1217
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/UsageStatsService$ActivityData;

    if-nez v1, :cond_f0

    .line 1219
    const-string p0, "UsageStatsService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected activity event reported! ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " event : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " instanceId : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    monitor-exit v7

    return-void

    .line 1225
    :cond_f0
    iget v2, v1, Lcom/android/server/usage/UsageStatsService$ActivityData;->lastEvent:I

    if-eq v2, v5, :cond_f9

    .line 1226
    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, v5, v0, v2}, Lcom/android/server/usage/UsageStatsService;->logAppUsageEventReportedAtomLocked(IILjava/lang/String;)V

    .line 1231
    :cond_f9
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_fc
    .catchall {:try_start_2b .. :try_end_fc} :catchall_7c

    .line 1232
    :try_start_fc
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    iget v4, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 1233
    monitor-exit v0
    :try_end_107
    .catchall {:try_start_fc .. :try_end_107} :catchall_168

    if-eqz v2, :cond_143

    .line 1235
    :try_start_109
    monitor-enter v2
    :try_end_10a
    .catchall {:try_start_109 .. :try_end_10a} :catchall_7c

    .line 1236
    :try_start_10a
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v0

    move v4, v3

    :goto_10f
    if-ge v4, v0, :cond_13f

    .line 1239
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_117
    .catchall {:try_start_10a .. :try_end_117} :catchall_123

    .line 1241
    :try_start_117
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    iget-object v8, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 1242
    invoke-virtual {p0, v8, v5}, Lcom/android/server/usage/UsageStatsService;->buildFullToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1241
    invoke-virtual {v6, v5, p2}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStop(Ljava/lang/String;I)V
    :try_end_122
    .catch Ljava/lang/IllegalArgumentException; {:try_start_117 .. :try_end_122} :catch_125
    .catchall {:try_start_117 .. :try_end_122} :catchall_123

    goto :goto_13c

    :catchall_123
    move-exception p0

    goto :goto_141

    :catch_125
    move-exception v5

    .line 1244
    :try_start_126
    const-string v6, "UsageStatsService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to stop usage for during reporter death: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_13c
    add-int/lit8 v4, v4, 0x1

    goto :goto_10f

    .line 1248
    :cond_13f
    monitor-exit v2

    goto :goto_143

    :goto_141
    monitor-exit v2
    :try_end_142
    .catchall {:try_start_126 .. :try_end_142} :catchall_123

    :try_start_142
    throw p0

    .line 1250
    :cond_143
    :goto_143
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-nez v0, :cond_153

    .line 1252
    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService$ActivityData;->-$$Nest$fgetmTaskRootPackage(Lcom/android/server/usage/UsageStatsService$ActivityData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 1253
    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService$ActivityData;->-$$Nest$fgetmTaskRootClass(Lcom/android/server/usage/UsageStatsService$ActivityData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;
    :try_end_153
    .catchall {:try_start_142 .. :try_end_153} :catchall_7c

    .line 1256
    :cond_153
    :try_start_153
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService$ActivityData;->-$$Nest$fgetmUsageSourcePackage(Lcom/android/server/usage/UsageStatsService$ActivityData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStop(Ljava/lang/String;I)V
    :try_end_15c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_153 .. :try_end_15c} :catch_15e
    .catchall {:try_start_153 .. :try_end_15c} :catchall_7c

    goto/16 :goto_230

    :catch_15e
    move-exception v0

    .line 1258
    :try_start_15f
    const-string v1, "UsageStatsService"

    const-string v2, "Failed to note usage stop"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_166
    .catchall {:try_start_15f .. :try_end_166} :catchall_7c

    goto/16 :goto_230

    :catchall_168
    move-exception p0

    .line 1233
    :try_start_169
    monitor-exit v0
    :try_end_16a
    .catchall {:try_start_169 .. :try_end_16a} :catchall_168

    :try_start_16a
    throw p0

    .line 1273
    :cond_16b
    iget-object v1, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, v8, v0, v1}, Lcom/android/server/usage/UsageStatsService;->logAppUsageEventReportedAtomLocked(IILjava/lang/String;)V

    goto/16 :goto_230

    .line 1262
    :cond_172
    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/usage/UsageStatsService;->logAppUsageEventReportedAtomLocked(IILjava/lang/String;)V

    .line 1265
    :cond_177
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V

    .line 1266
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLastTimeComponentUsedGlobal:Ljava/util/Map;

    iget-object v1, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-wide v4, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_230

    .line 1187
    :cond_189
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/UsageStatsService$ActivityData;

    if-nez v1, :cond_1b8

    .line 1190
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUsageSourcePackage(Landroid/app/usage/UsageEvents$Event;)Ljava/lang/String;

    move-result-object v0
    :try_end_199
    .catchall {:try_start_16a .. :try_end_199} :catchall_7c

    .line 1192
    :try_start_199
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStart(Ljava/lang/String;I)V
    :try_end_19e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_199 .. :try_end_19e} :catch_19f
    .catchall {:try_start_199 .. :try_end_19e} :catchall_7c

    goto :goto_1a7

    :catch_19f
    move-exception v1

    .line 1194
    :try_start_1a0
    const-string v2, "UsageStatsService"

    const-string v4, "Failed to note usage start"

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1196
    :goto_1a7
    new-instance v1, Lcom/android/server/usage/UsageStatsService$ActivityData;

    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    invoke-direct {v1, v2, v4, v0, v9}, Lcom/android/server/usage/UsageStatsService$ActivityData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/usage/UsageStatsService-IA;)V

    .line 1198
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1bd

    .line 1200
    :cond_1b8
    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, v5, v0, v2}, Lcom/android/server/usage/UsageStatsService;->logAppUsageEventReportedAtomLocked(IILjava/lang/String;)V

    .line 1204
    :goto_1bd
    iput v5, v1, Lcom/android/server/usage/UsageStatsService$ActivityData;->lastEvent:I

    .line 1205
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-nez v0, :cond_230

    .line 1207
    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService$ActivityData;->-$$Nest$fgetmTaskRootPackage(Lcom/android/server/usage/UsageStatsService$ActivityData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 1208
    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService$ActivityData;->-$$Nest$fgetmTaskRootClass(Lcom/android/server/usage/UsageStatsService$ActivityData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    goto :goto_230

    .line 1154
    :cond_1d0
    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, v6, v0, v4}, Lcom/android/server/usage/UsageStatsService;->logAppUsageEventReportedAtomLocked(IILjava/lang/String;)V

    .line 1157
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    iget v4, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e0

    goto :goto_230

    .line 1158
    :cond_1e0
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getUsageSourcePackage(Landroid/app/usage/UsageEvents$Event;)Ljava/lang/String;

    move-result-object v0
    :try_end_1e4
    .catchall {:try_start_1a0 .. :try_end_1e4} :catchall_7c

    .line 1160
    :try_start_1e4
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v4, v0, p2}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStart(Ljava/lang/String;I)V
    :try_end_1e9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e4 .. :try_end_1e9} :catch_1ea
    .catchall {:try_start_1e4 .. :try_end_1e9} :catchall_7c

    goto :goto_1f2

    :catch_1ea
    move-exception v4

    .line 1162
    :try_start_1eb
    const-string v5, "UsageStatsService"

    const-string v8, "Failed to note usage start"

    invoke-static {v5, v8, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1164
    :goto_1f2
    new-instance v4, Lcom/android/server/usage/UsageStatsService$ActivityData;

    iget-object v5, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    iget-object v8, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    invoke-direct {v4, v5, v8, v0, v9}, Lcom/android/server/usage/UsageStatsService$ActivityData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/usage/UsageStatsService-IA;)V

    .line 1166
    iput v6, v4, Lcom/android/server/usage/UsageStatsService$ActivityData;->lastEvent:I

    .line 1167
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mVisibleActivities:Landroid/util/SparseArray;

    iget v5, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1168
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 1169
    invoke-interface {v0, v4, p2}, Lcom/android/server/usage/AppStandbyInternal;->getEstimatedLaunchTime(Ljava/lang/String;I)J

    move-result-wide v4

    .line 1170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v0, v4, v8

    if-ltz v0, :cond_21c

    const-wide/32 v11, 0x240c8400

    add-long/2addr v8, v11

    cmp-long v0, v4, v8

    if-lez v0, :cond_230

    .line 1180
    :cond_21c
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-interface {v0, v4, p2, v1, v2}, Lcom/android/server/usage/AppStandbyInternal;->setEstimatedLaunchTime(Ljava/lang/String;IJ)V

    .line 1181
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lcom/android/server/usage/UsageStatsService;->stageChangedEstimatedLaunchTime(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_230

    .line 1182
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1277
    :cond_230
    :goto_230
    invoke-virtual {p0, p2}, Lcom/android/server/usage/UsageStatsService;->getUserUsageStatsServiceLocked(I)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v0

    if-nez v0, :cond_238

    .line 1279
    monitor-exit v7

    return-void

    .line 1281
    :cond_238
    invoke-virtual {v0, p1}, Lcom/android/server/usage/UserUsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;)V

    .line 1282
    monitor-exit v7
    :try_end_23c
    .catchall {:try_start_1eb .. :try_end_23c} :catchall_7c

    .line 1284
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mIoHandler:Landroid/os/Handler;

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 1282
    :goto_248
    :try_start_248
    monitor-exit v7
    :try_end_249
    .catchall {:try_start_248 .. :try_end_249} :catchall_7c

    throw p0
.end method

.method public final reportEventOrAddToQueue(ILandroid/app/usage/UsageEvents$Event;)V
    .registers 8

    .line 1064
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1065
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_17
    const-wide/32 v0, 0x80000

    .line 1069
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1070
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "usageStatsQueueEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 1071
    invoke-static {v3}, Lcom/android/server/usage/UserUsageStatsService;->eventToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1072
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1074
    :cond_43
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1075
    :try_start_46
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    if-nez v3, :cond_a9

    .line 1079
    const-class v3, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerInternal;

    if-eqz v3, :cond_6e

    .line 1080
    invoke-virtual {v3, p1}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v3

    if-nez v3, :cond_61

    goto :goto_6e

    .line 1087
    :cond_61
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 1088
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mReportedEvents:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_a9

    :catchall_6c
    move-exception p0

    goto :goto_c0

    .line 1082
    :cond_6e
    :goto_6e
    const-string p0, "UsageStatsService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to report event for non-existent user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " eventType:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    monitor-exit v2

    return-void

    .line 1090
    :cond_a9
    :goto_a9
    invoke-virtual {v3, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1091
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_bb

    .line 1094
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const-wide/32 v3, 0x124f80

    invoke-virtual {p0, p2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1096
    :cond_bb
    monitor-exit v2
    :try_end_bc
    .catchall {:try_start_46 .. :try_end_bc} :catchall_6c

    .line 1097
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 1096
    :goto_c0
    :try_start_c0
    monitor-exit v2
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_6c

    throw p0
.end method

.method public reportEventToAllUserId(Landroid/app/usage/UsageEvents$Event;)V
    .registers 7

    .line 1341
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1342
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1f

    .line 1344
    new-instance v3, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v3, p1}, Landroid/app/usage/UsageEvents$Event;-><init>(Landroid/app/usage/UsageEvents$Event;)V

    .line 1345
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p0, v4, v3}, Lcom/android/server/usage/UsageStatsService;->reportEventOrAddToQueue(ILandroid/app/usage/UsageEvents$Event;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :catchall_1d
    move-exception p0

    goto :goto_21

    .line 1347
    :cond_1f
    monitor-exit v0

    return-void

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_1d

    throw p0
.end method

.method public final sameApp(IILjava/lang/String;)Z
    .registers 6

    .line 712
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p3, v0, v1, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final setEstimatedLaunchTime(ILjava/lang/String;J)V
    .registers 7

    .line 1774
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_9

    goto :goto_25

    .line 1782
    :cond_9
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, p2, p1}, Lcom/android/server/usage/AppStandbyInternal;->getEstimatedLaunchTime(Ljava/lang/String;I)J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_25

    .line 1784
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0, p2, p1, p3, p4}, Lcom/android/server/usage/AppStandbyInternal;->setEstimatedLaunchTime(Ljava/lang/String;IJ)V

    .line 1785
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->stageChangedEstimatedLaunchTime(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 1786
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_25
    :goto_25
    return-void
.end method

.method public final setEstimatedLaunchTimes(ILjava/util/List;)V
    .registers 12

    .line 1793
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1794
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_b
    if-ltz v2, :cond_39

    .line 1795
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/AppLaunchEstimateInfo;

    .line 1796
    iget-wide v5, v4, Landroid/app/usage/AppLaunchEstimateInfo;->estimatedLaunchTime:J

    cmp-long v5, v5, v0

    if-gtz v5, :cond_1a

    goto :goto_36

    .line 1803
    :cond_1a
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    iget-object v6, v4, Landroid/app/usage/AppLaunchEstimateInfo;->packageName:Ljava/lang/String;

    .line 1804
    invoke-interface {v5, v6, p1}, Lcom/android/server/usage/AppStandbyInternal;->getEstimatedLaunchTime(Ljava/lang/String;I)J

    move-result-wide v5

    .line 1805
    iget-wide v7, v4, Landroid/app/usage/AppLaunchEstimateInfo;->estimatedLaunchTime:J

    cmp-long v5, v7, v5

    if-eqz v5, :cond_36

    .line 1806
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    iget-object v6, v4, Landroid/app/usage/AppLaunchEstimateInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6, p1, v7, v8}, Lcom/android/server/usage/AppStandbyInternal;->setEstimatedLaunchTime(Ljava/lang/String;IJ)V

    .line 1808
    iget-object v4, v4, Landroid/app/usage/AppLaunchEstimateInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v4}, Lcom/android/server/usage/UsageStatsService;->stageChangedEstimatedLaunchTime(ILjava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    :cond_36
    :goto_36
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    :cond_39
    if-eqz v3, :cond_42

    .line 1812
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_42
    return-void
.end method

.method public final shouldDeleteObsoleteData(Landroid/os/UserHandle;)Z
    .registers 2

    .line 1859
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getSupervisionManagerInternal()Landroid/app/supervision/SupervisionManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 1862
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/supervision/SupervisionManagerInternal;->isSupervisionEnabledForUser(I)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public final shouldHideLocusIdEvents(II)Z
    .registers 5

    const/16 v0, 0x3e8

    const/4 v1, 0x0

    if-ne p2, v0, :cond_6

    return v1

    .line 738
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.ACCESS_LOCUS_ID_USAGE_STATS"

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    return v1
.end method

.method public final shouldHideShortcutInvocationEvents(ILjava/lang/String;II)Z
    .registers 6

    .line 726
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getShortcutServiceInternal()Landroid/content/pm/ShortcutServiceInternal;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_d

    .line 728
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/pm/ShortcutServiceInternal;->hasShortcutHostPermission(ILjava/lang/String;II)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_d
    return v0
.end method

.method public final shouldObfuscateInstantAppsForCaller(II)Z
    .registers 3

    .line 721
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->canAccessInstantApps(II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final shouldObfuscateNotificationEvents(II)Z
    .registers 5

    const/16 v0, 0x3e8

    const/4 v1, 0x0

    if-ne p2, v0, :cond_6

    return v1

    .line 752
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.MANAGE_NOTIFICATIONS"

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    return v1
.end method

.method public shutdown()V
    .registers 6

    .line 914
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 915
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 916
    new-instance v1, Landroid/app/usage/UsageEvents$Event;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/16 v4, 0x1a

    invoke-direct {v1, v4, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 917
    const-string v2, "android"

    iput-object v2, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 919
    invoke-virtual {p0, v1}, Lcom/android/server/usage/UsageStatsService;->reportEventToAllUserId(Landroid/app/usage/UsageEvents$Event;)V

    .line 920
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V

    .line 921
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->persistGlobalComponentUsageLocked()V

    .line 922
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_28

    .line 924
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0}, Lcom/android/server/usage/AppStandbyInternal;->flushToDisk()V

    return-void

    :catchall_28
    move-exception p0

    .line 922
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public final stageChangedEstimatedLaunchTime(ILjava/lang/String;)Z
    .registers 4

    .line 1817
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    monitor-enter v0

    .line 1818
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mPendingLaunchTimeChangePackages:Landroid/util/SparseSetArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 1819
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public unregisterAppUsageLimitObserver(III)V
    .registers 4

    .line 3198
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController;->removeAppUsageLimitObserver(III)V

    return-void
.end method

.method public unregisterAppUsageObserver(III)V
    .registers 4

    .line 3177
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController;->removeAppUsageObserver(III)V

    return-void
.end method

.method public final unregisterListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V
    .registers 3

    .line 1836
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageEventListeners:Landroid/util/ArraySet;

    monitor-enter v0

    .line 1837
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUsageEventListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1838
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public unregisterUsageSessionObserver(III)V
    .registers 4

    .line 3188
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController;->removeUsageSessionObserver(III)V

    return-void
.end method

.method public final updatePackageMappingsData(I)Z
    .registers 6

    .line 1464
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/usage/UsageStatsService;->shouldDeleteObsoleteData(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p0, 0x1

    return p0

    .line 1468
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsService;->getInstalledPackages(I)Ljava/util/HashMap;

    move-result-object v0

    .line 1469
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1470
    :try_start_13
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUserUnlockedStates:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_24

    .line 1471
    monitor-exit v1

    return v3

    :catchall_22
    move-exception p0

    goto :goto_36

    .line 1474
    :cond_24
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/UserUsageStatsService;

    if-nez p0, :cond_30

    .line 1476
    monitor-exit v1

    return v3

    .line 1479
    :cond_30
    invoke-virtual {p0, v0}, Lcom/android/server/usage/UserUsageStatsService;->updatePackageMappingsLocked(Ljava/util/HashMap;)Z

    move-result p0

    monitor-exit v1

    return p0

    .line 1480
    :goto_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_13 .. :try_end_37} :catchall_22

    throw p0
.end method
