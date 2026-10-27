.class public Lcom/android/server/PackageWatchdog;
.super Ljava/lang/Object;
.source "PackageWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PackageWatchdog$BootThreshold;,
        Lcom/android/server/PackageWatchdog$MonitoredPackage;,
        Lcom/android/server/PackageWatchdog$HealthCheckState;,
        Lcom/android/server/PackageWatchdog$ObserverInternal;,
        Lcom/android/server/PackageWatchdog$PackageHealthObserver;,
        Lcom/android/server/PackageWatchdog$PackageHealthObserverImpact;,
        Lcom/android/server/PackageWatchdog$SystemClock;,
        Lcom/android/server/PackageWatchdog$FailureReasons;
    }
.end annotation


# static fields
.field private static final ATTR_DURATION:Ljava/lang/String; = "duration"

.field private static final ATTR_EXPLICIT_HEALTH_CHECK_DURATION:Ljava/lang/String; = "health-check-duration"

.field private static final ATTR_MITIGATION_CALLS:Ljava/lang/String; = "mitigation-calls"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PASSED_HEALTH_CHECK:Ljava/lang/String; = "passed-health-check"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final DB_VERSION:I = 0x1

.field static final DEFAULT_BOOT_LOOP_TRIGGER_COUNT:I = 0x5

.field static final DEFAULT_BOOT_LOOP_TRIGGER_WINDOW_MS:J

.field static final DEFAULT_DEESCALATION_WINDOW_MS:J

.field private static final DEFAULT_EXPLICIT_HEALTH_CHECK_ENABLED:Z = true

.field static final DEFAULT_OBSERVING_DURATION_MS:J

.field static final DEFAULT_TRIGGER_FAILURE_COUNT:I = 0x5

.field static final DEFAULT_TRIGGER_FAILURE_DURATION_MS:I

.field public static final FAILURE_REASON_APP_CRASH:I = 0x3

.field public static final FAILURE_REASON_APP_NOT_RESPONDING:I = 0x4

.field public static final FAILURE_REASON_EXPLICIT_HEALTH_CHECK:I = 0x2

.field public static final FAILURE_REASON_NATIVE_CRASH:I = 0x1

.field public static final FAILURE_REASON_UNKNOWN:I = 0x0

.field private static final METADATA_FILE:Ljava/lang/String; = "/metadata/watchdog/mitigation_count.txt"

.field private static final NATIVE_CRASH_POLLING_INTERVAL_MILLIS:J

.field private static final NUMBER_OF_NATIVE_CRASH_POLLS:J = 0xaL

.field static final PROPERTY_WATCHDOG_EXPLICIT_HEALTH_CHECK_ENABLED:Ljava/lang/String; = "watchdog_explicit_health_check_enabled"

.field static final PROPERTY_WATCHDOG_TRIGGER_DURATION_MILLIS:Ljava/lang/String; = "watchdog_trigger_failure_duration_millis"

.field static final PROPERTY_WATCHDOG_TRIGGER_FAILURE_COUNT:Ljava/lang/String; = "watchdog_trigger_failure_count"

.field private static final PROP_BOOT_MITIGATION_COUNT:Ljava/lang/String; = "sys.boot_mitigation_count"

.field private static final PROP_BOOT_MITIGATION_WINDOW_START:Ljava/lang/String; = "sys.boot_mitigation_start"

.field private static final PROP_RESCUE_BOOT_COUNT:Ljava/lang/String; = "sys.rescue_boot_count"

.field private static final PROP_RESCUE_BOOT_START:Ljava/lang/String; = "sys.rescue_boot_start"

.field private static final TAG:Ljava/lang/String; = "PackageWatchdog"

.field private static final TAG_OBSERVER:Ljava/lang/String; = "observer"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_PACKAGE_WATCHDOG:Ljava/lang/String; = "package-watchdog"

.field private static sPackageWatchdog:Lcom/android/server/PackageWatchdog;


# instance fields
.field private final mAllObservers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageWatchdog$ObserverInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final mBootThreshold:Lcom/android/server/PackageWatchdog$BootThreshold;

.field private final mConnectivityModuleConnector:Landroid/net/ConnectivityModuleConnector;

.field private final mContext:Landroid/content/Context;

.field private final mHealthCheckController:Lcom/android/server/ExplicitHealthCheckController;

.field private mIsHealthCheckEnabled:Z

.field private mIsPackagesReady:Z

.field private final mLock:Ljava/lang/Object;

.field private final mLongTaskHandler:Landroid/os/Handler;

.field private mNumberOfNativeCrashPollsRemaining:J

.field private final mOnPropertyChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private final mPolicyFile:Landroid/util/AtomicFile;

.field private mRequestedHealthCheckPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSaveToFile:Ljava/lang/Runnable;

.field private final mShortTaskHandler:Landroid/os/Handler;

.field private final mSyncRequests:Ljava/lang/Runnable;

.field private mSyncRequired:Z

.field private final mSyncStateWithScheduledReason:Ljava/lang/Runnable;

.field private final mSystemClock:Lcom/android/server/PackageWatchdog$SystemClock;

.field private mTriggerFailureCount:I

.field private mTriggerFailureDurationMs:I

.field private mUptimeAtLastStateSync:J


