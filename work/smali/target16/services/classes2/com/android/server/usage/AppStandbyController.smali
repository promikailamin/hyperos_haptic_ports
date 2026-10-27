.class public Lcom/android/server/usage/AppStandbyController;
.super Ljava/lang/Object;
.source "AppStandbyController.java"

# interfaces
.implements Lcom/android/server/usage/AppStandbyInternal;
.implements Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;


# static fields
.field static final DEFAULT_ELAPSED_TIME_THRESHOLDS:[J

.field static final DEFAULT_SCREEN_TIME_THRESHOLDS:[J

.field static final MINIMUM_ELAPSED_TIME_THRESHOLDS:[J

.field static final MINIMUM_SCREEN_TIME_THRESHOLDS:[J

.field public static final THRESHOLD_BUCKETS:[I


# instance fields
.field public final mActiveAdminApps:Landroid/util/SparseArray;

.field public final mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mAdminProtectedPackages:Landroid/util/SparseArray;

.field public volatile mAppIdleEnabled:Z

.field public mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

.field public final mAppIdleLock:Ljava/lang/Object;

.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public mAppStandbyElapsedThresholds:[J

.field public final mAppStandbyProperties:Ljava/util/Map;

.field public mAppStandbyScreenThresholds:[J

.field public mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field public final mAppsToRestoreToRare:Landroid/util/SparseSetArray;

.field public volatile mBroadcastResponseExemptedPermissions:Ljava/lang/String;

.field public volatile mBroadcastResponseExemptedPermissionsList:Ljava/util/List;

.field public volatile mBroadcastResponseExemptedRoles:Ljava/lang/String;

.field public volatile mBroadcastResponseExemptedRolesList:Ljava/util/List;

.field public volatile mBroadcastResponseFgThresholdState:I

.field public volatile mBroadcastResponseWindowDurationMillis:J

.field public volatile mBroadcastSessionsDurationMs:J

.field public volatile mBroadcastSessionsWithResponseDurationMs:J

.field public mCachedDeviceProvisioningPackage:Ljava/lang/String;

.field public volatile mCachedNetworkScorer:Ljava/lang/String;

.field public volatile mCachedNetworkScorerAtMillis:J

.field public mCarrierPrivilegedApps:Ljava/util/List;

.field public final mCarrierPrivilegedLock:Ljava/lang/Object;

.field public mCheckIdleIntervalMillis:J

.field public final mContext:Landroid/content/Context;

.field public final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field public mExemptedSyncScheduledDozeTimeoutMillis:J

.field public mExemptedSyncScheduledNonDozeTimeoutMillis:J

.field public mExemptedSyncStartTimeoutMillis:J

.field public final mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

.field public final mHasFeatureTelephonySubscription:Z

.field public mHaveCarrierPrivilegedApps:Z

.field public final mHeadlessSystemApps:Landroid/util/ArraySet;

.field public mInitialForegroundServiceStartTimeoutMillis:J

.field public mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

.field public volatile mIsCharging:Z

.field public mLinkCrossProfileApps:Z

.field public volatile mNoteResponseEventForAllBroadcastSessions:Z

.field public mNotificationSeenPromotedBucket:I

.field public mNotificationSeenTimeoutMillis:J

.field public final mPackageAccessListeners:Ljava/util/ArrayList;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPendingIdleStateChecks:Landroid/util/SparseLongArray;

.field public mPendingInitializeDefaults:Z

.field public volatile mPendingOneTimeCheckIdleStates:Z

.field public mPredictionTimeoutMillis:J

.field public mRetainNotificationSeenImpactForPreTApps:Z

.field public mSlicePinnedTimeoutMillis:J

.field public mStrongUsageTimeoutMillis:J

.field public mSyncAdapterPromotedBucket:I

.field public mSyncAdapterTimeoutMillis:J

.field public final mSystemExemptionAppOpMode:Landroid/util/SparseIntArray;

.field public mSystemInteractionTimeoutMillis:J

.field public final mSystemPackagesAppIds:Ljava/util/ArrayList;

.field public mSystemServicesReady:Z

.field public mSystemUpdateUsageTimeoutMillis:J

.field public mTriggerQuotaBumpOnNotificationSeen:Z

.field public mUnexemptedSyncScheduledTimeoutMillis:J


# direct methods
.method public static synthetic $r8$lambda$KASTYduY3JRt750UcTvOhtni_NI(Lcom/android/server/usage/AppStandbyController;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->lambda$restoreAppsToRare$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$R1BnLLc8pHhJyjLrszRkEJC2lnw()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$U2-GF_fLZHT7_Jm_uRMpoT-uHZQ(Lcom/android/server/usage/AppStandbyController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->loadHeadlessSystemAppCache()V

    return-void
.end method

.method public static synthetic $r8$lambda$vJLDXlUh4fYgit4sBALnnUw4CrE(Lcom/android/server/usage/AppStandbyController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->updatePowerWhitelistCache()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAppIdleEnabled(Lcom/android/server/usage/AppStandbyController;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppIdleHistory(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppIdleHistory;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppIdleLock(Lcom/android/server/usage/AppStandbyController;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppStandbyProperties(Lcom/android/server/usage/AppStandbyController;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyProperties:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppsToRestoreToRare(Lcom/android/server/usage/AppStandbyController;)Landroid/util/SparseSetArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppsToRestoreToRare:Landroid/util/SparseSetArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/usage/AppStandbyController;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingIdleStateChecks(Lcom/android/server/usage/AppStandbyController;)Landroid/util/SparseLongArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPendingIdleStateChecks:Landroid/util/SparseLongArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemExemptionAppOpMode(Lcom/android/server/usage/AppStandbyController;)Landroid/util/SparseIntArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mSystemExemptionAppOpMode:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemServicesReady(Lcom/android/server/usage/AppStandbyController;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmTriggerQuotaBumpOnNotificationSeen(Lcom/android/server/usage/AppStandbyController;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mTriggerQuotaBumpOnNotificationSeen:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckAndUpdateStandbyState(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;IIJ)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/usage/AppStandbyController;->checkAndUpdateStandbyState(Ljava/lang/String;IIJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mevaluateSystemAppException(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->evaluateSystemAppException(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minformListeners(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;IIIZ)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/usage/AppStandbyController;->informListeners(Ljava/lang/String;IIIZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minformParoleStateChanged(Lcom/android/server/usage/AppStandbyController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->informParoleStateChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misDisplayOn(Lcom/android/server/usage/AppStandbyController;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isDisplayOn()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreportContentProviderUsage(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usage/AppStandbyController;->reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreportExemptedSyncScheduled(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->reportExemptedSyncScheduled(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreportExemptedSyncStart(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->reportExemptedSyncStart(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreportUnexemptedSyncScheduled(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->reportUnexemptedSyncScheduled(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrestoreAppToRare(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;IJI)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/usage/AppStandbyController;->restoreAppToRare(Ljava/lang/String;IJI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtriggerListenerQuotaBump(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;I)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->triggerListenerQuotaBump(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdatePowerWhitelistCache(Lcom/android/server/usage/AppStandbyController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->updatePowerWhitelistCache()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwaitForAdminData(Lcom/android/server/usage/AppStandbyController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->waitForAdminData()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTHRESHOLD_BUCKETS()[I
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/usage/AppStandbyController;->THRESHOLD_BUCKETS:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x5

    .line 174
    new-array v1, v0, [J

    fill-array-data v1, :array_2e

    sput-object v1, Lcom/android/server/usage/AppStandbyController;->DEFAULT_SCREEN_TIME_THRESHOLDS:[J

    .line 184
    new-array v1, v0, [J

    fill-array-data v1, :array_46

    sput-object v1, Lcom/android/server/usage/AppStandbyController;->MINIMUM_SCREEN_TIME_THRESHOLDS:[J

    .line 199
    new-array v1, v0, [J

    fill-array-data v1, :array_5e

    sput-object v1, Lcom/android/server/usage/AppStandbyController;->DEFAULT_ELAPSED_TIME_THRESHOLDS:[J

    .line 209
    new-array v0, v0, [J

    fill-array-data v0, :array_76

    sput-object v0, Lcom/android/server/usage/AppStandbyController;->MINIMUM_ELAPSED_TIME_THRESHOLDS:[J

    const/16 v0, 0x28

    const/16 v1, 0x2d

    const/16 v2, 0xa

    const/16 v3, 0x14

    const/16 v4, 0x1e

    .line 219
    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/usage/AppStandbyController;->THRESHOLD_BUCKETS:[I

    return-void

    :array_2e
    .array-data 8
        0x0
        0x0
        0x36ee80
        0x6ddd00
        0x1499700
    .end array-data

    :array_46
    .array-data 8
        0x0
        0x0
        0x0
        0x1b7740
        0x36ee80
    .end array-data

    :array_5e
    .array-data 8
        0x0
        0x2932e00
        0x5265c00
        0xa4cb800
        0x2932e000
    .end array-data

    :array_76
    .array-data 8
        0x0
        0x36ee80
        0x36ee80
        0x6ddd00
        0xdbba00
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 603
    new-instance v0, Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/server/usage/AppStandbyController$Injector;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Lcom/android/server/usage/AppStandbyController;-><init>(Lcom/android/server/usage/AppStandbyController$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/usage/AppStandbyController$Injector;)V
    .registers 13

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    new-instance v1, Lcom/android/server/usage/AppStandbyController$Lock;

    invoke-direct {v1}, Lcom/android/server/usage/AppStandbyController$Lock;-><init>()V

    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    .line 264
    new-instance v0, Lcom/android/server/usage/AppStandbyController$Lock;

    invoke-direct {v0}, Lcom/android/server/usage/AppStandbyController$Lock;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedLock:Ljava/lang/Object;

    .line 276
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    .line 280
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    .line 287
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    .line 290
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    .line 296
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPendingIdleStateChecks:Landroid/util/SparseLongArray;

    .line 303
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mSystemExemptionAppOpMode:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    .line 307
    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorer:Ljava/lang/String;

    const-wide/16 v3, 0x0

    .line 309
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorerAtMillis:J

    .line 317
    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCachedDeviceProvisioningPackage:Ljava/lang/String;

    .line 332
    sget-object v3, Lcom/android/server/usage/AppStandbyController;->DEFAULT_ELAPSED_TIME_THRESHOLDS:[J

    aget-wide v4, v3, v2

    const-wide/16 v6, 0x4

    div-long/2addr v4, v6

    const-wide/32 v6, 0xdbba00

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/usage/AppStandbyController;->mCheckIdleIntervalMillis:J

    .line 338
    sget-object v4, Lcom/android/server/usage/AppStandbyController;->DEFAULT_SCREEN_TIME_THRESHOLDS:[J

    iput-object v4, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    .line 343
    iput-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    const-wide/32 v3, 0x493e0

    .line 345
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    const-wide/32 v3, 0x2932e00

    .line 347
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    const-wide/32 v8, 0x6ddd00

    .line 349
    iput-wide v8, p0, Lcom/android/server/usage/AppStandbyController;->mSlicePinnedTimeoutMillis:J

    const/16 v5, 0x14

    .line 351
    iput v5, p0, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenPromotedBucket:I

    const/4 v10, 0x0

    .line 357
    iput-boolean v10, p0, Lcom/android/server/usage/AppStandbyController;->mTriggerQuotaBumpOnNotificationSeen:Z

    .line 363
    iput-boolean v10, p0, Lcom/android/server/usage/AppStandbyController;->mRetainNotificationSeenImpactForPreTApps:Z

    .line 366
    iput-wide v8, p0, Lcom/android/server/usage/AppStandbyController;->mSystemUpdateUsageTimeoutMillis:J

    .line 368
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mPredictionTimeoutMillis:J

    .line 370
    iput-wide v8, p0, Lcom/android/server/usage/AppStandbyController;->mSyncAdapterTimeoutMillis:J

    .line 372
    iput v5, p0, Lcom/android/server/usage/AppStandbyController;->mSyncAdapterPromotedBucket:I

    const-wide/32 v3, 0x927c0

    .line 377
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledNonDozeTimeoutMillis:J

    .line 383
    iput-wide v6, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledDozeTimeoutMillis:J

    .line 388
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncStartTimeoutMillis:J

    .line 392
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mUnexemptedSyncScheduledTimeoutMillis:J

    .line 395
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    const-wide/32 v3, 0x1b7740

    .line 400
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    .line 407
    iput-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mLinkCrossProfileApps:Z

    const-wide/32 v3, 0x1d4c0

    .line 414
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseWindowDurationMillis:J

    const/4 v5, 0x2

    .line 422
    iput v5, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseFgThresholdState:I

    .line 429
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsDurationMs:J

    .line 438
    iput-wide v3, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsWithResponseDurationMs:J

    .line 448
    iput-boolean v2, p0, Lcom/android/server/usage/AppStandbyController;->mNoteResponseEventForAllBroadcastSessions:Z

    .line 457
    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedRoles:Ljava/lang/String;

    .line 459
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedRolesList:Ljava/util/List;

    .line 467
    const-string v3, ""

    iput-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedPermissions:Ljava/lang/String;

    .line 469
    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedPermissionsList:Ljava/util/List;

    .line 478
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyProperties:Ljava/util/Map;

    .line 484
    new-instance v2, Landroid/util/SparseSetArray;

    invoke-direct {v2}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppsToRestoreToRare:Landroid/util/SparseSetArray;

    .line 489
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mSystemPackagesAppIds:Ljava/util/ArrayList;

    .line 504
    iput-boolean v10, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    .line 3004
    new-instance v2, Lcom/android/server/usage/AppStandbyController$2;

    invoke-direct {v2, p0}, Lcom/android/server/usage/AppStandbyController$2;-><init>(Lcom/android/server/usage/AppStandbyController;)V

    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 607
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 608
    invoke-virtual {p1}, Lcom/android/server/usage/AppStandbyController$Injector;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    .line 609
    new-instance v8, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p1}, Lcom/android/server/usage/AppStandbyController$Injector;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v8, p0, p1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;-><init>(Lcom/android/server/usage/AppStandbyController;Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 610
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 611
    const-string v2, "android.hardware.telephony.subscription"

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mHasFeatureTelephonySubscription:Z

    .line 614
    new-instance p1, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;

    invoke-direct {p1, p0, v0}, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;-><init>(Lcom/android/server/usage/AppStandbyController;Lcom/android/server/usage/AppStandbyController-IA;)V

    .line 615
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.os.action.CHARGING"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 616
    const-string v4, "android.os.action.DISCHARGING"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 617
    const-string v4, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 618
    invoke-virtual {v3, p1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 620
    monitor-enter v1

    .line 621
    :try_start_10d
    new-instance p1, Lcom/android/server/usage/AppIdleHistory;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$Injector;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 622
    invoke-virtual {v4}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct {p1, v2, v4, v5}, Lcom/android/server/usage/AppIdleHistory;-><init>(Ljava/io/File;J)V

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 623
    monitor-exit v1
    :try_end_121
    .catchall {:try_start_10d .. :try_end_121} :catchall_147

    .line 625
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 626
    const-string p1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 627
    const-string p1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v6, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 628
    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 629
    const-string/jumbo p1, "package"

    invoke-virtual {v6, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 631
    new-instance v4, Lcom/android/server/usage/AppStandbyController$PackageReceiver;

    invoke-direct {v4, p0, v0}, Lcom/android/server/usage/AppStandbyController$PackageReceiver;-><init>(Lcom/android/server/usage/AppStandbyController;Lcom/android/server/usage/AppStandbyController-IA;)V

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :catchall_147
    move-exception v0

    move-object p0, v0

    .line 623
    :try_start_149
    monitor-exit v1
    :try_end_14a
    .catchall {:try_start_149 .. :try_end_14a} :catchall_147

    throw p0
.end method

.method public static isUserUsage(I)Z
    .registers 4

    .line 0
    const v0, 0xff00

    and-int/2addr v0, p0

    const/16 v1, 0x300

    const/4 v2, 0x0

    if-ne v0, v1, :cond_15

    and-int/lit16 p0, p0, 0xff

    const/4 v0, 0x3

    if-eq p0, v0, :cond_13

    const/4 v0, 0x4

    if-ne p0, v0, :cond_12

    goto :goto_13

    :cond_12
    return v2

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0

    :cond_15
    return v2
.end method


# virtual methods
.method public addActiveDeviceAdmin(Ljava/lang/String;I)V
    .registers 5

    .line 1984
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1985
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_1a

    .line 1987
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1988
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1a

    :catchall_18
    move-exception p0

    goto :goto_1f

    .line 1990
    :cond_1a
    :goto_1a
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1991
    monitor-exit v0

    return-void

    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_18

    throw p0
.end method

.method public addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V
    .registers 4

    .line 1397
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1398
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 1399
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :catchall_11
    move-exception p0

    goto :goto_15

    .line 1401
    :cond_13
    :goto_13
    monitor-exit v0

    return-void

    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_11

    throw p0
.end method

.method public final checkAndUpdateStandbyState(Ljava/lang/String;IIJ)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p4

    if-gtz p3, :cond_11

    .line 961
    :try_start_a
    iget-object v5, v0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v1, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v5
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_10} :catch_114

    goto :goto_13

    :cond_11
    move/from16 v5, p3

    .line 969
    :goto_13
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    .line 968
    invoke-virtual {v0, v1, v5, v2}, Lcom/android/server/usage/AppStandbyController;->getAppMinBucket(Ljava/lang/String;II)I

    move-result v5

    const/16 v6, 0xa

    if-gt v5, v6, :cond_4a

    .line 979
    iget-object v8, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v8

    .line 980
    :try_start_22
    iget-object v6, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v6, v1, v2, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->isIdle(Ljava/lang/String;IJ)Z

    move-result v9

    .line 981
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/16 v7, 0x100

    move v6, v5

    move-wide v4, v3

    move v3, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJII)V

    move-object v1, v2

    move v2, v3

    move-wide v3, v4

    move v5, v6

    .line 983
    iget-object v6, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v6, v1, v2, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->isIdle(Ljava/lang/String;IJ)Z

    move-result v10

    .line 984
    monitor-exit v8
    :try_end_3f
    .catchall {:try_start_22 .. :try_end_3f} :catchall_47

    const/16 v6, 0x100

    const/4 v7, 0x0

    .line 985
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    goto/16 :goto_10f

    :catchall_47
    move-exception v0

    .line 984
    :try_start_48
    monitor-exit v8
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v0

    :cond_4a
    move-object v7, v0

    .line 988
    iget-object v8, v7, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v8

    .line 989
    :try_start_4e
    iget-object v0, v7, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->isIdle(Ljava/lang/String;IJ)Z

    move-result v9

    .line 990
    iget-object v0, v7, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 991
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 993
    iget v10, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    const v11, 0xff00

    and-int/2addr v11, v10

    const/16 v12, 0x400

    if-ne v11, v12, :cond_69

    .line 999
    monitor-exit v8

    return-void

    :catchall_66
    move-exception v0

    goto/16 :goto_115

    .line 1001
    :cond_69
    iget v12, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v13, 0x32

    if-ne v12, v13, :cond_71

    .line 1004
    monitor-exit v8

    return-void

    .line 1006
    :cond_71
    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1007
    invoke-virtual {v7, v0, v3, v4}, Lcom/android/server/usage/AppStandbyController;->predictionTimedOut(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;J)Z

    move-result v14

    const/16 v15, 0x200

    const/16 v6, 0x100

    if-eq v11, v6, :cond_87

    const/16 v6, 0x300

    if-eq v11, v6, :cond_87

    if-eq v11, v15, :cond_87

    if-eqz v14, :cond_a8

    :cond_87
    if-nez v14, :cond_97

    .line 1014
    iget v6, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    const/16 v15, 0xa

    if-lt v6, v15, :cond_97

    const/16 v15, 0x28

    if-gt v6, v15, :cond_97

    const/16 v10, 0x501

    move v13, v6

    goto :goto_a8

    :cond_97
    const/16 v6, 0x100

    if-ne v11, v6, :cond_a2

    .line 1024
    iget v6, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    and-int/lit16 v6, v6, 0xff

    const/4 v11, 0x2

    if-eq v6, v11, :cond_a8

    .line 1027
    :cond_a2
    invoke-virtual {v7, v1, v2, v3, v4}, Lcom/android/server/usage/AppStandbyController;->getBucketForLocked(Ljava/lang/String;IJ)I

    move-result v13

    const/16 v10, 0x200

    .line 1038
    :cond_a8
    :goto_a8
    iget-object v6, v7, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v6, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v1

    .line 1039
    invoke-virtual {v7, v0, v13, v1, v2}, Lcom/android/server/usage/AppStandbyController;->getMinBucketWithValidExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)I

    move-result v6

    const/4 v11, -0x1

    if-eq v6, v11, :cond_c6

    const/16 v15, 0xa

    if-eq v6, v15, :cond_c3

    .line 1043
    iget v10, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-ne v10, v6, :cond_be

    goto :goto_c3

    :cond_be
    const/16 v10, 0x307

    :goto_c0
    move-wide v15, v1

    move v13, v6

    goto :goto_c7

    .line 1044
    :cond_c3
    :goto_c3
    iget v10, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    goto :goto_c0

    :cond_c6
    move-wide v15, v1

    .line 1054
    :goto_c7
    iget-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    const-wide/16 v17, 0x0

    cmp-long v6, v1, v17

    if-ltz v6, :cond_e8

    move-wide/from16 v17, v1

    iget-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    cmp-long v1, v1, v17

    if-lez v1, :cond_e8

    sub-long v1, v15, v17

    iget-object v6, v7, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1057
    invoke-virtual {v6}, Lcom/android/server/usage/AppStandbyController$Injector;->getAutoRestrictedBucketDelayMs()J

    move-result-wide v15

    cmp-long v1, v1, v15

    if-ltz v1, :cond_e8

    .line 1059
    iget v10, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I

    const/16 v0, 0x2d

    move v13, v0

    :cond_e8
    move v6, v10

    if-le v13, v5, :cond_ec

    goto :goto_ed

    :cond_ec
    move v5, v13

    :goto_ed
    if-ne v12, v5, :cond_f9

    if-eqz v14, :cond_f2

    goto :goto_f9

    :cond_f2
    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v0, v7

    move v10, v9

    goto :goto_10e

    .line 1078
    :cond_f9
    :goto_f9
    iget-object v0, v7, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJII)V

    .line 1080
    iget-object v0, v7, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->isIdle(Ljava/lang/String;IJ)Z

    move-result v10

    const/4 v7, 0x0

    move-object/from16 v0, p0

    .line 1081
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 1086
    :goto_10e
    monitor-exit v8
    :try_end_10f
    .catchall {:try_start_4e .. :try_end_10f} :catchall_66

    :goto_10f
    if-eq v9, v10, :cond_114

    .line 1089
    invoke-virtual {v0, v1, v2, v10}, Lcom/android/server/usage/AppStandbyController;->notifyBatteryStats(Ljava/lang/String;IZ)V

    :catch_114
    :cond_114
    return-void

    .line 1086
    :goto_115
    :try_start_115
    monitor-exit v8
    :try_end_116
    .catchall {:try_start_115 .. :try_end_116} :catchall_66

    throw v0
.end method

.method public checkIdleStates(I)Z
    .registers 15

    .line 914
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 920
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->getRunningUserIds()[I

    move-result-object v0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_16

    .line 922
    invoke-static {v0, p1}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v3
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_13} :catch_50

    if-nez v3, :cond_16

    return v1

    .line 929
    :cond_16
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v3}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v8

    move v3, v1

    .line 930
    :goto_1d
    array-length v4, v0

    if-ge v3, v4, :cond_4e

    .line 931
    aget v6, v0, v3

    if-eq p1, v2, :cond_28

    if-eq p1, v6, :cond_28

    :cond_26
    move-object v4, p0

    goto :goto_4a

    .line 938
    :cond_28
    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v5, 0x200

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v10

    .line 941
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    move v12, v1

    :goto_35
    if-ge v12, v11, :cond_26

    .line 943
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 944
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 945
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/usage/AppStandbyController;->checkAndUpdateStandbyState(Ljava/lang/String;IIJ)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_35

    :goto_4a
    add-int/lit8 v3, v3, 0x1

    move-object p0, v4

    goto :goto_1d

    :cond_4e
    const/4 p0, 0x1

    return p0

    :catch_50
    move-exception v0

    move-object p0, v0

    .line 926
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public clearAppIdleForPackage(Ljava/lang/String;I)V
    .registers 4

    .line 2203
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2204
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/AppIdleHistory;->clearUsage(Ljava/lang/String;I)V

    .line 2205
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public clearCarrierPrivilegedApps()V
    .registers 3

    .line 2077
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2078
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    const/4 v1, 0x0

    .line 2079
    iput-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    .line 2080
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public clearLastUsedTimestampsForTest(Ljava/lang/String;I)V
    .registers 4

    .line 2175
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2176
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/AppIdleHistory;->clearLastUsedTimestamps(Ljava/lang/String;I)V

    .line 2177
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public dumpState([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 8

    .line 2473
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2474
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Carrier privileged apps (have="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2476
    monitor-exit p1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_2b7

    .line 2478
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2479
    const-string p1, "Settings:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2481
    const-string p1, "  mCheckIdleIntervalMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2482
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mCheckIdleIntervalMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2483
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2485
    const-string p1, "  mStrongUsageTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2486
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2487
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2488
    const-string p1, "  mNotificationSeenTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2489
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2490
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2491
    const-string p1, "  mNotificationSeenPromotedBucket="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2492
    iget p1, p0, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenPromotedBucket:I

    invoke-static {p1}, Landroid/app/usage/UsageStatsManager;->standbyBucketToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2493
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2494
    const-string p1, "  mTriggerQuotaBumpOnNotificationSeen="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2495
    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mTriggerQuotaBumpOnNotificationSeen:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 2496
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2497
    const-string p1, "  mRetainNotificationSeenImpactForPreTApps="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2498
    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mRetainNotificationSeenImpactForPreTApps:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 2499
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2500
    const-string p1, "  mSlicePinnedTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2501
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mSlicePinnedTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2502
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2503
    const-string p1, "  mSyncAdapterTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2504
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mSyncAdapterTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2505
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2506
    const-string p1, "  mSyncAdapterPromotedBucket="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2507
    iget p1, p0, Lcom/android/server/usage/AppStandbyController;->mSyncAdapterPromotedBucket:I

    invoke-static {p1}, Landroid/app/usage/UsageStatsManager;->standbyBucketToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2508
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2509
    const-string p1, "  mSystemInteractionTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2510
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2511
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2512
    const-string p1, "  mInitialForegroundServiceStartTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2513
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2514
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2516
    const-string p1, "  mPredictionTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2517
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mPredictionTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2518
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2520
    const-string p1, "  mExemptedSyncScheduledNonDozeTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2521
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledNonDozeTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2522
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2523
    const-string p1, "  mExemptedSyncScheduledDozeTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2524
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledDozeTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2525
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2526
    const-string p1, "  mExemptedSyncStartTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2527
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncStartTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2528
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2529
    const-string p1, "  mUnexemptedSyncScheduledTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2530
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mUnexemptedSyncScheduledTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2531
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2533
    const-string p1, "  mSystemUpdateUsageTimeoutMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2534
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mSystemUpdateUsageTimeoutMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2535
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2537
    const-string p1, "  mBroadcastResponseWindowDurationMillis="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2538
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseWindowDurationMillis:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2539
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2541
    const-string p1, "  mBroadcastResponseFgThresholdState="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2542
    iget p1, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseFgThresholdState:I

    invoke-static {p1}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2543
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2545
    const-string p1, "  mBroadcastSessionsDurationMs="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2546
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsDurationMs:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2547
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2549
    const-string p1, "  mBroadcastSessionsWithResponseDurationMs="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2550
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsWithResponseDurationMs:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2551
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2553
    const-string p1, "  mNoteResponseEventForAllBroadcastSessions="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2554
    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mNoteResponseEventForAllBroadcastSessions:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 2555
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2557
    const-string p1, "  mBroadcastResponseExemptedRoles="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2558
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedRoles:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2559
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2561
    const-string p1, "  mBroadcastResponseExemptedPermissions="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2562
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedPermissions:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2563
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2565
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2566
    const-string p1, "mAppIdleEnabled="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 2567
    const-string p1, " mIsCharging="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2568
    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mIsCharging:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 2569
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2570
    const-string p1, "mScreenThresholds="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2571
    const-string p1, "mElapsedThresholds="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2572
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2574
    const-string p1, "mHeadlessSystemApps=["

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2575
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    monitor-enter v0

    .line 2576
    :try_start_1b1
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1b9
    if-ltz p1, :cond_1d9

    .line 2577
    const-string v1, "  "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2578
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p1, :cond_1d6

    .line 2579
    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1d6

    :catchall_1d3
    move-exception p0

    goto/16 :goto_2b5

    :cond_1d6
    :goto_1d6
    add-int/lit8 p1, p1, -0x1

    goto :goto_1b9

    .line 2581
    :cond_1d9
    monitor-exit v0
    :try_end_1da
    .catchall {:try_start_1b1 .. :try_end_1da} :catchall_1d3

    .line 2582
    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2583
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2585
    const-string p1, "mSystemPackagesAppIds=["

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2586
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mSystemPackagesAppIds:Ljava/util/ArrayList;

    monitor-enter p1

    .line 2587
    :try_start_1ea
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mSystemPackagesAppIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1f2
    if-ltz v0, :cond_210

    .line 2588
    const-string v1, "  "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2589
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mSystemPackagesAppIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz v0, :cond_20d

    .line 2590
    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_20d

    :catchall_20a
    move-exception p0

    goto/16 :goto_2b3

    :cond_20d
    :goto_20d
    add-int/lit8 v0, v0, -0x1

    goto :goto_1f2

    .line 2592
    :cond_210
    monitor-exit p1
    :try_end_211
    .catchall {:try_start_1ea .. :try_end_211} :catchall_20a

    .line 2593
    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2594
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2596
    const-string p1, "mActiveAdminApps=["

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2597
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2598
    :try_start_221
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v1, 0x0

    move v2, v1

    :goto_229
    if-ge v2, p1, :cond_259

    .line 2600
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 2601
    const-string v4, " "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2602
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2603
    const-string v3, ": "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2604
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    add-int/lit8 v3, p1, -0x1

    if-eq v2, v3, :cond_253

    .line 2605
    const-string v3, ","

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_253

    :catchall_251
    move-exception p0

    goto :goto_2b1

    .line 2606
    :cond_253
    :goto_253
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_229

    .line 2608
    :cond_259
    monitor-exit v0
    :try_end_25a
    .catchall {:try_start_221 .. :try_end_25a} :catchall_251

    .line 2609
    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2610
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2612
    const-string p1, "mAdminProtectedPackages=["

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2613
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    monitor-enter p1

    .line 2614
    :try_start_26a
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_270
    if-ge v1, v0, :cond_2a0

    .line 2616
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 2617
    const-string v3, " "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2618
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2619
    const-string v2, ": "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2620
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_29a

    .line 2621
    const-string v2, ","

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_29a

    :catchall_298
    move-exception p0

    goto :goto_2af

    .line 2622
    :cond_29a
    :goto_29a
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_270

    .line 2624
    :cond_2a0
    monitor-exit p1
    :try_end_2a1
    .catchall {:try_start_26a .. :try_end_2a1} :catchall_298

    .line 2625
    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2626
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2628
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppStandbyController$Injector;->dump(Ljava/io/PrintWriter;)V

    return-void

    .line 2624
    :goto_2af
    :try_start_2af
    monitor-exit p1
    :try_end_2b0
    .catchall {:try_start_2af .. :try_end_2b0} :catchall_298

    throw p0

    .line 2608
    :goto_2b1
    :try_start_2b1
    monitor-exit v0
    :try_end_2b2
    .catchall {:try_start_2b1 .. :try_end_2b2} :catchall_251

    throw p0

    .line 2592
    :goto_2b3
    :try_start_2b3
    monitor-exit p1
    :try_end_2b4
    .catchall {:try_start_2b3 .. :try_end_2b4} :catchall_20a

    throw p0

    .line 2581
    :goto_2b5
    :try_start_2b5
    monitor-exit v0
    :try_end_2b6
    .catchall {:try_start_2b5 .. :try_end_2b6} :catchall_1d3

    throw p0

    :catchall_2b7
    move-exception p0

    .line 2476
    :try_start_2b8
    monitor-exit p1
    :try_end_2b9
    .catchall {:try_start_2b8 .. :try_end_2b9} :catchall_2b7

    throw p0
.end method

.method public dumpUsers(Landroid/util/IndentingPrintWriter;[ILjava/util/List;)V
    .registers 5

    .line 2466
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2467
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usage/AppIdleHistory;->dumpUsers(Landroid/util/IndentingPrintWriter;[ILjava/util/List;)V

    .line 2468
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final evaluateSystemAppException(Ljava/lang/String;I)V
    .registers 5

    .line 2325
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    if-nez v0, :cond_5

    goto :goto_1b

    .line 2330
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const v1, 0x1c0200

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p2

    .line 2332
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppStandbyController;->maybeUpdateHeadlessSystemAppCache(Landroid/content/pm/PackageInfo;)Z
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_11} :catch_12

    return-void

    .line 2334
    :catch_12
    iget-object p2, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    monitor-enter p2

    .line 2335
    :try_start_15
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2336
    monitor-exit p2

    :goto_1b
    return-void

    :catchall_1c
    move-exception p0

    monitor-exit p2
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public final fetchCarrierPrivilegedAppsCPL()V
    .registers 3

    .line 2085
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    .line 2086
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2088
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCarrierPrivilegedPackagesForAllActiveSubscriptions()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    const/4 v0, 0x1

    .line 2089
    iput-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    return-void
.end method

.method public flushHandler(J)Z
    .registers 4

    .line 2186
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    new-instance v0, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    move-result p0

    return p0
.end method

.method public flushToDisk()V
    .registers 5

    .line 2191
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2192
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleTimes(J)V

    .line 2193
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleDurations()V

    .line 2194
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public forceIdleState(Ljava/lang/String;IZ)V
    .registers 16

    .line 1307
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_6

    goto/16 :goto_67

    .line 1309
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->getAppId(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_e

    goto/16 :goto_67

    .line 1311
    :cond_e
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/usage/AppStandbyController;->getAppMinBucket(Ljava/lang/String;II)I

    move-result v0

    if-eqz p3, :cond_33

    const/16 v1, 0x28

    if-ge v0, v1, :cond_33

    .line 1313
    const-string p0, "AppStandbyController"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Tried to force an app to be idle when its min bucket is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    invoke-static {v0}, Landroid/app/usage/UsageStatsManager;->standbyBucketToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1313
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1317
    :cond_33
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v5

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    .line 1319
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result p0

    .line 1322
    iget-object p1, v1, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter p1

    move-wide v7, v5

    move v6, v4

    .line 1323
    :try_start_45
    iget-object v4, v1, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object v5, v2

    move-wide v8, v7

    move v7, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/usage/AppIdleHistory;->setIdle(Ljava/lang/String;IZJ)I

    move-result p2

    move-object v2, v5

    move v4, v6

    move-wide v5, v8

    .line 1324
    monitor-exit p1
    :try_end_52
    .catchall {:try_start_45 .. :try_end_52} :catchall_68

    .line 1325
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result p1

    const/16 v10, 0x400

    const/4 v11, 0x0

    move v9, p2

    move-wide v7, v5

    move-object v5, v2

    move v6, v4

    move-object v4, v1

    .line 1328
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    move v4, v6

    if-eq p0, p1, :cond_67

    .line 1331
    invoke-virtual {v1, v2, v4, p1}, Lcom/android/server/usage/AppStandbyController;->notifyBatteryStats(Ljava/lang/String;IZ)V

    :cond_67
    :goto_67
    return-void

    :catchall_68
    move-exception v0

    move-object p0, v0

    .line 1324
    :try_start_6a
    monitor-exit p1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_68

    throw p0
.end method

.method public getActiveAdminAppsForTest(I)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2036
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2037
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 2038
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public getAdminProtectedPackagesForTest(I)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2043
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2044
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 2045
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public getAppId(Ljava/lang/String;)I
    .registers 3

    .line 1414
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const v0, 0x400200

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 1417
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_b} :catch_c

    return p0

    :catch_c
    const/4 p0, -0x1

    return p0
.end method

.method public getAppIdleHistoryForTest()Lcom/android/server/usage/AppIdleHistory;
    .registers 2

    .line 2459
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2460
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 2461
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getAppMinBucket(Ljava/lang/String;I)I
    .registers 4

    .line 1436
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 1437
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/usage/AppStandbyController;->getAppMinBucket(Ljava/lang/String;II)I

    move-result p0
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_e} :catch_f

    return p0

    :catch_f
    const/16 p0, 0x32

    return p0
.end method

.method public final getAppMinBucket(Ljava/lang/String;II)I
    .registers 11

    const/16 v0, 0x32

    if-nez p1, :cond_5

    return v0

    .line 1451
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    const/4 v2, 0x5

    if-nez v1, :cond_b

    return v2

    :cond_b
    const/16 v1, 0x2710

    if-ge p2, v1, :cond_10

    return v2

    .line 1458
    :cond_10
    const-string v1, "android"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    return v2

    .line 1463
    :cond_19
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    const/16 v3, 0xa

    if-eqz v1, :cond_98

    .line 1467
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isNonIdleWhitelisted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    return v2

    .line 1471
    :cond_28
    invoke-virtual {p0, p1, p3}, Lcom/android/server/usage/AppStandbyController;->isActiveDeviceAdmin(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2f

    return v2

    .line 1475
    :cond_2f
    invoke-virtual {p0, p1, p3}, Lcom/android/server/usage/AppStandbyController;->isAdminProtectedPackages(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_36

    return v2

    .line 1479
    :cond_36
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->isActiveNetworkScorer(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    return v2

    .line 1483
    :cond_3d
    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    .line 1484
    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController;->mSystemExemptionAppOpMode:Landroid/util/SparseIntArray;

    monitor-enter v4

    .line 1485
    :try_start_44
    iget-object v5, p0, Lcom/android/server/usage/AppStandbyController;->mSystemExemptionAppOpMode:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_58

    .line 1486
    iget-object v5, p0, Lcom/android/server/usage/AppStandbyController;->mSystemExemptionAppOpMode:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-nez v1, :cond_69

    .line 1488
    monitor-exit v4

    return v2

    :catchall_56
    move-exception p0

    goto :goto_96

    .line 1491
    :cond_58
    iget-object v5, p0, Lcom/android/server/usage/AppStandbyController;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v6, 0x80

    invoke-virtual {v5, v6, v1, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v5

    .line 1494
    iget-object v6, p0, Lcom/android/server/usage/AppStandbyController;->mSystemExemptionAppOpMode:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    if-nez v5, :cond_69

    .line 1496
    monitor-exit v4

    return v2

    .line 1499
    :cond_69
    monitor-exit v4
    :try_end_6a
    .catchall {:try_start_44 .. :try_end_6a} :catchall_56

    .line 1501
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    if-eqz v1, :cond_77

    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1502
    invoke-virtual {v4, v1, p1, p3}, Lcom/android/server/usage/AppStandbyController$Injector;->isBoundWidgetPackage(Landroid/appwidget/AppWidgetManager;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_77

    return v3

    .line 1506
    :cond_77
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->isDeviceProvisioningPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7e

    return v2

    .line 1510
    :cond_7e
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isWellbeingPackage(Ljava/lang/String;)Z

    move-result v1

    const/16 v4, 0x14

    if-eqz v1, :cond_89

    return v4

    .line 1514
    :cond_89
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1515
    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result p2

    .line 1514
    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/AppStandbyController$Injector;->shouldGetExactAlarmBucketElevation(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_98

    return v4

    .line 1499
    :goto_96
    :try_start_96
    monitor-exit v4
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_56

    throw p0

    .line 1521
    :cond_98
    iget-boolean p2, p0, Lcom/android/server/usage/AppStandbyController;->mHasFeatureTelephonySubscription:Z

    if-eqz p2, :cond_a3

    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->isCarrierApp(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a3

    return v2

    .line 1525
    :cond_a3
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->isHeadlessSystemApp(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_aa

    return v3

    .line 1529
    :cond_aa
    iget-boolean p2, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    if-eqz p2, :cond_b9

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1530
    invoke-virtual {p0, p1, p3}, Lcom/android/server/usage/AppStandbyController$Injector;->isBackgroundLocationPermissionGranted(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_b9

    const/16 p0, 0x1e

    return p0

    :cond_b9
    return v0
.end method

.method public getAppMinStandbyBucket(Ljava/lang/String;IIZ)I
    .registers 5

    if-eqz p4, :cond_d

    .line 1671
    iget-object p4, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p4, p3, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_d

    const/16 p0, 0x32

    return p0

    .line 1674
    :cond_d
    iget-object p4, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter p4

    .line 1675
    :try_start_10
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usage/AppStandbyController;->getAppMinBucket(Ljava/lang/String;II)I

    move-result p0

    monitor-exit p4

    return p0

    :catchall_16
    move-exception p0

    .line 1676
    monitor-exit p4
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public getAppStandbyBucket(Ljava/lang/String;IJZ)I
    .registers 7

    .line 1628
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_6

    const/4 p0, 0x5

    return p0

    :cond_6
    if-eqz p5, :cond_13

    .line 1631
    iget-object p5, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p5, p2, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_13

    const/16 p0, 0xa

    return p0

    .line 1635
    :cond_13
    iget-object p5, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter p5

    .line 1636
    :try_start_16
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result p0

    monitor-exit p5

    return p0

    :catchall_1e
    move-exception p0

    .line 1637
    monitor-exit p5
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public getAppStandbyBucketAndReason(Ljava/lang/String;IJ)J
    .registers 6

    .line 1643
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_c

    const/4 p0, 0x5

    const/16 p1, 0x100

    .line 1644
    invoke-static {p0, p1}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide p0

    return-wide p0

    .line 1647
    :cond_c
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1648
    :try_start_f
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getAppStandbyBucketAndReason(Ljava/lang/String;IJ)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_17
    move-exception p0

    .line 1650
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_17

    throw p0
.end method

.method public getAppStandbyBucketReason(Ljava/lang/String;IJ)I
    .registers 6

    .line 1655
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1656
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getAppStandbyReason(Ljava/lang/String;IJ)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 1657
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getAppStandbyBuckets(I)Ljava/util/List;
    .registers 4

    .line 1662
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1663
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-boolean p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    invoke-virtual {v1, p1, p0}, Lcom/android/server/usage/AppIdleHistory;->getAppStandbyBuckets(IZ)Ljava/util/ArrayList;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 1664
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public getAppStandbyConstant(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 2170
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyProperties:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getBroadcastResponseExemptedPermissions()Ljava/util/List;
    .registers 1

    .line 2164
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedPermissionsList:Ljava/util/List;

    return-object p0
.end method

.method public getBroadcastResponseExemptedRoles()Ljava/util/List;
    .registers 1

    .line 2158
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseExemptedRolesList:Ljava/util/List;

    return-object p0
.end method

.method public getBroadcastResponseFgThresholdState()I
    .registers 1

    .line 2137
    iget p0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseFgThresholdState:I

    return p0
.end method

.method public getBroadcastResponseWindowDurationMs()J
    .registers 3

    .line 2132
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastResponseWindowDurationMillis:J

    return-wide v0
.end method

.method public getBroadcastSessionsDurationMs()J
    .registers 3

    .line 2142
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsDurationMs:J

    return-wide v0
.end method

.method public getBroadcastSessionsWithResponseDurationMs()J
    .registers 3

    .line 2147
    iget-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mBroadcastSessionsWithResponseDurationMs:J

    return-wide v0
.end method

.method public final getBucketForLocked(Ljava/lang/String;IJ)I
    .registers 12

    .line 1125
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object v5, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyScreenThresholds:[J

    iget-object v6, p0, Lcom/android/server/usage/AppStandbyController;->mAppStandbyElapsedThresholds:[J

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usage/AppIdleHistory;->getThresholdIndex(Ljava/lang/String;IJ[J[J)I

    move-result p0

    if-ltz p0, :cond_14

    .line 1127
    sget-object p1, Lcom/android/server/usage/AppStandbyController;->THRESHOLD_BUCKETS:[I

    aget p0, p1, p0

    return p0

    :cond_14
    const/16 p0, 0x32

    return p0
.end method

.method public final getCrossProfileTargets(Ljava/lang/String;I)Ljava/util/List;
    .registers 5

    .line 1284
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1285
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mLinkCrossProfileApps:Z

    if-nez v1, :cond_d

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    goto :goto_15

    .line 1286
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_b

    .line 1287
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/AppStandbyController$Injector;->getValidCrossProfileTargets(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1286
    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_b

    throw p0
.end method

.method public getEstimatedLaunchTime(Ljava/lang/String;I)J
    .registers 6

    .line 1362
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v0

    .line 1363
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1364
    :try_start_9
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/usage/AppIdleHistory;->getEstimatedLaunchTime(Ljava/lang/String;IJ)J

    move-result-wide p0

    monitor-exit v2

    return-wide p0

    :catchall_11
    move-exception p0

    .line 1365
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public getIdleUidsForUser(I)[I
    .registers 20

    move-object/from16 v0, p0

    .line 1565
    iget-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v1, :cond_9

    .line 1566
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    return-object v0

    .line 1569
    :cond_9
    const-string v1, "getIdleUidsForUser"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1571
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v4

    .line 1573
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 1574
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    move/from16 v9, p1

    invoke-virtual {v1, v2, v3, v9, v8}, Landroid/content/pm/PackageManagerInternal;->getInstalledApplications(JII)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_2d

    .line 1576
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    return-object v0

    .line 1580
    :cond_2d
    new-instance v10, Landroid/util/SparseBooleanArray;

    invoke-direct {v10}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 1582
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    const/4 v11, 0x1

    sub-int/2addr v1, v11

    const/4 v12, 0x0

    move v13, v1

    move v14, v12

    :goto_3b
    if-ltz v13, :cond_88

    .line 1583
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/content/pm/ApplicationInfo;

    .line 1584
    iget v1, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v10, v1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_4f

    move/from16 v16, v11

    goto :goto_55

    .line 1586
    :cond_4f
    invoke-virtual {v10, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    move/from16 v16, v2

    :goto_55
    if-eqz v16, :cond_6e

    move v2, v1

    .line 1588
    iget-object v1, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1589
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    move/from16 v17, v9

    move v9, v2

    move v2, v3

    move/from16 v3, v17

    .line 1588
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v1

    if-eqz v1, :cond_6f

    move v0, v11

    goto :goto_70

    :cond_6e
    move v9, v1

    :cond_6f
    move v0, v12

    :goto_70
    if-eqz v16, :cond_76

    if-nez v0, :cond_76

    add-int/lit8 v14, v14, 0x1

    :cond_76
    if-gez v9, :cond_7e

    .line 1596
    iget v1, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v10, v1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_81

    .line 1598
    :cond_7e
    invoke-virtual {v10, v9, v0}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    :goto_81
    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    move/from16 v9, p1

    goto :goto_3b

    .line 1602
    :cond_88
    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    sub-int/2addr v0, v14

    .line 1603
    new-array v1, v0, [I

    .line 1604
    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    sub-int/2addr v2, v11

    :goto_94
    if-ltz v2, :cond_a7

    .line 1605
    invoke-virtual {v10, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_a4

    add-int/lit8 v0, v0, -0x1

    .line 1606
    invoke-virtual {v10, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    aput v3, v1, v0

    :cond_a4
    add-int/lit8 v2, v2, -0x1

    goto :goto_94

    .line 1612
    :cond_a7
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    return-object v1
.end method

.method public final getMinBucketWithValidExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)I
    .registers 10

    .line 1263
    iget-object p0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    const/4 v0, -0x1

    if-nez p0, :cond_6

    return v0

    .line 1266
    :cond_6
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, p0, :cond_24

    .line 1268
    iget-object v2, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v2

    if-gt p2, v2, :cond_16

    goto :goto_24

    .line 1272
    :cond_16
    iget-object v3, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v3

    cmp-long v3, v3, p3

    if-lez v3, :cond_21

    return v2

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_24
    :goto_24
    return v0
.end method

.method public final getSystemPackagesWithLauncherActivities()Ljava/util/Set;
    .registers 4

    .line 2403
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 2404
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2405
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const v1, 0x1c0200

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    .line 2407
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2408
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 2409
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_34
    return-object v0
.end method

.method public final getTargetSdkVersion(Ljava/lang/String;)I
    .registers 2

    .line 1254
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageTargetSdkVersion(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTimeSinceLastJobRun(Ljava/lang/String;I)J
    .registers 6

    .line 1344
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v0

    .line 1345
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1346
    :try_start_9
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/usage/AppIdleHistory;->getTimeSinceLastJobRun(Ljava/lang/String;IJ)J

    move-result-wide p0

    monitor-exit v2

    return-wide p0

    :catchall_11
    move-exception p0

    .line 1347
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public getTimeSinceLastUsedByUser(Ljava/lang/String;I)J
    .registers 6

    .line 1370
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v0

    .line 1371
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1372
    :try_start_9
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/usage/AppIdleHistory;->getTimeSinceLastUsedByUser(Ljava/lang/String;IJ)J

    move-result-wide p0

    monitor-exit v2

    return-wide p0

    :catchall_11
    move-exception p0

    .line 1373
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final informListeners(Ljava/lang/String;IIIZ)V
    .registers 15

    const/16 v0, 0x28

    const/4 v1, 0x0

    if-lt p3, v0, :cond_8

    const/4 v0, 0x1

    move v5, v0

    goto :goto_9

    :cond_8
    move v5, v1

    .line 2111
    :goto_9
    iget-object v8, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v8

    .line 2112
    :try_start_c
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_12
    if-ge v1, v0, :cond_31

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    move-object v3, p1

    move v4, p2

    move v6, p3

    move v7, p4

    .line 2113
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;->onAppIdleStateChanged(Ljava/lang/String;IZII)V

    if-eqz p5, :cond_2c

    .line 2115
    invoke-virtual {v2, v3, v4}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;->onUserInteractionStarted(Ljava/lang/String;I)V

    goto :goto_2c

    :catchall_29
    move-exception v0

    move-object p0, v0

    goto :goto_33

    :cond_2c
    :goto_2c
    move-object p1, v3

    move p2, v4

    move p3, v6

    move p4, v7

    goto :goto_12

    .line 2118
    :cond_31
    monitor-exit v8

    return-void

    :goto_33
    monitor-exit v8
    :try_end_34
    .catchall {:try_start_c .. :try_end_34} :catchall_29

    throw p0
.end method

.method public final informParoleStateChanged()V
    .registers 6

    .line 2122
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isInParole()Z

    move-result v0

    .line 2123
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2124
    :try_start_7
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_1e

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    .line 2125
    invoke-virtual {v4, v0}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;->onParoleStateChanged(Z)V

    goto :goto_e

    :catchall_1c
    move-exception p0

    goto :goto_20

    .line 2127
    :cond_1e
    monitor-exit v1

    return-void

    :goto_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_1c

    throw p0
.end method

.method public initializeDefaultsForSystemApps(I)V
    .registers 18

    move-object/from16 v0, p0

    move/from16 v3, p1

    .line 2372
    iget-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    if-nez v1, :cond_c

    const/4 v1, 0x1

    .line 2374
    iput-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mPendingInitializeDefaults:Z

    return-void

    .line 2377
    :cond_c
    const-string v1, "AppStandbyController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Initializing defaults for system apps on user "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", appIdleEnabled="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2379
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v10

    .line 2380
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x200

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v12

    .line 2383
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    .line 2384
    iget-object v14, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v14

    const/4 v1, 0x0

    move v15, v1

    :goto_43
    if-ge v15, v13, :cond_6b

    .line 2386
    :try_start_45
    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 2387
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2388
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_68

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 2391
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-wide v4, v0, Lcom/android/server/usage/AppStandbyController;->mSystemUpdateUsageTimeoutMillis:J

    add-long v8, v10, v4

    const/16 v4, 0xa

    const/4 v5, 0x6

    const-wide/16 v6, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    goto :goto_68

    :catchall_66
    move-exception v0

    goto :goto_72

    :cond_68
    :goto_68
    add-int/lit8 v15, v15, 0x1

    goto :goto_43

    .line 2397
    :cond_6b
    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v0, v3, v10, v11}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleTimes(IJ)V

    .line 2398
    monitor-exit v14

    return-void

    :goto_72
    monitor-exit v14
    :try_end_73
    .catchall {:try_start_45 .. :try_end_73} :catchall_66

    throw v0
.end method

.method public isActiveDeviceAdmin(Ljava/lang/String;I)Z
    .registers 4

    .line 1965
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1966
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_17

    .line 1967
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :catchall_15
    move-exception p0

    goto :goto_1a

    :cond_17
    const/4 p0, 0x0

    :goto_18
    monitor-exit v0

    return p0

    .line 1968
    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_15

    throw p0
.end method

.method public final isActiveNetworkScorer(Ljava/lang/String;)Z
    .registers 8

    .line 2099
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2100
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorer:Ljava/lang/String;

    if-eqz v2, :cond_12

    iget-wide v2, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorerAtMillis:J

    const-wide/16 v4, 0x1388

    sub-long v4, v0, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1c

    .line 2102
    :cond_12
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$Injector;->getActiveNetworkScorer()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorer:Ljava/lang/String;

    .line 2103
    iput-wide v0, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorerAtMillis:J

    .line 2105
    :cond_1c
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mCachedNetworkScorer:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isAdminProtectedPackages(Ljava/lang/String;I)Z
    .registers 7

    .line 1972
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1973
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    .line 1974
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1975
    monitor-exit v0

    return v3

    :catchall_1d
    move-exception p0

    goto :goto_39

    .line 1977
    :cond_1f
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    .line 1978
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_36

    goto :goto_37

    :cond_36
    const/4 v3, 0x0

    :goto_37
    monitor-exit v0

    return v3

    .line 1979
    :goto_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_1d

    throw p0
.end method

.method public isAppIdleEnabled()Z
    .registers 1

    .line 661
    iget-boolean p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    return p0
.end method

.method public isAppIdleFiltered(Ljava/lang/String;IIJ)Z
    .registers 8

    .line 1546
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mIsCharging:Z

    if-eqz v0, :cond_a

    goto :goto_1a

    .line 1550
    :cond_a
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/server/usage/AppStandbyController;->isAppIdleUnfiltered(Ljava/lang/String;IJ)Z

    move-result p4

    if-eqz p4, :cond_1a

    .line 1551
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usage/AppStandbyController;->getAppMinBucket(Ljava/lang/String;II)I

    move-result p0

    const/16 p1, 0x28

    if-lt p0, p1, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    :goto_1a
    return v1
.end method

.method public isAppIdleFiltered(Ljava/lang/String;IJZ)Z
    .registers 12

    if-eqz p5, :cond_c

    .line 1426
    iget-object p5, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1427
    invoke-virtual {p5, p2, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_c

    const/4 p0, 0x0

    return p0

    .line 1430
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->getAppId(Ljava/lang/String;)I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result p0

    return p0
.end method

.method public final isAppIdleUnfiltered(Ljava/lang/String;IJ)Z
    .registers 6

    .line 1390
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1391
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->isIdle(Ljava/lang/String;IJ)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 1392
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final isCarrierApp(Ljava/lang/String;)Z
    .registers 4

    .line 2061
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2062
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mHaveCarrierPrivilegedApps:Z

    if-nez v1, :cond_d

    .line 2063
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->fetchCarrierPrivilegedAppsCPL()V

    goto :goto_d

    :catchall_b
    move-exception p0

    goto :goto_1a

    .line 2065
    :cond_d
    :goto_d
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mCarrierPrivilegedApps:Ljava/util/List;

    if-eqz p0, :cond_17

    .line 2066
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_17
    const/4 p0, 0x0

    .line 2068
    monitor-exit v0

    return p0

    .line 2069
    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_b

    throw p0
.end method

.method public final isDeviceProvisioningPackage(Ljava/lang/String;)Z
    .registers 4

    .line 2053
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCachedDeviceProvisioningPackage:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 2054
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040285

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mCachedDeviceProvisioningPackage:Ljava/lang/String;

    .line 2057
    :cond_13
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mCachedDeviceProvisioningPackage:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isDisplayOn()Z
    .registers 1

    .line 2198
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController$Injector;->isDefaultDisplayOn()Z

    move-result p0

    return p0
.end method

.method public final isHeadlessSystemApp(Ljava/lang/String;)Z
    .registers 3

    .line 1538
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    monitor-enter v0

    .line 1539
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 1540
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public isInParole()Z
    .registers 2

    .line 880
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-eqz v0, :cond_b

    iget-boolean p0, p0, Lcom/android/server/usage/AppStandbyController;->mIsCharging:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public final synthetic lambda$restoreAppsToRare$0(I)V
    .registers 2

    .line 1722
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppsToRestoreToRare:Landroid/util/SparseSetArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseSetArray;->remove(I)V

    return-void
.end method

.method public final loadHeadlessSystemAppCache()V
    .registers 9

    .line 2416
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2417
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const v3, 0x1c0200

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v2

    .line 2420
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->getSystemPackagesWithLauncherActivities()Ljava/util/Set;

    move-result-object v3

    .line 2422
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    :goto_16
    if-ge v4, v5, :cond_2f

    .line 2424
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    if-nez v6, :cond_21

    goto :goto_2c

    .line 2429
    :cond_21
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2430
    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    .line 2429
    invoke-virtual {p0, v6, v7}, Lcom/android/server/usage/AppStandbyController;->updateHeadlessSystemAppCache(Ljava/lang/String;Z)Z

    :goto_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 2432
    :cond_2f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2433
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loaded headless system app cache in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms: appIdleEnabled="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppStandbyController"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final maybeInformListeners(Ljava/lang/String;IJIIZ)V
    .registers 16

    .line 1103
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1104
    :try_start_3
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/AppIdleHistory;->shouldInformListeners(Ljava/lang/String;IJI)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 1106
    invoke-static {v3, v4, v7, p6, p7}, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->obtain(Ljava/lang/String;IIIZ)Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;

    move-result-object p1

    .line 1109
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 p2, 0x3

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_21

    :catchall_1e
    move-exception v0

    move-object p0, v0

    goto :goto_23

    .line 1111
    :cond_21
    :goto_21
    monitor-exit v1

    return-void

    :goto_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_1e

    throw p0
.end method

.method public maybeUnrestrictApp(Ljava/lang/String;IIIII)V
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p4

    .line 2223
    iget-object v8, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2224
    :try_start_7
    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v12

    .line 2225
    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object/from16 v10, p1

    move/from16 v11, p2

    .line 2226
    invoke-virtual {v2, v10, v11, v12, v13}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v2

    .line 2227
    iget v3, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_4a

    iget v2, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    const v3, 0xff00

    and-int/2addr v3, v2

    move/from16 v5, p3

    if-eq v3, v5, :cond_28

    goto :goto_4a

    :cond_28
    and-int/lit16 v3, v2, 0xff

    if-ne v3, v1, :cond_33

    or-int v1, p5, p6

    const/16 v4, 0x28

    :goto_30
    move v15, v1

    move v14, v4

    goto :goto_36

    :cond_33
    not-int v1, v1

    and-int/2addr v1, v2

    goto :goto_30

    .line 2244
    :goto_36
    iget-object v9, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual/range {v9 .. v15}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJII)V

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide v3, v12

    move v5, v14

    move v6, v15

    .line 2246
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    .line 2248
    monitor-exit v8

    return-void

    :catchall_48
    move-exception v0

    goto :goto_4c

    .line 2229
    :cond_4a
    :goto_4a
    monitor-exit v8

    return-void

    .line 2248
    :goto_4c
    monitor-exit v8
    :try_end_4d
    .catchall {:try_start_7 .. :try_end_4d} :catchall_48

    throw v0
.end method

.method public maybeUnrestrictBuggyApp(Ljava/lang/String;I)V
    .registers 10

    const/16 v5, 0x100

    const/4 v6, 0x1

    const/16 v3, 0x600

    const/4 v4, 0x4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 2214
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usage/AppStandbyController;->maybeUnrestrictApp(Ljava/lang/String;IIIII)V

    return-void
.end method

.method public final maybeUpdateHeadlessSystemAppCache(Landroid/content/pm/PackageInfo;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3d

    .line 2346
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_3d

    .line 2347
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2348
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_3d

    .line 2351
    :cond_16
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    .line 2352
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2353
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 2354
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const v3, 0x1c0200

    invoke-virtual {v2, v1, v3, v0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 2356
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/jobs/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/usage/AppStandbyController;->updateHeadlessSystemAppCache(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_3d
    :goto_3d
    return v0
.end method

.method public final notifyBatteryStats(Ljava/lang/String;IZ)V
    .registers 6

    .line 1132
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2000

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result p2

    if-eqz p3, :cond_12

    .line 1135
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    const/16 p3, 0xf

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/usage/AppStandbyController$Injector;->noteEvent(ILjava/lang/String;I)V

    return-void

    .line 1138
    :cond_12
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    const/16 p3, 0x10

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/usage/AppStandbyController$Injector;->noteEvent(ILjava/lang/String;I)V
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_19} :catch_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_19

    :catch_19
    return-void
.end method

.method public onAdminDataAvailable()V
    .registers 1

    .line 2021
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onBootPhase(I)V
    .registers 6

    .line 666
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/AppStandbyController$Injector;->onBootPhase(I)V

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_bb

    .line 668
    const-string p1, "AppStandbyController"

    const-string v0, "Setting app idle enabled state"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-eqz p1, :cond_1f

    .line 671
    const-class p1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {p1, p0}, Landroid/app/usage/UsageStatsManagerInternal;->registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    .line 675
    :cond_1f
    new-instance p1, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-direct {p1, p0, v0}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;-><init>(Lcom/android/server/usage/AppStandbyController;Landroid/os/Handler;)V

    .line 676
    invoke-virtual {p1}, Lcom/android/server/usage/AppStandbyController$ConstantsObserver;->start()V

    .line 678
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/appwidget/AppWidgetManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/appwidget/AppWidgetManager;

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 679
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 680
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p1}, Lcom/android/server/usage/AppStandbyController$Injector;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object p1

    .line 682
    :try_start_47
    new-instance v0, Lcom/android/server/usage/AppStandbyController$1;

    invoke-direct {v0, p0}, Lcom/android/server/usage/AppStandbyController$1;-><init>(Lcom/android/server/usage/AppStandbyController;)V

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_52} :catch_53

    goto :goto_5b

    :catch_53
    move-exception p1

    .line 700
    const-string v0, "AppStandbyController"

    const-string v1, "Failed start watching for app op"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 703
    :goto_5b
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/usage/AppStandbyController$Injector;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 704
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 705
    :try_start_67
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isDisplayOn()Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/usage/AppIdleHistory;->updateDisplay(ZJ)V

    .line 706
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_67 .. :try_end_77} :catchall_b8

    const/4 p1, 0x1

    .line 708
    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mSystemServicesReady:Z

    .line 711
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter p1

    .line 712
    :try_start_7d
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppIdleHistory;->userFileExists(I)Z

    move-result v0

    .line 713
    monitor-exit p1
    :try_end_85
    .catchall {:try_start_7d .. :try_end_85} :catchall_b5

    .line 715
    iget-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mPendingInitializeDefaults:Z

    if-nez p1, :cond_8b

    if-nez v0, :cond_8e

    .line 716
    :cond_8b
    invoke-virtual {p0, v1}, Lcom/android/server/usage/AppStandbyController;->initializeDefaultsForSystemApps(I)V

    .line 720
    :cond_8e
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mPackageManager:Landroid/content/pm/PackageManager;

    const v0, 0x205c2000

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object p1

    .line 722
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_9b
    if-ge v1, v0, :cond_dc

    .line 723
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 724
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController;->mSystemPackagesAppIds:Ljava/util/ArrayList;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_9b

    :catchall_b5
    move-exception p0

    .line 713
    :try_start_b6
    monitor-exit p1
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw p0

    :catchall_b8
    move-exception p0

    .line 706
    :try_start_b9
    monitor-exit v0
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b8

    throw p0

    :cond_bb
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_dc

    .line 727
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p1}, Lcom/android/server/usage/AppStandbyController$Injector;->isCharging()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppStandbyController;->setChargingState(Z)V

    .line 732
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    new-instance v0, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usage/AppStandbyController;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 733
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    new-instance v0, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/usage/AppStandbyController;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_dc
    return-void
.end method

.method public onUsageEvent(ILandroid/app/usage/UsageEvents$Event;)V
    .registers 11

    .line 1149
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_5

    goto :goto_26

    .line 1150
    :cond_5
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v3

    const/4 v0, 0x1

    if-eq v3, v0, :cond_27

    const/4 v0, 0x2

    if-eq v3, v0, :cond_27

    const/4 v0, 0x6

    if-eq v3, v0, :cond_27

    const/4 v0, 0x7

    if-eq v3, v0, :cond_27

    const/16 v0, 0xa

    if-eq v3, v0, :cond_27

    const/16 v0, 0xe

    if-eq v3, v0, :cond_27

    const/16 v0, 0xd

    if-eq v3, v0, :cond_27

    const/16 v0, 0x13

    if-ne v3, v0, :cond_26

    goto :goto_27

    :cond_26
    :goto_26
    return-void

    .line 1159
    :cond_27
    :goto_27
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1160
    invoke-virtual {p0, v2, p1}, Lcom/android/server/usage/AppStandbyController;->getCrossProfileTargets(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p2

    .line 1161
    iget-object v7, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1162
    :try_start_32
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v4

    move-object v1, p0

    move v6, p1

    .line 1163
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->reportEventLocked(Ljava/lang/String;IJI)V

    .line 1165
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x0

    :goto_42
    if-ge p1, p0, :cond_57

    .line 1167
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 1168
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->reportEventLocked(Ljava/lang/String;IJI)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_42

    :catchall_54
    move-exception v0

    move-object p0, v0

    goto :goto_59

    .line 1170
    :cond_57
    monitor-exit v7

    return-void

    :goto_59
    monitor-exit v7
    :try_end_5a
    .catchall {:try_start_32 .. :try_end_5a} :catchall_54

    throw p0
.end method

.method public onUserRemoved(I)V
    .registers 5

    .line 1378
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1379
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppIdleHistory;->onUserRemoved(I)V

    .line 1380
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1c

    .line 1381
    :try_start_b
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1382
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_21

    .line 1383
    :try_start_11
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_1c

    .line 1384
    :try_start_14
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1385
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1e

    .line 1386
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception p0

    goto :goto_24

    :catchall_1e
    move-exception p0

    .line 1385
    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    :try_start_20
    throw p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1c

    :catchall_21
    move-exception p0

    .line 1382
    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    :try_start_23
    throw p0

    .line 1386
    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_23 .. :try_end_25} :catchall_1c

    throw p0
.end method

.method public postCheckIdleStates(I)V
    .registers 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_7

    .line 892
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->postOneTimeCheckIdleStates()V

    return-void

    .line 894
    :cond_7
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPendingIdleStateChecks:Landroid/util/SparseLongArray;

    monitor-enter v0

    .line 895
    :try_start_a
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mPendingIdleStateChecks:Landroid/util/SparseLongArray;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 896
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_21

    .line 897
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_21
    move-exception p0

    .line 896
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public postOneTimeCheckIdleStates()V
    .registers 3

    .line 903
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->getBootPhase()I

    move-result v0

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    .line 905
    iput-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mPendingOneTimeCheckIdleStates:Z

    return-void

    .line 907
    :cond_e
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    .line 908
    iput-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mPendingOneTimeCheckIdleStates:Z

    return-void
.end method

.method public final postParoleStateChanged()V
    .registers 3

    .line 885
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 886
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public postReportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 2439
    invoke-static {p1, p2, p3}, Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;->obtain(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/server/usage/AppStandbyController$ContentProviderUsageRecord;

    move-result-object p1

    .line 2441
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 p2, 0x8

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2442
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public postReportExemptedSyncStart(Ljava/lang/String;I)V
    .registers 5

    .line 2453
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2454
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public postReportSyncScheduled(Ljava/lang/String;IZ)V
    .registers 5

    .line 2447
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2448
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final predictionTimedOut(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;J)Z
    .registers 8

    .line 1095
    iget-wide v0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_19

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 1096
    invoke-virtual {v0, p2, p3}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide p2

    iget-wide v0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    sub-long/2addr p2, v0

    iget-wide p0, p0, Lcom/android/server/usage/AppStandbyController;->mPredictionTimeoutMillis:J

    cmp-long p0, p2, p0

    if-lez p0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public removeListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V
    .registers 3

    .line 1406
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1407
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1408
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 20

    move-object/from16 v0, p0

    move/from16 v2, p3

    .line 738
    iget-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v1, :cond_9

    goto :goto_5d

    :cond_9
    move-object/from16 v1, p1

    .line 741
    invoke-static {v1, v2}, Landroid/content/ContentResolver;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 743
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v11

    .line 744
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v5

    .line 745
    array-length v12, v10

    const/4 v1, 0x0

    move v13, v1

    :goto_1e
    if-ge v13, v12, :cond_5d

    aget-object v1, v10, v13

    move-object/from16 v14, p2

    .line 747
    invoke-virtual {v1, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    goto :goto_56

    :cond_2b
    const-wide/16 v3, 0x0

    .line 751
    invoke-virtual {v11, v1, v3, v4, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 754
    iget-object v4, v0, Lcom/android/server/usage/AppStandbyController;->mSystemPackagesAppIds:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 755
    invoke-virtual {v0, v1, v2}, Lcom/android/server/usage/AppStandbyController;->getCrossProfileTargets(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v9

    .line 757
    iget-object v15, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v15

    .line 758
    :try_start_48
    iget v3, v0, Lcom/android/server/usage/AppStandbyController;->mSyncAdapterPromotedBucket:I

    iget-wide v7, v0, Lcom/android/server/usage/AppStandbyController;->mSyncAdapterTimeoutMillis:J

    const/16 v4, 0x8

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageCrossUserLocked(Ljava/lang/String;IIIJJLjava/util/List;)V

    .line 761
    monitor-exit v15

    goto :goto_56

    :catchall_53
    move-exception v0

    monitor-exit v15
    :try_end_55
    .catchall {:try_start_48 .. :try_end_55} :catchall_53

    throw v0

    :cond_56
    :goto_56
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p3

    goto :goto_1e

    :cond_5d
    :goto_5d
    return-void
.end method

.method public final reportEventLocked(Ljava/lang/String;IJI)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move/from16 v1, p2

    move-wide/from16 v11, p3

    move/from16 v4, p5

    .line 1178
    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v2, v3, v4, v11, v12}, Lcom/android/server/usage/AppIdleHistory;->isIdle(Ljava/lang/String;IJ)Z

    move-result v13

    .line 1181
    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v2, v3, v4, v11, v12}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v2

    .line 1183
    iget v14, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 1184
    iget v15, v2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 1186
    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController;->usageEventToSubReason(I)I

    move-result v6

    or-int/lit16 v5, v6, 0x300

    const/4 v7, -0x1

    const/16 v8, 0xa

    if-ne v1, v8, :cond_6b

    .line 1191
    iget-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mRetainNotificationSeenImpactForPreTApps:Z

    if-eqz v1, :cond_39

    .line 1192
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppStandbyController;->getTargetSdkVersion(Ljava/lang/String;)I

    move-result v1

    const/16 v9, 0x21

    if-ge v1, v9, :cond_39

    const/16 v1, 0x14

    const-wide/32 v9, 0x2932e00

    :goto_36
    move-wide/from16 v16, v9

    goto :goto_4c

    .line 1198
    :cond_39
    iget-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mTriggerQuotaBumpOnNotificationSeen:Z

    if-eqz v1, :cond_47

    .line 1199
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 v9, 0x7

    invoke-virtual {v1, v9, v4, v7, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1200
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1202
    :cond_47
    iget v1, v0, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenPromotedBucket:I

    .line 1203
    iget-wide v9, v0, Lcom/android/server/usage/AppStandbyController;->mNotificationSeenTimeoutMillis:J

    goto :goto_36

    .line 1208
    :goto_4c
    iget-object v9, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move v10, v7

    move/from16 v18, v8

    const-wide/16 v7, 0x0

    move/from16 v19, v5

    move/from16 v20, v10

    move v5, v1

    move-object v1, v9

    add-long v9, v11, v16

    move/from16 v12, v18

    move/from16 v11, v20

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-object/from16 v3, p1

    move/from16 v4, p5

    move-object v8, v2

    move-wide/from16 v1, v16

    goto/16 :goto_d6

    :cond_6b
    move/from16 v19, v5

    move v11, v7

    move v12, v8

    const/16 v3, 0xe

    if-ne v1, v3, :cond_8d

    .line 1214
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-wide v3, v0, Lcom/android/server/usage/AppStandbyController;->mSlicePinnedTimeoutMillis:J

    add-long v9, p3, v3

    const/16 v5, 0x14

    const-wide/16 v7, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p5

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 1217
    iget-wide v3, v0, Lcom/android/server/usage/AppStandbyController;->mSlicePinnedTimeoutMillis:J

    :goto_86
    move-object v8, v2

    move-wide v1, v3

    move-object/from16 v3, p1

    move/from16 v4, p5

    goto :goto_d6

    :cond_8d
    const/4 v3, 0x6

    if-ne v1, v3, :cond_a4

    .line 1219
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-wide v3, v0, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    add-long v9, p3, v3

    const/16 v5, 0xa

    const-wide/16 v7, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p5

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 1222
    iget-wide v3, v0, Lcom/android/server/usage/AppStandbyController;->mSystemInteractionTimeoutMillis:J

    goto :goto_86

    :cond_a4
    const/16 v3, 0x13

    if-ne v1, v3, :cond_c2

    const/16 v1, 0x32

    if-eq v14, v1, :cond_ae

    goto/16 :goto_10e

    .line 1226
    :cond_ae
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-wide v3, v0, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    add-long v9, p3, v3

    const/16 v5, 0xa

    const-wide/16 v7, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p5

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 1229
    iget-wide v3, v0, Lcom/android/server/usage/AppStandbyController;->mInitialForegroundServiceStartTimeoutMillis:J

    goto :goto_86

    .line 1231
    :cond_c2
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-wide v3, v0, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    add-long v9, p3, v3

    const/16 v5, 0xa

    move-object/from16 v3, p1

    move-wide/from16 v7, p3

    move/from16 v4, p5

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-object v8, v2

    .line 1234
    iget-wide v1, v0, Lcom/android/server/usage/AppStandbyController;->mStrongUsageTimeoutMillis:J

    .line 1236
    :goto_d6
    iget v5, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v5, v14, :cond_102

    .line 1237
    iget-object v5, v0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v6, 0xb

    .line 1238
    invoke-virtual {v5, v6, v4, v11, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 1237
    invoke-virtual {v5, v6, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1240
    iget v5, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-ne v5, v12, :cond_fb

    const v1, 0xff00

    and-int/2addr v1, v15

    const/16 v2, 0x300

    if-eq v1, v2, :cond_fb

    move v7, v10

    :goto_f4
    move-object v1, v3

    move v2, v4

    move/from16 v6, v19

    move-wide/from16 v3, p3

    goto :goto_fd

    :cond_fb
    move v7, v9

    goto :goto_f4

    .line 1243
    :goto_fd
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    move-object v3, v1

    move v4, v2

    .line 1247
    :cond_102
    iget v1, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v2, 0x28

    if-lt v1, v2, :cond_109

    move v9, v10

    :cond_109
    if-eq v13, v9, :cond_10e

    .line 1249
    invoke-virtual {v0, v3, v4, v9}, Lcom/android/server/usage/AppStandbyController;->notifyBatteryStats(Ljava/lang/String;IZ)V

    :cond_10e
    :goto_10e
    return-void
.end method

.method public final reportExemptedSyncScheduled(Ljava/lang/String;I)V
    .registers 14

    .line 767
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v1, :cond_5

    return-void

    .line 773
    :cond_5
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->isDeviceIdleMode()Z

    move-result v1

    if-nez v1, :cond_15

    .line 777
    iget-wide v1, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledNonDozeTimeoutMillis:J

    const/16 v3, 0xa

    const/16 v4, 0xb

    :goto_13
    move-wide v7, v1

    goto :goto_1c

    .line 782
    :cond_15
    iget-wide v1, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncScheduledDozeTimeoutMillis:J

    const/16 v3, 0x14

    const/16 v4, 0xc

    goto :goto_13

    .line 785
    :goto_1c
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v5

    .line 786
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/usage/AppStandbyController;->getCrossProfileTargets(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v9

    .line 787
    iget-object v10, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 788
    :try_start_2c
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageCrossUserLocked(Ljava/lang/String;IIIJJLjava/util/List;)V

    .line 790
    monitor-exit v10

    return-void

    :catchall_31
    move-exception v0

    monitor-exit v10
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_31

    throw v0
.end method

.method public final reportExemptedSyncStart(Ljava/lang/String;I)V
    .registers 15

    .line 811
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 813
    :cond_5
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v6

    .line 814
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->getCrossProfileTargets(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    .line 815
    iget-object v11, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v11

    .line 816
    :try_start_12
    iget-wide v8, p0, Lcom/android/server/usage/AppStandbyController;->mExemptedSyncStartTimeoutMillis:J

    const/16 v4, 0xa

    const/16 v5, 0xd

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageCrossUserLocked(Ljava/lang/String;IIIJJLjava/util/List;)V

    .line 819
    monitor-exit v11

    return-void

    :catchall_20
    move-exception v0

    move-object p0, v0

    monitor-exit v11
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_20

    throw p0
.end method

.method public final reportNoninteractiveUsageCrossUserLocked(Ljava/lang/String;IIIJJLjava/util/List;)V
    .registers 12

    .line 831
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageLocked(Ljava/lang/String;IIIJJ)V

    .line 833
    invoke-interface {p9}, Ljava/util/List;->size()I

    move-result v0

    const/4 p2, 0x0

    move v1, p2

    :goto_9
    if-ge v1, v0, :cond_1b

    .line 835
    invoke-interface {p9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserHandle;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 836
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageLocked(Ljava/lang/String;IIIJJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1b
    return-void
.end method

.method public final reportNoninteractiveUsageLocked(Ljava/lang/String;IIIJJ)V
    .registers 20

    move-wide/from16 v0, p7

    .line 849
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    const-wide/16 v7, 0x0

    add-long v9, p5, v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p3

    .line 851
    iget-object v4, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v5, 0xb

    const/4 v6, -0x1

    .line 852
    invoke-virtual {v4, v5, p2, v6, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 851
    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 854
    iget v5, p3, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    iget v6, p3, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide/from16 v3, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    return-void
.end method

.method public final reportUnexemptedSyncScheduled(Ljava/lang/String;I)V
    .registers 15

    .line 794
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 796
    :cond_5
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v6

    .line 797
    iget-object v11, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v11

    .line 798
    :try_start_e
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    .line 799
    invoke-virtual {v0, p1, p2, v6, v7}, Lcom/android/server/usage/AppIdleHistory;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_2c

    .line 801
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->getCrossProfileTargets(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    .line 803
    iget-wide v8, p0, Lcom/android/server/usage/AppStandbyController;->mUnexemptedSyncScheduledTimeoutMillis:J

    const/16 v4, 0x14

    const/16 v5, 0xe

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/usage/AppStandbyController;->reportNoninteractiveUsageCrossUserLocked(Ljava/lang/String;IIIJJLjava/util/List;)V

    goto :goto_2c

    :catchall_29
    move-exception v0

    move-object p0, v0

    goto :goto_2e

    .line 807
    :cond_2c
    :goto_2c
    monitor-exit v11

    return-void

    :goto_2e
    monitor-exit v11
    :try_end_2f
    .catchall {:try_start_e .. :try_end_2f} :catchall_29

    throw p0
.end method

.method public final restoreAppToRare(Ljava/lang/String;IJI)V
    .registers 14

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    .line 1733
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppStandbyController;->getAppStandbyBucket(Ljava/lang/String;IJZ)I

    move-result p0

    const/16 p1, 0x32

    if-ne p0, p1, :cond_15

    move-wide v5, v3

    const/16 v3, 0x28

    const/4 v7, 0x0

    move v4, p5

    .line 1736
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(Ljava/lang/String;IIIJZ)V

    :cond_15
    return-void
.end method

.method public restoreAppsToRare(Ljava/util/Set;I)V
    .registers 10

    .line 1708
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v4

    .line 1709
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 1712
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, p2}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageInstalled(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 1713
    const-string v0, "AppStandbyController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to restore bucket for uninstalled app: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppsToRestoreToRare:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p2, v2}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    goto :goto_a

    :cond_3c
    const/16 v6, 0x102

    move-object v1, p0

    move v3, p2

    .line 1718
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->restoreAppToRare(Ljava/lang/String;IJI)V

    goto :goto_a

    :cond_44
    move-object v1, p0

    move v3, p2

    .line 1722
    iget-object p0, v1, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    new-instance p1, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda2;

    invoke-direct {p1, v1, v3}, Lcom/android/server/usage/AppStandbyController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/usage/AppStandbyController;I)V

    const-wide/32 v4, 0xa4cb800

    invoke-virtual {p0, p1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1726
    iget-object p0, v1, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter p0

    .line 1727
    :try_start_56
    iget-object p1, v1, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    iget-object p2, v1, Lcom/android/server/usage/AppStandbyController;->mAppsToRestoreToRare:Landroid/util/SparseSetArray;

    invoke-virtual {p2, v3}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lcom/android/server/usage/AppIdleHistory;->writeRestoreToRareAppsList(ILandroid/util/ArraySet;)V

    .line 1728
    monitor-exit p0

    return-void

    :catchall_63
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_66
    .catchall {:try_start_56 .. :try_end_66} :catchall_63

    throw p1
.end method

.method public restrictApp(Ljava/lang/String;II)V
    .registers 5

    const/16 v0, 0x600

    .line 1682
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/usage/AppStandbyController;->restrictApp(Ljava/lang/String;III)V

    return-void
.end method

.method public restrictApp(Ljava/lang/String;III)V
    .registers 13

    const/16 v0, 0x600

    .line 1688
    const-string v1, "AppStandbyController"

    if-eq p3, v0, :cond_24

    const/16 v0, 0x400

    if-eq p3, v0, :cond_24

    .line 1690
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Tried to restrict app "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for an unsupported reason"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1694
    :cond_24
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, p2}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageInstalled(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_42

    .line 1695
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Tried to restrict uninstalled app: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_42
    const v0, 0xff00

    and-int/2addr p3, v0

    and-int/lit16 p4, p4, 0xff

    or-int v4, p3, p4

    .line 1700
    iget-object p3, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p3}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v5

    const/16 v3, 0x2d

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 1702
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(Ljava/lang/String;IIIJZ)V

    return-void
.end method

.method public setActiveAdminApps(Ljava/util/Set;I)V
    .registers 4

    .line 1996
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    monitor-enter v0

    if-nez p1, :cond_d

    .line 1998
    :try_start_5
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_12

    :catchall_b
    move-exception p0

    goto :goto_14

    .line 2000
    :cond_d
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mActiveAdminApps:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2002
    :goto_12
    monitor-exit v0

    return-void

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_b

    throw p0
.end method

.method public setAdminProtectedPackages(Ljava/util/Set;I)V
    .registers 5

    .line 2007
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    monitor-enter v0

    if-eqz p1, :cond_14

    .line 2008
    :try_start_5
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_14

    .line 2011
    :cond_c
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_19

    :catchall_12
    move-exception p0

    goto :goto_28

    .line 2009
    :cond_14
    :goto_14
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mAdminProtectedPackages:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 2013
    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_12

    .line 2014
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {p1}, Lcom/android/server/usage/AppStandbyController$Injector;->getBootPhase()I

    move-result p1

    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_27

    .line 2015
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppStandbyController;->postCheckIdleStates(I)V

    :cond_27
    return-void

    .line 2013
    :goto_28
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_12

    throw p0
.end method

.method public setAppIdleAsync(Ljava/lang/String;ZI)V
    .registers 5

    if-eqz p1, :cond_11

    .line 1619
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_7

    goto :goto_11

    .line 1621
    :cond_7
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p3, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1622
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_11
    :goto_11
    return-void
.end method

.method public setAppIdleEnabled(Z)V
    .registers 4

    .line 639
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 640
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    if-eqz p1, :cond_e

    .line 642
    invoke-virtual {v0, p0}, Landroid/app/usage/UsageStatsManagerInternal;->registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    goto :goto_11

    .line 644
    :cond_e
    invoke-virtual {v0, p0}, Landroid/app/usage/UsageStatsManagerInternal;->unregisterListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    .line 647
    :goto_11
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 648
    :try_start_14
    iget-boolean v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-eq v1, p1, :cond_2a

    .line 649
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isInParole()Z

    move-result v1

    .line 650
    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    .line 652
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->isInParole()Z

    move-result p1

    if-eq p1, v1, :cond_2a

    .line 653
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->postParoleStateChanged()V

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 656
    :cond_2a
    :goto_2a
    monitor-exit v0

    return-void

    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_14 .. :try_end_2d} :catchall_28

    throw p0
.end method

.method public setAppStandbyBucket(Ljava/lang/String;III)V
    .registers 14

    .line 1795
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1796
    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 1795
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(Ljava/lang/String;IIIJZ)V

    return-void
.end method

.method public setAppStandbyBucket(Ljava/lang/String;IIII)V
    .registers 7

    .line 1743
    new-instance v0, Landroid/app/usage/AppStandbyInfo;

    invoke-direct {v0, p1, p2}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    .line 1744
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 1743
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBuckets(Ljava/util/List;III)V

    return-void
.end method

.method public final setAppStandbyBucket(Ljava/lang/String;IIIJZ)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v7, p3

    move-wide/from16 v4, p5

    .line 1801
    iget-boolean v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v1, :cond_f

    return-void

    .line 1803
    :cond_f
    iget-object v9, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1805
    :try_start_12
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    const/4 v10, 0x0

    invoke-virtual {v1, v2, v10, v3}, Lcom/android/server/usage/AppStandbyController$Injector;->isPackageInstalled(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_36

    .line 1806
    const-string v0, "AppStandbyController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to set bucket of uninstalled app: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    monitor-exit v9

    return-void

    :catchall_33
    move-exception v0

    goto/16 :goto_1d4

    .line 1809
    :cond_36
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v8

    const v1, 0xff00

    and-int v6, p4, v1

    const/16 v11, 0x500

    if-ne v6, v11, :cond_47

    const/4 v11, 0x1

    goto :goto_48

    :cond_47
    move v11, v10

    .line 1814
    :goto_48
    iget v13, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v14, 0xa

    if-ge v13, v14, :cond_50

    monitor-exit v9

    return-void

    :cond_50
    const/16 v15, 0x32

    if-eq v13, v15, :cond_56

    if-ne v7, v15, :cond_5a

    :cond_56
    if-eqz v11, :cond_5a

    .line 1819
    monitor-exit v9

    return-void

    .line 1822
    :cond_5a
    iget v15, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    move/from16 v16, v1

    and-int v1, v15, v16

    const/16 v12, 0x600

    if-ne v1, v12, :cond_66

    const/4 v1, 0x1

    goto :goto_67

    :cond_66
    move v1, v10

    :goto_67
    const/16 v14, 0x400

    if-eqz v11, :cond_73

    and-int v10, v15, v16

    if-eq v10, v14, :cond_71

    if-eqz v1, :cond_73

    .line 1829
    :cond_71
    monitor-exit v9

    return-void

    :cond_73
    if-ne v6, v12, :cond_77

    const/4 v10, 0x1

    goto :goto_78

    :cond_77
    const/4 v10, 0x0

    :goto_78
    const/16 v14, 0x2d

    const/16 v12, 0x28

    if-ne v13, v7, :cond_be

    if-eqz v1, :cond_be

    if-eqz v10, :cond_be

    if-ne v7, v14, :cond_8d

    .line 1837
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move/from16 v6, p4

    .line 1838
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppIdleHistory;->noteRestrictionAttempt(Ljava/lang/String;IJI)V

    move v1, v6

    goto :goto_8f

    :cond_8d
    move/from16 v1, p4

    .line 1841
    :goto_8f
    iget v2, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x600

    or-int/2addr v2, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    .line 1844
    iget v2, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-lt v2, v12, :cond_a0

    const/4 v10, 0x1

    :goto_9e
    move v7, v1

    goto :goto_a2

    :cond_a0
    const/4 v10, 0x0

    goto :goto_9e

    .line 1846
    :goto_a2
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v6, p3

    move-wide/from16 v4, p5

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJIIZ)V

    move v7, v6

    if-lt v7, v12, :cond_b6

    const/4 v1, 0x1

    goto :goto_b7

    :cond_b6
    const/4 v1, 0x0

    :goto_b7
    if-eq v10, v1, :cond_bc

    .line 1850
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/usage/AppStandbyController;->notifyBatteryStats(Ljava/lang/String;IZ)V

    .line 1852
    :cond_bc
    monitor-exit v9

    return-void

    :cond_be
    move/from16 v1, p4

    const/16 v4, 0x400

    if-ne v6, v4, :cond_c6

    const/4 v10, 0x1

    goto :goto_c7

    :cond_c6
    const/4 v10, 0x0

    :goto_c7
    const/16 v4, 0x200

    if-ne v13, v14, :cond_df

    and-int v5, v15, v16

    if-ne v5, v4, :cond_d5

    if-eqz v11, :cond_df

    if-lt v7, v12, :cond_df

    .line 1863
    monitor-exit v9

    return-void

    .line 1865
    :cond_d5
    invoke-static {v1}, Lcom/android/server/usage/AppStandbyController;->isUserUsage(I)Z

    move-result v5

    if-nez v5, :cond_df

    if-nez v10, :cond_df

    .line 1868
    monitor-exit v9

    return-void

    :cond_df
    const/4 v13, -0x1

    if-ne v7, v14, :cond_16d

    .line 1873
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move/from16 v6, p4

    move v15, v4

    move-wide/from16 v4, p5

    .line 1874
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppIdleHistory;->noteRestrictionAttempt(Ljava/lang/String;IJI)V

    if-eqz v10, :cond_131

    .line 1882
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_119

    and-int/lit16 v1, v6, 0xff

    const/4 v10, 0x2

    if-eq v1, v10, :cond_119

    .line 1885
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    iget-object v10, v0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    .line 1888
    invoke-virtual {v10}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v10

    iget-object v15, v0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    .line 1889
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v14

    const v12, 0x104018b

    invoke-virtual {v15, v12, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    .line 1885
    invoke-static {v1, v10, v12, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1892
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_170

    :cond_119
    const/4 v14, 0x0

    .line 1894
    const-string v1, "AppStandbyController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " restricted by user"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_170

    .line 1897
    :cond_131
    iget-wide v14, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    .line 1898
    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController$Injector;->getAutoRestrictedBucketDelayMs()J

    move-result-wide v17

    add-long v14, v14, v17

    sub-long/2addr v14, v4

    const-wide/16 v17, 0x0

    cmp-long v1, v14, v17

    if-lez v1, :cond_170

    .line 1900
    const-string v1, "AppStandbyController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tried to restrict recently used app: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " due to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController;->mHandler:Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    const/16 v1, 0xb

    .line 1903
    invoke-virtual {v0, v1, v3, v13, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1902
    invoke-virtual {v0, v1, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1906
    monitor-exit v9

    return-void

    :cond_16d
    move-wide/from16 v4, p5

    move v6, v1

    :cond_170
    :goto_170
    if-eqz v11, :cond_1a2

    .line 1915
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, v4, v5}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v10

    .line 1918
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {v1, v8, v10, v11, v7}, Lcom/android/server/usage/AppIdleHistory;->updateLastPrediction(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;JI)V

    .line 1920
    invoke-virtual {v0, v8, v7, v10, v11}, Lcom/android/server/usage/AppStandbyController;->getMinBucketWithValidExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)I

    move-result v1

    if-eq v1, v13, :cond_192

    const/16 v10, 0xa

    if-eq v1, v10, :cond_18f

    .line 1924
    iget v6, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-ne v6, v1, :cond_18c

    goto :goto_18f

    :cond_18c
    const/16 v6, 0x307

    goto :goto_1a3

    .line 1925
    :cond_18f
    :goto_18f
    iget v6, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    goto :goto_1a3

    :cond_192
    const/16 v1, 0x28

    if-ne v7, v1, :cond_1a2

    .line 1934
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/usage/AppStandbyController;->getBucketForLocked(Ljava/lang/String;IJ)I

    move-result v1

    const/16 v10, 0x2d

    if-ne v1, v10, :cond_1a2

    move v1, v10

    const/16 v6, 0x200

    goto :goto_1a3

    :cond_1a2
    move v1, v7

    .line 1950
    :goto_1a3
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/usage/AppStandbyController;->getAppMinBucket(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1951
    iget v7, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v10, 0x28

    if-lt v7, v10, :cond_1b5

    const/4 v11, 0x1

    :goto_1b2
    move v7, v6

    move v6, v1

    goto :goto_1b7

    :cond_1b5
    const/4 v11, 0x0

    goto :goto_1b2

    .line 1952
    :goto_1b7
    iget-object v1, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJIIZ)V

    if-lt v6, v10, :cond_1c2

    const/4 v10, 0x1

    goto :goto_1c3

    :cond_1c2
    const/4 v10, 0x0

    :goto_1c3
    if-eq v11, v10, :cond_1c8

    .line 1956
    invoke-virtual {v0, v2, v3, v10}, Lcom/android/server/usage/AppStandbyController;->notifyBatteryStats(Ljava/lang/String;IZ)V

    .line 1958
    :cond_1c8
    monitor-exit v9
    :try_end_1c9
    .catchall {:try_start_12 .. :try_end_1c9} :catchall_33

    move v5, v6

    move v6, v7

    const/4 v7, 0x0

    move-object v1, v2

    move v2, v3

    move-wide/from16 v3, p5

    .line 1959
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppStandbyController;->maybeInformListeners(Ljava/lang/String;IJIIZ)V

    return-void

    .line 1958
    :goto_1d4
    :try_start_1d4
    monitor-exit v9
    :try_end_1d5
    .catchall {:try_start_1d4 .. :try_end_1d5} :catchall_33

    throw v0
.end method

.method public setAppStandbyBuckets(Ljava/util/List;III)V
    .registers 21

    move-object/from16 v0, p0

    .line 1751
    const-string/jumbo v6, "setAppStandbyBucket"

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move/from16 v3, p2

    move/from16 v2, p3

    move/from16 v1, p4

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v3

    move v8, v2

    const/4 v1, 0x0

    if-eqz v8, :cond_1d

    const/16 v2, 0x7d0

    if-ne v8, v2, :cond_1b

    goto :goto_1d

    :cond_1b
    move v7, v1

    goto :goto_1f

    :cond_1d
    :goto_1d
    const/4 v2, 0x1

    move v7, v2

    :goto_1f
    const/16 v2, 0x3e8

    .line 1758
    invoke-static {v8, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    move/from16 v4, p4

    if-ne v4, v2, :cond_31

    :cond_2f
    if-eqz v7, :cond_35

    :cond_31
    const/16 v2, 0x400

    :goto_33
    move v4, v2

    goto :goto_41

    .line 1761
    :cond_35
    invoke-static {v8}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v2

    if-eqz v2, :cond_3e

    const/16 v2, 0x600

    goto :goto_33

    :cond_3e
    const/16 v2, 0x500

    goto :goto_33

    .line 1769
    :goto_41
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    .line 1770
    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v2}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v5

    move v10, v1

    :goto_4c
    if-ge v10, v9, :cond_bd

    move-object/from16 v11, p1

    .line 1772
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/AppStandbyInfo;

    .line 1773
    iget-object v2, v1, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    .line 1774
    iget v1, v1, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    const/16 v12, 0xa

    if-lt v1, v12, :cond_a5

    const/16 v12, 0x32

    if-gt v1, v12, :cond_a5

    .line 1778
    iget-object v12, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v12}, Lcom/android/server/usage/AppStandbyController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v12

    const-wide/32 v13, 0x4c0000

    .line 1779
    invoke-virtual {v12, v2, v13, v14, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v12

    if-eq v12, v8, :cond_9d

    if-ltz v12, :cond_80

    move v15, v3

    move v3, v1

    move-object v1, v2

    move v2, v15

    .line 1788
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(Ljava/lang/String;IIIJZ)V

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move v3, v2

    goto :goto_4c

    :cond_80
    move-object v1, v2

    .line 1785
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot set standby bucket for non existent package ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1782
    :cond_9d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set your own standby bucket"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a5
    move v3, v1

    .line 1776
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set the standby bucket to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_bd
    return-void
.end method

.method public setChargingState(Z)V
    .registers 3

    .line 871
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mIsCharging:Z

    if-eq v0, p1, :cond_9

    .line 873
    iput-boolean p1, p0, Lcom/android/server/usage/AppStandbyController;->mIsCharging:Z

    .line 874
    invoke-virtual {p0}, Lcom/android/server/usage/AppStandbyController;->postParoleStateChanged()V

    :cond_9
    return-void
.end method

.method public setEstimatedLaunchTime(Ljava/lang/String;IJ)V
    .registers 14

    .line 1353
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v4

    .line 1354
    iget-object v8, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1355
    :try_start_9
    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    move-object v2, p1

    move v3, p2

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usage/AppIdleHistory;->setEstimatedLaunchTime(Ljava/lang/String;IJJ)V

    .line 1356
    monitor-exit v8

    return-void

    :catchall_13
    move-exception v0

    move-object p0, v0

    monitor-exit v8
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_13

    throw p0
.end method

.method public setLastJobRunTime(Ljava/lang/String;IJ)V
    .registers 6

    .line 1337
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1338
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleHistory:Lcom/android/server/usage/AppIdleHistory;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->setLastJobRunTime(Ljava/lang/String;IJ)V

    .line 1339
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public shouldNoteResponseEventForAllBroadcastSessions()Z
    .registers 1

    .line 2152
    iget-boolean p0, p0, Lcom/android/server/usage/AppStandbyController;->mNoteResponseEventForAllBroadcastSessions:Z

    return p0
.end method

.method public final triggerListenerQuotaBump(Ljava/lang/String;I)V
    .registers 7

    .line 860
    iget-boolean v0, p0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 862
    :cond_5
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 863
    :try_start_8
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mPackageAccessListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_1f

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;

    .line 864
    invoke-virtual {v3, p1, p2}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;->triggerTemporaryQuotaBump(Ljava/lang/String;I)V

    goto :goto_f

    :catchall_1d
    move-exception p0

    goto :goto_21

    .line 866
    :cond_1f
    monitor-exit v0

    return-void

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_1d

    throw p0
.end method

.method public final updateHeadlessSystemAppCache(Ljava/lang/String;Z)Z
    .registers 4

    .line 2360
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    monitor-enter v0

    if-eqz p2, :cond_f

    .line 2362
    :try_start_5
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    goto :goto_17

    .line 2364
    :cond_f
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mHeadlessSystemApps:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 2366
    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_d

    throw p0
.end method

.method public final updatePowerWhitelistCache()V
    .registers 3

    .line 2252
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->getBootPhase()I

    move-result v0

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_b

    return-void

    .line 2255
    :cond_b
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->updatePowerWhitelistCache()V

    const/4 v0, -0x1

    .line 2256
    invoke-virtual {p0, v0}, Lcom/android/server/usage/AppStandbyController;->postCheckIdleStates(I)V

    return-void
.end method

.method public final usageEventToSubReason(I)I
    .registers 4

    .line 0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_29

    const/4 v0, 0x2

    if-eq p1, v0, :cond_27

    const/4 v1, 0x6

    if-eq p1, v1, :cond_26

    const/4 p0, 0x7

    if-eq p1, p0, :cond_25

    const/16 p0, 0xa

    if-eq p1, p0, :cond_24

    const/16 v0, 0x13

    if-eq p1, v0, :cond_21

    const/16 v0, 0xd

    if-eq p1, v0, :cond_20

    const/16 p0, 0xe

    if-eq p1, p0, :cond_1e

    const/4 p0, 0x0

    return p0

    :cond_1e
    const/16 p0, 0x9

    :cond_20
    return p0

    :cond_21
    const/16 p0, 0xf

    return p0

    :cond_24
    return v0

    :cond_25
    const/4 p0, 0x3

    :cond_26
    return p0

    :cond_27
    const/4 p0, 0x5

    return p0

    :cond_29
    const/4 p0, 0x4

    return p0
.end method

.method public final waitForAdminData()V
    .registers 4

    .line 2028
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.device_admin"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2029
    iget-object p0, p0, Lcom/android/server/usage/AppStandbyController;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v0, 0x2710

    const-string v2, "Wait for admin data"

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/jobs/ConcurrentUtils;->waitForCountDownNoInterrupt(Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;)V

    :cond_17
    return-void
.end method
