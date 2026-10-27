.class public Lcom/android/server/usage/AppStandbyController;
.super Ljava/lang/Object;
.source "AppStandbyController.java"

# interfaces
.implements Lcom/android/server/usage/AppStandbyInternal;
.implements Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/AppStandbyController$ConstantsObserver;,
        Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;,
        Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;,
        Lcom/android/server/usage/AppStandbyController$Injector;,
        Lcom/android/server/usage/AppStandbyController$PackageReceiver;,
        Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;,
        Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;,
        Lcom/android/server/usage/AppStandbyController$Pool;,
        Lcom/android/server/usage/AppStandbyController$Lock;
    }
.end annotation


# static fields
.field static final COMPRESS_TIME:Z = false

.field static final DEBUG:Z = false

.field static final DEFAULT_ELAPSED_TIME_THRESHOLDS:[J

.field private static final DEFAULT_PREDICTION_TIMEOUT:J = 0x2932e00L

.field static final DEFAULT_SCREEN_TIME_THRESHOLDS:[J

.field private static final HEADLESS_APP_CHECK_FLAGS:I = 0x1c0200

.field static final MINIMUM_ELAPSED_TIME_THRESHOLDS:[J

.field static final MINIMUM_SCREEN_TIME_THRESHOLDS:[J

.field static final MSG_CHECK_IDLE_STATES:I = 0x5

.field static final MSG_CHECK_PACKAGE_IDLE_STATE:I = 0xb

.field static final MSG_FORCE_IDLE_STATE:I = 0x4

.field static final MSG_INFORM_LISTENERS:I = 0x3

.field static final MSG_ONE_TIME_CHECK_IDLE_STATES:I = 0xa

.field static final MSG_PAROLE_STATE_CHANGED:I = 0x9

.field static final MSG_REPORT_CONTENT_PROVIDER_USAGE:I = 0x8

.field static final MSG_REPORT_EXEMPTED_SYNC_START:I = 0xd

.field static final MSG_REPORT_SYNC_SCHEDULED:I = 0xc

.field static final MSG_TRIGGER_LISTENER_QUOTA_BUMP:I = 0x7

.field private static final NETWORK_SCORER_CACHE_DURATION_MILLIS:J = 0x1388L

.field private static final NOTIFICATION_SEEN_HOLD_DURATION_FOR_PRE_T_APPS:J = 0x2932e00L

.field private static final NOTIFICATION_SEEN_PROMOTED_BUCKET_FOR_PRE_T_APPS:I = 0x14

.field private static final ONE_DAY:J = 0x5265c00L

.field private static final ONE_HOUR:J = 0x36ee80L

.field private static final ONE_MINUTE:J = 0xea60L

.field private static final SYSTEM_PACKAGE_FLAGS:I = 0x205c2000

.field private static final TAG:Ljava/lang/String; = "AppStandbyController"

.field private static final THRESHOLD_BUCKETS:[I

.field private static final WAIT_FOR_ADMIN_DATA_TIMEOUT_MS:J = 0x2710L


# instance fields
.field private final mActiveAdminApps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mAdminProtectedPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAllowRestrictedBucket:Z

.field private volatile mAppIdleEnabled:Z

.field private mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

.field private final mAppIdleLock:Ljava/lang/Object;

.field mAppStandbyElapsedThresholds:[J

.field private final mAppStandbyProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAppStandbyScreenThresholds:[J

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field volatile mBroadcastResponseExemptedPermissions:Ljava/lang/String;

.field volatile mBroadcastResponseExemptedPermissionsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field volatile mBroadcastResponseExemptedRoles:Ljava/lang/String;

.field volatile mBroadcastResponseExemptedRolesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field volatile mBroadcastResponseFgThresholdState:I

.field volatile mBroadcastResponseWindowDurationMillis:J

.field volatile mBroadcastSessionsDurationMs:J

.field volatile mBroadcastSessionsWithResponseDurationMs:J

.field private mCachedDeviceProvisioningPackage:Ljava/lang/String;

.field private volatile mCachedNetworkScorer:Ljava/lang/String;

.field private volatile mCachedNetworkScorerAtMillis:J

.field private mCarrierPrivilegedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCarrierPrivilegedLock:Ljava/lang/Object;

.field mCheckIdleIntervalMillis:J

.field private final mContext:Landroid/content/Context;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field mExemptedSyncScheduledDozeTimeoutMillis:J

.field mExemptedSyncScheduledNonDozeTimeoutMillis:J

.field mExemptedSyncStartTimeoutMillis:J

.field private final mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

.field private mHaveCarrierPrivilegedApps:Z

.field private final mHeadlessSystemApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mInitialForegroundServiceStartTimeoutMillis:J

.field mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

.field private volatile mIsCharging:Z

.field mLinkCrossProfileApps:Z

.field volatile mNoteResponseEventForAllBroadcastSessions:Z

.field mNotificationSeenPromotedBucket:I

.field mNotificationSeenTimeoutMillis:J

.field private final mPackageAccessListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPendingIdleStateChecks:Landroid/util/SparseLongArray;

.field private mPendingInitializeDefaults:Z

.field private volatile mPendingOneTimeCheckIdleStates:Z

.field mPredictionTimeoutMillis:J

.field mRetainNotificationSeenImpactForPreTApps:Z

.field mSlicePinnedTimeoutMillis:J

.field mStrongUsageTimeoutMillis:J

.field mSyncAdapterTimeoutMillis:J

.field mSystemInteractionTimeoutMillis:J

.field private final mSystemPackagesAppIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemServicesReady:Z

.field mSystemUpdateUsageTimeoutMillis:J

.field private mTriggerQuotaBumpOnNotificationSeen:Z

.field mUnexemptedSyncScheduledTimeoutMillis:J


# direct methods
.method public static synthetic $r8$lambda$gMEbbc5yTkDMdWT1TuPDkVMx0NQ(Lcom/android/server/usage/AppStandbyController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->loadHeadlessSystemAppCache()V

    return-void
.end method

.method public static synthetic $r8$lambda$roX42uTlnyWAZwhsobgAdPnGAlE(Lcom/android/server/usage/AppStandbyController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->updatePowerWhitelistCache()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAppIdleEnabled(Lcom/android/server/usage/AppStandbyController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppIdleHistory(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppIdleHistory;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppIdleLock(Lcom/android/server/usage/AppStandbyController;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppStandbyProperties(Lcom/android/server/usage/AppStandbyController;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyProperties:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/usage/AppStandbyController;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingIdleStateChecks(Lcom/android/server/usage/AppStandbyController;)Landroid/util/SparseLongArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPendingIdleStateChecks:Landroid/util/SparseLongArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSystemServicesReady(Lcom/android/server/usage/AppStandbyController;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAllowRestrictedBucket(Lcom/android/server/usage/AppStandbyController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mAllowRestrictedBucket:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTriggerQuotaBumpOnNotificationSeen(Lcom/android/server/usage/AppStandbyController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mTriggerQuotaBumpOnNotificationSeen:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckAndUpdateStandbyState(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;IIJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/usage/AppStandbyController;->checkAndUpdateStandbyState(Ljava/lang/String;IIJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mevaluateSystemAppException(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->evaluateSystemAppException(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minformListeners(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;IIIZ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/usage/AppStandbyController;->informListeners(Ljava/lang/String;IIIZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minformParoleStateChanged(Lcom/android/server/usage/AppStandbyController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->informParoleStateChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misDisplayOn(Lcom/android/server/usage/AppStandbyController;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->isDisplayOn()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mreportContentProviderUsage(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usage/AppStandbyController;->reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreportExemptedSyncScheduled(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->reportExemptedSyncScheduled(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreportExemptedSyncStart(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->reportExemptedSyncStart(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreportUnexemptedSyncScheduled(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->reportUnexemptedSyncScheduled(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtriggerListenerQuotaBump(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->triggerListenerQuotaBump(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePowerWhitelistCache(Lcom/android/server/usage/AppStandbyController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->updatePowerWhitelistCache()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwaitForAdminData(Lcom/android/server/usage/AppStandbyController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->waitForAdminData()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTHRESHOLD_BUCKETS()[I
    .registers 1

    sget-object v0, Lcom/android/server/usage/AppStandbyController;->THRESHOLD_BUCKETS:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 162
    const/4 v0, 0x5

    new-array v1, v0, [J

    fill-array-data v1, :array_26

    sput-object v1, Lcom/android/server/usage/AppStandbyController;->DEFAULT_SCREEN_TIME_THRESHOLDS:[J

    .line 172
    new-array v1, v0, [J

    fill-array-data v1, :array_3e

    sput-object v1, Lcom/android/server/usage/AppStandbyController;->MINIMUM_SCREEN_TIME_THRESHOLDS:[J

    .line 187
    new-array v1, v0, [J

    fill-array-data v1, :array_56

    sput-object v1, Lcom/android/server/usage/AppStandbyController;->DEFAULT_ELAPSED_TIME_THRESHOLDS:[J

    .line 197
    new-array v1, v0, [J

    fill-array-data v1, :array_6e

    sput-object v1, Lcom/android/server/usage/AppStandbyController;->MINIMUM_ELAPSED_TIME_THRESHOLDS:[J

    .line 207
    new-array v0, v0, [I

    fill-array-data v0, :array_86

    sput-object v0, Lcom/android/server/usage/AppStandbyController;->THRESHOLD_BUCKETS:[I

    return-void

    nop

    :array_26
    .array-data 8
        0x0
        0x0
        0x36ee80
        0x6ddd00
        0x1499700
    .end array-data

    :array_3e
    .array-data 8
        0x0
        0x0
        0x0
        0x1b7740
        0x36ee80
    .end array-data

    :array_56
    .array-data 8
        0x0
        0x2932e00
        0x5265c00
        0xa4cb800
        0x2932e000
    .end array-data

    :array_6e
    .array-data 8
        0x0
        0x36ee80
        0x36ee80
        0x6ddd00
        0xdbba00
    .end array-data

    :array_86
    .array-data 4
        0xa
        0x14
        0x1e
        0x28
        0x2d
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 579
    new-instance v0, Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->get()Lcom/android/server/JobSchedulerBackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/JobSchedulerBackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/server/usage/AppStandbyController$Injector;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Lcom/android/server/usage/AppStandbyController;-><init>(Lcom/android/server/usage/AppStandbyController$Injector;)V

    .line 580
    return-void
.end method

.method constructor <init>(Lcom/android/server/usage/AppStandbyController$Injector;)V
    .registers 12
    .param p1, "injector"    # Lcom/android/server/usage/AppStandbyController$Injector;

    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    new-instance v0, Lcom/android/server/usage/AppStandbyController$Lock;

    invoke-direct {v0}, Lcom/android/server/usage/AppStandbyController$Lock;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    .line 244
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    .line 252
    new-instance v1, Lcom/android/server/usage/AppStandbyController$Lock;

    invoke-direct {v1}, Lcom/android/server/usage/AppStandbyController$Lock;-><init>()V

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedLock:Ljava/lang/Object;

    .line 262
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    .line 266
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    .line 273
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    .line 276
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    .line 282
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPendingIdleStateChecks:Landroid/util/SparseLongArray;

    .line 286
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorer:Ljava/lang/String;

    .line 288
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorerAtMillis:J

    .line 296
    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCachedDeviceProvisioningPackage:Ljava/lang/String;

    .line 311
    sget-object v3, Lcom/android/server/usage/AppStandbyController;->DEFAULT_ELAPSED_TIME_THRESHOLDS:[J

    aget-wide v4, v3, v2

    const-wide/16 v6, 0x4

    div-long/2addr v4, v6

    const-wide/32 v6, 0xdbba00

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/usage/AppStandbyController;->mCheckIdleIntervalMillis:J

    .line 317
    sget-object v4, Lcom/android/server/usage/AppStandbyController;->DEFAULT_SCREEN_TIME_THRESHOLDS:[J

    iput-object v4, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    .line 322
    iput-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    .line 324
    const-wide/32 v3, 0x36ee80

    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    .line 326
    const-wide/32 v3, 0x2932e00

    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    .line 328
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mSlicePinnedTimeoutMillis:J

    .line 330
    const/16 v5, 0x14

    iput v5, p0, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenPromotedBucket:I

    .line 336
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/usage/AppStandbyController;->mTriggerQuotaBumpOnNotificationSeen:Z

    .line 342
    iput-boolean v5, p0, Lcom/android/server/usage/AppStandbyController;->mRetainNotificationSeenImpactForPreTApps:Z

    .line 345
    const-wide/32 v8, 0x6ddd00

    iput-wide v8, p0, Lcom/android/server/usage/AppStandbyController;->mSystemUpdateUsageTimeoutMillis:J

    .line 347
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mPredictionTimeoutMillis:J

    .line 349
    const-wide/32 v3, 0x927c0

    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mSyncAdapterTimeoutMillis:J

    .line 354
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledNonDozeTimeoutMillis:J

    .line 360
    iput-wide v6, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledDozeTimeoutMillis:J

    .line 365
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncStartTimeoutMillis:J

    .line 369
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mUnexemptedSyncScheduledTimeoutMillis:J

    .line 372
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    .line 377
    const-wide/32 v3, 0x1b7740

    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    .line 384
    iput-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mLinkCrossProfileApps:Z

    .line 391
    const-wide/32 v3, 0x1d4c0

    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseWindowDurationMillis:J

    .line 399
    const/4 v6, 0x2

    iput v6, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseFgThresholdState:I

    .line 406
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsDurationMs:J

    .line 415
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsWithResponseDurationMs:J

    .line 425
    iput-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mNoteResponseEventForAllBroadcastSessions:Z

    .line 434
    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedRoles:Ljava/lang/String;

    .line 436
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedRolesList:Ljava/util/List;

    .line 444
    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedPermissions:Ljava/lang/String;

    .line 446
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedPermissionsList:Ljava/util/List;

    .line 455
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyProperties:Ljava/util/Map;

    .line 460
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mSystemPackagesAppIds:Ljava/util/ArrayList;

    .line 483
    iput-boolean v5, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    .line 2797
    new-instance v2, Lcom/android/server/usage/AppStandbyController$1;

    invoke-direct {v2, p0}, Lcom/android/server/usage/AppStandbyController$1;-><init>(Lcom/android/server/usage/AppStandbyController;)V

    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 583
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 584
    invoke-virtual {p1}, Lcom/android/server/usage/AppStandbyController$Injector;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    .line 585
    new-instance v8, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$Injector;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v8, p0, v2}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;-><init>(Lcom/android/server/usage/AppStandbyController;Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 586
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 588
    new-instance v2, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;

    invoke-direct {v2, p0, v1}, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;-><init>(Lcom/android/server/usage/AppStandbyController;Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver-IA;)V

    .line 589
    .local v2, "deviceStateReceiver":Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.os.action.CHARGING"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v9, v4

    .line 590
    .local v9, "deviceStates":Landroid/content/IntentFilter;
    const-string v4, "android.os.action.DISCHARGING"

    invoke-virtual {v9, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 591
    const-string v4, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-virtual {v9, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 592
    invoke-virtual {v3, v2, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 594
    monitor-enter v0

    .line 595
    :try_start_f8
    new-instance v4, Lcom/android/server/usage/AppIdleHistory;

    iget-object v5, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v5}, Lcom/android/server/usage/AppStandbyController$Injector;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 596
    invoke-virtual {v6}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v6

    invoke-direct {v4, v5, v6, v7}, Lcom/android/server/usage/AppIdleHistory;-><init>(Ljava/io/File;J)V

    iput-object v4, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 597
    monitor-exit v0
    :try_end_10c
    .catchall {:try_start_f8 .. :try_end_10c} :catchall_133

    .line 599
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 600
    .local v0, "packageFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 601
    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 602
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 603
    const-string/jumbo v4, "package"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 605
    new-instance v4, Lcom/android/server/usage/AppStandbyController$PackageReceiver;

    invoke-direct {v4, p0, v1}, Lcom/android/server/usage/AppStandbyController$PackageReceiver;-><init>(Lcom/android/server/usage/AppStandbyController;Lcom/android/server/usage/AppStandbyController$PackageReceiver-IA;)V

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    move-object v6, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 607
    return-void

    .line 597
    .end local v0    # "packageFilter":Landroid/content/IntentFilter;
    :catchall_133
    move-exception v1

    :try_start_134
    monitor-exit v0
    :try_end_135
    .catchall {:try_start_134 .. :try_end_135} :catchall_133

    throw v1
.end method

.method private checkAndUpdateStandbyState(Ljava/lang/String;IIJ)V
    .registers 32
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uid"    # I
    .param p4, "elapsedRealtime"    # J

    .line 914
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-wide/from16 v12, p4

    if-gtz p3, :cond_14

    .line 916
    :try_start_a
    iget-object v0, v9, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v10, v11}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_10} :catch_12

    .line 921
    .end local p3    # "uid":I
    .local v0, "uid":I
    move v14, v0

    goto :goto_16

    .line 917
    .end local v0    # "uid":I
    .restart local p3    # "uid":I
    :catch_12
    move-exception v0

    .line 920
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-void

    .line 914
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_14
    move/from16 v14, p3

    .line 923
    .end local p3    # "uid":I
    .local v14, "uid":I
    :goto_16
    nop

    .line 924
    invoke-static {v14}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 923
    invoke-direct {v9, v10, v0, v11}, Lcom/android/server/usage/AppStandbyController;->getAppMinBucket(Ljava/lang/String;II)I

    move-result v15

    .line 930
    .local v15, "minBucket":I
    const/16 v0, 0xa

    if-gt v15, v0, :cond_49

    .line 933
    iget-object v8, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v8

    .line 934
    :try_start_26
    iget-object v1, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/16 v7, 0x100

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p4

    move v6, v15

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJII)V

    .line 936
    monitor-exit v8
    :try_end_35
    .catchall {:try_start_26 .. :try_end_35} :catchall_46

    .line 937
    const/16 v7, 0x100

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p4

    move v6, v15

    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    goto/16 :goto_13c

    .line 936
    :catchall_46
    move-exception v0

    :try_start_47
    monitor-exit v8
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v0

    .line 940
    :cond_49
    iget-object v8, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v8

    .line 941
    :try_start_4c
    iget-object v1, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 942
    invoke-virtual {v1, v10, v11, v12, v13}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v1

    move-object v7, v1

    .line 944
    .local v7, "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    iget v1, v7, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 945
    .local v1, "reason":I
    const v2, 0xff00

    and-int v6, v1, v2

    .line 949
    .local v6, "oldMainReason":I
    const/16 v2, 0x400

    if-ne v6, v2, :cond_60

    .line 950
    monitor-exit v8

    return-void

    .line 952
    :cond_60
    iget v2, v7, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    move v4, v2

    .line 953
    .local v4, "oldBucket":I
    const/16 v2, 0x32

    if-ne v4, v2, :cond_69

    .line 955
    monitor-exit v8

    return-void

    .line 957
    :cond_69
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 958
    .local v2, "newBucket":I
    invoke-direct {v9, v7, v12, v13}, Lcom/android/server/usage/AppStandbyController;->predictionTimedOut(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;J)Z

    move-result v3

    move/from16 v16, v3

    .line 960
    .local v16, "predictionLate":Z
    const/16 v3, 0x100

    if-eq v6, v3, :cond_81

    const/16 v3, 0x300

    if-eq v6, v3, :cond_81

    const/16 v3, 0x200

    if-eq v6, v3, :cond_81

    if-eqz v16, :cond_9a

    .line 965
    :cond_81
    if-nez v16, :cond_93

    iget v3, v7, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    if-lt v3, v0, :cond_93

    iget v3, v7, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    const/16 v5, 0x28

    if-gt v3, v5, :cond_93

    .line 967
    iget v3, v7, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    move v2, v3

    .line 968
    const/16 v1, 0x501

    goto :goto_9a

    .line 974
    :cond_93
    invoke-direct {v9, v10, v11, v12, v13}, Lcom/android/server/usage/AppStandbyController;->getBucketForLocked(Ljava/lang/String;IJ)I

    move-result v3

    move v2, v3

    .line 980
    const/16 v1, 0x200

    .line 985
    :cond_9a
    :goto_9a
    iget-object v3, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v3, v12, v13}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v17

    move-wide/from16 v19, v17

    .line 986
    .local v19, "elapsedTimeAdjusted":J
    move v3, v1

    move-wide/from16 v0, v19

    .end local v1    # "reason":I
    .end local v19    # "elapsedTimeAdjusted":J
    .local v0, "elapsedTimeAdjusted":J
    .local v3, "reason":I
    invoke-direct {v9, v7, v2, v0, v1}, Lcom/android/server/usage/AppStandbyController;->getMinBucketWithValidExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)I

    move-result v5

    .line 988
    .local v5, "bucketWithValidExpiryTime":I
    move/from16 v17, v2

    .end local v2    # "newBucket":I
    .local v17, "newBucket":I
    const/4 v2, -0x1

    if-eq v5, v2, :cond_c0

    .line 989
    move v2, v5

    .line 990
    .end local v17    # "newBucket":I
    .restart local v2    # "newBucket":I
    move/from16 v18, v3

    const/16 v3, 0xa

    .end local v3    # "reason":I
    .local v18, "reason":I
    if-eq v2, v3, :cond_bd

    iget v3, v7, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-ne v3, v2, :cond_ba

    goto :goto_bd

    .line 993
    :cond_ba
    const/16 v3, 0x307

    .end local v18    # "reason":I
    .restart local v3    # "reason":I
    goto :goto_c4

    .line 991
    .end local v3    # "reason":I
    .restart local v18    # "reason":I
    :cond_bd
    :goto_bd
    iget v3, v7, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .end local v18    # "reason":I
    .restart local v3    # "reason":I
    goto :goto_c4

    .line 988
    .end local v2    # "newBucket":I
    .restart local v17    # "newBucket":I
    :cond_c0
    move/from16 v18, v3

    .end local v3    # "reason":I
    .restart local v18    # "reason":I
    move/from16 v2, v17

    .line 1001
    .end local v17    # "newBucket":I
    .end local v18    # "reason":I
    .restart local v2    # "newBucket":I
    .restart local v3    # "reason":I
    :goto_c4
    move/from16 v17, v2

    move/from16 p3, v3

    .end local v2    # "newBucket":I
    .end local v3    # "reason":I
    .restart local v17    # "newBucket":I
    .local p3, "reason":I
    iget-wide v2, v7, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    const-wide/16 v18, 0x0

    cmp-long v2, v2, v18

    if-ltz v2, :cond_f1

    iget-wide v2, v7, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    move/from16 v19, v5

    move/from16 v18, v6

    .end local v5    # "bucketWithValidExpiryTime":I
    .end local v6    # "oldMainReason":I
    .local v18, "oldMainReason":I
    .local v19, "bucketWithValidExpiryTime":I
    iget-wide v5, v7, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    cmp-long v2, v2, v5

    if-lez v2, :cond_f5

    iget-wide v2, v7, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    sub-long v2, v0, v2

    iget-object v5, v9, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1004
    invoke-virtual {v5}, Lcom/android/server/usage/AppStandbyController$Injector;->getAutoRestrictedBucketDelayMs()J

    move-result-wide v5

    cmp-long v2, v2, v5

    if-ltz v2, :cond_f5

    .line 1005
    const/16 v2, 0x2d

    .line 1006
    .end local v17    # "newBucket":I
    .restart local v2    # "newBucket":I
    iget v3, v7, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I

    move/from16 v17, v3

    .end local p3    # "reason":I
    .restart local v3    # "reason":I
    goto :goto_f9

    .line 1001
    .end local v2    # "newBucket":I
    .end local v3    # "reason":I
    .end local v18    # "oldMainReason":I
    .end local v19    # "bucketWithValidExpiryTime":I
    .restart local v5    # "bucketWithValidExpiryTime":I
    .restart local v6    # "oldMainReason":I
    .restart local v17    # "newBucket":I
    .restart local p3    # "reason":I
    :cond_f1
    move/from16 v19, v5

    move/from16 v18, v6

    .line 1011
    .end local v5    # "bucketWithValidExpiryTime":I
    .end local v6    # "oldMainReason":I
    .restart local v18    # "oldMainReason":I
    .restart local v19    # "bucketWithValidExpiryTime":I
    :cond_f5
    move/from16 v2, v17

    move/from16 v17, p3

    .end local p3    # "reason":I
    .restart local v2    # "newBucket":I
    .local v17, "reason":I
    :goto_f9
    const/16 v3, 0x2d

    if-ne v2, v3, :cond_103

    iget-boolean v3, v9, Lcom/android/server/usage/AppStandbyController;->mAllowRestrictedBucket:Z

    if-nez v3, :cond_103

    .line 1012
    const/16 v2, 0x28

    .line 1018
    :cond_103
    if-le v2, v15, :cond_108

    .line 1019
    move v2, v15

    move v6, v2

    goto :goto_109

    .line 1018
    :cond_108
    move v6, v2

    .line 1031
    .end local v2    # "newBucket":I
    .local v6, "newBucket":I
    :goto_109
    if-ne v4, v6, :cond_111

    if-eqz v16, :cond_10e

    goto :goto_111

    :cond_10e
    move-object/from16 v25, v8

    goto :goto_13b

    .line 1032
    :cond_111
    :goto_111
    iget-object v2, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-wide/from16 v20, v0

    .end local v0    # "elapsedTimeAdjusted":J
    .local v20, "elapsedTimeAdjusted":J
    move-object v1, v2

    move-object/from16 v2, p1

    move/from16 v3, p2

    move v0, v4

    .end local v4    # "oldBucket":I
    .local v0, "oldBucket":I
    move-wide/from16 v4, p4

    move/from16 v22, v6

    .end local v6    # "newBucket":I
    .local v22, "newBucket":I
    move-object/from16 v23, v7

    .end local v7    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .local v23, "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    move/from16 v7, v17

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJII)V
    :try_end_126
    .catchall {:try_start_4c .. :try_end_126} :catchall_13d

    .line 1034
    const/16 v24, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p4

    move/from16 v6, v22

    move/from16 v7, v17

    move-object/from16 v25, v8

    move/from16 v8, v24

    :try_start_138
    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 1037
    .end local v0    # "oldBucket":I
    .end local v16    # "predictionLate":Z
    .end local v17    # "reason":I
    .end local v18    # "oldMainReason":I
    .end local v19    # "bucketWithValidExpiryTime":I
    .end local v20    # "elapsedTimeAdjusted":J
    .end local v22    # "newBucket":I
    .end local v23    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    :goto_13b
    monitor-exit v25

    .line 1039
    :goto_13c
    return-void

    .line 1037
    :catchall_13d
    move-exception v0

    move-object/from16 v25, v8

    :goto_140
    monitor-exit v25
    :try_end_141
    .catchall {:try_start_138 .. :try_end_141} :catchall_142

    throw v0

    :catchall_142
    move-exception v0

    goto :goto_140
.end method

.method private evaluateSystemAppException(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2153
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    if-nez v0, :cond_5

    .line 2155
    return-void

    .line 2158
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const v1, 0x1c0200

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2160
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v0}, Lcom/android/server/usage/AppStandbyController;->maybeUpdateHeadlessSystemAppCache(Landroid/content/pm/PackageInfo;)Z
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_11} :catch_13

    .line 2165
    nop

    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    goto :goto_1d

    .line 2161
    :catch_13
    move-exception v0

    .line 2162
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    monitor-enter v1

    .line 2163
    :try_start_17
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2164
    monitor-exit v1

    .line 2166
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1d
    return-void

    .line 2164
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_1e
    move-exception v2

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_1e

    throw v2
.end method

.method private fetchCarrierPrivilegedAppsCPL()V
    .registers 3

    .line 1953
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    .line 1954
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1955
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    nop

    .line 1956
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCarrierPrivilegedPackagesForAllActiveSubscriptions()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    .line 1957
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    .line 1961
    return-void
.end method

.method private getAppMinBucket(Ljava/lang/String;I)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1383
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 1384
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/usage/AppStandbyController;->getAppMinBucket(Ljava/lang/String;II)I

    move-result v1
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_e} :catch_f

    return v1

    .line 1385
    .end local v0    # "uid":I
    :catch_f
    move-exception v0

    .line 1387
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v1, 0x32

    return v1
.end method

.method private getAppMinBucket(Ljava/lang/String;II)I
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userId"    # I

    .line 1396
    const/16 v0, 0x32

    if-nez p1, :cond_5

    return v0

    .line 1398
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    const/4 v2, 0x5

    if-nez v1, :cond_b

    .line 1399
    return v2

    .line 1401
    :cond_b
    const/16 v1, 0x2710

    if-ge p2, v1, :cond_10

    .line 1403
    return v2

    .line 1405
    :cond_10
    const-string v1, "android"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1408
    return v2

    .line 1410
    :cond_19
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    const/16 v3, 0xa

    if-eqz v1, :cond_69

    .line 1414
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isNonIdleWhitelisted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1415
    return v2

    .line 1418
    :cond_28
    invoke-virtual {p0, p1, p3}, Lcom/android/server/usage/AppStandbyController;->isActiveDeviceAdmin(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1419
    return v2

    .line 1422
    :cond_2f
    invoke-direct {p0, p1, p3}, Lcom/android/server/usage/AppStandbyController;->isAdminProtectedPackages(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1423
    return v2

    .line 1426
    :cond_36
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppStandbyController;->isActiveNetworkScorer(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1427
    return v2

    .line 1430
    :cond_3d
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    if-eqz v1, :cond_4a

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1431
    invoke-virtual {v4, v1, p1, p3}, Lcom/android/server/usage/AppStandbyController$Injector;->isBoundWidgetPackage(Landroid/appwidget/AppWidgetManager;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1432
    return v3

    .line 1435
    :cond_4a
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppStandbyController;->isDeviceProvisioningPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1436
    return v2

    .line 1439
    :cond_51
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isWellbeingPackage(Ljava/lang/String;)Z

    move-result v1

    const/16 v4, 0x14

    if-eqz v1, :cond_5c

    .line 1440
    return v4

    .line 1443
    :cond_5c
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    invoke-virtual {v1, p1, v5}, Lcom/android/server/usage/AppStandbyController$Injector;->hasExactAlarmPermission(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 1444
    return v4

    .line 1449
    :cond_69
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppStandbyController;->isCarrierApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 1450
    return v2

    .line 1453
    :cond_70
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppStandbyController;->isHeadlessSystemApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 1454
    return v3

    .line 1457
    :cond_77
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_84

    .line 1459
    const/16 v0, 0x1e

    return v0

    .line 1462
    :cond_84
    return v0
.end method

.method private getBucketForLocked(Ljava/lang/String;IJ)I
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    .line 1073
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v5, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    iget-object v6, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usage/AppIdleHistory;->getThresholdIndex(Ljava/lang/String;IJ[J[J)I

    move-result v0

    .line 1075
    .local v0, "bucketIndex":I
    if-ltz v0, :cond_14

    sget-object v1, Lcom/android/server/usage/AppStandbyController;->THRESHOLD_BUCKETS:[I

    aget v1, v1, v0

    goto :goto_16

    :cond_14
    const/16 v1, 0x32

    :goto_16
    return v1
.end method

.method private getCrossProfileTargets(Ljava/lang/String;I)Ljava/util/List;
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 1231
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1232
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mLinkCrossProfileApps:Z

    if-nez v1, :cond_d

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1233
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_15

    .line 1234
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/AppStandbyController$Injector;->getValidCrossProfileTargets(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1233
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private getMinBucketWithValidExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)I
    .registers 12
    .param p1, "usageHistory"    # Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .param p2, "targetBucket"    # I
    .param p3, "elapsedTimeMs"    # J

    .line 1210
    iget-object v0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    .line 1211
    return v1

    .line 1213
    :cond_6
    iget-object v0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    .line 1214
    .local v0, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_26

    .line 1215
    iget-object v3, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v3

    .line 1216
    .local v3, "bucket":I
    if-gt p2, v3, :cond_18

    .line 1217
    goto :goto_26

    .line 1219
    :cond_18
    iget-object v4, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    .line 1220
    .local v4, "expiryTimeMs":J
    cmp-long v6, v4, p3

    if-lez v6, :cond_23

    .line 1221
    return v3

    .line 1214
    .end local v3    # "bucket":I
    .end local v4    # "expiryTimeMs":J
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1224
    .end local v2    # "i":I
    :cond_26
    :goto_26
    return v1
.end method

.method private getSystemPackagesWithLauncherActivities()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2231
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2232
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2233
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const v2, 0x1c0200

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 2235
    .local v1, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 2236
    .local v2, "ret":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 2237
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2238
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    goto :goto_20

    .line 2239
    :cond_34
    return-object v2
.end method

.method private getTargetSdkVersion(Ljava/lang/String;)I
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1201
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageTargetSdkVersion(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private informListeners(Ljava/lang/String;IIIZ)V
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "bucket"    # I
    .param p4, "reason"    # I
    .param p5, "userInteraction"    # Z

    .line 1978
    const/16 v0, 0x28

    if-lt p3, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    move v4, v0

    .line 1979
    .local v4, "idle":Z
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1980
    :try_start_b
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_11
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    move-object v8, v1

    .line 1981
    .local v8, "listener":Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
    move-object v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;->onAppIdleStateChanged(Ljava/lang/String;IZII)V

    .line 1982
    if-eqz p5, :cond_2a

    .line 1983
    invoke-virtual {v8, p1, p2}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;->onUserInteractionStarted(Ljava/lang/String;I)V

    .line 1985
    .end local v8    # "listener":Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
    :cond_2a
    goto :goto_11

    .line 1986
    :cond_2b
    monitor-exit v0

    .line 1987
    return-void

    .line 1986
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_b .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method private informParoleStateChanged()V
    .registers 5

    .line 1990
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isInParole()Z

    move-result v0

    .line 1991
    .local v0, "paroled":Z
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1992
    :try_start_7
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    .line 1993
    .local v3, "listener":Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
    invoke-virtual {v3, v0}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;->onParoleStateChanged(Z)V

    .line 1994
    .end local v3    # "listener":Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
    goto :goto_d

    .line 1995
    :cond_1d
    monitor-exit v1

    .line 1996
    return-void

    .line 1995
    :catchall_1f
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method private isActiveNetworkScorer(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1967
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1968
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorer:Ljava/lang/String;

    if-eqz v2, :cond_12

    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorerAtMillis:J

    const-wide/16 v4, 0x1388

    sub-long v4, v0, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1c

    .line 1970
    :cond_12
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$Injector;->getActiveNetworkScorer()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorer:Ljava/lang/String;

    .line 1971
    iput-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorerAtMillis:J

    .line 1973
    :cond_1c
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorer:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private isAdminProtectedPackages(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1843
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1844
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    .line 1845
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1846
    monitor-exit v0

    return v3

    .line 1848
    :cond_1d
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    .line 1849
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    goto :goto_35

    :cond_34
    const/4 v3, 0x0

    :goto_35
    monitor-exit v0

    .line 1848
    return v3

    .line 1850
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v1
.end method

.method private isAppIdleUnfiltered(Ljava/lang/String;IJ)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    .line 1337
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1338
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->isIdle(Ljava/lang/String;IJ)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1339
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private isCarrierApp(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1929
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1930
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    if-nez v1, :cond_a

    .line 1931
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->fetchCarrierPrivilegedAppsCPL()V

    .line 1933
    :cond_a
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    if-eqz v1, :cond_14

    .line 1934
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1936
    :cond_14
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1937
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private isDeviceProvisioningPackage(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1921
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCachedDeviceProvisioningPackage:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 1922
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104026a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCachedDeviceProvisioningPackage:Ljava/lang/String;

    .line 1925
    :cond_13
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCachedDeviceProvisioningPackage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isDisplayOn()Z
    .registers 2

    .line 2057
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->isDefaultDisplayOn()Z

    move-result v0

    return v0
.end method

.method private isHeadlessSystemApp(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1466
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    monitor-enter v0

    .line 1467
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1468
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method static isUserUsage(I)Z
    .registers 4
    .param p0, "reason"    # I

    .line 1483
    const v0, 0xff00

    and-int/2addr v0, p0

    const/4 v1, 0x0

    const/16 v2, 0x300

    if-ne v0, v2, :cond_13

    .line 1484
    and-int/lit16 v0, p0, 0xff

    .line 1485
    .local v0, "subReason":I
    const/4 v2, 0x3

    if-eq v0, v2, :cond_11

    const/4 v2, 0x4

    if-ne v0, v2, :cond_12

    :cond_11
    const/4 v1, 0x1

    :cond_12
    return v1

    .line 1488
    .end local v0    # "subReason":I
    :cond_13
    return v1
.end method

.method private loadHeadlessSystemAppCache()V
    .registers 14

    .line 2244
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2245
    .local v0, "start":J
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const v3, 0x1c0200

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v2

    .line 2248
    .local v2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->getSystemPackagesWithLauncherActivities()Ljava/util/Set;

    move-result-object v3

    .line 2250
    .local v3, "systemLauncherActivities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .line 2251
    .local v5, "packageCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_17
    if-ge v6, v5, :cond_3f

    .line 2252
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 2253
    .local v7, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-nez v7, :cond_22

    .line 2254
    goto :goto_3c

    .line 2256
    :cond_22
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2257
    .local v8, "pkg":Ljava/lang/String;
    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    .line 2259
    .local v9, "isHeadLess":Z
    invoke-direct {p0, v8, v9}, Lcom/android/server/usage/AppStandbyController;->updateHeadlessSystemAppCache(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_3c

    .line 2260
    iget-object v10, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v11, 0xb

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v4, v12, v8}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 2262
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 2251
    .end local v7    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v8    # "pkg":Ljava/lang/String;
    .end local v9    # "isHeadLess":Z
    :cond_3c
    :goto_3c
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 2265
    .end local v6    # "i":I
    :cond_3f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2266
    .local v6, "end":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loaded headless system app cache in "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v8, v6, v0

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " ms: appIdleEnabled="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v8, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "AppStandbyController"

    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    return-void
.end method

.method private maybeInformListeners(Ljava/lang/String;IJIIZ)V
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "bucket"    # I
    .param p6, "reason"    # I
    .param p7, "userStartedInteracting"    # Z

    .line 1051
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1052
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppIdleHistory;->shouldInformListeners(Ljava/lang/String;IJI)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1054
    invoke-static {p1, p2, p5, p6, p7}, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->obtain(Ljava/lang/String;IIIZ)Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;

    move-result-object v1

    .line 1057
    .local v1, "r":Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1059
    .end local v1    # "r":Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;
    :cond_1d
    monitor-exit v0

    .line 1060
    return-void

    .line 1059
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method private maybeUpdateHeadlessSystemAppCache(Landroid/content/pm/PackageInfo;)Z
    .registers 6
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;

    .line 2174
    const/4 v0, 0x0

    if-eqz p1, :cond_3f

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_3f

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2175
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2176
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_3f

    .line 2179
    :cond_18
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2180
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2181
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 2182
    .local v1, "frontDoorActivityIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const v3, 0x1c0200

    invoke-virtual {v2, v1, v3, v0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 2184
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/jobs/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/usage/AppStandbyController;->updateHeadlessSystemAppCache(Ljava/lang/String;Z)Z

    move-result v2

    return v2

    .line 2177
    .end local v0    # "res":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1    # "frontDoorActivityIntent":Landroid/content/Intent;
    :cond_3f
    :goto_3f
    return v0
.end method

.method private notifyBatteryStats(Ljava/lang/String;IZ)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z

    .line 1080
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2000

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v0

    .line 1082
    .local v0, "uid":I
    if-eqz p3, :cond_12

    .line 1083
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/usage/AppStandbyController$Injector;->noteEvent(ILjava/lang/String;I)V

    goto :goto_19

    .line 1086
    :cond_12
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/usage/AppStandbyController$Injector;->noteEvent(ILjava/lang/String;I)V
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_19} :catch_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 1090
    .end local v0    # "uid":I
    :goto_19
    goto :goto_1b

    .line 1089
    :catch_1a
    move-exception v0

    .line 1091
    :goto_1b
    return-void
.end method

.method private postParoleStateChanged()V
    .registers 3

    .line 840
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->removeMessages(I)V

    .line 841
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendEmptyMessage(I)Z

    .line 842
    return-void
.end method

.method private predictionTimedOut(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;J)Z
    .registers 8
    .param p1, "app"    # Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .param p2, "elapsedRealtime"    # J

    .line 1043
    iget-wide v0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_19

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 1044
    invoke-virtual {v0, p2, p3}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mPredictionTimeoutMillis:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 1043
    :goto_1a
    return v0
.end method

.method private reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 28
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "providerPkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 693
    move-object/from16 v11, p0

    move/from16 v12, p3

    iget-boolean v0, v11, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_9

    return-void

    .line 696
    :cond_9
    move-object/from16 v13, p1

    invoke-static {v13, v12}, Landroid/content/ContentResolver;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v14

    .line 698
    .local v14, "packages":[Ljava/lang/String;
    iget-object v0, v11, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v15

    .line 699
    .local v15, "pmi":Landroid/content/pm/PackageManagerInternal;
    iget-object v0, v11, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v16

    .line 700
    .local v16, "elapsedRealtime":J
    array-length v0, v14

    const/4 v1, 0x0

    move v10, v1

    :goto_1e
    if-ge v10, v0, :cond_78

    aget-object v8, v14, v10

    .line 702
    .local v8, "packageName":Ljava/lang/String;
    move-object/from16 v9, p2

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 703
    move/from16 v20, v10

    goto :goto_75

    .line 706
    :cond_2d
    const-wide/16 v1, 0x0

    invoke-virtual {v15, v8, v1, v2, v12}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v18

    .line 709
    .local v18, "appId":I
    iget-object v1, v11, Lcom/android/server/usage/AppStandbyController;->mSystemPackagesAppIds:Ljava/util/ArrayList;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 710
    invoke-direct {v11, v8, v12}, Lcom/android/server/usage/AppStandbyController;->getCrossProfileTargets(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v19

    .line 712
    .local v19, "linkedProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    iget-object v6, v11, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v6

    .line 713
    const/16 v4, 0xa

    const/16 v5, 0x8

    :try_start_4e
    iget-wide v2, v11, Lcom/android/server/usage/AppStandbyController;->mSyncAdapterTimeoutMillis:J
    :try_end_50
    .catchall {:try_start_4e .. :try_end_50} :catchall_6a

    move-object/from16 v1, p0

    move-wide/from16 v20, v2

    move-object v2, v8

    move/from16 v3, p3

    move-object/from16 v22, v6

    move-wide/from16 v6, v16

    move-object/from16 v23, v8

    .end local v8    # "packageName":Ljava/lang/String;
    .local v23, "packageName":Ljava/lang/String;
    move-wide/from16 v8, v20

    move/from16 v20, v10

    move-object/from16 v10, v19

    :try_start_63
    invoke-direct/range {v1 .. v10}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageCrossUserLocked(Ljava/lang/String;IIIJJLjava/util/List;)V

    .line 716
    monitor-exit v22

    goto :goto_75

    :catchall_68
    move-exception v0

    goto :goto_6f

    .end local v23    # "packageName":Ljava/lang/String;
    .restart local v8    # "packageName":Ljava/lang/String;
    :catchall_6a
    move-exception v0

    move-object/from16 v22, v6

    move-object/from16 v23, v8

    .end local v8    # "packageName":Ljava/lang/String;
    .restart local v23    # "packageName":Ljava/lang/String;
    :goto_6f
    monitor-exit v22
    :try_end_70
    .catchall {:try_start_63 .. :try_end_70} :catchall_68

    throw v0

    .line 709
    .end local v19    # "linkedProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .end local v23    # "packageName":Ljava/lang/String;
    .restart local v8    # "packageName":Ljava/lang/String;
    :cond_71
    move-object/from16 v23, v8

    move/from16 v20, v10

    .line 700
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v18    # "appId":I
    :goto_75
    add-int/lit8 v10, v20, 0x1

    goto :goto_1e

    .line 719
    :cond_78
    return-void
.end method

.method private reportEventLocked(Ljava/lang/String;IJI)V
    .registers 34
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "eventType"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "userId"    # I

    .line 1126
    move-object/from16 v8, p0

    move-object/from16 v6, p1

    move/from16 v5, p2

    move-wide/from16 v3, p3

    move/from16 v2, p5

    iget-object v0, v8, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v0, v6, v2, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->isIdle(Ljava/lang/String;IJ)Z

    move-result v19

    .line 1129
    .local v19, "previouslyIdle":Z
    iget-object v0, v8, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v0, v6, v2, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v1

    .line 1131
    .local v1, "appHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    iget v0, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 1132
    .local v0, "prevBucket":I
    iget v7, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 1134
    .local v7, "prevBucketReason":I
    invoke-direct {v8, v5}, Lcom/android/server/usage/AppStandbyController;->usageEventToSubReason(I)I

    move-result v15

    .line 1135
    .local v15, "subReason":I
    or-int/lit16 v14, v15, 0x300

    .line 1136
    .local v14, "reason":I
    const/4 v13, -0x1

    const/16 v12, 0xa

    if-ne v5, v12, :cond_72

    .line 1139
    iget-boolean v9, v8, Lcom/android/server/usage/AppStandbyController;->mRetainNotificationSeenImpactForPreTApps:Z

    if-eqz v9, :cond_3b

    .line 1140
    invoke-direct/range {p0 .. p1}, Lcom/android/server/usage/AppStandbyController;->getTargetSdkVersion(Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0x21

    if-ge v9, v10, :cond_3b

    .line 1141
    const/16 v9, 0x14

    .line 1143
    .local v9, "notificationSeenPromotedBucket":I
    const-wide/32 v10, 0x2932e00

    move/from16 v20, v9

    move-wide/from16 v21, v10

    .local v10, "notificationSeenTimeoutMillis":J
    goto :goto_51

    .line 1146
    .end local v9    # "notificationSeenPromotedBucket":I
    .end local v10    # "notificationSeenTimeoutMillis":J
    :cond_3b
    iget-boolean v9, v8, Lcom/android/server/usage/AppStandbyController;->mTriggerQuotaBumpOnNotificationSeen:Z

    if-eqz v9, :cond_49

    .line 1147
    iget-object v9, v8, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 v10, 0x7

    invoke-virtual {v9, v10, v2, v13, v6}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 1148
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 1150
    :cond_49
    iget v9, v8, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenPromotedBucket:I

    .line 1151
    .restart local v9    # "notificationSeenPromotedBucket":I
    iget-wide v10, v8, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    move/from16 v20, v9

    move-wide/from16 v21, v10

    .line 1156
    .end local v9    # "notificationSeenPromotedBucket":I
    .local v20, "notificationSeenPromotedBucket":I
    .local v21, "notificationSeenTimeoutMillis":J
    :goto_51
    iget-object v9, v8, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const-wide/16 v16, 0x0

    add-long v23, v3, v21

    move-object v10, v1

    move-object/from16 v11, p1

    move/from16 v25, v7

    move v7, v12

    .end local v7    # "prevBucketReason":I
    .local v25, "prevBucketReason":I
    move/from16 v12, p5

    move v7, v13

    move/from16 v13, v20

    move/from16 v26, v14

    .end local v14    # "reason":I
    .local v26, "reason":I
    move v14, v15

    move/from16 v27, v15

    .end local v15    # "subReason":I
    .local v27, "subReason":I
    move-wide/from16 v15, v16

    move-wide/from16 v17, v23

    invoke-virtual/range {v9 .. v18}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 1159
    move-wide/from16 v9, v21

    .line 1160
    .end local v20    # "notificationSeenPromotedBucket":I
    .end local v21    # "notificationSeenTimeoutMillis":J
    .local v9, "nextCheckDelay":J
    goto/16 :goto_e4

    .end local v9    # "nextCheckDelay":J
    .end local v25    # "prevBucketReason":I
    .end local v26    # "reason":I
    .end local v27    # "subReason":I
    .restart local v7    # "prevBucketReason":I
    .restart local v14    # "reason":I
    .restart local v15    # "subReason":I
    :cond_72
    move/from16 v25, v7

    move v7, v13

    move/from16 v26, v14

    move/from16 v27, v15

    .end local v7    # "prevBucketReason":I
    .end local v14    # "reason":I
    .end local v15    # "subReason":I
    .restart local v25    # "prevBucketReason":I
    .restart local v26    # "reason":I
    .restart local v27    # "subReason":I
    const/16 v9, 0xe

    if-ne v5, v9, :cond_94

    .line 1162
    iget-object v9, v8, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/16 v13, 0x14

    const-wide/16 v15, 0x0

    iget-wide v10, v8, Lcom/android/server/usage/AppStandbyController;->mSlicePinnedTimeoutMillis:J

    add-long v17, v3, v10

    move-object v10, v1

    move-object/from16 v11, p1

    move/from16 v12, p5

    move/from16 v14, v27

    invoke-virtual/range {v9 .. v18}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 1165
    iget-wide v9, v8, Lcom/android/server/usage/AppStandbyController;->mSlicePinnedTimeoutMillis:J

    .restart local v9    # "nextCheckDelay":J
    goto :goto_e4

    .line 1166
    .end local v9    # "nextCheckDelay":J
    :cond_94
    const/4 v9, 0x6

    if-ne v5, v9, :cond_ae

    .line 1167
    iget-object v9, v8, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/16 v13, 0xa

    const-wide/16 v15, 0x0

    iget-wide v10, v8, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    add-long v17, v3, v10

    move-object v10, v1

    move-object/from16 v11, p1

    move/from16 v12, p5

    move/from16 v14, v27

    invoke-virtual/range {v9 .. v18}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 1170
    iget-wide v9, v8, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    .restart local v9    # "nextCheckDelay":J
    goto :goto_e4

    .line 1171
    .end local v9    # "nextCheckDelay":J
    :cond_ae
    const/16 v9, 0x13

    if-ne v5, v9, :cond_ce

    .line 1173
    const/16 v9, 0x32

    if-eq v0, v9, :cond_b7

    return-void

    .line 1174
    :cond_b7
    iget-object v9, v8, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/16 v13, 0xa

    const-wide/16 v15, 0x0

    iget-wide v10, v8, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    add-long v17, v3, v10

    move-object v10, v1

    move-object/from16 v11, p1

    move/from16 v12, p5

    move/from16 v14, v27

    invoke-virtual/range {v9 .. v18}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 1177
    iget-wide v9, v8, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    .restart local v9    # "nextCheckDelay":J
    goto :goto_e4

    .line 1179
    .end local v9    # "nextCheckDelay":J
    :cond_ce
    iget-object v9, v8, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/16 v13, 0xa

    iget-wide v10, v8, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    add-long v17, v3, v10

    move-object v10, v1

    move-object/from16 v11, p1

    move/from16 v12, p5

    move/from16 v14, v27

    move-wide/from16 v15, p3

    invoke-virtual/range {v9 .. v18}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 1182
    iget-wide v9, v8, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    .line 1184
    .restart local v9    # "nextCheckDelay":J
    :goto_e4
    iget v11, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/4 v12, 0x0

    if-eq v11, v0, :cond_11f

    .line 1185
    iget-object v11, v8, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v13, 0xb

    .line 1186
    invoke-virtual {v11, v13, v2, v7, v6}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 1185
    invoke-virtual {v11, v7, v9, v10}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1188
    iget v7, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v11, 0xa

    if-ne v7, v11, :cond_105

    const v7, 0xff00

    and-int v7, v25, v7

    const/16 v11, 0x300

    if-eq v7, v11, :cond_105

    const/4 v7, 0x1

    goto :goto_106

    :cond_105
    move v7, v12

    :goto_106
    move/from16 v11, v25

    .line 1191
    .end local v25    # "prevBucketReason":I
    .local v7, "userStartedInteracting":Z
    .local v11, "prevBucketReason":I
    iget v13, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    move v14, v0

    .end local v0    # "prevBucket":I
    .local v14, "prevBucket":I
    move-object/from16 v0, p0

    move-object v15, v1

    .end local v1    # "appHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .local v15, "appHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    move-object/from16 v1, p1

    move-wide/from16 v16, v9

    move v9, v2

    .end local v9    # "nextCheckDelay":J
    .local v16, "nextCheckDelay":J
    move/from16 v2, p5

    move-wide/from16 v3, p3

    move v5, v13

    move-object v10, v6

    move/from16 v6, v26

    invoke-direct/range {v0 .. v7}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    goto :goto_127

    .line 1184
    .end local v7    # "userStartedInteracting":Z
    .end local v11    # "prevBucketReason":I
    .end local v14    # "prevBucket":I
    .end local v15    # "appHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .end local v16    # "nextCheckDelay":J
    .restart local v0    # "prevBucket":I
    .restart local v1    # "appHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .restart local v9    # "nextCheckDelay":J
    .restart local v25    # "prevBucketReason":I
    :cond_11f
    move v14, v0

    move-object v15, v1

    move-wide/from16 v16, v9

    move/from16 v11, v25

    move v9, v2

    move-object v10, v6

    .line 1195
    .end local v0    # "prevBucket":I
    .end local v1    # "appHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .end local v9    # "nextCheckDelay":J
    .end local v25    # "prevBucketReason":I
    .restart local v11    # "prevBucketReason":I
    .restart local v14    # "prevBucket":I
    .restart local v15    # "appHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .restart local v16    # "nextCheckDelay":J
    :goto_127
    if-eqz v19, :cond_12c

    .line 1196
    invoke-direct {v8, v10, v9, v12}, Lcom/android/server/usage/AppStandbyController;->notifyBatteryStats(Ljava/lang/String;IZ)V

    .line 1198
    :cond_12c
    return-void
.end method

.method private reportExemptedSyncScheduled(Ljava/lang/String;I)V
    .registers 23
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 722
    move-object/from16 v11, p0

    iget-boolean v0, v11, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_7

    return-void

    .line 728
    :cond_7
    iget-object v0, v11, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->isDeviceIdleMode()Z

    move-result v0

    if-nez v0, :cond_19

    .line 730
    const/16 v0, 0xa

    .line 731
    .local v0, "bucketToPromote":I
    const/16 v1, 0xb

    .line 732
    .local v1, "usageReason":I
    iget-wide v2, v11, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledNonDozeTimeoutMillis:J

    move v12, v0

    move v13, v1

    move-wide v14, v2

    .local v2, "durationMillis":J
    goto :goto_22

    .line 735
    .end local v0    # "bucketToPromote":I
    .end local v1    # "usageReason":I
    .end local v2    # "durationMillis":J
    :cond_19
    const/16 v0, 0x14

    .line 736
    .restart local v0    # "bucketToPromote":I
    const/16 v1, 0xc

    .line 737
    .restart local v1    # "usageReason":I
    iget-wide v2, v11, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledDozeTimeoutMillis:J

    move v12, v0

    move v13, v1

    move-wide v14, v2

    .line 740
    .end local v0    # "bucketToPromote":I
    .end local v1    # "usageReason":I
    .local v12, "bucketToPromote":I
    .local v13, "usageReason":I
    .local v14, "durationMillis":J
    :goto_22
    iget-object v0, v11, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v16

    .line 741
    .local v16, "elapsedRealtime":J
    invoke-direct/range {p0 .. p2}, Lcom/android/server/usage/AppStandbyController;->getCrossProfileTargets(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v18

    .line 742
    .local v18, "linkedProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    iget-object v10, v11, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v10

    .line 743
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move v4, v12

    move v5, v13

    move-wide/from16 v6, v16

    move-wide v8, v14

    move-object/from16 v19, v10

    move-object/from16 v10, v18

    :try_start_3e
    invoke-direct/range {v1 .. v10}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageCrossUserLocked(Ljava/lang/String;IIIJJLjava/util/List;)V

    .line 745
    monitor-exit v19

    .line 746
    return-void

    .line 745
    :catchall_43
    move-exception v0

    monitor-exit v19
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_43

    throw v0
.end method

.method private reportExemptedSyncStart(Ljava/lang/String;I)V
    .registers 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 766
    move-object/from16 v11, p0

    iget-boolean v0, v11, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_7

    return-void

    .line 768
    :cond_7
    iget-object v0, v11, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v12

    .line 769
    .local v12, "elapsedRealtime":J
    invoke-direct/range {p0 .. p2}, Lcom/android/server/usage/AppStandbyController;->getCrossProfileTargets(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v14

    .line 770
    .local v14, "linkedProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    iget-object v15, v11, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v15

    .line 771
    const/16 v4, 0xa

    const/16 v5, 0xd

    :try_start_18
    iget-wide v8, v11, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncStartTimeoutMillis:J

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide v6, v12

    move-object v10, v14

    invoke-direct/range {v1 .. v10}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageCrossUserLocked(Ljava/lang/String;IIIJJLjava/util/List;)V

    .line 774
    monitor-exit v15

    .line 775
    return-void

    .line 774
    :catchall_27
    move-exception v0

    monitor-exit v15
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_27

    throw v0
.end method

.method private reportNoninteractiveUsageCrossUserLocked(Ljava/lang/String;IIIJJLjava/util/List;)V
    .registers 23
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "bucket"    # I
    .param p4, "subReason"    # I
    .param p5, "elapsedRealtime"    # J
    .param p7, "nextCheckDelay"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIJJ",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    .line 786
    .local p9, "otherProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-direct/range {p0 .. p8}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageLocked(Ljava/lang/String;IIIJJ)V

    .line 788
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    move-result v0

    .line 789
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "profileIndex":I
    :goto_8
    if-ge v1, v0, :cond_27

    .line 790
    move-object/from16 v2, p9

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 791
    .local v3, "otherUserId":I
    move-object v4, p0

    move-object v5, p1

    move v6, v3

    move/from16 v7, p3

    move/from16 v8, p4

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    invoke-direct/range {v4 .. v12}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageLocked(Ljava/lang/String;IIIJJ)V

    .line 789
    .end local v3    # "otherUserId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_27
    move-object/from16 v2, p9

    .line 794
    .end local v1    # "profileIndex":I
    return-void
.end method

.method private reportNoninteractiveUsageLocked(Ljava/lang/String;IIIJJ)V
    .registers 29
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "bucket"    # I
    .param p4, "subReason"    # I
    .param p5, "elapsedRealtime"    # J
    .param p7, "nextCheckDelay"    # J

    .line 804
    move-object/from16 v8, p0

    move-wide/from16 v9, p7

    iget-object v11, v8, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    add-long v18, p5, v9

    const-wide/16 v16, 0x0

    move-object/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p4

    invoke-virtual/range {v11 .. v19}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v11

    .line 806
    .local v11, "appUsage":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    iget-object v0, v8, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 807
    const/16 v1, 0xb

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v13, v2, v12}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 806
    invoke-virtual {v0, v1, v9, v10}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 809
    iget v5, v11, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    iget v6, v11, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 811
    return-void
.end method

.method private reportUnexemptedSyncScheduled(Ljava/lang/String;I)V
    .registers 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 749
    move-object/from16 v11, p0

    iget-boolean v0, v11, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_7

    return-void

    .line 751
    :cond_7
    iget-object v0, v11, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v12

    .line 752
    .local v12, "elapsedRealtime":J
    iget-object v14, v11, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v14

    .line 753
    :try_start_10
    iget-object v0, v11, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_3a

    .line 754
    move-object/from16 v15, p1

    move/from16 v8, p2

    :try_start_16
    invoke-virtual {v0, v15, v8, v12, v13}, Lcom/android/server/usage/AppIdleHistory;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result v0

    .line 755
    .local v0, "currentBucket":I
    const/16 v1, 0x32

    if-ne v0, v1, :cond_36

    .line 756
    invoke-direct/range {p0 .. p2}, Lcom/android/server/usage/AppStandbyController;->getCrossProfileTargets(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    .line 758
    .local v10, "linkedProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    const/16 v4, 0x14

    const/16 v5, 0xe

    iget-wide v6, v11, Lcom/android/server/usage/AppStandbyController;->mUnexemptedSyncScheduledTimeoutMillis:J

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v16, v6

    move-wide v6, v12

    move-wide/from16 v8, v16

    invoke-direct/range {v1 .. v10}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageCrossUserLocked(Ljava/lang/String;IIIJJLjava/util/List;)V

    .line 762
    .end local v0    # "currentBucket":I
    .end local v10    # "linkedProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :cond_36
    monitor-exit v14

    .line 763
    return-void

    .line 762
    :catchall_38
    move-exception v0

    goto :goto_3d

    :catchall_3a
    move-exception v0

    move-object/from16 v15, p1

    :goto_3d
    monitor-exit v14
    :try_end_3e
    .catchall {:try_start_16 .. :try_end_3e} :catchall_38

    throw v0
.end method

.method private setAppStandbyBucket(Ljava/lang/String;IIIJZ)V
    .registers 32
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "newBucket"    # I
    .param p4, "reason"    # I
    .param p5, "elapsedRealtime"    # J
    .param p7, "resetTimeout"    # Z

    .line 1679
    move-object/from16 v9, p0

    move-object/from16 v13, p1

    move/from16 v14, p2

    move/from16 v7, p4

    move-wide/from16 v11, p5

    iget-boolean v0, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_f

    return-void

    .line 1681
    :cond_f
    iget-object v10, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1683
    :try_start_12
    iget-object v0, v9, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    const/4 v8, 0x0

    invoke-virtual {v0, v13, v8, v14}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageInstalled(Ljava/lang/String;II)Z

    move-result v0
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_221

    if-nez v0, :cond_3b

    .line 1684
    :try_start_1b
    const-string v0, "AppStandbyController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to set bucket of uninstalled app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    monitor-exit v10
    :try_end_34
    .catchall {:try_start_1b .. :try_end_34} :catchall_35

    return-void

    .line 1829
    :catchall_35
    move-exception v0

    move/from16 v15, p3

    move-object v2, v10

    goto/16 :goto_226

    .line 1687
    :cond_3b
    const/16 v0, 0x2d

    move/from16 v1, p3

    if-ne v1, v0, :cond_4e

    :try_start_41
    iget-boolean v2, v9, Lcom/android/server/usage/AppStandbyController;->mAllowRestrictedBucket:Z
    :try_end_43
    .catchall {:try_start_41 .. :try_end_43} :catchall_49

    if-nez v2, :cond_4e

    .line 1688
    const/16 v1, 0x28

    move v15, v1

    .end local p3    # "newBucket":I
    .local v1, "newBucket":I
    goto :goto_4f

    .line 1829
    .end local v1    # "newBucket":I
    .restart local p3    # "newBucket":I
    :catchall_49
    move-exception v0

    move v15, v1

    move-object v2, v10

    goto/16 :goto_226

    .line 1690
    :cond_4e
    move v15, v1

    .end local p3    # "newBucket":I
    .local v15, "newBucket":I
    :goto_4f
    :try_start_4f
    iget-object v1, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, v13, v14, v11, v12}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v1

    move-object v6, v1

    .line 1692
    .local v6, "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    const v1, 0xff00

    and-int v2, v7, v1

    const/16 v3, 0x500

    if-ne v2, v3, :cond_61

    const/4 v2, 0x1

    goto :goto_62

    :cond_61
    move v2, v8

    :goto_62
    move/from16 v18, v2

    .line 1695
    .local v18, "predicted":Z
    iget v2, v6, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v5, 0xa

    if-ge v2, v5, :cond_6c

    monitor-exit v10

    return-void

    .line 1698
    :cond_6c
    iget v2, v6, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v3, 0x32

    if-eq v2, v3, :cond_74

    if-ne v15, v3, :cond_78

    :cond_74
    if-eqz v18, :cond_78

    .line 1700
    monitor-exit v10

    return-void

    .line 1703
    :cond_78
    iget v2, v6, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    and-int/2addr v2, v1

    const/16 v3, 0x600

    if-ne v2, v3, :cond_81

    const/4 v2, 0x1

    goto :goto_82

    :cond_81
    move v2, v8

    :goto_82
    move/from16 v19, v2

    .line 1707
    .local v19, "wasForcedBySystem":Z
    const/16 v2, 0x400

    if-eqz v18, :cond_91

    iget v4, v6, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    and-int/2addr v4, v1

    if-eq v4, v2, :cond_8f

    if-eqz v19, :cond_91

    .line 1710
    :cond_8f
    monitor-exit v10

    return-void

    .line 1713
    :cond_91
    and-int v4, v7, v1

    if-ne v4, v3, :cond_97

    const/4 v4, 0x1

    goto :goto_98

    :cond_97
    move v4, v8

    :goto_98
    move/from16 v20, v4

    .line 1716
    .local v20, "isForcedBySystem":Z
    iget v4, v6, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-ne v4, v15, :cond_d8

    if-eqz v19, :cond_d8

    if-eqz v20, :cond_d8

    .line 1717
    if-ne v15, v0, :cond_b4

    .line 1718
    iget-object v1, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 1719
    move-object/from16 v2, p1

    move v0, v3

    move/from16 v3, p2

    move-wide/from16 v4, p5

    move-object v8, v6

    .end local v6    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .local v8, "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    move/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppIdleHistory;->noteRestrictionAttempt(Ljava/lang/String;IJI)V

    goto :goto_b6

    .line 1717
    .end local v8    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .restart local v6    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    :cond_b4
    move v0, v3

    move-object v8, v6

    .line 1722
    .end local v6    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .restart local v8    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    :goto_b6
    iget v1, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I
    :try_end_b8
    .catchall {:try_start_4f .. :try_end_b8} :catchall_21e

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    and-int/lit16 v1, v7, 0xff

    or-int v16, v0, v1

    .line 1725
    .end local p4    # "reason":I
    .local v16, "reason":I
    :try_start_bf
    iget-object v1, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p5

    move v6, v15

    move/from16 v7, v16

    move-object v0, v8

    .end local v8    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .local v0, "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJIIZ)V

    .line 1727
    monitor-exit v10
    :try_end_d1
    .catchall {:try_start_bf .. :try_end_d1} :catchall_d2

    return-void

    .line 1829
    .end local v0    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .end local v18    # "predicted":Z
    .end local v19    # "wasForcedBySystem":Z
    .end local v20    # "isForcedBySystem":Z
    :catchall_d2
    move-exception v0

    move-object v2, v10

    move/from16 v7, v16

    goto/16 :goto_226

    .line 1730
    .end local v16    # "reason":I
    .restart local v6    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .restart local v18    # "predicted":Z
    .restart local v19    # "wasForcedBySystem":Z
    .restart local v20    # "isForcedBySystem":Z
    .restart local p4    # "reason":I
    :cond_d8
    and-int v3, v7, v1

    if-ne v3, v2, :cond_de

    const/4 v2, 0x1

    goto :goto_df

    :cond_de
    move v2, v8

    :goto_df
    move/from16 v21, v2

    .line 1733
    .local v21, "isForcedByUser":Z
    :try_start_e1
    iget v2, v6, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v4, 0x28

    if-ne v2, v0, :cond_fe

    .line 1734
    iget v2, v6, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    and-int/2addr v1, v2

    const/16 v2, 0x200

    if-ne v1, v2, :cond_f4

    .line 1735
    if-eqz v18, :cond_fe

    if-lt v15, v4, :cond_fe

    .line 1738
    monitor-exit v10

    return-void

    .line 1740
    :cond_f4
    invoke-static/range {p4 .. p4}, Lcom/android/server/usage/AppStandbyController;->isUserUsage(I)Z

    move-result v1

    if-nez v1, :cond_fe

    if-nez v21, :cond_fe

    .line 1743
    monitor-exit v10

    return-void

    .line 1747
    :cond_fe
    const/4 v3, -0x1

    if-ne v15, v0, :cond_19d

    .line 1748
    iget-object v1, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 1749
    move-object/from16 v2, p1

    move v0, v3

    move/from16 v3, p2

    const/4 v0, 0x1

    move-wide/from16 v4, p5

    move-object/from16 v23, v6

    .end local v6    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .local v23, "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    move/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppIdleHistory;->noteRestrictionAttempt(Ljava/lang/String;IJI)V

    .line 1751
    if-eqz v21, :cond_15b

    .line 1757
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_140

    and-int/lit16 v1, v7, 0xff

    const/4 v2, 0x2

    if-eq v1, v2, :cond_140

    .line 1760
    iget-object v1, v9, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    iget-object v2, v9, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 1763
    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, v9, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    .line 1764
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040169

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v13, v0, v8

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1760
    invoke-static {v1, v2, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1767
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, v23

    goto :goto_19e

    .line 1769
    :cond_140
    const-string v0, "AppStandbyController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " restricted by user"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v23

    goto :goto_19e

    .line 1772
    :cond_15b
    move-object/from16 v0, v23

    .end local v23    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .restart local v0    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    iget-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    iget-object v3, v9, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1773
    invoke-virtual {v3}, Lcom/android/server/usage/AppStandbyController$Injector;->getAutoRestrictedBucketDelayMs()J

    move-result-wide v3

    add-long/2addr v1, v3

    sub-long/2addr v1, v11

    .line 1774
    .local v1, "timeUntilRestrictPossibleMs":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_19e

    .line 1775
    const-string v3, "AppStandbyController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tried to restrict recently used app: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " due to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    iget-object v3, v9, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v4, 0xb

    .line 1778
    const/4 v5, -0x1

    invoke-virtual {v3, v4, v14, v5, v13}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1777
    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1781
    monitor-exit v10

    return-void

    .line 1747
    .end local v0    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .end local v1    # "timeUntilRestrictPossibleMs":J
    .restart local v6    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    :cond_19d
    move-object v0, v6

    .line 1788
    .end local v6    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .restart local v0    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    :cond_19e
    :goto_19e
    if-eqz v18, :cond_1e2

    .line 1790
    iget-object v1, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, v11, v12}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v1

    .line 1793
    .local v1, "elapsedTimeAdjusted":J
    iget-object v3, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v3, v0, v1, v2, v15}, Lcom/android/server/usage/AppIdleHistory;->updateLastPrediction(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;JI)V

    .line 1795
    invoke-direct {v9, v0, v15, v1, v2}, Lcom/android/server/usage/AppStandbyController;->getMinBucketWithValidExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)I

    move-result v3
    :try_end_1af
    .catchall {:try_start_e1 .. :try_end_1af} :catchall_21e

    .line 1797
    .local v3, "bucketWithValidExpiryTime":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1cb

    .line 1798
    move v4, v3

    .line 1799
    .end local v15    # "newBucket":I
    .local v4, "newBucket":I
    const/16 v5, 0xa

    if-eq v4, v5, :cond_1c1

    :try_start_1b7
    iget v5, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-ne v5, v4, :cond_1bc

    goto :goto_1c1

    .line 1802
    :cond_1bc
    const/16 v5, 0x307

    move/from16 v22, v5

    .end local p4    # "reason":I
    .local v5, "reason":I
    goto :goto_1e5

    .line 1800
    .end local v5    # "reason":I
    .restart local p4    # "reason":I
    :cond_1c1
    :goto_1c1
    iget v5, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I
    :try_end_1c3
    .catchall {:try_start_1b7 .. :try_end_1c3} :catchall_1c6

    move/from16 v22, v5

    .end local p4    # "reason":I
    .restart local v5    # "reason":I
    goto :goto_1e5

    .line 1829
    .end local v0    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .end local v1    # "elapsedTimeAdjusted":J
    .end local v3    # "bucketWithValidExpiryTime":I
    .end local v5    # "reason":I
    .end local v18    # "predicted":Z
    .end local v19    # "wasForcedBySystem":Z
    .end local v20    # "isForcedBySystem":Z
    .end local v21    # "isForcedByUser":Z
    .restart local p4    # "reason":I
    :catchall_1c6
    move-exception v0

    move v15, v4

    move-object v2, v10

    goto/16 :goto_226

    .line 1808
    .end local v4    # "newBucket":I
    .restart local v0    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .restart local v1    # "elapsedTimeAdjusted":J
    .restart local v3    # "bucketWithValidExpiryTime":I
    .restart local v15    # "newBucket":I
    .restart local v18    # "predicted":Z
    .restart local v19    # "wasForcedBySystem":Z
    .restart local v20    # "isForcedBySystem":Z
    .restart local v21    # "isForcedByUser":Z
    :cond_1cb
    const/16 v4, 0x28

    if-ne v15, v4, :cond_1e2

    :try_start_1cf
    iget-boolean v4, v9, Lcom/android/server/usage/AppStandbyController;->mAllowRestrictedBucket:Z

    if-eqz v4, :cond_1e2

    .line 1810
    invoke-direct {v9, v13, v14, v11, v12}, Lcom/android/server/usage/AppStandbyController;->getBucketForLocked(Ljava/lang/String;IJ)I

    move-result v4
    :try_end_1d7
    .catchall {:try_start_1cf .. :try_end_1d7} :catchall_21e

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_1e2

    .line 1816
    const/16 v4, 0x2d

    .line 1817
    .end local v15    # "newBucket":I
    .restart local v4    # "newBucket":I
    const/16 v5, 0x200

    move/from16 v22, v5

    .end local p4    # "reason":I
    .restart local v5    # "reason":I
    goto :goto_1e5

    .line 1826
    .end local v1    # "elapsedTimeAdjusted":J
    .end local v3    # "bucketWithValidExpiryTime":I
    .end local v4    # "newBucket":I
    .end local v5    # "reason":I
    .restart local v15    # "newBucket":I
    .restart local p4    # "reason":I
    :cond_1e2
    move/from16 v22, v7

    move v4, v15

    .end local v15    # "newBucket":I
    .end local p4    # "reason":I
    .restart local v4    # "newBucket":I
    .local v22, "reason":I
    :goto_1e5
    :try_start_1e5
    invoke-direct/range {p0 .. p2}, Lcom/android/server/usage/AppStandbyController;->getAppMinBucket(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v15
    :try_end_1ed
    .catchall {:try_start_1e5 .. :try_end_1ed} :catchall_218

    .line 1827
    .end local v4    # "newBucket":I
    .restart local v15    # "newBucket":I
    :try_start_1ed
    iget-object v1, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;
    :try_end_1ef
    .catchall {:try_start_1ed .. :try_end_1ef} :catchall_213

    move-object v2, v10

    move-object v10, v1

    move-object/from16 v11, p1

    move/from16 v12, p2

    move-wide/from16 v13, p5

    move/from16 v16, v22

    move/from16 v17, p7

    :try_start_1fb
    invoke-virtual/range {v10 .. v17}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJIIZ)V

    .line 1829
    .end local v0    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .end local v18    # "predicted":Z
    .end local v19    # "wasForcedBySystem":Z
    .end local v20    # "isForcedBySystem":Z
    .end local v21    # "isForcedByUser":Z
    monitor-exit v2
    :try_end_1ff
    .catchall {:try_start_1fb .. :try_end_1ff} :catchall_20f

    .line 1830
    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p5

    move v6, v15

    move/from16 v7, v22

    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 1831
    return-void

    .line 1829
    :catchall_20f
    move-exception v0

    move/from16 v7, v22

    goto :goto_226

    :catchall_213
    move-exception v0

    move-object v2, v10

    move/from16 v7, v22

    goto :goto_226

    .end local v15    # "newBucket":I
    .restart local v4    # "newBucket":I
    :catchall_218
    move-exception v0

    move-object v2, v10

    move v15, v4

    move/from16 v7, v22

    goto :goto_226

    .end local v4    # "newBucket":I
    .end local v22    # "reason":I
    .restart local v15    # "newBucket":I
    .restart local p4    # "reason":I
    :catchall_21e
    move-exception v0

    move-object v2, v10

    goto :goto_226

    .end local v15    # "newBucket":I
    .restart local p3    # "newBucket":I
    :catchall_221
    move-exception v0

    move/from16 v1, p3

    move-object v2, v10

    move v15, v1

    .end local p3    # "newBucket":I
    .end local p4    # "reason":I
    .local v7, "reason":I
    .restart local v15    # "newBucket":I
    :goto_226
    :try_start_226
    monitor-exit v2
    :try_end_227
    .catchall {:try_start_226 .. :try_end_227} :catchall_228

    throw v0

    :catchall_228
    move-exception v0

    goto :goto_226
.end method

.method private triggerListenerQuotaBump(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 815
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 817
    :cond_5
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 818
    :try_start_8
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    .line 819
    .local v2, "listener":Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;->triggerTemporaryQuotaBump(Ljava/lang/String;I)V

    .line 820
    .end local v2    # "listener":Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
    goto :goto_e

    .line 821
    :cond_1e
    monitor-exit v0

    .line 822
    return-void

    .line 821
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_20

    throw v1
.end method

.method private updateHeadlessSystemAppCache(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "add"    # Z

    .line 2188
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    monitor-enter v0

    .line 2189
    if-eqz p2, :cond_d

    .line 2190
    :try_start_5
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2192
    :cond_d
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2194
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private updatePowerWhitelistCache()V
    .registers 3

    .line 2111
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->getBootPhase()I

    move-result v0

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_b

    .line 2112
    return-void

    .line 2114
    :cond_b
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->updatePowerWhitelistCache()V

    .line 2115
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/usage/AppStandbyController;->postCheckIdleStates(I)V

    .line 2116
    return-void
.end method

.method private usageEventToSubReason(I)I
    .registers 3
    .param p1, "eventType"    # I

    .line 1238
    sparse-switch p1, :sswitch_data_18

    .line 1248
    const/4 v0, 0x0

    return v0

    .line 1247
    :sswitch_5
    const/16 v0, 0xf

    return v0

    .line 1244
    :sswitch_8
    const/16 v0, 0x9

    return v0

    .line 1245
    :sswitch_b
    const/16 v0, 0xa

    return v0

    .line 1243
    :sswitch_e
    const/4 v0, 0x2

    return v0

    .line 1242
    :sswitch_10
    const/4 v0, 0x3

    return v0

    .line 1241
    :sswitch_12
    const/4 v0, 0x1

    return v0

    .line 1240
    :sswitch_14
    const/4 v0, 0x5

    return v0

    .line 1239
    :sswitch_16
    const/4 v0, 0x4

    return v0

    :sswitch_data_18
    .sparse-switch
        0x1 -> :sswitch_16
        0x2 -> :sswitch_14
        0x6 -> :sswitch_12
        0x7 -> :sswitch_10
        0xa -> :sswitch_e
        0xd -> :sswitch_b
        0xe -> :sswitch_8
        0x13 -> :sswitch_5
    .end sparse-switch
.end method

.method private waitForAdminData()V
    .registers 5

    .line 1896
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.device_admin"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1897
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x2710

    const-string v3, "Wait for admin data"

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/jobs/ConcurrentUtils;->waitForCountDownNoInterrupt(Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;)V

    .line 1900
    :cond_17
    return-void
.end method


# virtual methods
.method public addActiveDeviceAdmin(Ljava/lang/String;I)V
    .registers 6
    .param p1, "adminPkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1855
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1856
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 1857
    .local v1, "adminPkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v1, :cond_18

    .line 1858
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 1859
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1861
    :cond_18
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1862
    nop

    .end local v1    # "adminPkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-exit v0

    .line 1863
    return-void

    .line 1862
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    .line 1344
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1345
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 1346
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1348
    :cond_10
    monitor-exit v0

    .line 1349
    return-void

    .line 1348
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method checkIdleStates(I)Z
    .registers 21
    .param p1, "checkUserId"    # I

    .line 869
    move-object/from16 v7, p0

    move/from16 v8, p1

    iget-boolean v0, v7, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 870
    return v1

    .line 875
    :cond_a
    :try_start_a
    iget-object v0, v7, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->getRunningUserIds()[I

    move-result-object v0

    .line 876
    .local v0, "runningUserIds":[I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_1a

    .line 877
    invoke-static {v0, v8}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_17} :catch_66

    if-nez v2, :cond_1a

    .line 878
    return v1

    .line 882
    :cond_1a
    nop

    .line 884
    iget-object v1, v7, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v10

    .line 885
    .local v10, "elapsedRealtime":J
    const/4 v1, 0x0

    move v12, v1

    .local v12, "i":I
    :goto_23
    array-length v1, v0

    if-ge v12, v1, :cond_64

    .line 886
    aget v13, v0, v12

    .line 887
    .local v13, "userId":I
    if-eq v8, v9, :cond_2d

    if-eq v8, v13, :cond_2d

    .line 888
    goto :goto_61

    .line 893
    :cond_2d
    iget-object v1, v7, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x200

    invoke-virtual {v1, v2, v13}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v14

    .line 896
    .local v14, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    .line 897
    .local v15, "packageCount":I
    const/4 v1, 0x0

    move v5, v1

    .local v5, "p":I
    :goto_3b
    if-ge v5, v15, :cond_5f

    .line 898
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 899
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    iget-object v4, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 900
    .local v4, "packageName":Ljava/lang/String;
    iget-object v1, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v1, p0

    move-object v2, v4

    move/from16 v16, v3

    move v3, v13

    move-object/from16 v17, v4

    .end local v4    # "packageName":Ljava/lang/String;
    .local v17, "packageName":Ljava/lang/String;
    move/from16 v4, v16

    move/from16 v16, v5

    move-object/from16 v18, v6

    .end local v5    # "p":I
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    .local v16, "p":I
    .local v18, "pi":Landroid/content/pm/PackageInfo;
    move-wide v5, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->checkAndUpdateStandbyState(Ljava/lang/String;IIJ)V

    .line 897
    .end local v17    # "packageName":Ljava/lang/String;
    .end local v18    # "pi":Landroid/content/pm/PackageInfo;
    add-int/lit8 v5, v16, 0x1

    .end local v16    # "p":I
    .restart local v5    # "p":I
    goto :goto_3b

    :cond_5f
    move/from16 v16, v5

    .line 885
    .end local v5    # "p":I
    .end local v13    # "userId":I
    .end local v14    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v15    # "packageCount":I
    :goto_61
    add-int/lit8 v12, v12, 0x1

    goto :goto_23

    .line 908
    .end local v12    # "i":I
    :cond_64
    const/4 v1, 0x1

    return v1

    .line 880
    .end local v0    # "runningUserIds":[I
    .end local v10    # "elapsedRealtime":J
    :catch_66
    move-exception v0

    .line 881
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method clearAppIdleForPackage(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2062
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2063
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/AppIdleHistory;->clearUsage(Ljava/lang/String;I)V

    .line 2064
    monitor-exit v0

    .line 2065
    return-void

    .line 2064
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public clearCarrierPrivilegedApps()V
    .registers 3

    .line 1945
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1946
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    .line 1947
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    .line 1948
    monitor-exit v0

    .line 1949
    return-void

    .line 1948
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public clearLastUsedTimestampsForTest(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2043
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2044
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/AppIdleHistory;->clearLastUsedTimestamps(Ljava/lang/String;I)V

    .line 2045
    monitor-exit v0

    .line 2046
    return-void

    .line 2045
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public dumpState([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 2306
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2307
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Carrier privileged apps (have="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2309
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_21c

    .line 2311
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2312
    const-string v0, "Settings:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2314
    const-string v0, "  mCheckIdleIntervalMillis="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2315
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mCheckIdleIntervalMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2316
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2318
    const-string v0, "  mStrongUsageTimeoutMillis="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2319
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2320
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2321
    const-string v0, "  mNotificationSeenTimeoutMillis="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2322
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2323
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2324
    const-string v0, "  mNotificationSeenPromotedBucket="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2325
    iget v0, p0, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenPromotedBucket:I

    invoke-static {v0}, Landroid/app/usage/UsageStatsManager;->standbyBucketToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2326
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2327
    const-string v0, "  mTriggerQuotaBumpOnNotificationSeen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2328
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mTriggerQuotaBumpOnNotificationSeen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2329
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2330
    const-string v0, "  mRetainNotificationSeenImpactForPreTApps="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2331
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mRetainNotificationSeenImpactForPreTApps:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2332
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2333
    const-string v0, "  mSlicePinnedTimeoutMillis="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2334
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mSlicePinnedTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2335
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2336
    const-string v0, "  mSyncAdapterTimeoutMillis="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2337
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mSyncAdapterTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2338
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2339
    const-string v0, "  mSystemInteractionTimeoutMillis="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2340
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2341
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2342
    const-string v0, "  mInitialForegroundServiceStartTimeoutMillis="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2343
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2344
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2346
    const-string v0, "  mPredictionTimeoutMillis="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2347
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mPredictionTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2348
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2350
    const-string v0, "  mExemptedSyncScheduledNonDozeTimeoutMillis="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2351
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledNonDozeTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2352
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2353
    const-string v0, "  mExemptedSyncScheduledDozeTimeoutMillis="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2354
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledDozeTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2355
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2356
    const-string v0, "  mExemptedSyncStartTimeoutMillis="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2357
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncStartTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2358
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2359
    const-string v0, "  mUnexemptedSyncScheduledTimeoutMillis="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2360
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mUnexemptedSyncScheduledTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2361
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2363
    const-string v0, "  mSystemUpdateUsageTimeoutMillis="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2364
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mSystemUpdateUsageTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2365
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2367
    const-string v0, "  mBroadcastResponseWindowDurationMillis="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2368
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseWindowDurationMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2369
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2371
    const-string v0, "  mBroadcastResponseFgThresholdState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2372
    iget v0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseFgThresholdState:I

    invoke-static {v0}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2373
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2375
    const-string v0, "  mBroadcastSessionsDurationMs="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2376
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsDurationMs:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2377
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2379
    const-string v0, "  mBroadcastSessionsWithResponseDurationMs="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2380
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsWithResponseDurationMs:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2381
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2383
    const-string v0, "  mNoteResponseEventForAllBroadcastSessions="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2384
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mNoteResponseEventForAllBroadcastSessions:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2385
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2387
    const-string v0, "  mBroadcastResponseExemptedRoles"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2388
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedRoles:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2389
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2391
    const-string v0, "  mBroadcastResponseExemptedPermissions"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2392
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedPermissions:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2393
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2395
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2396
    const-string v0, "mAppIdleEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2397
    const-string v0, " mAllowRestrictedBucket="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2398
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAllowRestrictedBucket:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2399
    const-string v0, " mIsCharging="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2400
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mIsCharging:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2401
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2402
    const-string/jumbo v0, "mScreenThresholds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2403
    const-string v0, "mElapsedThresholds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2404
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2406
    const-string v0, "mHeadlessSystemApps=["

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2407
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    monitor-enter v1

    .line 2408
    :try_start_1af
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1b7
    if-ltz v0, :cond_1d3

    .line 2409
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2410
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2411
    if-eqz v0, :cond_1d0

    const-string v2, ","

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2408
    :cond_1d0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1b7

    .line 2413
    .end local v0    # "i":I
    :cond_1d3
    monitor-exit v1
    :try_end_1d4
    .catchall {:try_start_1af .. :try_end_1d4} :catchall_219

    .line 2414
    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2415
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2417
    const-string/jumbo v0, "mSystemPackagesAppIds=["

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2418
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mSystemPackagesAppIds:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2419
    :try_start_1e5
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mSystemPackagesAppIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_1ed
    if-ltz v1, :cond_207

    .line 2420
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2421
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mSystemPackagesAppIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2422
    if-eqz v1, :cond_204

    const-string v2, ","

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2419
    :cond_204
    add-int/lit8 v1, v1, -0x1

    goto :goto_1ed

    .line 2424
    .end local v1    # "i":I
    :cond_207
    monitor-exit v0
    :try_end_208
    .catchall {:try_start_1e5 .. :try_end_208} :catchall_216

    .line 2425
    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2426
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2428
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0, p2}, Lcom/android/server/usage/AppStandbyController$Injector;->dump(Ljava/io/PrintWriter;)V

    .line 2429
    return-void

    .line 2424
    :catchall_216
    move-exception v1

    :try_start_217
    monitor-exit v0
    :try_end_218
    .catchall {:try_start_217 .. :try_end_218} :catchall_216

    throw v1

    .line 2413
    :catchall_219
    move-exception v0

    :try_start_21a
    monitor-exit v1
    :try_end_21b
    .catchall {:try_start_21a .. :try_end_21b} :catchall_219

    throw v0

    .line 2309
    :catchall_21c
    move-exception v1

    :try_start_21d
    monitor-exit v0
    :try_end_21e
    .catchall {:try_start_21d .. :try_end_21e} :catchall_21c

    throw v1
.end method

.method public dumpUsers(Landroid/util/IndentingPrintWriter;[ILjava/util/List;)V
    .registers 6
    .param p1, "idpw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "userIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "[I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2299
    .local p3, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2300
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/usage/AppIdleHistory;->dumpUsers(Landroid/util/IndentingPrintWriter;[ILjava/util/List;)V

    .line 2301
    monitor-exit v0

    .line 2302
    return-void

    .line 2301
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public flushToDisk()V
    .registers 5

    .line 2050
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2051
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleTimes(J)V

    .line 2052
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleDurations()V

    .line 2053
    monitor-exit v0

    .line 2054
    return-void

    .line 2053
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method forceIdleState(Ljava/lang/String;IZ)V
    .registers 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z

    .line 1254
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v13, p2

    iget-boolean v0, v15, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_b

    return-void

    .line 1256
    :cond_b
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppStandbyController;->getAppId(Ljava/lang/String;)I

    move-result v10

    .line 1257
    .local v10, "appId":I
    if-gez v10, :cond_12

    return-void

    .line 1258
    :cond_12
    invoke-direct {v15, v14, v10, v13}, Lcom/android/server/usage/AppStandbyController;->getAppMinBucket(Ljava/lang/String;II)I

    move-result v11

    .line 1259
    .local v11, "minBucket":I
    if-eqz p3, :cond_39

    const/16 v0, 0x28

    if-ge v11, v0, :cond_39

    .line 1260
    const-string v0, "AppStandbyController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to force an app to be idle when its min bucket is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1261
    invoke-static {v11}, Landroid/app/usage/UsageStatsManager;->standbyBucketToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1260
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    return-void

    .line 1264
    :cond_39
    iget-object v0, v15, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v16

    .line 1266
    .local v16, "elapsedRealtime":J
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v10

    move/from16 v4, p2

    move-wide/from16 v5, v16

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v9

    .line 1269
    .local v9, "previouslyIdle":Z
    iget-object v7, v15, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1270
    :try_start_4f
    iget-object v1, v15, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, v16

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppIdleHistory;->setIdle(Ljava/lang/String;IZJ)I

    move-result v12

    .line 1271
    .local v12, "standbyBucket":I
    monitor-exit v7
    :try_end_5e
    .catchall {:try_start_4f .. :try_end_5e} :catchall_86

    .line 1272
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v10

    move/from16 v4, p2

    move-wide/from16 v5, v16

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v0

    .line 1275
    .local v0, "stillIdle":Z
    const/16 v1, 0x400

    const/4 v2, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move v3, v9

    .end local v9    # "previouslyIdle":Z
    .local v3, "previouslyIdle":Z
    move/from16 v9, p2

    move v4, v10

    move v5, v11

    .end local v10    # "appId":I
    .end local v11    # "minBucket":I
    .local v4, "appId":I
    .local v5, "minBucket":I
    move-wide/from16 v10, v16

    move v6, v13

    move v13, v1

    move-object v1, v14

    move v14, v2

    invoke-direct/range {v7 .. v14}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 1277
    if-eq v3, v0, :cond_85

    .line 1278
    invoke-direct {v15, v1, v6, v0}, Lcom/android/server/usage/AppStandbyController;->notifyBatteryStats(Ljava/lang/String;IZ)V

    .line 1280
    :cond_85
    return-void

    .line 1271
    .end local v0    # "stillIdle":Z
    .end local v3    # "previouslyIdle":Z
    .end local v4    # "appId":I
    .end local v5    # "minBucket":I
    .end local v12    # "standbyBucket":I
    .restart local v9    # "previouslyIdle":Z
    .restart local v10    # "appId":I
    .restart local v11    # "minBucket":I
    :catchall_86
    move-exception v0

    move v3, v9

    move v4, v10

    move v5, v11

    move v6, v13

    move-object v1, v14

    .end local v9    # "previouslyIdle":Z
    .end local v10    # "appId":I
    .end local v11    # "minBucket":I
    .restart local v3    # "previouslyIdle":Z
    .restart local v4    # "appId":I
    .restart local v5    # "minBucket":I
    :goto_8c
    :try_start_8c
    monitor-exit v7
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8e

    throw v0

    :catchall_8e
    move-exception v0

    goto :goto_8c
.end method

.method getActiveAdminAppsForTest(I)Ljava/util/Set;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1904
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1905
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 1906
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method getAdminProtectedPackagesForTest(I)Ljava/util/Set;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1911
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1912
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 1913
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public getAppId(Ljava/lang/String;)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1361
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const v1, 0x400200

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1364
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_b} :catch_c

    return v1

    .line 1365
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_c
    move-exception v0

    .line 1366
    .local v0, "re":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, -0x1

    return v1
.end method

.method getAppIdleHistoryForTest()Lcom/android/server/usage/AppIdleHistory;
    .registers 3

    .line 2292
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2293
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    monitor-exit v0

    return-object v1

    .line 2294
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getAppMinStandbyBucket(Ljava/lang/String;IIZ)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .param p4, "shouldObfuscateInstantApps"    # Z

    .line 1584
    if-eqz p4, :cond_d

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0, p3, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1585
    const/16 v0, 0x32

    return v0

    .line 1587
    :cond_d
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1588
    :try_start_10
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usage/AppStandbyController;->getAppMinBucket(Ljava/lang/String;II)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1589
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public getAppStandbyBucket(Ljava/lang/String;IJZ)I
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "shouldObfuscateInstantApps"    # Z

    .line 1556
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-eqz v0, :cond_1d

    if-eqz p5, :cond_f

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1557
    invoke-virtual {v0, p2, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_1d

    .line 1561
    :cond_f
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1562
    :try_start_12
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1563
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw v1

    .line 1558
    :cond_1d
    :goto_1d
    const/16 v0, 0xa

    return v0
.end method

.method public getAppStandbyBucketReason(Ljava/lang/String;IJ)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    .line 1568
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1569
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getAppStandbyReason(Ljava/lang/String;IJ)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1570
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getAppStandbyBuckets(I)Ljava/util/List;
    .registers 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/usage/AppStandbyInfo;",
            ">;"
        }
    .end annotation

    .line 1575
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1576
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    invoke-virtual {v1, p1, v2}, Lcom/android/server/usage/AppIdleHistory;->getAppStandbyBuckets(IZ)Ljava/util/ArrayList;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1577
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public getAppStandbyConstant(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 2038
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getBroadcastResponseExemptedPermissions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2032
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedPermissionsList:Ljava/util/List;

    return-object v0
.end method

.method public getBroadcastResponseExemptedRoles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2026
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedRolesList:Ljava/util/List;

    return-object v0
.end method

.method public getBroadcastResponseFgThresholdState()I
    .registers 2

    .line 2005
    iget v0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseFgThresholdState:I

    return v0
.end method

.method public getBroadcastResponseWindowDurationMs()J
    .registers 3

    .line 2000
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseWindowDurationMillis:J

    return-wide v0
.end method

.method public getBroadcastSessionsDurationMs()J
    .registers 3

    .line 2010
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsDurationMs:J

    return-wide v0
.end method

.method public getBroadcastSessionsWithResponseDurationMs()J
    .registers 3

    .line 2015
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsWithResponseDurationMs:J

    return-wide v0
.end method

.method public getEstimatedLaunchTime(Ljava/lang/String;I)J
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1309
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v0

    .line 1310
    .local v0, "elapsedRealtime":J
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1311
    :try_start_9
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v3, p1, p2, v0, v1}, Lcom/android/server/usage/AppIdleHistory;->getEstimatedLaunchTime(Ljava/lang/String;IJ)J

    move-result-wide v3

    monitor-exit v2

    return-wide v3

    .line 1312
    :catchall_11
    move-exception v3

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw v3
.end method

.method public getIdleUidsForUser(I)[I
    .registers 20
    .param p1, "userId"    # I

    .line 1493
    move-object/from16 v6, p0

    iget-boolean v0, v6, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_9

    .line 1494
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    return-object v0

    .line 1497
    :cond_9
    const-wide/16 v7, 0x40

    const-string v0, "getIdleUidsForUser"

    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1499
    iget-object v0, v6, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v9

    .line 1501
    .local v9, "elapsedRealtime":J
    iget-object v0, v6, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v11

    .line 1502
    .local v11, "pmi":Landroid/content/pm/PackageManagerInternal;
    const-wide/16 v0, 0x0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    move/from16 v12, p1

    invoke-virtual {v11, v0, v1, v12, v2}, Landroid/content/pm/PackageManagerInternal;->getInstalledApplications(JII)Ljava/util/List;

    move-result-object v13

    .line 1503
    .local v13, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v13, :cond_2d

    .line 1504
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    return-object v0

    .line 1508
    :cond_2d
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v14, v0

    .line 1509
    .local v14, "uidIdleStates":Landroid/util/SparseBooleanArray;
    const/4 v0, 0x0

    .line 1510
    .local v0, "notIdleCount":I
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    const/4 v15, 0x1

    sub-int/2addr v1, v15

    move/from16 v16, v0

    move v4, v1

    .end local v0    # "notIdleCount":I
    .local v4, "i":I
    .local v16, "notIdleCount":I
    :goto_3d
    if-ltz v4, :cond_8b

    .line 1511
    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 1512
    .local v5, "ai":Landroid/content/pm/ApplicationInfo;
    iget v0, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v14, v0}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    .line 1514
    .local v3, "index":I
    if-gez v3, :cond_50

    move v0, v15

    goto :goto_54

    :cond_50
    invoke-virtual {v14, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    :goto_54
    move/from16 v17, v0

    .line 1516
    .local v17, "currentIdle":Z
    if-eqz v17, :cond_70

    iget-object v1, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1517
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 1516
    move-object/from16 v0, p0

    move v7, v3

    .end local v3    # "index":I
    .local v7, "index":I
    move/from16 v3, p1

    move v8, v4

    move-object v15, v5

    .end local v4    # "i":I
    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v8, "i":I
    .local v15, "ai":Landroid/content/pm/ApplicationInfo;
    move-wide v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v0

    if-eqz v0, :cond_73

    const/4 v0, 0x1

    goto :goto_74

    .end local v7    # "index":I
    .end local v8    # "i":I
    .end local v15    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "index":I
    .restart local v4    # "i":I
    .restart local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_70
    move v7, v3

    move v8, v4

    move-object v15, v5

    .end local v3    # "index":I
    .end local v4    # "i":I
    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "index":I
    .restart local v8    # "i":I
    .restart local v15    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_73
    const/4 v0, 0x0

    .line 1519
    .local v0, "newIdle":Z
    :goto_74
    if-eqz v17, :cond_7a

    if-nez v0, :cond_7a

    .line 1521
    add-int/lit8 v16, v16, 0x1

    .line 1523
    :cond_7a
    if-gez v7, :cond_82

    .line 1524
    iget v1, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v14, v1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_85

    .line 1526
    :cond_82
    invoke-virtual {v14, v7, v0}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    .line 1510
    .end local v0    # "newIdle":Z
    .end local v7    # "index":I
    .end local v15    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v17    # "currentIdle":Z
    :goto_85
    add-int/lit8 v4, v8, -0x1

    const-wide/16 v7, 0x40

    const/4 v15, 0x1

    .end local v8    # "i":I
    .restart local v4    # "i":I
    goto :goto_3d

    :cond_8b
    move v8, v4

    .line 1530
    .end local v4    # "i":I
    invoke-virtual {v14}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    sub-int v0, v0, v16

    .line 1531
    .local v0, "numIdleUids":I
    new-array v1, v0, [I

    .line 1532
    .local v1, "idleUids":[I
    invoke-virtual {v14}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_9a
    if-ltz v2, :cond_ad

    .line 1533
    invoke-virtual {v14, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 1534
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v14, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    aput v3, v1, v0

    .line 1532
    :cond_aa
    add-int/lit8 v2, v2, -0x1

    goto :goto_9a

    .line 1540
    .end local v2    # "i":I
    :cond_ad
    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1542
    return-object v1
.end method

.method public getTimeSinceLastJobRun(Ljava/lang/String;I)J
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1291
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v0

    .line 1292
    .local v0, "elapsedRealtime":J
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1293
    :try_start_9
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v3, p1, p2, v0, v1}, Lcom/android/server/usage/AppIdleHistory;->getTimeSinceLastJobRun(Ljava/lang/String;IJ)J

    move-result-wide v3

    monitor-exit v2

    return-wide v3

    .line 1294
    :catchall_11
    move-exception v3

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw v3
.end method

.method public getTimeSinceLastUsedByUser(Ljava/lang/String;I)J
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1317
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v0

    .line 1318
    .local v0, "elapsedRealtime":J
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1319
    :try_start_9
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v3, p1, p2, v0, v1}, Lcom/android/server/usage/AppIdleHistory;->getTimeSinceLastUsedByUser(Ljava/lang/String;IJ)J

    move-result-wide v3

    monitor-exit v2

    return-wide v3

    .line 1320
    :catchall_11
    move-exception v3

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw v3
.end method

.method public initializeDefaultsForSystemApps(I)V
    .registers 22
    .param p1, "userId"    # I

    .line 2200
    move-object/from16 v1, p0

    move/from16 v11, p1

    iget-boolean v0, v1, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    if-nez v0, :cond_c

    .line 2202
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/usage/AppStandbyController;->mPendingInitializeDefaults:Z

    .line 2203
    return-void

    .line 2205
    :cond_c
    const-string v0, "AppStandbyController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initializing defaults for system apps on user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", appIdleEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v1, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    iget-object v0, v1, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v12

    .line 2208
    .local v12, "elapsedRealtime":J
    iget-object v0, v1, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x200

    invoke-virtual {v0, v2, v11}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v14

    .line 2211
    .local v14, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    .line 2212
    .local v15, "packageCount":I
    iget-object v9, v1, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2213
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_46
    if-ge v0, v15, :cond_81

    .line 2214
    :try_start_48
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    move-object v10, v2

    .line 2215
    .local v10, "pi":Landroid/content/pm/PackageInfo;
    iget-object v3, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2216
    .local v3, "packageName":Ljava/lang/String;
    iget-object v2, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_74

    iget-object v2, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 2219
    iget-object v2, v1, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/16 v5, 0xa

    const/4 v6, 0x6

    iget-wide v7, v1, Lcom/android/server/usage/AppStandbyController;->mSystemUpdateUsageTimeoutMillis:J
    :try_end_64
    .catchall {:try_start_48 .. :try_end_64} :catchall_7d

    add-long v18, v12, v7

    move/from16 v4, p1

    const-wide/16 v7, 0x0

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    .end local v10    # "pi":Landroid/content/pm/PackageInfo;
    .local v17, "pi":Landroid/content/pm/PackageInfo;
    move-wide/from16 v9, v18

    :try_start_70
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    goto :goto_78

    .line 2216
    .end local v17    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v10    # "pi":Landroid/content/pm/PackageInfo;
    :cond_74
    move-object/from16 v16, v9

    move-object/from16 v17, v10

    .line 2213
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v10    # "pi":Landroid/content/pm/PackageInfo;
    :goto_78
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v9, v16

    goto :goto_46

    .line 2226
    .end local v0    # "i":I
    :catchall_7d
    move-exception v0

    move-object/from16 v16, v9

    goto :goto_8b

    .line 2213
    .restart local v0    # "i":I
    :cond_81
    move-object/from16 v16, v9

    .line 2225
    .end local v0    # "i":I
    iget-object v0, v1, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v0, v11, v12, v13}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleTimes(IJ)V

    .line 2226
    monitor-exit v16

    .line 2227
    return-void

    .line 2226
    :catchall_8a
    move-exception v0

    :goto_8b
    monitor-exit v16
    :try_end_8c
    .catchall {:try_start_70 .. :try_end_8c} :catchall_8a

    throw v0
.end method

.method public isActiveDeviceAdmin(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1836
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1837
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 1838
    .local v1, "adminPkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_15

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    monitor-exit v0

    return v2

    .line 1839
    .end local v1    # "adminPkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public isAppIdleEnabled()Z
    .registers 2

    .line 635
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    return v0
.end method

.method public isAppIdleFiltered(Ljava/lang/String;IIJ)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .param p4, "elapsedRealtime"    # J

    .line 1474
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mIsCharging:Z

    if-eqz v0, :cond_a

    goto :goto_1c

    .line 1478
    :cond_a
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/server/usage/AppStandbyController;->isAppIdleUnfiltered(Ljava/lang/String;IJ)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1479
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usage/AppStandbyController;->getAppMinBucket(Ljava/lang/String;II)I

    move-result v0

    const/16 v2, 0x28

    if-lt v0, v2, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    nop

    .line 1478
    :goto_1b
    return v1

    .line 1475
    :cond_1c
    :goto_1c
    return v1
.end method

.method public isAppIdleFiltered(Ljava/lang/String;IJZ)Z
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "shouldObfuscateInstantApps"    # Z

    .line 1373
    if-eqz p5, :cond_c

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1374
    invoke-virtual {v0, p2, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1375
    const/4 v0, 0x0

    return v0

    .line 1377
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->getAppId(Ljava/lang/String;)I

    move-result v3

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v0

    return v0
.end method

.method public isInParole()Z
    .registers 2

    .line 835
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mIsCharging:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public maybeUnrestrictApp(Ljava/lang/String;IIIII)V
    .registers 25
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "prevMainReasonRestrict"    # I
    .param p4, "prevSubReasonRestrict"    # I
    .param p5, "mainReasonUnrestrict"    # I
    .param p6, "subReasonUnrestrict"    # I

    .line 2082
    move-object/from16 v9, p0

    move/from16 v10, p4

    iget-object v11, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v11

    .line 2083
    :try_start_7
    iget-object v0, v9, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v0

    move-wide v12, v0

    .line 2084
    .local v12, "elapsedRealtime":J
    iget-object v0, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_63

    .line 2085
    move-object/from16 v14, p1

    move/from16 v15, p2

    :try_start_14
    invoke-virtual {v0, v14, v15, v12, v13}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 2086
    .local v0, "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    iget v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_61

    iget v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    const v2, 0xff00

    and-int/2addr v1, v2

    move/from16 v8, p3

    if-eq v1, v8, :cond_29

    goto :goto_61

    .line 2093
    :cond_29
    iget v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v10, :cond_38

    .line 2095
    const/16 v1, 0x28

    .line 2096
    .local v1, "newBucket":I
    or-int v2, p5, p6

    move/from16 v16, v1

    move/from16 v17, v2

    .local v2, "newReason":I
    goto :goto_42

    .line 2100
    .end local v1    # "newBucket":I
    .end local v2    # "newReason":I
    :cond_38
    const/16 v1, 0x2d

    .line 2101
    .restart local v1    # "newBucket":I
    iget v2, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    not-int v3, v10

    and-int/2addr v2, v3

    move/from16 v16, v1

    move/from16 v17, v2

    .line 2103
    .end local v1    # "newBucket":I
    .local v16, "newBucket":I
    .local v17, "newReason":I
    :goto_42
    iget-object v2, v9, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-wide v5, v12

    move/from16 v7, v16

    move/from16 v8, v17

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJII)V

    .line 2105
    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide v4, v12

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 2107
    .end local v0    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .end local v12    # "elapsedRealtime":J
    .end local v16    # "newBucket":I
    .end local v17    # "newReason":I
    monitor-exit v11

    .line 2108
    return-void

    .line 2088
    .restart local v0    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .restart local v12    # "elapsedRealtime":J
    :cond_61
    :goto_61
    monitor-exit v11

    return-void

    .line 2107
    .end local v0    # "app":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .end local v12    # "elapsedRealtime":J
    :catchall_63
    move-exception v0

    move-object/from16 v14, p1

    move/from16 v15, p2

    :goto_68
    monitor-exit v11
    :try_end_69
    .catchall {:try_start_14 .. :try_end_69} :catchall_6a

    throw v0

    :catchall_6a
    move-exception v0

    goto :goto_68
.end method

.method maybeUnrestrictBuggyApp(Ljava/lang/String;I)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2073
    const/16 v3, 0x600

    const/4 v4, 0x4

    const/16 v5, 0x100

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usage/AppStandbyController;->maybeUnrestrictApp(Ljava/lang/String;IIIII)V

    .line 2076
    return-void
.end method

.method public onAdminDataAvailable()V
    .registers 2

    .line 1889
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1890
    return-void
.end method

.method public onBootPhase(I)V
    .registers 10
    .param p1, "phase"    # I

    .line 640
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->onBootPhase(I)V

    .line 641
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_9e

    .line 642
    const-string v0, "AppStandbyController"

    const-string v1, "Setting app idle enabled state"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-eqz v0, :cond_1f

    .line 645
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v0, p0}, Landroid/app/usage/UsageStatsManagerInternal;->registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    .line 649
    :cond_1f
    new-instance v0, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;-><init>(Lcom/android/server/usage/AppStandbyController;Landroid/os/Handler;)V

    .line 650
    .local v0, "settingsObserver":Lcom/android/server/usage/AppStandbyController$ConstantsObserver;
    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->start()V

    .line 652
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetManager;

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 654
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/usage/AppStandbyController$Injector;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 655
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 656
    :try_start_41
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->isDisplayOn()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v4}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->updateDisplay(ZJ)V

    .line 657
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_41 .. :try_end_51} :catchall_9b

    .line 659
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    .line 662
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 663
    :try_start_57
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/usage/AppIdleHistory;->userFileExists(I)Z

    move-result v1

    .line 664
    .local v1, "userFileExists":Z
    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_57 .. :try_end_5f} :catchall_98

    .line 666
    iget-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mPendingInitializeDefaults:Z

    if-nez v2, :cond_65

    if-nez v1, :cond_68

    .line 667
    :cond_65
    invoke-virtual {p0, v3}, Lcom/android/server/usage/AppStandbyController;->initializeDefaultsForSystemApps(I)V

    .line 670
    :cond_68
    iget-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mPendingOneTimeCheckIdleStates:Z

    if-eqz v2, :cond_6f

    .line 671
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->postOneTimeCheckIdleStates()V

    .line 675
    :cond_6f
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const v3, 0x205c2000

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 677
    .local v2, "systemApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_7d
    if-ge v3, v4, :cond_97

    .line 678
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 679
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v6, p0, Lcom/android/server/usage/AppStandbyController;->mSystemPackagesAppIds:Ljava/util/ArrayList;

    iget v7, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_7d

    .end local v0    # "settingsObserver":Lcom/android/server/usage/AppStandbyController$ConstantsObserver;
    .end local v1    # "userFileExists":Z
    .end local v2    # "systemApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_97
    goto :goto_c0

    .line 664
    .restart local v0    # "settingsObserver":Lcom/android/server/usage/AppStandbyController$ConstantsObserver;
    :catchall_98
    move-exception v1

    :try_start_99
    monitor-exit v2
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    throw v1

    .line 657
    :catchall_9b
    move-exception v2

    :try_start_9c
    monitor-exit v1
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    throw v2

    .line 681
    .end local v0    # "settingsObserver":Lcom/android/server/usage/AppStandbyController$ConstantsObserver;
    :cond_9e
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_c0

    .line 682
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->isCharging()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/usage/AppStandbyController;->setChargingState(Z)V

    .line 687
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    new-instance v1, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usage/AppStandbyController;)V

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->post(Ljava/lang/Runnable;)Z

    .line 688
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    new-instance v1, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/usage/AppStandbyController;)V

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c1

    .line 681
    :cond_c0
    :goto_c0
    nop

    .line 690
    :goto_c1
    return-void
.end method

.method public onUsageEvent(ILandroid/app/usage/UsageEvents$Event;)V
    .registers 19
    .param p1, "userId"    # I
    .param p2, "event"    # Landroid/app/usage/UsageEvents$Event;

    .line 1097
    move-object/from16 v12, p0

    iget-boolean v0, v12, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_7

    return-void

    .line 1098
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v13

    .line 1099
    .local v13, "eventType":I
    const/4 v0, 0x1

    if-eq v13, v0, :cond_2b

    const/4 v0, 0x2

    if-eq v13, v0, :cond_2b

    const/4 v0, 0x6

    if-eq v13, v0, :cond_2b

    const/4 v0, 0x7

    if-eq v13, v0, :cond_2b

    const/16 v0, 0xa

    if-eq v13, v0, :cond_2b

    const/16 v0, 0xe

    if-eq v13, v0, :cond_2b

    const/16 v0, 0xd

    if-eq v13, v0, :cond_2b

    const/16 v0, 0x13

    if-ne v13, v0, :cond_28

    goto :goto_2b

    :cond_28
    move/from16 v15, p1

    goto :goto_6a

    .line 1107
    :cond_2b
    :goto_2b
    invoke-virtual/range {p2 .. p2}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 1108
    .local v14, "pkg":Ljava/lang/String;
    move/from16 v15, p1

    invoke-direct {v12, v14, v15}, Lcom/android/server/usage/AppStandbyController;->getCrossProfileTargets(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v9

    .line 1109
    .local v9, "linkedProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    iget-object v10, v12, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1110
    :try_start_38
    iget-object v0, v12, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v4

    .line 1111
    .local v4, "elapsedRealtime":J
    move-object/from16 v1, p0

    move-object v2, v14

    move v3, v13

    move/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->reportEventLocked(Ljava/lang/String;IJI)V

    .line 1113
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    .line 1114
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "profileIndex":I
    :goto_4c
    if-ge v1, v0, :cond_67

    .line 1115
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11
    :try_end_58
    .catchall {:try_start_38 .. :try_end_58} :catchall_6b

    .line 1116
    .local v11, "linkedUserId":I
    move-object/from16 v6, p0

    move-object v7, v14

    move v8, v13

    move-object v2, v9

    move-object v3, v10

    .end local v9    # "linkedProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .local v2, "linkedProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    move-wide v9, v4

    :try_start_5f
    invoke-direct/range {v6 .. v11}, Lcom/android/server/usage/AppStandbyController;->reportEventLocked(Ljava/lang/String;IJI)V

    .line 1114
    .end local v11    # "linkedUserId":I
    add-int/lit8 v1, v1, 0x1

    move-object v9, v2

    move-object v10, v3

    goto :goto_4c

    .end local v2    # "linkedProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .restart local v9    # "linkedProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :cond_67
    move-object v2, v9

    move-object v3, v10

    .line 1118
    .end local v0    # "size":I
    .end local v1    # "profileIndex":I
    .end local v4    # "elapsedRealtime":J
    .end local v9    # "linkedProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .restart local v2    # "linkedProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    monitor-exit v3

    .line 1120
    .end local v2    # "linkedProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .end local v14    # "pkg":Ljava/lang/String;
    :goto_6a
    return-void

    .line 1118
    .restart local v9    # "linkedProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .restart local v14    # "pkg":Ljava/lang/String;
    :catchall_6b
    move-exception v0

    move-object v2, v9

    move-object v3, v10

    .end local v9    # "linkedProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .restart local v2    # "linkedProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :goto_6e
    monitor-exit v3
    :try_end_6f
    .catchall {:try_start_5f .. :try_end_6f} :catchall_70

    throw v0

    :catchall_70
    move-exception v0

    goto :goto_6e
.end method

.method public onUserRemoved(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 1325
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1326
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppIdleHistory;->onUserRemoved(I)V

    .line 1327
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_22

    .line 1328
    :try_start_b
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1329
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_1f

    .line 1330
    :try_start_11
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_22

    .line 1331
    :try_start_14
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1332
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1c

    .line 1333
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_22

    .line 1334
    return-void

    .line 1332
    :catchall_1c
    move-exception v2

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    .end local p0    # "this":Lcom/android/server/usage/AppStandbyController;
    .end local p1    # "userId":I
    :try_start_1e
    throw v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_22

    .line 1329
    .restart local p0    # "this":Lcom/android/server/usage/AppStandbyController;
    .restart local p1    # "userId":I
    :catchall_1f
    move-exception v2

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    .end local p0    # "this":Lcom/android/server/usage/AppStandbyController;
    .end local p1    # "userId":I
    :try_start_21
    throw v2

    .line 1333
    .restart local p0    # "this":Lcom/android/server/usage/AppStandbyController;
    .restart local p1    # "userId":I
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public postCheckIdleStates(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 846
    const/4 v0, -0x1

    if-ne p1, v0, :cond_7

    .line 847
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->postOneTimeCheckIdleStates()V

    goto :goto_20

    .line 849
    :cond_7
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPendingIdleStateChecks:Landroid/util/SparseLongArray;

    monitor-enter v0

    .line 850
    :try_start_a
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPendingIdleStateChecks:Landroid/util/SparseLongArray;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 851
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_21

    .line 852
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 854
    :goto_20
    return-void

    .line 851
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public postOneTimeCheckIdleStates()V
    .registers 3

    .line 858
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->getBootPhase()I

    move-result v0

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_e

    .line 860
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mPendingOneTimeCheckIdleStates:Z

    goto :goto_18

    .line 862
    :cond_e
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendEmptyMessage(I)Z

    .line 863
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mPendingOneTimeCheckIdleStates:Z

    .line 865
    :goto_18
    return-void
.end method

.method public postReportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 2272
    invoke-static {p1, p2, p3}, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->obtain(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;

    move-result-object v0

    .line 2274
    .local v0, "record":Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2275
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2276
    return-void
.end method

.method public postReportExemptedSyncStart(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2286
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2287
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2288
    return-void
.end method

.method public postReportSyncScheduled(Ljava/lang/String;IZ)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "exempted"    # Z

    .line 2280
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2, p3, p1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2281
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2282
    return-void
.end method

.method public removeListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    .line 1353
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1354
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1355
    monitor-exit v0

    .line 1356
    return-void

    .line 1355
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public restrictApp(Ljava/lang/String;II)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "restrictReason"    # I

    .line 1595
    const/16 v0, 0x600

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/usage/AppStandbyController;->restrictApp(Ljava/lang/String;III)V

    .line 1596
    return-void
.end method

.method public restrictApp(Ljava/lang/String;III)V
    .registers 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "mainReason"    # I
    .param p4, "restrictReason"    # I

    .line 1601
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p3

    const-string v0, "AppStandbyController"

    const/16 v1, 0x600

    if-eq v10, v1, :cond_2d

    const/16 v1, 0x400

    if-eq v10, v1, :cond_2d

    .line 1603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to restrict app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for an unsupported reason"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    return-void

    .line 1607
    :cond_2d
    iget-object v1, v8, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    const/4 v2, 0x0

    move/from16 v11, p2

    invoke-virtual {v1, v9, v2, v11}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageInstalled(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 1608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to restrict uninstalled app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    return-void

    .line 1612
    :cond_4f
    const v0, 0xff00

    and-int/2addr v0, v10

    move/from16 v12, p4

    and-int/lit16 v1, v12, 0xff

    or-int v13, v0, v1

    .line 1613
    .local v13, "reason":I
    iget-object v0, v8, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v14

    .line 1614
    .local v14, "nowElapsed":J
    iget-boolean v0, v8, Lcom/android/server/usage/AppStandbyController;->mAllowRestrictedBucket:Z

    if-eqz v0, :cond_66

    const/16 v0, 0x2d

    goto :goto_68

    :cond_66
    const/16 v0, 0x28

    :goto_68
    move v3, v0

    .line 1615
    .local v3, "bucket":I
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move v4, v13

    move-wide v5, v14

    invoke-direct/range {v0 .. v7}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(Ljava/lang/String;IIIJZ)V

    .line 1616
    return-void
.end method

.method public setActiveAdminApps(Ljava/util/Set;I)V
    .registers 5
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1867
    .local p1, "adminPkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1868
    if-nez p1, :cond_b

    .line 1869
    :try_start_5
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_10

    .line 1871
    :cond_b
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1873
    :goto_10
    monitor-exit v0

    .line 1874
    return-void

    .line 1873
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public setAdminProtectedPackages(Ljava/util/Set;I)V
    .registers 5
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1878
    .local p1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1879
    if-eqz p1, :cond_12

    :try_start_5
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_12

    .line 1882
    :cond_c
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_17

    .line 1880
    :cond_12
    :goto_12
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1884
    :goto_17
    monitor-exit v0

    .line 1885
    return-void

    .line 1884
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public setAppIdleAsync(Ljava/lang/String;ZI)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "idle"    # Z
    .param p3, "userId"    # I

    .line 1547
    if-eqz p1, :cond_12

    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_7

    goto :goto_12

    .line 1549
    :cond_7
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p3, p2, p1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1550
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1551
    return-void

    .line 1547
    :cond_12
    :goto_12
    return-void
.end method

.method setAppIdleEnabled(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .line 613
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 614
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 615
    .local v0, "usmi":Landroid/app/usage/UsageStatsManagerInternal;
    if-eqz p1, :cond_e

    .line 616
    invoke-virtual {v0, p0}, Landroid/app/usage/UsageStatsManagerInternal;->registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    goto :goto_11

    .line 618
    :cond_e
    invoke-virtual {v0, p0}, Landroid/app/usage/UsageStatsManagerInternal;->unregisterListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    .line 621
    :goto_11
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 622
    :try_start_14
    iget-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-eq v2, p1, :cond_27

    .line 623
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isInParole()Z

    move-result v2

    .line 624
    .local v2, "oldParoleState":Z
    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    .line 626
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isInParole()Z

    move-result v3

    if-eq v3, v2, :cond_27

    .line 627
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->postParoleStateChanged()V

    .line 630
    .end local v2    # "oldParoleState":Z
    :cond_27
    monitor-exit v1

    .line 631
    return-void

    .line 630
    :catchall_29
    move-exception v2

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_14 .. :try_end_2b} :catchall_29

    throw v2
.end method

.method setAppStandbyBucket(Ljava/lang/String;III)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "newBucket"    # I
    .param p4, "reason"    # I

    .line 1673
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1674
    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v6

    .line 1673
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(Ljava/lang/String;IIIJZ)V

    .line 1675
    return-void
.end method

.method public setAppStandbyBucket(Ljava/lang/String;IIII)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "bucket"    # I
    .param p3, "userId"    # I
    .param p4, "callingUid"    # I
    .param p5, "callingPid"    # I

    .line 1621
    new-instance v0, Landroid/app/usage/AppStandbyInfo;

    invoke-direct {v0, p1, p2}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    .line 1622
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1621
    invoke-virtual {p0, v0, p3, p4, p5}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBuckets(Ljava/util/List;III)V

    .line 1624
    return-void
.end method

.method public setAppStandbyBuckets(Ljava/util/List;III)V
    .registers 26
    .param p2, "userId"    # I
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/AppStandbyInfo;",
            ">;III)V"
        }
    .end annotation

    .line 1629
    .local p1, "appBuckets":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/AppStandbyInfo;>;"
    move-object/from16 v8, p0

    move/from16 v9, p3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string/jumbo v5, "setAppStandbyBucket"

    const/4 v6, 0x0

    move/from16 v0, p4

    move/from16 v1, p3

    move/from16 v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 1631
    .end local p2    # "userId":I
    .local v10, "userId":I
    if-eqz v9, :cond_1d

    const/16 v0, 0x7d0

    if-ne v9, v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    :goto_1e
    move v11, v0

    .line 1636
    .local v11, "shellCaller":Z
    const/16 v0, 0x3e8

    invoke-static {v9, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    move/from16 v12, p4

    if-ne v12, v0, :cond_34

    goto :goto_32

    :cond_30
    move/from16 v12, p4

    :goto_32
    if-eqz v11, :cond_38

    .line 1638
    :cond_34
    const/16 v0, 0x400

    move v13, v0

    .local v0, "reason":I
    goto :goto_45

    .line 1639
    .end local v0    # "reason":I
    :cond_38
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1640
    const/16 v0, 0x600

    move v13, v0

    .restart local v0    # "reason":I
    goto :goto_45

    .line 1642
    .end local v0    # "reason":I
    :cond_42
    const/16 v0, 0x500

    move v13, v0

    .line 1644
    .local v13, "reason":I
    :goto_45
    const/high16 v14, 0x4c0000

    .line 1647
    .local v14, "packageFlags":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    .line 1648
    .local v15, "numApps":I
    iget-object v0, v8, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v16

    .line 1649
    .local v16, "elapsedRealtime":J
    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_53
    if-ge v7, v15, :cond_e0

    .line 1650
    move-object/from16 v5, p1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/usage/AppStandbyInfo;

    .line 1651
    .local v6, "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    iget-object v4, v6, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    .line 1652
    .local v4, "packageName":Ljava/lang/String;
    iget v3, v6, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    .line 1653
    .local v3, "bucket":I
    const/16 v0, 0xa

    if-lt v3, v0, :cond_be

    const/16 v0, 0x32

    if-gt v3, v0, :cond_be

    .line 1656
    iget-object v0, v8, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const-wide/32 v1, 0x4c0000

    .line 1657
    invoke-virtual {v0, v4, v1, v2, v10}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    .line 1659
    .local v2, "packageUid":I
    if-eq v2, v9, :cond_b6

    .line 1662
    if-ltz v2, :cond_94

    .line 1666
    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v18, v2

    .end local v2    # "packageUid":I
    .local v18, "packageUid":I
    move v2, v10

    move/from16 p2, v3

    .end local v3    # "bucket":I
    .local p2, "bucket":I
    move-object v8, v4

    .end local v4    # "packageName":Ljava/lang/String;
    .local v8, "packageName":Ljava/lang/String;
    move v4, v13

    move-object/from16 v19, v6

    .end local v6    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    .local v19, "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    move-wide/from16 v5, v16

    move/from16 v20, v7

    .end local v7    # "i":I
    .local v20, "i":I
    move v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(Ljava/lang/String;IIIJZ)V

    .line 1649
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v18    # "packageUid":I
    .end local v19    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    .end local p2    # "bucket":I
    add-int/lit8 v7, v20, 0x1

    move-object/from16 v8, p0

    .end local v20    # "i":I
    .restart local v7    # "i":I
    goto :goto_53

    .line 1663
    .restart local v2    # "packageUid":I
    .restart local v3    # "bucket":I
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v6    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    :cond_94
    move/from16 v18, v2

    move-object v8, v4

    .end local v2    # "packageUid":I
    .end local v4    # "packageName":Ljava/lang/String;
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v18    # "packageUid":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set standby bucket for non existent package ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1660
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v18    # "packageUid":I
    .restart local v2    # "packageUid":I
    .restart local v4    # "packageName":Ljava/lang/String;
    :cond_b6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set your own standby bucket"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1653
    .end local v2    # "packageUid":I
    :cond_be
    move/from16 p2, v3

    move-object v8, v4

    move-object/from16 v19, v6

    move/from16 v20, v7

    .line 1654
    .end local v3    # "bucket":I
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v6    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    .end local v7    # "i":I
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v19    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    .restart local v20    # "i":I
    .restart local p2    # "bucket":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set the standby bucket to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, p2

    .end local p2    # "bucket":I
    .local v2, "bucket":I
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1668
    .end local v2    # "bucket":I
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v19    # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    .end local v20    # "i":I
    :cond_e0
    return-void
.end method

.method setChargingState(Z)V
    .registers 3
    .param p1, "isCharging"    # Z

    .line 826
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mIsCharging:Z

    if-eq v0, p1, :cond_9

    .line 828
    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mIsCharging:Z

    .line 829
    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyController;->postParoleStateChanged()V

    .line 831
    :cond_9
    return-void
.end method

.method public setEstimatedLaunchTime(Ljava/lang/String;IJ)V
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "launchTime"    # J

    .line 1300
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v8

    .line 1301
    .local v8, "nowElapsed":J
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1302
    :try_start_9
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object v2, p1

    move v3, p2

    move-wide v4, v8

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usage/AppIdleHistory;->setEstimatedLaunchTime(Ljava/lang/String;IJJ)V

    .line 1303
    monitor-exit v0

    .line 1304
    return-void

    .line 1303
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public setLastJobRunTime(Ljava/lang/String;IJ)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    .line 1284
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1285
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->setLastJobRunTime(Ljava/lang/String;IJ)V

    .line 1286
    monitor-exit v0

    .line 1287
    return-void

    .line 1286
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public shouldNoteResponseEventForAllBroadcastSessions()Z
    .registers 2

    .line 2020
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mNoteResponseEventForAllBroadcastSessions:Z

    return v0
.end method