# direct methods
.method public static synthetic $r8$lambda$AMVDPZHVujkiZUWfDH32AfGzgt8(Lcom/android/server/PackageWatchdog;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->onSyncRequestNotified()V

    return-void
.end method

.method public static synthetic $r8$lambda$Mx_Y1uqlcwGnBszKo_ph_MI-E0g(Lcom/android/server/PackageWatchdog;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->syncStateWithScheduledReason()V

    return-void
.end method

.method public static synthetic $r8$lambda$sB1AaENOScp2w-CsmK3S4QVgWFE(Lcom/android/server/PackageWatchdog;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->saveToFile()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$w1vQJKtbyU69AvL6u4s8Z-dPb8o(Lcom/android/server/PackageWatchdog;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/PackageWatchdog;->onPropertyChanged(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ynWNQmq6XL4jo-iPgeNDgXz9iyk(Lcom/android/server/PackageWatchdog;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->syncRequests()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmSystemClock(Lcom/android/server/PackageWatchdog;)Lcom/android/server/PackageWatchdog$SystemClock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/PackageWatchdog;->mSystemClock:Lcom/android/server/PackageWatchdog$SystemClock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTriggerFailureCount(Lcom/android/server/PackageWatchdog;)I
    .registers 1

    iget p0, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTriggerFailureDurationMs(Lcom/android/server/PackageWatchdog;)I
    .registers 1

    iget p0, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureDurationMs:I

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetsPackageWatchdog()Lcom/android/server/PackageWatchdog;
    .registers 1

    sget-object v0, Lcom/android/server/PackageWatchdog;->sPackageWatchdog:Lcom/android/server/PackageWatchdog;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 93
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 94
    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/PackageWatchdog;->NATIVE_CRASH_POLLING_INTERVAL_MILLIS:J

    .line 116
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 117
    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    long-to-int v0, v3

    sput v0, Lcom/android/server/PackageWatchdog;->DEFAULT_TRIGGER_FAILURE_DURATION_MS:I

    .line 122
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/PackageWatchdog;->DEFAULT_OBSERVING_DURATION_MS:J

    .line 125
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/PackageWatchdog;->DEFAULT_DEESCALATION_WINDOW_MS:J

    .line 131
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/PackageWatchdog;->DEFAULT_BOOT_LOOP_TRIGGER_WINDOW_MS:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .line 216
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    .line 217
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "system"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v3, "package-watchdog.xml"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    new-instance v3, Landroid/os/Handler;

    .line 219
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/server/ExplicitHealthCheckController;

    invoke-direct {v5, p1}, Lcom/android/server/ExplicitHealthCheckController;-><init>(Landroid/content/Context;)V

    .line 221
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object v6

    new-instance v7, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda3;

    invoke-direct {v7}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda3;-><init>()V

    .line 216
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/PackageWatchdog;-><init>(Landroid/content/Context;Landroid/util/AtomicFile;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/server/ExplicitHealthCheckController;Landroid/net/ConnectivityModuleConnector;Lcom/android/server/PackageWatchdog$SystemClock;)V

    .line 223
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AtomicFile;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/server/ExplicitHealthCheckController;Landroid/net/ConnectivityModuleConnector;Lcom/android/server/PackageWatchdog$SystemClock;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policyFile"    # Landroid/util/AtomicFile;
    .param p3, "shortTaskHandler"    # Landroid/os/Handler;
    .param p4, "longTaskHandler"    # Landroid/os/Handler;
    .param p5, "controller"    # Lcom/android/server/ExplicitHealthCheckController;
    .param p6, "connectivityModuleConnector"    # Landroid/net/ConnectivityModuleConnector;
    .param p7, "clock"    # Lcom/android/server/PackageWatchdog$SystemClock;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    .line 174
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    .line 180
    new-instance v0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/PackageWatchdog;)V

    iput-object v0, p0, Lcom/android/server/PackageWatchdog;->mSyncRequests:Ljava/lang/Runnable;

    .line 181
    new-instance v0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/PackageWatchdog;)V

    iput-object v0, p0, Lcom/android/server/PackageWatchdog;->mSyncStateWithScheduledReason:Ljava/lang/Runnable;

    .line 182
    new-instance v0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/PackageWatchdog;)V

    iput-object v0, p0, Lcom/android/server/PackageWatchdog;->mSaveToFile:Ljava/lang/Runnable;

    .line 185
    new-instance v0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/PackageWatchdog;)V

    iput-object v0, p0, Lcom/android/server/PackageWatchdog;->mOnPropertyChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 189
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageWatchdog;->mRequestedHealthCheckPackages:Ljava/util/Set;

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PackageWatchdog;->mIsHealthCheckEnabled:Z

    .line 196
    sget v0, Lcom/android/server/PackageWatchdog;->DEFAULT_TRIGGER_FAILURE_DURATION_MS:I

    iput v0, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureDurationMs:I

    .line 198
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureCount:I

    .line 205
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/PackageWatchdog;->mSyncRequired:Z

    .line 232
    iput-object p1, p0, Lcom/android/server/PackageWatchdog;->mContext:Landroid/content/Context;

    .line 233
    iput-object p2, p0, Lcom/android/server/PackageWatchdog;->mPolicyFile:Landroid/util/AtomicFile;

    .line 234
    iput-object p3, p0, Lcom/android/server/PackageWatchdog;->mShortTaskHandler:Landroid/os/Handler;

    .line 235
    iput-object p4, p0, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    .line 236
    iput-object p5, p0, Lcom/android/server/PackageWatchdog;->mHealthCheckController:Lcom/android/server/ExplicitHealthCheckController;

    .line 237
    iput-object p6, p0, Lcom/android/server/PackageWatchdog;->mConnectivityModuleConnector:Landroid/net/ConnectivityModuleConnector;

    .line 238
    iput-object p7, p0, Lcom/android/server/PackageWatchdog;->mSystemClock:Lcom/android/server/PackageWatchdog$SystemClock;

    .line 239
    const-wide/16 v1, 0xa

    iput-wide v1, p0, Lcom/android/server/PackageWatchdog;->mNumberOfNativeCrashPollsRemaining:J

    .line 240
    new-instance v1, Lcom/android/server/PackageWatchdog$BootThreshold;

    sget-wide v2, Lcom/android/server/PackageWatchdog;->DEFAULT_BOOT_LOOP_TRIGGER_WINDOW_MS:J

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/android/server/PackageWatchdog$BootThreshold;-><init>(Lcom/android/server/PackageWatchdog;IJ)V

    iput-object v1, p0, Lcom/android/server/PackageWatchdog;->mBootThreshold:Lcom/android/server/PackageWatchdog$BootThreshold;

    .line 242
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->loadFromFile()V

    .line 243
    sput-object p0, Lcom/android/server/PackageWatchdog;->sPackageWatchdog:Lcom/android/server/PackageWatchdog;

    .line 244
    return-void
.end method

.method private checkAndMitigateNativeCrashes()V
    .registers 5

    .line 566
    iget-wide v0, p0, Lcom/android/server/PackageWatchdog;->mNumberOfNativeCrashPollsRemaining:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/PackageWatchdog;->mNumberOfNativeCrashPollsRemaining:J

    .line 568
    const-string/jumbo v0, "sys.init.updatable_crashing"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 570
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/PackageWatchdog;->onPackageFailure(Ljava/util/List;I)V

    goto :goto_31

    .line 574
    :cond_1d
    iget-wide v0, p0, Lcom/android/server/PackageWatchdog;->mNumberOfNativeCrashPollsRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_31

    .line 575
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mShortTaskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/PackageWatchdog;)V

    sget-wide v2, Lcom/android/server/PackageWatchdog;->NATIVE_CRASH_POLLING_INTERVAL_MILLIS:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 579
    :cond_31
    :goto_31
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 248
    const-class v0, Lcom/android/server/PackageWatchdog;

    monitor-enter v0

    .line 249
    :try_start_3
    sget-object v1, Lcom/android/server/PackageWatchdog;->sPackageWatchdog:Lcom/android/server/PackageWatchdog;

    if-nez v1, :cond_c

    .line 250
    new-instance v1, Lcom/android/server/PackageWatchdog;

    invoke-direct {v1, p0}, Lcom/android/server/PackageWatchdog;-><init>(Landroid/content/Context;)V

    .line 252
    :cond_c
    sget-object v1, Lcom/android/server/PackageWatchdog;->sPackageWatchdog:Lcom/android/server/PackageWatchdog;

    monitor-exit v0

    return-object v1

    .line 253
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private getNextStateSyncMillisLocked()J
    .registers 10

    .line 884
    const-wide v0, 0x7fffffffffffffffL

    .line 885
    .local v0, "shortestDurationMs":J
    const/4 v2, 0x0

    .local v2, "oIndex":I
    :goto_6
    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_36

    .line 886
    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 887
    invoke-virtual {v3}, Lcom/android/server/PackageWatchdog$ObserverInternal;->getMonitoredPackages()Landroid/util/ArrayMap;

    move-result-object v3

    .line 888
    .local v3, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    const/4 v4, 0x0

    .local v4, "pIndex":I
    :goto_1b
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_33

    .line 889
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 890
    .local v5, "mp":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    invoke-virtual {v5}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getShortestScheduleDurationMsLocked()J

    move-result-wide v6

    .line 891
    .local v6, "duration":J
    cmp-long v8, v6, v0

    if-gez v8, :cond_30

    .line 892
    move-wide v0, v6

    .line 888
    .end local v5    # "mp":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    .end local v6    # "duration":J
    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 885
    .end local v3    # "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    .end local v4    # "pIndex":I
    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 896
    .end local v2    # "oIndex":I
    :cond_36
    return-wide v0
.end method

.method private getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 956
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 962
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/high16 v1, 0x400000

    :try_start_8
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_c} :catch_d

    return-object v1

    .line 963
    :catch_d
    move-exception v1

    .line 964
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    return-object v2
.end method

.method private getPackagesPendingHealthChecksLocked()Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 824
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 825
    .local v0, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 826
    .local v1, "oit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/PackageWatchdog$ObserverInternal;>;"
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 827
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 828
    .local v2, "observer":Lcom/android/server/PackageWatchdog$ObserverInternal;
    nop

    .line 829
    invoke-virtual {v2}, Lcom/android/server/PackageWatchdog$ObserverInternal;->getMonitoredPackages()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 830
    .local v3, "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 831
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 832
    .local v4, "monitoredPackage":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    invoke-static {v4}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->-$$Nest$mgetName(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Ljava/lang/String;

    move-result-object v5

    .line 833
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->isPendingHealthChecksLocked()Z

    move-result v6

    if-eqz v6, :cond_41

    .line 834
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 836
    .end local v4    # "monitoredPackage":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_41
    goto :goto_28

    .line 837
    .end local v2    # "observer":Lcom/android/server/PackageWatchdog$ObserverInternal;
    .end local v3    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    :cond_42
    goto :goto_f

    .line 838
    :cond_43
    return-object v0
.end method

.method private getVersionedPackage(Ljava/lang/String;)Landroid/content/pm/VersionedPackage;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 970
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 971
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_20

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_20

    .line 975
    :cond_10
    :try_start_10
    invoke-direct {p0, p1}, Lcom/android/server/PackageWatchdog;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    .line 976
    .local v2, "versionCode":J
    new-instance v4, Landroid/content/pm/VersionedPackage;

    invoke-direct {v4, p1, v2, v3}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_1d} :catch_1e

    return-object v4

    .line 977
    .end local v2    # "versionCode":J
    :catch_1e
    move-exception v2

    .line 978
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v1

    .line 972
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_20
    :goto_20
    return-object v1
.end method

.method private handleFailureImmediately(Ljava/util/List;I)V
    .registers 10
    .param p2, "failureReason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;I)V"
        }
    .end annotation

    .line 470
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/VersionedPackage;

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 471
    .local v0, "failingPackage":Landroid/content/pm/VersionedPackage;
    :goto_f
    const/4 v1, 0x0

    .line 472
    .local v1, "currentObserverToNotify":Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    const v2, 0x7fffffff

    .line 473
    .local v2, "currentObserverImpact":I
    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 474
    .local v4, "observer":Lcom/android/server/PackageWatchdog$ObserverInternal;
    iget-object v6, v4, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 475
    .local v6, "registeredObserver":Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    if-eqz v6, :cond_38

    .line 476
    invoke-interface {v6, v0, p2, v5}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->onHealthCheckFailed(Landroid/content/pm/VersionedPackage;II)I

    move-result v5

    .line 478
    .local v5, "impact":I
    if-eqz v5, :cond_38

    if-ge v5, v2, :cond_38

    .line 480
    move-object v1, v6

    .line 481
    move v2, v5

    .line 484
    .end local v4    # "observer":Lcom/android/server/PackageWatchdog$ObserverInternal;
    .end local v5    # "impact":I
    .end local v6    # "registeredObserver":Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    :cond_38
    goto :goto_1d

    .line 485
    :cond_39
    if-eqz v1, :cond_3e

    .line 486
    invoke-interface {v1, v0, p2, v5}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->execute(Landroid/content/pm/VersionedPackage;II)Z

    .line 488
    :cond_3e
    return-void
.end method

.method private loadFromFile()V
    .registers 7

    .line 989
    const/4 v0, 0x0

    .line 990
    .local v0, "infile":Ljava/io/InputStream;
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 992
    :try_start_6
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    move-object v0, v1

    .line 993
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v1

    .line 994
    .local v1, "parser":Landroid/util/TypedXmlPullParser;
    const-string/jumbo v2, "package-watchdog"

    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 995
    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v2

    .line 996
    .local v2, "outerDepth":I
    :goto_1b
    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 997
    invoke-static {v1, p0}, Lcom/android/server/PackageWatchdog$ObserverInternal;->read(Landroid/util/TypedXmlPullParser;Lcom/android/server/PackageWatchdog;)Lcom/android/server/PackageWatchdog$ObserverInternal;

    move-result-object v3

    .line 998
    .local v3, "observer":Lcom/android/server/PackageWatchdog$ObserverInternal;
    if-eqz v3, :cond_2e

    .line 999
    iget-object v4, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    iget-object v5, v3, Lcom/android/server/PackageWatchdog$ObserverInternal;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_2e} :catch_44
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_2e} :catch_32
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_2e} :catch_32
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_2e} :catch_32
    .catchall {:try_start_6 .. :try_end_2e} :catchall_30

    .line 1001
    .end local v3    # "observer":Lcom/android/server/PackageWatchdog$ObserverInternal;
    :cond_2e
    goto :goto_1b

    .line 996
    .end local v1    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v2    # "outerDepth":I
    :cond_2f
    goto :goto_45

    .line 1008
    :catchall_30
    move-exception v1

    goto :goto_40

    .line 1004
    :catch_32
    move-exception v1

    .line 1005
    .local v1, "e":Ljava/lang/Exception;
    :try_start_33
    const-string v2, "PackageWatchdog"

    const-string v3, "Unable to read monitored packages, deleting file"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1006
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V
    :try_end_3f
    .catchall {:try_start_33 .. :try_end_3f} :catchall_30

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_45

    .line 1008
    :goto_40
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1009
    throw v1

    .line 1002
    :catch_44
    move-exception v1

    .line 1008
    :goto_45
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1009
    nop

    .line 1010
    return-void
.end method

.method public static longArrayQueueToString(Landroid/util/LongArrayQueue;)Ljava/lang/String;
    .registers 5
    .param p0, "queue"    # Landroid/util/LongArrayQueue;

    .line 1123
    invoke-virtual {p0}, Landroid/util/LongArrayQueue;->size()I

    move-result v0

    if-lez v0, :cond_2e

    .line 1124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1125
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1126
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_14
    invoke-virtual {p0}, Landroid/util/LongArrayQueue;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 1127
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    invoke-virtual {p0, v1}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1126
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1130
    .end local v1    # "i":I
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1132
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_2e
    const-string v0, ""

    return-object v0
.end method

.method private onHealthCheckFailed(Lcom/android/server/PackageWatchdog$ObserverInternal;Ljava/util/Set;)V
    .registers 5
    .param p1, "observer"    # Lcom/android/server/PackageWatchdog$ObserverInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/PackageWatchdog$ObserverInternal;",
            "Ljava/util/Set<",
            "Lcom/android/server/PackageWatchdog$MonitoredPackage;",
            ">;)V"
        }
    .end annotation

    .line 930
    .local p2, "failedPackages":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/PackageWatchdog;Lcom/android/server/PackageWatchdog$ObserverInternal;Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 947
    return-void
.end method

.method private onHealthCheckPassed(Ljava/lang/String;)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;

    .line 754
    const-string v0, "PackageWatchdog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Health check passed for package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const/4 v0, 0x0

    .line 757
    .local v0, "isStateChanged":Z
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 758
    const/4 v2, 0x0

    .local v2, "observerIdx":I
    :goto_1d
    :try_start_1d
    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_44

    .line 759
    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 760
    .local v3, "observer":Lcom/android/server/PackageWatchdog$ObserverInternal;
    invoke-virtual {v3, p1}, Lcom/android/server/PackageWatchdog$ObserverInternal;->getMonitoredPackage(Ljava/lang/String;)Lcom/android/server/PackageWatchdog$MonitoredPackage;

    move-result-object v4

    .line 762
    .local v4, "monitoredPackage":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    if-eqz v4, :cond_41

    .line 763
    invoke-virtual {v4}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getHealthCheckStateLocked()I

    move-result v5

    .line 764
    .local v5, "oldState":I
    invoke-virtual {v4}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->tryPassHealthCheckLocked()I

    move-result v6

    .line 765
    .local v6, "newState":I
    if-eq v5, v6, :cond_3f

    const/4 v7, 0x1

    goto :goto_40

    :cond_3f
    const/4 v7, 0x0

    :goto_40
    or-int/2addr v0, v7

    .line 758
    .end local v3    # "observer":Lcom/android/server/PackageWatchdog$ObserverInternal;
    .end local v4    # "monitoredPackage":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    .end local v5    # "oldState":I
    .end local v6    # "newState":I
    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 768
    .end local v2    # "observerIdx":I
    :cond_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_1d .. :try_end_45} :catchall_5f

    .line 770
    if-eqz v0, :cond_5e

    .line 771
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "health check passed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    .line 773
    :cond_5e
    return-void

    .line 768
    :catchall_5f
    move-exception v2

    :try_start_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v2
.end method

.method private onPropertyChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 5
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 1014
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog;->updateConfigs()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 1017
    goto :goto_c

    .line 1015
    :catch_4
    move-exception v0

    .line 1016
    .local v0, "ignore":Ljava/lang/Exception;
    const-string v1, "PackageWatchdog"

    const-string v2, "Failed to reload device config changes"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    .end local v0    # "ignore":Ljava/lang/Exception;
    :goto_c
    return-void
.end method

.method private onSupportedPackages(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;",
            ">;)V"
        }
    .end annotation

    .line 776
    .local p1, "supportedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;>;"
    const/4 v0, 0x0

    .line 778
    .local v0, "isStateChanged":Z
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 779
    .local v1, "supportedPackageTimeouts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 780
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;>;"
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 781
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;

    .line 782
    .local v3, "info":Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;
    invoke-virtual {v3}, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;->getHealthCheckTimeoutMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    .end local v3    # "info":Landroid/service/watchdog/ExplicitHealthCheckService$PackageConfig;
    goto :goto_a

    .line 785
    :cond_26
    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 786
    :try_start_29
    const-string v4, "PackageWatchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received supported packages "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget-object v4, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 788
    .local v4, "oit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/PackageWatchdog$ObserverInternal;>;"
    :goto_4b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_99

    .line 789
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PackageWatchdog$ObserverInternal;

    invoke-virtual {v5}, Lcom/android/server/PackageWatchdog$ObserverInternal;->getMonitoredPackages()Landroid/util/ArrayMap;

    move-result-object v5

    .line 790
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 791
    .local v5, "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    :goto_63
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_98

    .line 792
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 793
    .local v6, "monitoredPackage":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    invoke-static {v6}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->-$$Nest$mgetName(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Ljava/lang/String;

    move-result-object v7

    .line 794
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getHealthCheckStateLocked()I

    move-result v8

    .line 797
    .local v8, "oldState":I
    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8d

    .line 799
    nop

    .line 800
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 799
    invoke-virtual {v6, v9, v10}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->setHealthCheckActiveLocked(J)I

    move-result v9

    .local v9, "newState":I
    goto :goto_91

    .line 803
    .end local v9    # "newState":I
    :cond_8d
    invoke-virtual {v6}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->tryPassHealthCheckLocked()I

    move-result v9

    .line 805
    .restart local v9    # "newState":I
    :goto_91
    if-eq v8, v9, :cond_95

    const/4 v10, 0x1

    goto :goto_96

    :cond_95
    const/4 v10, 0x0

    :goto_96
    or-int/2addr v0, v10

    .line 806
    .end local v6    # "monitoredPackage":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "oldState":I
    .end local v9    # "newState":I
    goto :goto_63

    .line 807
    .end local v5    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    :cond_98
    goto :goto_4b

    .line 808
    .end local v4    # "oit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/PackageWatchdog$ObserverInternal;>;"
    :cond_99
    monitor-exit v3
    :try_end_9a
    .catchall {:try_start_29 .. :try_end_9a} :catchall_b4

    .line 810
    if-eqz v0, :cond_b3

    .line 811
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updated health check supported packages "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    .line 813
    :cond_b3
    return-void

    .line 808
    :catchall_b4
    move-exception v4

    :try_start_b5
    monitor-exit v3
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b4

    throw v4
.end method

.method private onSyncRequestNotified()V
    .registers 3

    .line 816
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 817
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/PackageWatchdog;->mSyncRequired:Z

    .line 818
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->syncRequestsAsync()V

    .line 819
    monitor-exit v0

    .line 820
    return-void

    .line 819
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public static parseLongArrayQueue(Ljava/lang/String;)Landroid/util/LongArrayQueue;
    .registers 8
    .param p0, "commaSeparatedValues"    # Ljava/lang/String;

    .line 1137
    new-instance v0, Landroid/util/LongArrayQueue;

    invoke-direct {v0}, Landroid/util/LongArrayQueue;-><init>()V

    .line 1138
    .local v0, "result":Landroid/util/LongArrayQueue;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1139
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1140
    .local v1, "values":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_21

    aget-object v4, v1, v3

    .line 1141
    .local v4, "value":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Landroid/util/LongArrayQueue;->addLast(J)V

    .line 1140
    .end local v4    # "value":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 1144
    .end local v1    # "values":[Ljava/lang/String;
    :cond_21
    return-object v0
.end method

.method private pruneObserversLocked()V
    .registers 9

    .line 905
    iget-wide v0, p0, Lcom/android/server/PackageWatchdog;->mUptimeAtLastStateSync:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 906
    move-wide v0, v2

    goto :goto_13

    :cond_a
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mSystemClock:Lcom/android/server/PackageWatchdog$SystemClock;

    invoke-interface {v0}, Lcom/android/server/PackageWatchdog$SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/server/PackageWatchdog;->mUptimeAtLastStateSync:J

    sub-long/2addr v0, v4

    .line 907
    .local v0, "elapsedMs":J
    :goto_13
    cmp-long v2, v0, v2

    const-string v3, "PackageWatchdog"

    if-gtz v2, :cond_37

    .line 908
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not pruning observers, elapsed time: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "ms"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    return-void

    .line 912
    :cond_37
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 913
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/PackageWatchdog$ObserverInternal;>;"
    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_93

    .line 914
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 915
    .local v4, "observer":Lcom/android/server/PackageWatchdog$ObserverInternal;
    nop

    .line 916
    invoke-static {v4, v0, v1}, Lcom/android/server/PackageWatchdog$ObserverInternal;->-$$Nest$mprunePackagesLocked(Lcom/android/server/PackageWatchdog$ObserverInternal;J)Ljava/util/Set;

    move-result-object v5

    .line 917
    .local v5, "failedPackages":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5b

    .line 918
    invoke-direct {p0, v4, v5}, Lcom/android/server/PackageWatchdog;->onHealthCheckFailed(Lcom/android/server/PackageWatchdog$ObserverInternal;Ljava/util/Set;)V

    .line 920
    :cond_5b
    invoke-virtual {v4}, Lcom/android/server/PackageWatchdog$ObserverInternal;->getMonitoredPackages()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_92

    iget-object v6, v4, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    if-eqz v6, :cond_71

    iget-object v6, v4, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 921
    invoke-interface {v6}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->isPersistent()Z

    move-result v6

    if-nez v6, :cond_92

    .line 922
    :cond_71
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Discarding observer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/PackageWatchdog$ObserverInternal;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". All packages expired"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 925
    .end local v4    # "observer":Lcom/android/server/PackageWatchdog$ObserverInternal;
    .end local v5    # "failedPackages":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    :cond_92
    goto :goto_41

    .line 926
    :cond_93
    return-void
.end method

.method private registerConnectivityModuleHealthListener()V
    .registers 3

    .line 1067
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mConnectivityModuleConnector:Landroid/net/ConnectivityModuleConnector;

    new-instance v1, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/PackageWatchdog;)V

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityModuleConnector;->registerHealthListener(Landroid/net/ConnectivityModuleConnector$ConnectivityModuleHealthListener;)V

    .line 1077
    return-void
.end method

.method private saveToFile()Z
    .registers 9

    .line 1083
    const-string v0, "PackageWatchdog"

    const-string v1, "Saving observer state to file"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1087
    const/4 v1, 0x0

    :try_start_b
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_11} :catch_72
    .catchall {:try_start_b .. :try_end_11} :catchall_70

    .line 1091
    .local v2, "stream":Ljava/io/FileOutputStream;
    nop

    .line 1094
    :try_start_12
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v3

    .line 1095
    .local v3, "out":Landroid/util/TypedXmlSerializer;
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v6, v5}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1096
    const-string/jumbo v5, "package-watchdog"

    invoke-interface {v3, v6, v5}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1097
    const-string/jumbo v5, "version"

    invoke-interface {v3, v6, v5, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1098
    const/4 v5, 0x0

    .local v5, "oIndex":I
    :goto_2c
    iget-object v7, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v5, v7, :cond_42

    .line 1099
    iget-object v7, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/PackageWatchdog$ObserverInternal;

    invoke-virtual {v7, v3}, Lcom/android/server/PackageWatchdog$ObserverInternal;->writeLocked(Landroid/util/TypedXmlSerializer;)Z

    .line 1098
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    .line 1101
    .end local v5    # "oIndex":I
    :cond_42
    const-string/jumbo v5, "package-watchdog"

    invoke-interface {v3, v6, v5}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1102
    invoke-interface {v3}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 1103
    iget-object v5, p0, Lcom/android/server/PackageWatchdog;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_50} :catch_58
    .catchall {:try_start_12 .. :try_end_50} :catchall_56

    .line 1104
    nop

    .line 1110
    :try_start_51
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_70

    .line 1104
    return v4

    .line 1110
    .end local v3    # "out":Landroid/util/TypedXmlSerializer;
    :catchall_56
    move-exception v1

    goto :goto_6b

    .line 1105
    :catch_58
    move-exception v3

    .line 1106
    .local v3, "e":Ljava/io/IOException;
    :try_start_59
    const-string v4, "PackageWatchdog"

    const-string v5, "Failed to save monitored packages, restoring backup"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1107
    iget-object v4, p0, Lcom/android/server/PackageWatchdog;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_65
    .catchall {:try_start_59 .. :try_end_65} :catchall_56

    .line 1108
    nop

    .line 1110
    :try_start_66
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    monitor-exit v0

    .line 1108
    return v1

    .line 1110
    .end local v3    # "e":Ljava/io/IOException;
    :goto_6b
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1111
    nop

    .end local p0    # "this":Lcom/android/server/PackageWatchdog;
    throw v1

    .line 1112
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/server/PackageWatchdog;
    :catchall_70
    move-exception v1

    goto :goto_7c

    .line 1088
    :catch_72
    move-exception v2

    .line 1089
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "PackageWatchdog"

    const-string v4, "Cannot update monitored packages"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1090
    monitor-exit v0

    return v1

    .line 1112
    .end local v2    # "e":Ljava/io/IOException;
    :goto_7c
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_66 .. :try_end_7d} :catchall_70

    throw v1
.end method

.method private saveToFileAsync()V
    .registers 3

    .line 1116
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mSaveToFile:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1117
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mSaveToFile:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1119
    :cond_11
    return-void
.end method

.method private scheduleNextSyncStateLocked()V
    .registers 5

    .line 866
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->getNextStateSyncMillisLocked()J

    move-result-wide v0

    .line 867
    .local v0, "durationMs":J
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mShortTaskHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mSyncStateWithScheduledReason:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 868
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-nez v2, :cond_20

    .line 869
    const-string v2, "PackageWatchdog"

    const-string v3, "Cancelling state sync, nothing to sync"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/PackageWatchdog;->mUptimeAtLastStateSync:J

    goto :goto_2f

    .line 872
    :cond_20
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mSystemClock:Lcom/android/server/PackageWatchdog$SystemClock;

    invoke-interface {v2}, Lcom/android/server/PackageWatchdog$SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/PackageWatchdog;->mUptimeAtLastStateSync:J

    .line 873
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mShortTaskHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mSyncStateWithScheduledReason:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 875
    :goto_2f
    return-void
.end method

.method private setExplicitHealthCheckEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 552
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 553
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/PackageWatchdog;->mIsHealthCheckEnabled:Z

    .line 554
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mHealthCheckController:Lcom/android/server/ExplicitHealthCheckController;

    invoke-virtual {v1, p1}, Lcom/android/server/ExplicitHealthCheckController;->setEnabled(Z)V

    .line 555
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/PackageWatchdog;->mSyncRequired:Z

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "health check state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_1e

    const-string v2, "enabled"

    goto :goto_20

    :cond_1e
    const-string v2, "disabled"

    :goto_20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    .line 558
    monitor-exit v0

    .line 559
    return-void

    .line 558
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method private setPropertyChangedListenerLocked()V
    .registers 4

    .line 1022
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mContext:Landroid/content/Context;

    .line 1024
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mOnPropertyChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 1022
    const-string/jumbo v2, "rollback"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 1026
    return-void
.end method

.method private syncRequests()V
    .registers 5

    .line 719
    const/4 v0, 0x0

    .line 720
    .local v0, "syncRequired":Z
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 721
    :try_start_4
    iget-boolean v2, p0, Lcom/android/server/PackageWatchdog;->mIsPackagesReady:Z

    if-eqz v2, :cond_21

    .line 722
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->getPackagesPendingHealthChecksLocked()Ljava/util/Set;

    move-result-object v2

    .line 723
    .local v2, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-boolean v3, p0, Lcom/android/server/PackageWatchdog;->mSyncRequired:Z

    if-nez v3, :cond_1e

    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mRequestedHealthCheckPackages:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 724
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 725
    :cond_1e
    const/4 v0, 0x1

    .line 726
    iput-object v2, p0, Lcom/android/server/PackageWatchdog;->mRequestedHealthCheckPackages:Ljava/util/Set;

    .line 729
    .end local v2    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_49

    .line 732
    if-eqz v0, :cond_48

    .line 733
    const-string v1, "PackageWatchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Syncing health check requests for packages: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mRequestedHealthCheckPackages:Ljava/util/Set;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mHealthCheckController:Lcom/android/server/ExplicitHealthCheckController;

    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mRequestedHealthCheckPackages:Ljava/util/Set;

    invoke-virtual {v1, v2}, Lcom/android/server/ExplicitHealthCheckController;->syncRequests(Ljava/util/Set;)V

    .line 736
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/PackageWatchdog;->mSyncRequired:Z

    .line 738
    :cond_48
    return-void

    .line 729
    :catchall_49
    move-exception v2

    :try_start_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v2
.end method

.method private syncRequestsAsync()V
    .registers 3

    .line 708
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mShortTaskHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mSyncRequests:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 709
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mShortTaskHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mSyncRequests:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 710
    return-void
.end method

.method private syncState(Ljava/lang/String;)V
    .registers 6
    .param p1, "reason"    # Ljava/lang/String;

    .line 848
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 849
    :try_start_3
    const-string v1, "PackageWatchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Syncing state, reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->pruneObserversLocked()V

    .line 852
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->saveToFileAsync()V

    .line 853
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->syncRequestsAsync()V

    .line 856
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->scheduleNextSyncStateLocked()V

    .line 857
    monitor-exit v0

    .line 858
    return-void

    .line 857
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private syncStateWithScheduledReason()V
    .registers 2

    .line 861
    const-string/jumbo v0, "scheduled"

    invoke-direct {p0, v0}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    .line 862
    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1150
    const-string v0, "Package Watchdog status"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1151
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1152
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1153
    :try_start_b
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1154
    .local v2, "observerName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Observer name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1155
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1156
    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 1157
    .local v3, "observerInternal":Lcom/android/server/PackageWatchdog$ObserverInternal;
    invoke-virtual {v3, p1}, Lcom/android/server/PackageWatchdog$ObserverInternal;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1158
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1159
    nop

    .end local v2    # "observerName":Ljava/lang/String;
    .end local v3    # "observerInternal":Lcom/android/server/PackageWatchdog$ObserverInternal;
    goto :goto_15

    .line 1160
    :cond_4a
    monitor-exit v0

    .line 1161
    return-void

    .line 1160
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_b .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method getTriggerFailureCount()J
    .registers 4

    .line 692
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 693
    :try_start_3
    iget v1, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureCount:I

    int-to-long v1, v1

    monitor-exit v0

    return-wide v1

    .line 694
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method getTriggerFailureDurationMs()J
    .registers 4

    .line 699
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 700
    :try_start_3
    iget v1, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureDurationMs:I

    int-to-long v1, v1

    monitor-exit v0

    return-wide v1

    .line 701
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method synthetic lambda$checkAndMitigateNativeCrashes$5$com-android-server-PackageWatchdog()V
    .registers 1

    .line 575
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->checkAndMitigateNativeCrashes()V

    return-void
.end method

.method synthetic lambda$onHealthCheckFailed$7$com-android-server-PackageWatchdog(Lcom/android/server/PackageWatchdog$ObserverInternal;Ljava/util/Set;)V
    .registers 10
    .param p1, "observer"    # Lcom/android/server/PackageWatchdog$ObserverInternal;
    .param p2, "failedPackages"    # Ljava/util/Set;

    .line 931
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 932
    :try_start_3
    iget-object v1, p1, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 933
    .local v1, "registeredObserver":Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    if-eqz v1, :cond_3f

    .line 934
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 935
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 936
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    invoke-static {v3}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->-$$Nest$mgetName(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/PackageWatchdog;->getVersionedPackage(Ljava/lang/String;)Landroid/content/pm/VersionedPackage;

    move-result-object v3

    .line 937
    .local v3, "versionedPkg":Landroid/content/pm/VersionedPackage;
    if-eqz v3, :cond_3e

    .line 938
    const-string v4, "PackageWatchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Explicit health check failed for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-interface {v1, v3, v4, v5}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->execute(Landroid/content/pm/VersionedPackage;II)Z

    .line 943
    .end local v3    # "versionedPkg":Landroid/content/pm/VersionedPackage;
    :cond_3e
    goto :goto_b

    .line 945
    .end local v1    # "registeredObserver":Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    :cond_3f
    monitor-exit v0

    .line 946
    return-void

    .line 945
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v1
.end method

.method synthetic lambda$onPackageFailure$4$com-android-server-PackageWatchdog(ILjava/util/List;)V
    .registers 21
    .param p1, "failureReason"    # I
    .param p2, "packages"    # Ljava/util/List;

    .line 398
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v4, v1, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 399
    :try_start_9
    iget-object v0, v1, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 400
    monitor-exit v4

    return-void

    .line 402
    :cond_13
    const/4 v0, 0x1

    if-eq v2, v0, :cond_1c

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v5, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    move v5, v0

    .line 404
    .local v5, "requiresImmediateAction":Z
    :goto_1d
    if-eqz v5, :cond_24

    .line 405
    invoke-direct {v1, v3, v2}, Lcom/android/server/PackageWatchdog;->handleFailureImmediately(Ljava/util/List;I)V

    goto/16 :goto_9d

    .line 407
    :cond_24
    const/4 v6, 0x0

    .local v6, "pIndex":I
    :goto_25
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_9d

    .line 408
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/VersionedPackage;

    .line 410
    .local v7, "versionedPackage":Landroid/content/pm/VersionedPackage;
    const/4 v8, 0x0

    .line 411
    .local v8, "currentObserverToNotify":Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    const v9, 0x7fffffff

    .line 412
    .local v9, "currentObserverImpact":I
    const/4 v10, 0x0

    .line 415
    .local v10, "currentMonitoredPackage":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    const/4 v11, 0x0

    .local v11, "oIndex":I
    :goto_37
    iget-object v12, v1, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v11, v12, :cond_7a

    .line 416
    iget-object v12, v1, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 417
    .local v12, "observer":Lcom/android/server/PackageWatchdog$ObserverInternal;
    iget-object v13, v12, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 418
    .local v13, "registeredObserver":Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    if-eqz v13, :cond_76

    .line 420
    invoke-virtual {v7}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 419
    invoke-virtual {v12, v14}, Lcom/android/server/PackageWatchdog$ObserverInternal;->onPackageFailureLocked(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_76

    .line 421
    nop

    .line 422
    invoke-virtual {v7}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 421
    invoke-virtual {v12, v14}, Lcom/android/server/PackageWatchdog$ObserverInternal;->getMonitoredPackage(Ljava/lang/String;)Lcom/android/server/PackageWatchdog$MonitoredPackage;

    move-result-object v14

    .line 423
    .local v14, "p":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    const/4 v15, 0x1

    .line 424
    .local v15, "mitigationCount":I
    if-eqz v14, :cond_67

    .line 425
    invoke-virtual {v14}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getMitigationCountLocked()I

    move-result v16

    add-int/lit8 v15, v16, 0x1

    .line 427
    :cond_67
    invoke-interface {v13, v7, v2, v15}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->onHealthCheckFailed(Landroid/content/pm/VersionedPackage;II)I

    move-result v16

    move/from16 v17, v16

    .line 429
    .local v17, "impact":I
    move/from16 v0, v17

    .end local v17    # "impact":I
    .local v0, "impact":I
    if-eqz v0, :cond_76

    if-ge v0, v9, :cond_76

    .line 431
    move-object v8, v13

    .line 432
    move v9, v0

    .line 433
    move-object v10, v14

    .line 415
    .end local v0    # "impact":I
    .end local v12    # "observer":Lcom/android/server/PackageWatchdog$ObserverInternal;
    .end local v13    # "registeredObserver":Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    .end local v14    # "p":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    .end local v15    # "mitigationCount":I
    :cond_76
    add-int/lit8 v11, v11, 0x1

    const/4 v0, 0x1

    goto :goto_37

    .line 439
    .end local v11    # "oIndex":I
    :cond_7a
    if-eqz v8, :cond_99

    .line 440
    const/4 v0, 0x1

    .line 441
    .local v0, "mitigationCount":I
    if-eqz v10, :cond_88

    .line 442
    invoke-virtual {v10}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->noteMitigationCallLocked()V

    .line 443
    nop

    .line 444
    invoke-virtual {v10}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getMitigationCountLocked()I

    move-result v11

    move v0, v11

    .line 449
    :cond_88
    invoke-static {}, Lcom/android/server/PackageWatchdogStub;->getInstance()Lcom/android/server/PackageWatchdogStub;

    move-result-object v11

    iget-object v12, v1, Lcom/android/server/PackageWatchdog;->mContext:Landroid/content/Context;

    .line 450
    invoke-virtual {v11, v0, v7, v12}, Lcom/android/server/PackageWatchdogStub;->doRescuePartyPlusStep(ILandroid/content/pm/VersionedPackage;Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_96

    .line 452
    monitor-exit v4

    return-void

    .line 455
    :cond_96
    invoke-interface {v8, v7, v2, v0}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->execute(Landroid/content/pm/VersionedPackage;II)Z

    .line 407
    .end local v0    # "mitigationCount":I
    .end local v7    # "versionedPackage":Landroid/content/pm/VersionedPackage;
    .end local v8    # "currentObserverToNotify":Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    .end local v9    # "currentObserverImpact":I
    .end local v10    # "currentMonitoredPackage":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    :cond_99
    add-int/lit8 v6, v6, 0x1

    const/4 v0, 0x1

    goto :goto_25

    .line 460
    .end local v5    # "requiresImmediateAction":Z
    .end local v6    # "pIndex":I
    :cond_9d
    :goto_9d
    monitor-exit v4

    .line 461
    return-void

    .line 460
    :catchall_9f
    move-exception v0

    monitor-exit v4
    :try_end_a1
    .catchall {:try_start_9 .. :try_end_a1} :catchall_9f

    throw v0
.end method

.method synthetic lambda$onPackagesReady$0$com-android-server-PackageWatchdog(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 263
    invoke-direct {p0, p1}, Lcom/android/server/PackageWatchdog;->onHealthCheckPassed(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onPackagesReady$1$com-android-server-PackageWatchdog(Ljava/util/List;)V
    .registers 2
    .param p1, "packages"    # Ljava/util/List;

    .line 264
    invoke-direct {p0, p1}, Lcom/android/server/PackageWatchdog;->onSupportedPackages(Ljava/util/List;)V

    return-void
.end method

.method synthetic lambda$registerConnectivityModuleHealthListener$8$com-android-server-PackageWatchdog(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1069
    invoke-direct {p0, p1}, Lcom/android/server/PackageWatchdog;->getVersionedPackage(Ljava/lang/String;)Landroid/content/pm/VersionedPackage;

    move-result-object v0

    .line 1070
    .local v0, "pkg":Landroid/content/pm/VersionedPackage;
    if-nez v0, :cond_e

    .line 1071
    const-string v1, "PackageWatchdog"

    const-string v2, "NetworkStack failed but could not find its package"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    return-void

    .line 1074
    :cond_e
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1075
    .local v1, "pkgList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/PackageWatchdog;->onPackageFailure(Ljava/util/List;I)V

    .line 1076
    return-void
.end method

.method synthetic lambda$scheduleCheckAndMitigateNativeCrashes$6$com-android-server-PackageWatchdog()V
    .registers 1

    .line 589
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->checkAndMitigateNativeCrashes()V

    return-void
.end method

.method synthetic lambda$startObservingHealth$2$com-android-server-PackageWatchdog(Lcom/android/server/PackageWatchdog$PackageHealthObserver;Ljava/util/List;Ljava/util/List;)V
    .registers 10
    .param p1, "observer"    # Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    .param p2, "packageNames"    # Ljava/util/List;
    .param p3, "packages"    # Ljava/util/List;

    .line 343
    const-string/jumbo v0, "observing new packages"

    invoke-direct {p0, v0}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 346
    :try_start_9
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 347
    .local v1, "oldObserver":Lcom/android/server/PackageWatchdog$ObserverInternal;
    if-nez v1, :cond_4a

    .line 348
    const-string v2, "PackageWatchdog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " started monitoring health of packages "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 351
    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p3}, Lcom/android/server/PackageWatchdog$ObserverInternal;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 350
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6d

    .line 353
    :cond_4a
    const-string v2, "PackageWatchdog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " added the following packages to monitor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-virtual {v1, p3}, Lcom/android/server/PackageWatchdog$ObserverInternal;->updatePackagesLocked(Ljava/util/List;)V

    .line 357
    .end local v1    # "oldObserver":Lcom/android/server/PackageWatchdog$ObserverInternal;
    :goto_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_9 .. :try_end_6e} :catchall_78

    .line 360
    invoke-virtual {p0, p1}, Lcom/android/server/PackageWatchdog;->registerHealthObserver(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V

    .line 364
    const-string/jumbo v0, "updated observers"

    invoke-direct {p0, v0}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    .line 365
    return-void

    .line 357
    :catchall_78
    move-exception v1

    :try_start_79
    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v1
.end method

.method synthetic lambda$unregisterHealthObserver$3$com-android-server-PackageWatchdog(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V
    .registers 5
    .param p1, "observer"    # Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 376
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 377
    :try_start_3
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_29

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregistering observer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    .line 380
    return-void

    .line 378
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method newMonitoredPackage(Ljava/lang/String;JJZLandroid/util/LongArrayQueue;)Lcom/android/server/PackageWatchdog$MonitoredPackage;
    .registers 18
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "durationMs"    # J
    .param p4, "healthCheckDurationMs"    # J
    .param p6, "hasPassedHealthCheck"    # Z
    .param p7, "mitigationCalls"    # Landroid/util/LongArrayQueue;

    .line 1383
    new-instance v9, Lcom/android/server/PackageWatchdog$MonitoredPackage;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/PackageWatchdog$MonitoredPackage;-><init>(Lcom/android/server/PackageWatchdog;Ljava/lang/String;JJZLandroid/util/LongArrayQueue;)V

    return-object v9
.end method

.method newMonitoredPackage(Ljava/lang/String;JZ)Lcom/android/server/PackageWatchdog$MonitoredPackage;
    .registers 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "durationMs"    # J
    .param p4, "hasPassedHealthCheck"    # Z

    .line 1377
    new-instance v7, Landroid/util/LongArrayQueue;

    invoke-direct {v7}, Landroid/util/LongArrayQueue;-><init>()V

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/PackageWatchdog;->newMonitoredPackage(Ljava/lang/String;JJZLandroid/util/LongArrayQueue;)Lcom/android/server/PackageWatchdog$MonitoredPackage;

    move-result-object v0

    return-object v0
.end method

.method public noteBoot()V
    .registers 9

    .line 495
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 496
    :try_start_3
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mBootThreshold:Lcom/android/server/PackageWatchdog$BootThreshold;

    invoke-virtual {v1}, Lcom/android/server/PackageWatchdog$BootThreshold;->incrementAndTest()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 497
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mBootThreshold:Lcom/android/server/PackageWatchdog$BootThreshold;

    invoke-virtual {v1}, Lcom/android/server/PackageWatchdog$BootThreshold;->reset()V

    .line 498
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mBootThreshold:Lcom/android/server/PackageWatchdog$BootThreshold;

    invoke-virtual {v1}, Lcom/android/server/PackageWatchdog$BootThreshold;->getMitigationCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 499
    .local v1, "mitigationCount":I
    const/4 v2, 0x0

    .line 500
    .local v2, "currentObserverToNotify":Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    const v3, 0x7fffffff

    .line 501
    .local v3, "currentObserverImpact":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1d
    iget-object v5, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_3e

    .line 502
    iget-object v5, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 503
    .local v5, "observer":Lcom/android/server/PackageWatchdog$ObserverInternal;
    iget-object v6, v5, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 504
    .local v6, "registeredObserver":Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    if-eqz v6, :cond_3b

    .line 505
    invoke-interface {v6, v1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->onBootLoop(I)I

    move-result v7

    .line 506
    .local v7, "impact":I
    if-eqz v7, :cond_3b

    if-ge v7, v3, :cond_3b

    .line 508
    move-object v2, v6

    .line 509
    move v3, v7

    .line 501
    .end local v5    # "observer":Lcom/android/server/PackageWatchdog$ObserverInternal;
    .end local v6    # "registeredObserver":Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    .end local v7    # "impact":I
    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 515
    .end local v4    # "i":I
    :cond_3e
    invoke-static {}, Lcom/android/server/PackageWatchdogStub;->getInstance()Lcom/android/server/PackageWatchdogStub;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/PackageWatchdogStub;->recordMitigationCount(I)V

    .line 517
    if-eqz v2, :cond_54

    .line 518
    iget-object v4, p0, Lcom/android/server/PackageWatchdog;->mBootThreshold:Lcom/android/server/PackageWatchdog$BootThreshold;

    invoke-virtual {v4, v1}, Lcom/android/server/PackageWatchdog$BootThreshold;->setMitigationCount(I)V

    .line 519
    iget-object v4, p0, Lcom/android/server/PackageWatchdog;->mBootThreshold:Lcom/android/server/PackageWatchdog$BootThreshold;

    invoke-virtual {v4}, Lcom/android/server/PackageWatchdog$BootThreshold;->saveMitigationCountToMetadata()V

    .line 520
    invoke-interface {v2, v1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->executeBootLoopMitigation(I)Z

    .line 523
    .end local v1    # "mitigationCount":I
    .end local v2    # "currentObserverToNotify":Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    .end local v3    # "currentObserverImpact":I
    :cond_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_5f

    .line 525
    invoke-static {}, Lcom/android/server/PackageWatchdogStub;->getInstance()Lcom/android/server/PackageWatchdogStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/PackageWatchdogStub;->maybeShowRecoveryTip(Landroid/content/Context;)V

    .line 526
    return-void

    .line 523
    :catchall_5f
    move-exception v1

    :try_start_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v1
.end method

.method public onPackageFailure(Ljava/util/List;I)V
    .registers 5
    .param p2, "failureReason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;I)V"
        }
    .end annotation

    .line 393
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    if-nez p1, :cond_a

    .line 394
    const-string v0, "PackageWatchdog"

    const-string v1, "Could not resolve a list of failing packages"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return-void

    .line 397
    :cond_a
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/PackageWatchdog;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 462
    return-void
.end method

.method public onPackagesReady()V
    .registers 6

    .line 261
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/PackageWatchdog;->mIsPackagesReady:Z

    .line 263
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mHealthCheckController:Lcom/android/server/ExplicitHealthCheckController;

    new-instance v2, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/PackageWatchdog;)V

    new-instance v3, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/PackageWatchdog;)V

    new-instance v4, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda13;

    invoke-direct {v4, p0}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/PackageWatchdog;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/ExplicitHealthCheckController;->setCallbacks(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    .line 266
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->setPropertyChangedListenerLocked()V

    .line 267
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog;->updateConfigs()V

    .line 268
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->registerConnectivityModuleHealthListener()V

    .line 269
    monitor-exit v0

    .line 270
    return-void

    .line 269
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_25

    throw v1
.end method

.method parseMonitoredPackage(Landroid/util/TypedXmlPullParser;)Lcom/android/server/PackageWatchdog$MonitoredPackage;
    .registers 18
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1389
    move-object/from16 v0, p1

    const/4 v1, 0x0

    const-string/jumbo v2, "name"

    invoke-interface {v0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1390
    .local v2, "packageName":Ljava/lang/String;
    const-string v3, "duration"

    invoke-interface {v0, v1, v3}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v11

    .line 1391
    .local v11, "duration":J
    const-string/jumbo v3, "health-check-duration"

    invoke-interface {v0, v1, v3}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v13

    .line 1393
    .local v13, "healthCheckDuration":J
    const-string/jumbo v3, "passed-health-check"

    invoke-interface {v0, v1, v3}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    .line 1394
    .local v15, "hasPassedHealthCheck":Z
    nop

    .line 1395
    const-string/jumbo v3, "mitigation-calls"

    invoke-interface {v0, v1, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1394
    invoke-static {v1}, Lcom/android/server/PackageWatchdog;->parseLongArrayQueue(Ljava/lang/String;)Landroid/util/LongArrayQueue;

    move-result-object v1

    .line 1396
    .local v1, "mitigationCalls":Landroid/util/LongArrayQueue;
    move-object/from16 v3, p0

    move-object v4, v2

    move-wide v5, v11

    move-wide v7, v13

    move v9, v15

    move-object v10, v1

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/PackageWatchdog;->newMonitoredPackage(Ljava/lang/String;JJZLandroid/util/LongArrayQueue;)Lcom/android/server/PackageWatchdog$MonitoredPackage;

    move-result-object v3

    return-object v3
.end method

.method public registerHealthObserver(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V
    .registers 7
    .param p1, "observer"    # Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 280
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    :try_start_3
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageWatchdog$ObserverInternal;

    .line 282
    .local v1, "internalObserver":Lcom/android/server/PackageWatchdog$ObserverInternal;
    if-eqz v1, :cond_14

    .line 283
    iput-object p1, v1, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    goto :goto_33

    .line 285
    :cond_14
    new-instance v2, Lcom/android/server/PackageWatchdog$ObserverInternal;

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/android/server/PackageWatchdog$ObserverInternal;-><init>(Ljava/lang/String;Ljava/util/List;)V

    move-object v1, v2

    .line 286
    iput-object p1, v1, Lcom/android/server/PackageWatchdog$ObserverInternal;->registeredObserver:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 287
    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v2, "added new observer"

    invoke-direct {p0, v2}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    .line 290
    .end local v1    # "internalObserver":Lcom/android/server/PackageWatchdog$ObserverInternal;
    :goto_33
    monitor-exit v0

    .line 291
    return-void

    .line 290
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method

.method removePropertyChangedListener()V
    .registers 2

    .line 1030
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mOnPropertyChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-static {v0}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 1031
    return-void
.end method

.method public scheduleCheckAndMitigateNativeCrashes()V
    .registers 4

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scheduling "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/PackageWatchdog;->mNumberOfNativeCrashPollsRemaining:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " polls to check and mitigate native crashes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageWatchdog"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mShortTaskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/PackageWatchdog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 590
    return-void
.end method

.method public startObservingHealth(Lcom/android/server/PackageWatchdog$PackageHealthObserver;Ljava/util/List;J)V
    .registers 11
    .param p1, "observer"    # Lcom/android/server/PackageWatchdog$PackageHealthObserver;
    .param p3, "durationMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/PackageWatchdog$PackageHealthObserver;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 313
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "PackageWatchdog"

    if-eqz v0, :cond_23

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No packages to observe, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-void

    .line 317
    :cond_23
    const-wide/16 v2, 0x1

    cmp-long v0, p3, v2

    if-gez v0, :cond_5a

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid duration "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "ms for observer "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 319
    invoke-interface {p1}, Lcom/android/server/PackageWatchdog$PackageHealthObserver;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". Not observing packages "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    sget-wide p3, Lcom/android/server/PackageWatchdog;->DEFAULT_OBSERVING_DURATION_MS:J

    .line 323
    :cond_5a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/PackageWatchdog$MonitoredPackage;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_60
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_96

    .line 326
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p3, p4, v4}, Lcom/android/server/PackageWatchdog;->newMonitoredPackage(Ljava/lang/String;JZ)Lcom/android/server/PackageWatchdog$MonitoredPackage;

    move-result-object v3

    .line 327
    .local v3, "pkg":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    if-eqz v3, :cond_77

    .line 328
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_93

    .line 330
    :cond_77
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create MonitoredPackage for pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    .end local v3    # "pkg":Lcom/android/server/PackageWatchdog$MonitoredPackage;
    :goto_93
    add-int/lit8 v2, v2, 0x1

    goto :goto_60

    .line 334
    .end local v2    # "i":I
    :cond_96
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 335
    return-void

    .line 342
    :cond_9d
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/PackageWatchdog;Lcom/android/server/PackageWatchdog$PackageHealthObserver;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 367
    return-void
.end method

.method public unregisterHealthObserver(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V
    .registers 4
    .param p1, "observer"    # Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    .line 375
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/PackageWatchdog;Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 381
    return-void
.end method

.method updateConfigs()V
    .registers 5

    .line 1039
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1040
    :try_start_3
    const-string/jumbo v1, "rollback"

    const-string/jumbo v2, "watchdog_trigger_failure_count"

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureCount:I

    .line 1044
    if-gtz v1, :cond_14

    .line 1045
    iput v3, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureCount:I

    .line 1048
    :cond_14
    const-string/jumbo v1, "rollback"

    const-string/jumbo v2, "watchdog_trigger_failure_duration_millis"

    sget v3, Lcom/android/server/PackageWatchdog;->DEFAULT_TRIGGER_FAILURE_DURATION_MS:I

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureDurationMs:I

    .line 1052
    if-gtz v1, :cond_26

    .line 1053
    iput v3, p0, Lcom/android/server/PackageWatchdog;->mTriggerFailureDurationMs:I

    .line 1056
    :cond_26
    const-string/jumbo v1, "rollback"

    const-string/jumbo v2, "watchdog_explicit_health_check_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/PackageWatchdog;->setExplicitHealthCheckEnabled(Z)V

    .line 1060
    monitor-exit v0

    .line 1061
    return-void

    .line 1060
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public writeNow()V
    .registers 4

    .line 533
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 536
    :try_start_3
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mAllObservers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 537
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mLongTaskHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/PackageWatchdog;->mSaveToFile:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 538
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->pruneObserversLocked()V

    .line 539
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog;->saveToFile()Z

    .line 540
    const-string v1, "PackageWatchdog"

    const-string v2, "Last write to update package durations"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_1f
    monitor-exit v0

    .line 543
    return-void

    .line 542
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method
