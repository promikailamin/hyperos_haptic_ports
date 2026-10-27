.class public final Lcom/android/server/pm/AppsFilterImpl;
.super Lcom/android/server/pm/AppsFilterLocked;
.source "AppsFilterImpl.java"

# interfaces
.implements Lcom/android/server/utils/Watchable;
.implements Lcom/android/server/utils/Snappable;


# instance fields
.field public final mPermissionToUids:Landroid/util/ArrayMap;

.field public final mSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mUsesPermissionToUids:Landroid/util/ArrayMap;

.field public final mWatchable:Lcom/android/server/utils/WatchableImpl;


# direct methods
.method public static synthetic $r8$lambda$upIZkL_ivpfWJ2brYK92CfeE4eM(Lcom/android/server/pm/AppsFilterImpl;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/AppsFilterImpl;->readCacheEnabledSysProp()V

    return-void
.end method

.method public static synthetic $r8$lambda$z8pKsxG_4fqX35js78wjP4SRLPM(Lcom/android/server/pm/AppsFilterImpl;Landroid/content/pm/PackageManagerInternal;IJ)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/AppsFilterImpl;->lambda$updateEntireShouldFilterCacheAsync$0(Landroid/content/pm/PackageManagerInternal;IJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogCacheUpdated(Lcom/android/server/pm/AppsFilterImpl;IJIII)V
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/AppsFilterImpl;->logCacheUpdated(IJIII)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monChanged(Lcom/android/server/pm/AppsFilterImpl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateShouldFilterCacheForPackage(Lcom/android/server/pm/AppsFilterImpl;Lcom/android/server/pm/Computer;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/FeatureConfig;[Ljava/lang/String;ZLcom/android/server/om/OverlayReferenceMapper$Provider;Landroid/os/Handler;)V
    .registers 7

    .line 199
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilterLocked;-><init>()V

    .line 107
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 200
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    .line 201
    iput-object p2, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryableByDevicePackageNames:[Ljava/lang/String;

    .line 202
    iput-boolean p3, p0, Lcom/android/server/pm/AppsFilterBase;->mSystemAppsQueryable:Z

    .line 203
    new-instance p1, Lcom/android/server/om/OverlayReferenceMapper;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p4}, Lcom/android/server/om/OverlayReferenceMapper;-><init>(ZLcom/android/server/om/OverlayReferenceMapper$Provider;)V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    .line 205
    iput-object p5, p0, Lcom/android/server/pm/AppsFilterBase;->mHandler:Landroid/os/Handler;

    .line 206
    new-instance p1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-direct {p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 207
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object p2, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    const-string p3, "AppsFilter.mShouldFilterCache"

    invoke-direct {p1, p2, p2, p3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCacheSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 209
    new-instance p1, Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-direct {p1}, Lcom/android/server/utils/WatchedSparseSetArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 210
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object p2, p0, Lcom/android/server/pm/AppsFilterBase;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string p3, "AppsFilter.mImplicitlyQueryable"

    invoke-direct {p1, p2, p2, p3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mImplicitQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 212
    new-instance p1, Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-direct {p1}, Lcom/android/server/utils/WatchedSparseSetArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 213
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object p2, p0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string p3, "AppsFilter.mRetainedImplicitlyQueryable"

    invoke-direct {p1, p2, p2, p3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 216
    new-instance p1, Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-direct {p1}, Lcom/android/server/utils/WatchedSparseSetArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 217
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object p2, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string p3, "AppsFilter.mQueriesViaPackage"

    invoke-direct {p1, p2, p2, p3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackageSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 219
    new-instance p1, Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-direct {p1}, Lcom/android/server/utils/WatchedSparseSetArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 220
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object p2, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string p3, "AppsFilter.mQueriesViaComponent"

    invoke-direct {p1, p2, p2, p3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 222
    new-instance p1, Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-direct {p1}, Lcom/android/server/utils/WatchedSparseSetArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 223
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object p2, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string p3, "AppsFilter.mQueryableViaUsesLibrary"

    invoke-direct {p1, p2, p2, p3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrarySnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 226
    new-instance p1, Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-direct {p1}, Lcom/android/server/utils/WatchedSparseSetArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesPermission:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 227
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object p2, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesPermission:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string p3, "AppsFilter.mQueryableViaUsesPermission"

    invoke-direct {p1, p2, p2, p3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesPermissionSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 230
    new-instance p1, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {p1}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    .line 231
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object p2, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    const-string p3, "AppsFilter.mForceQueryable"

    invoke-direct {p1, p2, p2, p3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 233
    new-instance p1, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {p1}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    .line 234
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object p2, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    const-string p3, "AppsFilter.mProtectedBroadcasts"

    invoke-direct {p1, p2, p2, p3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcastsSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 236
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterImpl;->mPermissionToUids:Landroid/util/ArrayMap;

    .line 237
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterImpl;->mUsesPermissionToUids:Landroid/util/ArrayMap;

    .line 239
    new-instance p1, Lcom/android/server/pm/AppsFilterImpl$1;

    invoke-direct {p1, p0, p0, p0}, Lcom/android/server/pm/AppsFilterImpl$1;-><init>(Lcom/android/server/pm/AppsFilterImpl;Lcom/android/server/pm/AppsFilterSnapshot;Lcom/android/server/utils/Watchable;)V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 245
    invoke-virtual {p0}, Lcom/android/server/pm/AppsFilterImpl;->readCacheEnabledSysProp()V

    .line 246
    new-instance p1, Lcom/android/server/pm/AppsFilterImpl$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/pm/AppsFilterImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/AppsFilterImpl;)V

    invoke-static {p1}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static create(Lcom/android/server/pm/PackageManagerServiceInjector;Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/pm/AppsFilterImpl;
    .registers 10

    .line 434
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101ca

    .line 435
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 436
    new-instance v3, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;

    const/4 v0, 0x0

    invoke-direct {v3, p1, p0, v0}, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;-><init>(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/AppsFilterImpl-IA;)V

    const/4 p1, 0x0

    if-eqz v5, :cond_1c

    .line 440
    new-array p1, p1, [Ljava/lang/String;

    move-object v4, p1

    goto :goto_3a

    .line 443
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107008b

    .line 444
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 445
    :goto_2b
    array-length v1, v0

    if-ge p1, v1, :cond_39

    .line 446
    aget-object v1, v0, p1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2b

    :cond_39
    move-object v4, v0

    .line 449
    :goto_3a
    new-instance v2, Lcom/android/server/pm/AppsFilterImpl;

    const/4 v6, 0x0

    .line 451
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/AppsFilterImpl;-><init>(Lcom/android/server/pm/FeatureConfig;[Ljava/lang/String;ZLcom/android/server/om/OverlayReferenceMapper$Provider;Landroid/os/Handler;)V

    .line 452
    invoke-virtual {v3, v2}, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->setAppsFilter(Lcom/android/server/pm/AppsFilterImpl;)V

    return-object v2
.end method

.method public static isSystemSigned(Landroid/content/pm/SigningDetails;Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 3

    .line 1002
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1003
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/pm/SigningDetails;->signaturesMatchExactly(Landroid/content/pm/SigningDetails;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private onChanged()V
    .registers 2

    const/4 v0, 0x4

    .line 181
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache(I)V

    .line 182
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->invalidateGetPackagesForUidCache(I)V

    .line 183
    invoke-static {}, Landroid/app/ApplicationPackageManager;->invalidateQueryIntentActivitiesCache()V

    .line 184
    invoke-static {}, Landroid/app/AppOpsManager;->invalidateCheckPackageCache()V

    .line 185
    invoke-virtual {p0, p0}, Lcom/android/server/pm/AppsFilterImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public static pkgInstruments(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .registers 5

    .line 1279
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 1280
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object p0

    .line 1281
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_e
    if-ltz v0, :cond_24

    .line 1282
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    return v1

    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_24
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addPackage(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 4

    const/4 v0, 0x0

    .line 1071
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/pm/AppsFilterImpl;->addPackage(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/PackageStateInternal;ZZ)V

    return-void
.end method

.method public addPackage(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/PackageStateInternal;ZZ)V
    .registers 19

    move-object/from16 v4, p2

    .line 517
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v9

    const/4 v0, 0x1

    if-eqz p3, :cond_c

    const/4 v1, 0x3

    move v11, v1

    goto :goto_d

    :cond_c
    move v11, v0

    :goto_d
    if-eqz p3, :cond_19

    move/from16 v1, p4

    .line 527
    :try_start_11
    invoke-virtual {p0, p1, v4, v0, v1}, Lcom/android/server/pm/AppsFilterImpl;->removePackageInternal(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/PackageStateInternal;ZZ)V

    goto :goto_19

    :catchall_15
    move-exception v0

    move-object p1, v0

    goto/16 :goto_9f

    .line 531
    :cond_19
    :goto_19
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v5

    .line 532
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 534
    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/AppsFilterImpl;->addPackageInternal(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;)Landroid/util/ArraySet;

    move-result-object v0

    .line 535
    iget-boolean v1, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    if-eqz v1, :cond_83

    .line 536
    iget-object v12, p0, Lcom/android/server/pm/AppsFilterLocked;->mCacheLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v12
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_15

    .line 538
    :try_start_2f
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/4 v3, 0x0

    const/4 v7, -0x1

    move-object v1, p0

    move-object v2, p1

    .line 537
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;II)V

    if-eqz v0, :cond_65

    const/4 v1, 0x0

    move v13, v1

    .line 540
    :goto_3e
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v13, v1, :cond_65

    .line 541
    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 542
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-nez v4, :cond_54

    goto :goto_5f

    .line 550
    :cond_54
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/4 v3, 0x0

    const/4 v7, -0x1

    move-object v1, p0

    move-object v2, p1

    .line 549
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;II)V

    :goto_5f
    add-int/lit8 v13, v13, 0x1

    goto :goto_3e

    :catchall_62
    move-exception v0

    move-object p1, v0

    goto :goto_7e

    .line 553
    :cond_65
    monitor-exit v12
    :try_end_66
    .catchall {:try_start_2f .. :try_end_66} :catchall_62

    :try_start_66
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 554
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v0

    sub-long/2addr v0, v9

    array-length v6, v6

    .line 555
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v7

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v8

    move-object v2, p0

    move-wide v4, v0

    move v3, v11

    .line 554
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/AppsFilterImpl;->logCacheUpdated(IJIII)V
    :try_end_7d
    .catchall {:try_start_66 .. :try_end_7d} :catchall_15

    goto :goto_9b

    .line 553
    :goto_7e
    :try_start_7e
    monitor-exit v12
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_62

    :try_start_7f
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p1

    .line 557
    :cond_83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addPackage: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppsFilterImpl;->invalidateCache(Ljava/lang/String;)V
    :try_end_9b
    .catchall {:try_start_7f .. :try_end_9b} :catchall_15

    .line 560
    :goto_9b
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    return-void

    :goto_9f
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    .line 564
    throw p1
.end method

.method public final addPackageInternal(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;)Landroid/util/ArraySet;
    .registers 15

    .line 574
    const-string v0, "android"

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 576
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mSystemSigningDetails:Landroid/content/pm/SigningDetails;

    .line 579
    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 580
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mSystemSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-static {v2, v1}, Lcom/android/server/pm/AppsFilterImpl;->isSystemSigned(Landroid/content/pm/SigningDetails;Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 581
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterLocked;->mForceQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 582
    :try_start_34
    iget-object v3, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 583
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_34 .. :try_end_42} :catchall_46

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_1a

    :catchall_46
    move-exception p0

    :try_start_47
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 588
    :cond_4c
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-nez v0, :cond_54

    const/4 p0, 0x0

    return-object p0

    .line 593
    :cond_54
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getProtectedBroadcasts()Ljava/util/List;

    move-result-object v1

    .line 594
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_8e

    .line 596
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterLocked;->mProtectedBroadcastsLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 597
    :try_start_66
    iget-object v5, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v5}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v5

    .line 598
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v6, v1}, Lcom/android/server/utils/WatchedArraySet;->addAll(Ljava/util/Collection;)V

    .line 599
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v1

    if-eq v1, v5, :cond_7b

    move v1, v4

    goto :goto_7c

    :cond_7b
    move v1, v3

    .line 600
    :goto_7c
    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_66 .. :try_end_7d} :catchall_88

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-eqz v1, :cond_8e

    .line 602
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_8e

    :catchall_88
    move-exception p0

    .line 600
    :try_start_89
    monitor-exit v2
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 607
    :cond_8e
    :goto_8e
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterLocked;->mForceQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 608
    :try_start_94
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cc

    .line 610
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isForceQueryableOverride()Z

    move-result v2

    if-nez v2, :cond_cc

    .line 611
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_ca

    iget-boolean v2, p0, Lcom/android/server/pm/AppsFilterBase;->mSystemAppsQueryable:Z

    if-nez v2, :cond_cc

    .line 612
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isForceQueryable()Z

    move-result v2

    if-nez v2, :cond_cc

    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryableByDevicePackageNames:[Ljava/lang/String;

    .line 614
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 613
    invoke-static {v2, v5}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ca

    goto :goto_cc

    :catchall_c7
    move-exception p0

    goto/16 :goto_402

    :cond_ca
    move v2, v3

    goto :goto_cd

    :cond_cc
    :goto_cc
    move v2, v4

    :goto_cd
    if-nez v2, :cond_d9

    .line 615
    iget-object v5, p0, Lcom/android/server/pm/AppsFilterBase;->mSystemSigningDetails:Landroid/content/pm/SigningDetails;

    if-eqz v5, :cond_e6

    .line 617
    invoke-static {v5, p1}, Lcom/android/server/pm/AppsFilterImpl;->isSystemSigned(Landroid/content/pm/SigningDetails;Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result v5

    if-eqz v5, :cond_e6

    .line 618
    :cond_d9
    iget-object v5, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 620
    :cond_e6
    monitor-exit v1
    :try_end_e7
    .catchall {:try_start_94 .. :try_end_e7} :catchall_c7

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 622
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17c

    .line 624
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueryableViaUsesPermissionLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 626
    :try_start_fa
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesPermissionMapping()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_106
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_172

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;

    .line 627
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getName()Ljava/lang/String;

    move-result-object v6

    .line 630
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mPermissionToUids:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14c

    .line 631
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mPermissionToUids:Landroid/util/ArrayMap;

    .line 632
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    move v8, v3

    .line 633
    :goto_127
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v9

    if-ge v8, v9, :cond_14c

    .line 634
    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 635
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v11

    if-eq v10, v11, :cond_149

    .line 636
    iget-object v10, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesPermission:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v11

    invoke-virtual {v10, v11, v9}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    goto :goto_149

    :catchall_147
    move-exception p0

    goto :goto_177

    :cond_149
    :goto_149
    add-int/lit8 v8, v8, 0x1

    goto :goto_127

    .line 643
    :cond_14c
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mUsesPermissionToUids:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15e

    .line 644
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mUsesPermissionToUids:Landroid/util/ArrayMap;

    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v7, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    :cond_15e
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mUsesPermissionToUids:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_106

    .line 648
    :cond_172
    monitor-exit v1
    :try_end_173
    .catchall {:try_start_fa .. :try_end_173} :catchall_147

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_17c

    :goto_177
    :try_start_177
    monitor-exit v1
    :try_end_178
    .catchall {:try_start_177 .. :try_end_178} :catchall_147

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 650
    :cond_17c
    :goto_17c
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_20e

    .line 651
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueryableViaUsesPermissionLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 653
    :try_start_18c
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_194
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_204

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 654
    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v6

    .line 657
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mUsesPermissionToUids:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1de

    .line 658
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mUsesPermissionToUids:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    move v8, v3

    .line 660
    :goto_1b5
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v9

    if-ge v8, v9, :cond_1de

    .line 661
    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 662
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v10

    if-eq v9, v10, :cond_1db

    .line 663
    iget-object v10, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesPermission:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 664
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 663
    invoke-virtual {v10, v9, v11}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    goto :goto_1db

    :catchall_1d9
    move-exception p0

    goto :goto_209

    :cond_1db
    :goto_1db
    add-int/lit8 v8, v8, 0x1

    goto :goto_1b5

    .line 669
    :cond_1de
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mPermissionToUids:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1f0

    .line 670
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mPermissionToUids:Landroid/util/ArrayMap;

    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v7, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    :cond_1f0
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mPermissionToUids:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_194

    .line 674
    :cond_204
    monitor-exit v1
    :try_end_205
    .catchall {:try_start_18c .. :try_end_205} :catchall_1d9

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_20e

    :goto_209
    :try_start_209
    monitor-exit v1
    :try_end_20a
    .catchall {:try_start_209 .. :try_end_20a} :catchall_1d9

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 677
    :cond_20e
    :goto_20e
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v4

    :goto_213
    if-ltz v1, :cond_3cc

    .line 678
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 679
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v5

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v6

    if-eq v5, v6, :cond_3c8

    .line 680
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    if-nez v5, :cond_22d

    goto/16 :goto_3c8

    .line 684
    :cond_22d
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    if-nez v2, :cond_2c0

    .line 687
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_265

    iget-object v6, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    .line 688
    invoke-static {v5, v0, v6}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaComponents(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/utils/WatchedArraySet;)Z

    move-result v6

    if-eqz v6, :cond_265

    .line 689
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueriesViaComponentLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v6

    .line 690
    :try_start_249
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v8

    .line 691
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 690
    invoke-virtual {v7, v8, v9}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 692
    monitor-exit v6
    :try_end_25b
    .catchall {:try_start_249 .. :try_end_25b} :catchall_25f

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_265

    :catchall_25f
    move-exception p0

    :try_start_260
    monitor-exit v6
    :try_end_261
    .catchall {:try_start_260 .. :try_end_261} :catchall_25f

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 694
    :cond_265
    :goto_265
    invoke-static {v5, v0}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaPackage(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v6

    if-nez v6, :cond_277

    .line 695
    invoke-static {v4, v0}, Lcom/android/server/pm/AppsFilterUtils;->canQueryAsInstaller(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v6

    if-nez v6, :cond_277

    .line 696
    invoke-static {v4, v0}, Lcom/android/server/pm/AppsFilterUtils;->canQueryAsUpdateOwner(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v6

    if-eqz v6, :cond_292

    .line 697
    :cond_277
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueriesViaPackageLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v6

    .line 698
    :try_start_27d
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v8

    .line 699
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 698
    invoke-virtual {v7, v8, v9}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 700
    monitor-exit v6
    :try_end_28f
    .catchall {:try_start_27d .. :try_end_28f} :catchall_2ba

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 702
    :cond_292
    invoke-static {v5, v0}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaUsesLibrary(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v6

    if-eqz v6, :cond_2c0

    .line 703
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueryableViaUsesLibraryLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v6

    .line 704
    :try_start_29e
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v8

    .line 705
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 704
    invoke-virtual {v7, v8, v9}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 706
    monitor-exit v6
    :try_end_2b0
    .catchall {:try_start_29e .. :try_end_2b0} :catchall_2b4

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_2c0

    :catchall_2b4
    move-exception p0

    :try_start_2b5
    monitor-exit v6
    :try_end_2b6
    .catchall {:try_start_2b5 .. :try_end_2b6} :catchall_2b4

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :catchall_2ba
    move-exception p0

    .line 700
    :try_start_2bb
    monitor-exit v6
    :try_end_2bc
    .catchall {:try_start_2bb .. :try_end_2bc} :catchall_2ba

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 710
    :cond_2c0
    :goto_2c0
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterLocked;->mForceQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v6

    .line 711
    :try_start_2c6
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 712
    monitor-exit v6
    :try_end_2d5
    .catchall {:try_start_2c6 .. :try_end_2d5} :catchall_3c2

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-nez v7, :cond_367

    .line 715
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_30c

    iget-object v6, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    .line 716
    invoke-static {v0, v5, v6}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaComponents(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/utils/WatchedArraySet;)Z

    move-result v6

    if-eqz v6, :cond_30c

    .line 717
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueriesViaComponentLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v6

    .line 718
    :try_start_2f0
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v8

    .line 719
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 718
    invoke-virtual {v7, v8, v9}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 720
    monitor-exit v6
    :try_end_302
    .catchall {:try_start_2f0 .. :try_end_302} :catchall_306

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_30c

    :catchall_306
    move-exception p0

    :try_start_307
    monitor-exit v6
    :try_end_308
    .catchall {:try_start_307 .. :try_end_308} :catchall_306

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 722
    :cond_30c
    :goto_30c
    invoke-static {v0, v5}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaPackage(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v6

    if-nez v6, :cond_31e

    .line 723
    invoke-static {p1, v5}, Lcom/android/server/pm/AppsFilterUtils;->canQueryAsInstaller(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v6

    if-nez v6, :cond_31e

    .line 724
    invoke-static {p1, v5}, Lcom/android/server/pm/AppsFilterUtils;->canQueryAsUpdateOwner(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v6

    if-eqz v6, :cond_339

    .line 725
    :cond_31e
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueriesViaPackageLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v6

    .line 726
    :try_start_324
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v8

    .line 727
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 726
    invoke-virtual {v7, v8, v9}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 728
    monitor-exit v6
    :try_end_336
    .catchall {:try_start_324 .. :try_end_336} :catchall_361

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 730
    :cond_339
    invoke-static {v0, v5}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaUsesLibrary(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v5

    if-eqz v5, :cond_367

    .line 731
    iget-object v5, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueryableViaUsesLibraryLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v5

    .line 732
    :try_start_345
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v7

    .line 733
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 732
    invoke-virtual {v6, v7, v8}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 734
    monitor-exit v5
    :try_end_357
    .catchall {:try_start_345 .. :try_end_357} :catchall_35b

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_367

    :catchall_35b
    move-exception p0

    :try_start_35c
    monitor-exit v5
    :try_end_35d
    .catchall {:try_start_35c .. :try_end_35d} :catchall_35b

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :catchall_361
    move-exception p0

    .line 728
    :try_start_362
    monitor-exit v6
    :try_end_363
    .catchall {:try_start_362 .. :try_end_363} :catchall_361

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 738
    :cond_367
    :goto_367
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    if-eqz v5, :cond_3c8

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    if-eqz v5, :cond_3c8

    .line 739
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/pm/AppsFilterImpl;->pkgInstruments(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v5

    if-nez v5, :cond_38f

    .line 740
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/pm/AppsFilterImpl;->pkgInstruments(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v5

    if-eqz v5, :cond_3c8

    .line 741
    :cond_38f
    iget-object v5, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueriesViaPackageLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v5

    .line 742
    :try_start_395
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v7

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 743
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 744
    monitor-exit v5
    :try_end_3b8
    .catchall {:try_start_395 .. :try_end_3b8} :catchall_3bc

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_3c8

    :catchall_3bc
    move-exception p0

    :try_start_3bd
    monitor-exit v5
    :try_end_3be
    .catchall {:try_start_3bd .. :try_end_3be} :catchall_3bc

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :catchall_3c2
    move-exception p0

    .line 712
    :try_start_3c3
    monitor-exit v6
    :try_end_3c4
    .catchall {:try_start_3c3 .. :try_end_3c4} :catchall_3c2

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :cond_3c8
    :goto_3c8
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_213

    .line 748
    :cond_3cc
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 749
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    move v2, v3

    :goto_3d6
    if-ge v2, v0, :cond_3f2

    .line 751
    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 752
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    if-eqz v5, :cond_3ef

    .line 753
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3ef
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d6

    .line 757
    :cond_3f2
    iget-object p2, p0, Lcom/android/server/pm/AppsFilterBase;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    .line 758
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-virtual {p2, v0, v1}, Lcom/android/server/om/OverlayReferenceMapper;->addPkg(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/Map;)Landroid/util/ArraySet;

    move-result-object p2

    .line 760
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {p0, p1, v3}, Lcom/android/server/pm/FeatureConfig;->updatePackageState(Lcom/android/server/pm/pkg/PackageStateInternal;Z)V

    return-object p2

    .line 620
    :goto_402
    :try_start_402
    monitor-exit v1
    :try_end_403
    .catchall {:try_start_402 .. :try_end_403} :catchall_c7

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final collectProtectedBroadcasts(Landroid/util/ArrayMap;Ljava/lang/String;)V
    .registers 7

    .line 1009
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mProtectedBroadcastsLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 1010
    :try_start_6
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArraySet;->clear()V

    .line 1011
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_11
    if-ltz v1, :cond_47

    .line 1012
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 1013
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_44

    .line 1017
    :cond_2e
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getProtectedBroadcasts()Ljava/util/List;

    move-result-object v2

    .line 1018
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_44

    .line 1019
    iget-object v3, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedArraySet;->addAll(Ljava/util/Collection;)V

    goto :goto_44

    :catchall_42
    move-exception p0

    goto :goto_4c

    :cond_44
    :goto_44
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 1022
    :cond_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_6 .. :try_end_48} :catchall_42

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :goto_4c
    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_42

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public dispatchChange(Lcom/android/server/utils/Watchable;)V
    .registers 2

    .line 171
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public getFeatureConfig()Lcom/android/server/pm/FeatureConfig;
    .registers 1

    .line 457
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    return-object p0
.end method

.method public grantImplicitAccess(IIZ)Z
    .registers 7

    const/4 v0, 0x0

    if-ne p1, p2, :cond_4

    return v0

    .line 474
    :cond_4
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterLocked;->mImplicitlyQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    if-eqz p3, :cond_19

    .line 476
    :try_start_c
    iget-object p3, p0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p1, v2}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    move-result p3

    goto :goto_23

    :catchall_17
    move-exception p0

    goto :goto_50

    .line 477
    :cond_19
    iget-object p3, p0, Lcom/android/server/pm/AppsFilterBase;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p1, v2}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    move-result p3

    .line 478
    :goto_23
    iget-boolean v2, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    if-nez v2, :cond_2c

    if-eqz p3, :cond_2c

    const/4 v2, 0x1

    .line 479
    iput-boolean v2, p0, Lcom/android/server/pm/AppsFilterBase;->mNeedToUpdateCacheForImplicitAccess:Z

    .line 481
    :cond_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_17

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 487
    iget-boolean v1, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    if-eqz v1, :cond_4a

    .line 488
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterLocked;->mCacheLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 490
    :try_start_3a
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v2, p1, p2, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->put(IIZ)V

    .line 491
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_44

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_4a

    :catchall_44
    move-exception p0

    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :cond_4a
    :goto_4a
    if-eqz p3, :cond_4f

    .line 494
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    :cond_4f
    return p3

    .line 481
    :goto_50
    :try_start_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_17

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final invalidateCache(Ljava/lang/String;)V
    .registers 4

    .line 189
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheValid:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_20

    .line 190
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalidating cache: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppsFilter"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-void
.end method

.method public isQueryableViaComponentWhenRequireRecompute(Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArraySet;Lcom/android/server/pm/pkg/AndroidPackage;II)Z
    .registers 7

    .line 1033
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppsFilterImpl;->recomputeComponentVisibility(Landroid/util/ArrayMap;)V

    .line 1034
    invoke-virtual {p0, p5, p6}, Lcom/android/server/pm/AppsFilterLocked;->isQueryableViaComponent(II)Z

    move-result p0

    return p0
.end method

.method public isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z
    .registers 2

    .line 159
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$updateEntireShouldFilterCacheAsync$0(Landroid/content/pm/PackageManagerInternal;IJ)V
    .registers 19

    .line 825
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheValid:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    .line 830
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v1

    .line 831
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 832
    new-array v4, v7, [[Landroid/content/pm/UserInfo;

    .line 833
    invoke-virtual {p1}, Landroid/content/pm/PackageManagerInternal;->snapshot()Lcom/android/server/pm/snapshot/PackageDataSnapshot;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/Computer;

    .line 835
    invoke-interface {v5}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v8

    .line 836
    invoke-interface {v5}, Lcom/android/server/pm/Computer;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v9

    .line 838
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v10

    invoke-virtual {v3, v10}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 839
    aput-object v9, v4, v6

    .line 842
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v10

    move v11, v6

    :goto_32
    if-ge v11, v10, :cond_4a

    .line 843
    invoke-virtual {v8, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v12

    .line 844
    invoke-virtual {v8, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v3, v13, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    goto :goto_32

    .line 847
    :cond_4a
    aget-object v3, v4, v6

    const/4 v4, -0x1

    invoke-virtual {p0, v5, v8, v3, v4}, Lcom/android/server/pm/AppsFilterImpl;->updateEntireShouldFilterCacheInner(Lcom/android/server/pm/Computer;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V

    .line 848
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v3

    sub-long v2, v3, v1

    array-length v4, v9

    .line 849
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move-object v0, p0

    move/from16 v1, p2

    .line 848
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterImpl;->logCacheRebuilt(IJII)V

    .line 851
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheValid:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v7, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_80

    .line 852
    const-string v1, "AppsFilter"

    const-string v2, "Cache invalidated while building, retrying."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x2

    mul-long v1, v1, p3

    const-wide/16 v3, 0x2710

    .line 854
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    move/from16 v4, p2

    .line 853
    invoke-virtual {p0, p1, v1, v2, v4}, Lcom/android/server/pm/AppsFilterImpl;->updateEntireShouldFilterCacheAsync(Landroid/content/pm/PackageManagerInternal;JI)V

    return-void

    .line 858
    :cond_80
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterLocked;->mImplicitlyQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    .line 859
    :try_start_86
    iget-boolean v2, p0, Lcom/android/server/pm/AppsFilterBase;->mNeedToUpdateCacheForImplicitAccess:Z

    if-eqz v2, :cond_92

    .line 860
    invoke-virtual {p0}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForImplicitAccess()V

    .line 861
    iput-boolean v6, p0, Lcom/android/server/pm/AppsFilterBase;->mNeedToUpdateCacheForImplicitAccess:Z

    goto :goto_92

    :catchall_90
    move-exception v0

    goto :goto_9c

    .line 863
    :cond_92
    :goto_92
    iput-boolean v7, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    .line 864
    monitor-exit v1
    :try_end_95
    .catchall {:try_start_86 .. :try_end_95} :catchall_90

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 866
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    return-void

    .line 864
    :goto_9c
    :try_start_9c
    monitor-exit v1
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_90

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
.end method

.method public final logCacheRebuilt(IJII)V
    .registers 13

    .line 1295
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 1296
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->size()I

    move-result v6

    const/16 v0, 0x221

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    .line 1295
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJIII)V

    return-void
.end method

.method public final logCacheUpdated(IJIII)V
    .registers 15

    .line 1301
    iget-boolean v0, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    if-nez v0, :cond_5

    return-void

    .line 1304
    :cond_5
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 1305
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->size()I

    move-result v7

    const/16 v0, 0x222

    move v1, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move v2, p6

    .line 1304
    invoke-static/range {v0 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJIII)V

    return-void
.end method

.method public onSystemReady(Landroid/content/pm/PackageManagerInternal;)V
    .registers 3

    .line 500
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayReferenceMapper;->rebuildIfDeferred()V

    .line 501
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {v0}, Lcom/android/server/pm/FeatureConfig;->onSystemReady()V

    const/4 v0, 0x1

    .line 503
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/AppsFilterImpl;->updateEntireShouldFilterCacheAsync(Landroid/content/pm/PackageManagerInternal;I)V

    return-void
.end method

.method public onUserCreated(Lcom/android/server/pm/Computer;I)V
    .registers 13

    .line 871
    iget-boolean v0, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    if-nez v0, :cond_5

    return-void

    .line 874
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v0

    .line 875
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/AppsFilterImpl;->updateEntireShouldFilterCache(Lcom/android/server/pm/Computer;I)V

    .line 878
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v2

    sub-long v6, v2, v0

    .line 879
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object p2

    array-length v8, p2

    .line 880
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v9

    const/4 v5, 0x2

    move-object v4, p0

    .line 876
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/AppsFilterImpl;->logCacheRebuilt(IJII)V

    return-void
.end method

.method public onUserDeleted(Lcom/android/server/pm/Computer;I)V
    .registers 13

    .line 884
    iget-boolean v0, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    if-nez v0, :cond_5

    return-void

    .line 887
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v0

    .line 888
    invoke-virtual {p0, p2}, Lcom/android/server/pm/AppsFilterImpl;->removeShouldFilterCacheForUser(I)V

    .line 889
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    .line 892
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v2

    sub-long v6, v2, v0

    .line 893
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object p2

    array-length v8, p2

    .line 894
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v9

    const/4 v5, 0x3

    move-object v4, p0

    .line 890
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/AppsFilterImpl;->logCacheRebuilt(IJII)V

    return-void
.end method

.method public final readCacheEnabledSysProp()V
    .registers 3

    .line 250
    const-string v0, "debug.pm.use_app_filter_cache"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheEnabled:Z

    return-void
.end method

.method public final recomputeComponentVisibility(Landroid/util/ArrayMap;)V
    .registers 6

    .line 1045
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mProtectedBroadcastsLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 1046
    :try_start_6
    new-instance v1, Lcom/android/server/utils/WatchedArraySet;

    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {v1, v2}, Lcom/android/server/utils/WatchedArraySet;-><init>(Lcom/android/server/utils/WatchedArraySet;)V

    .line 1047
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_61

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 1048
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterLocked;->mForceQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 1049
    :try_start_17
    new-instance v0, Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArraySet;->untrackedStorage()Landroid/util/ArraySet;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 1050
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_5b

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 1051
    new-instance v2, Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility;

    invoke-direct {v2, p1, v0, v1}, Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility;-><init>(Landroid/util/ArrayMap;Landroid/util/ArraySet;Lcom/android/server/utils/WatchedArraySet;)V

    .line 1053
    invoke-virtual {v2}, Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility;->execute()Landroid/util/SparseSetArray;

    move-result-object p1

    .line 1054
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueriesViaComponentLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 1055
    :try_start_35
    new-instance v1, Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-direct {v1, p1}, Lcom/android/server/utils/WatchedSparseSetArray;-><init>(Landroid/util/SparseSetArray;)V

    iput-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 1056
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string v2, "AppsFilter.mQueriesViaComponent"

    invoke-direct {p1, v1, v1, v2}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 1058
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_35 .. :try_end_48} :catchall_55

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 1060
    iget-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1061
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    return-void

    :catchall_55
    move-exception p0

    .line 1058
    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :catchall_5b
    move-exception p0

    .line 1050
    :try_start_5c
    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :catchall_61
    move-exception p0

    .line 1047
    :try_start_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public registerObserver(Lcom/android/server/utils/Watcher;)V
    .registers 2

    .line 137
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method

.method public final removeAppIdFromVisibilityCache(I)V
    .registers 5

    .line 766
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mCacheLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    const/4 v1, 0x0

    .line 767
    :goto_7
    :try_start_7
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 768
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    if-ne v2, p1, :cond_25

    .line 769
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->removeAt(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_25

    :catchall_23
    move-exception p0

    goto :goto_2d

    :cond_25
    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 777
    :cond_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_23

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :goto_2d
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_23

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public removePackage(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 14

    .line 1081
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 1082
    invoke-virtual {p0, p1, p2, v2, v2}, Lcom/android/server/pm/AppsFilterImpl;->removePackageInternal(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/PackageStateInternal;ZZ)V

    .line 1086
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v2

    sub-long v6, v2, v0

    .line 1087
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v0

    array-length v8, v0

    .line 1088
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v9

    .line 1089
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v10

    const/4 v5, 0x2

    move-object v4, p0

    .line 1084
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/pm/AppsFilterImpl;->logCacheUpdated(IJIII)V

    return-void
.end method

.method public final removePackageInternal(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/PackageStateInternal;ZZ)V
    .registers 16

    .line 1104
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v4

    .line 1105
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 1106
    array-length v0, v5

    const/4 v8, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_f

    if-nez p4, :cond_6e

    .line 1108
    :cond_f
    iget-object p4, p0, Lcom/android/server/pm/AppsFilterLocked;->mImplicitlyQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p4

    move v2, v8

    :goto_16
    if-ge v2, v0, :cond_6a

    .line 1110
    :try_start_18
    aget-object v3, v5, v2

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 1111
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v6

    invoke-static {v3, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 1112
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterBase;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v6, v3}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(I)V

    .line 1113
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterBase;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v6}, Lcom/android/server/utils/WatchedSparseSetArray;->size()I

    move-result v6

    sub-int/2addr v6, v1

    :goto_30
    if-ltz v6, :cond_46

    .line 1114
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterBase;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v7, v6}, Lcom/android/server/utils/WatchedSparseSetArray;->keyAt(I)I

    move-result v9

    .line 1115
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 1114
    invoke-virtual {v7, v9, v10}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(ILjava/lang/Object;)Z

    add-int/lit8 v6, v6, -0x1

    goto :goto_30

    :catchall_42
    move-exception v0

    move-object p0, v0

    goto/16 :goto_352

    :cond_46
    if-eqz p3, :cond_49

    goto :goto_67

    .line 1122
    :cond_49
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v6, v3}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(I)V

    .line 1123
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v6}, Lcom/android/server/utils/WatchedSparseSetArray;->size()I

    move-result v6

    sub-int/2addr v6, v1

    :goto_55
    if-ltz v6, :cond_67

    .line 1124
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 1125
    invoke-virtual {v7, v6}, Lcom/android/server/utils/WatchedSparseSetArray;->keyAt(I)I

    move-result v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 1124
    invoke-virtual {v7, v9, v10}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(ILjava/lang/Object;)Z

    add-int/lit8 v6, v6, -0x1

    goto :goto_55

    :cond_67
    :goto_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 1128
    :cond_6a
    monitor-exit p4
    :try_end_6b
    .catchall {:try_start_18 .. :try_end_6b} :catchall_42

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 1131
    :cond_6e
    iget-object p3, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-nez p3, :cond_af

    .line 1132
    iget-object p3, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueriesViaComponentLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p3

    .line 1133
    :try_start_7c
    iget-object p4, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(I)V

    .line 1134
    iget-object p4, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {p4}, Lcom/android/server/utils/WatchedSparseSetArray;->size()I

    move-result p4

    sub-int/2addr p4, v1

    :goto_8c
    if-ltz p4, :cond_a5

    .line 1135
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v0, p4}, Lcom/android/server/utils/WatchedSparseSetArray;->keyAt(I)I

    move-result v2

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(ILjava/lang/Object;)Z

    add-int/lit8 p4, p4, -0x1

    goto :goto_8c

    :catchall_a2
    move-exception v0

    move-object p0, v0

    goto :goto_aa

    .line 1137
    :cond_a5
    monitor-exit p3
    :try_end_a6
    .catchall {:try_start_7c .. :try_end_a6} :catchall_a2

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_af

    :goto_aa
    :try_start_aa
    monitor-exit p3
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a2

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 1140
    :cond_af
    :goto_af
    iget-object p3, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueriesViaPackageLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p3

    .line 1141
    :try_start_b5
    iget-object p4, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(I)V

    .line 1142
    iget-object p4, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {p4}, Lcom/android/server/utils/WatchedSparseSetArray;->size()I

    move-result p4

    sub-int/2addr p4, v1

    :goto_c5
    if-ltz p4, :cond_df

    .line 1143
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v0, p4}, Lcom/android/server/utils/WatchedSparseSetArray;->keyAt(I)I

    move-result v2

    .line 1144
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1143
    invoke-virtual {v0, v2, v3}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(ILjava/lang/Object;)Z

    add-int/lit8 p4, p4, -0x1

    goto :goto_c5

    :catchall_db
    move-exception v0

    move-object p0, v0

    goto/16 :goto_34d

    .line 1146
    :cond_df
    monitor-exit p3
    :try_end_e0
    .catchall {:try_start_b5 .. :try_end_e0} :catchall_db

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 1148
    iget-object p4, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueryableViaUsesLibraryLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p4

    .line 1149
    :try_start_e9
    iget-object p3, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(I)V

    .line 1150
    iget-object p3, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {p3}, Lcom/android/server/utils/WatchedSparseSetArray;->size()I

    move-result p3

    sub-int/2addr p3, v1

    :goto_f9
    if-ltz p3, :cond_113

    .line 1151
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v0, p3}, Lcom/android/server/utils/WatchedSparseSetArray;->keyAt(I)I

    move-result v2

    .line 1152
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1151
    invoke-virtual {v0, v2, v3}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(ILjava/lang/Object;)Z

    add-int/lit8 p3, p3, -0x1

    goto :goto_f9

    :catchall_10f
    move-exception v0

    move-object p0, v0

    goto/16 :goto_348

    .line 1154
    :cond_113
    monitor-exit p4
    :try_end_114
    .catchall {:try_start_e9 .. :try_end_114} :catchall_10f

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 1156
    iget-object p3, p0, Lcom/android/server/pm/AppsFilterLocked;->mQueryableViaUsesPermissionLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p3

    .line 1157
    :try_start_11d
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p4

    if-eqz p4, :cond_180

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p4

    invoke-interface {p4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPermissions()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_180

    .line 1158
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p4

    invoke-interface {p4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPermissions()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_13d
    :goto_13d
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_180

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 1159
    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1160
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mPermissionToUids:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13d

    .line 1161
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mPermissionToUids:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1162
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mPermissionToUids:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13d

    .line 1163
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mPermissionToUids:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13d

    :catchall_17c
    move-exception v0

    move-object p0, v0

    goto/16 :goto_343

    .line 1168
    :cond_180
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p4

    if-eqz p4, :cond_1e3

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p4

    invoke-interface {p4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getRequestedPermissions()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_1e3

    .line 1170
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p4

    invoke-interface {p4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesPermissionMapping()Ljava/util/Map;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_1a4
    :goto_1a4
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;

    .line 1171
    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1172
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mUsesPermissionToUids:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a4

    .line 1173
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mUsesPermissionToUids:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1174
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mUsesPermissionToUids:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1a4

    .line 1175
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mUsesPermissionToUids:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a4

    .line 1180
    :cond_1e3
    iget-object p4, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesPermission:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(I)V

    .line 1181
    monitor-exit p3
    :try_end_1ed
    .catchall {:try_start_11d .. :try_end_1ed} :catchall_17c

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 1183
    iget-object p4, p0, Lcom/android/server/pm/AppsFilterLocked;->mForceQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p4

    .line 1184
    :try_start_1f6
    iget-object p3, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    .line 1185
    monitor-exit p4
    :try_end_204
    .catchall {:try_start_1f6 .. :try_end_204} :catchall_33c

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 1188
    iget-object p3, p0, Lcom/android/server/pm/AppsFilterLocked;->mProtectedBroadcastsLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p3

    .line 1189
    :try_start_20d
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p4

    if-eqz p4, :cond_253

    .line 1190
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p4

    invoke-interface {p4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getProtectedBroadcasts()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_253

    .line 1191
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p4

    invoke-interface {p4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    move-result-object p4

    .line 1192
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    .line 1193
    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArraySet;->untrackedStorage()Landroid/util/ArraySet;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1194
    invoke-virtual {p0, v4, p4}, Lcom/android/server/pm/AppsFilterImpl;->collectProtectedBroadcasts(Landroid/util/ArrayMap;Ljava/lang/String;)V

    move p4, v8

    .line 1195
    :goto_238
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p4, v2, :cond_253

    .line 1196
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24c

    move p4, v1

    goto :goto_254

    :cond_24c
    add-int/lit8 p4, p4, 0x1

    goto :goto_238

    :catchall_24f
    move-exception v0

    move-object p0, v0

    goto/16 :goto_337

    :cond_253
    move p4, v8

    .line 1202
    :goto_254
    monitor-exit p3
    :try_end_255
    .catchall {:try_start_20d .. :try_end_255} :catchall_24f

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    if-eqz p4, :cond_25f

    .line 1205
    iget-object p3, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1208
    :cond_25f
    iget-object p3, p0, Lcom/android/server/pm/AppsFilterBase;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/android/server/om/OverlayReferenceMapper;->removePkg(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p3

    .line 1209
    iget-object p4, p0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {p4, p2, v1}, Lcom/android/server/pm/FeatureConfig;->updatePackageState(Lcom/android/server/pm/pkg/PackageStateInternal;Z)V

    .line 1215
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->hasSharedUser()Z

    move-result p4

    if-eqz p4, :cond_27d

    .line 1216
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getSharedUserAppId()I

    move-result p4

    invoke-interface {p1, p4}, Lcom/android/server/pm/Computer;->getSharedUser(I)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object p4

    goto :goto_27e

    :cond_27d
    const/4 p4, 0x0

    :goto_27e
    if-eqz p4, :cond_29e

    .line 1219
    invoke-interface {p4}, Lcom/android/server/pm/pkg/SharedUserApi;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v0

    .line 1220
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_289
    if-ltz v2, :cond_29e

    .line 1221
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p2, :cond_292

    goto :goto_29b

    .line 1225
    :cond_292
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 1224
    invoke-virtual {p0, v3, v4}, Lcom/android/server/pm/AppsFilterImpl;->addPackageInternal(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;)Landroid/util/ArraySet;

    :goto_29b
    add-int/lit8 v2, v2, -0x1

    goto :goto_289

    .line 1229
    :cond_29e
    iget-boolean v0, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    if-eqz v0, :cond_319

    .line 1230
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/AppsFilterImpl;->removeAppIdFromVisibilityCache(I)V

    if-eqz p4, :cond_2e2

    .line 1234
    invoke-interface {p4}, Lcom/android/server/pm/pkg/SharedUserApi;->getPackageStates()Landroid/util/ArraySet;

    move-result-object p4

    .line 1235
    invoke-virtual {p4}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_2b4
    if-ltz v0, :cond_2e2

    .line 1237
    invoke-virtual {p4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-ne v3, p2, :cond_2c2

    add-int/lit8 v0, v0, -0x1

    goto :goto_2b4

    .line 1241
    :cond_2c2
    iget-object p4, p0, Lcom/android/server/pm/AppsFilterLocked;->mCacheLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p4

    .line 1243
    :try_start_2c8
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1244
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v7

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    .line 1242
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;II)V

    .line 1245
    monitor-exit p4
    :try_end_2d7
    .catchall {:try_start_2c8 .. :try_end_2d7} :catchall_2db

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    goto :goto_2e4

    :catchall_2db
    move-exception v0

    move-object p0, v0

    :try_start_2dd
    monitor-exit p4
    :try_end_2de
    .catchall {:try_start_2dd .. :try_end_2de} :catchall_2db

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :cond_2e2
    move-object v0, p0

    move-object v1, p1

    :goto_2e4
    if-eqz p3, :cond_333

    .line 1251
    :goto_2e6
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p0

    if-ge v8, p0, :cond_333

    .line 1252
    invoke-virtual {p3, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1253
    invoke-virtual {v4, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-nez v3, :cond_2fc

    goto :goto_30f

    .line 1260
    :cond_2fc
    iget-object p0, v0, Lcom/android/server/pm/AppsFilterLocked;->mCacheLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter p0

    .line 1262
    :try_start_302
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v7

    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 1261
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;II)V

    .line 1263
    monitor-exit p0
    :try_end_30c
    .catchall {:try_start_302 .. :try_end_30c} :catchall_312

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    :goto_30f
    add-int/lit8 v8, v8, 0x1

    goto :goto_2e6

    :catchall_312
    move-exception v0

    move-object p1, v0

    :try_start_314
    monitor-exit p0
    :try_end_315
    .catchall {:try_start_314 .. :try_end_315} :catchall_312

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p1

    :cond_319
    move-object v0, p0

    .line 1267
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "removePackage: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/AppsFilterImpl;->invalidateCache(Ljava/lang/String;)V

    .line 1269
    :cond_333
    invoke-direct {v0}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    return-void

    .line 1202
    :goto_337
    :try_start_337
    monitor-exit p3
    :try_end_338
    .catchall {:try_start_337 .. :try_end_338} :catchall_24f

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    :catchall_33c
    move-exception v0

    move-object p0, v0

    .line 1185
    :try_start_33e
    monitor-exit p4
    :try_end_33f
    .catchall {:try_start_33e .. :try_end_33f} :catchall_33c

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 1181
    :goto_343
    :try_start_343
    monitor-exit p3
    :try_end_344
    .catchall {:try_start_343 .. :try_end_344} :catchall_17c

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 1154
    :goto_348
    :try_start_348
    monitor-exit p4
    :try_end_349
    .catchall {:try_start_348 .. :try_end_349} :catchall_10f

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 1146
    :goto_34d
    :try_start_34d
    monitor-exit p3
    :try_end_34e
    .catchall {:try_start_34d .. :try_end_34e} :catchall_db

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0

    .line 1128
    :goto_352
    :try_start_352
    monitor-exit p4
    :try_end_353
    .catchall {:try_start_352 .. :try_end_353} :catchall_42

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final removeShouldFilterCacheForUser(I)V
    .registers 7

    .line 977
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mCacheLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    .line 979
    :try_start_6
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->keys()[I

    move-result-object v1

    .line 980
    array-length v2, v1

    const/4 v3, 0x0

    .line 981
    invoke-static {p1, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v4

    if-ltz v4, :cond_19

    goto :goto_1a

    :cond_19
    not-int v4, v4

    :goto_1a
    if-ge v4, v2, :cond_80

    .line 983
    aget v2, v1, v4

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-eq v2, p1, :cond_25

    goto :goto_80

    :cond_25
    add-int/lit8 v2, p1, 0x1

    .line 988
    invoke-static {v2, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-ltz v2, :cond_36

    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_36
    not-int v2, v2

    :goto_37
    if-ge v4, v2, :cond_55

    add-int/lit8 v3, v2, -0x1

    .line 990
    aget v1, v1, v3

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eq v1, p1, :cond_44

    goto :goto_55

    .line 995
    :cond_44
    iget-object p1, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {p1, v4, v2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->removeRange(II)V

    .line 996
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->compact()V

    .line 997
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_6 .. :try_end_4f} :catchall_53

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :catchall_53
    move-exception p0

    goto :goto_a3

    .line 991
    :cond_55
    :goto_55
    :try_start_55
    const-string p0, "AppsFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove should filter cache for user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", fromIndex="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", toIndex="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_55 .. :try_end_7c} :catchall_53

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 984
    :cond_80
    :goto_80
    :try_start_80
    const-string p0, "AppsFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to remove should filter cache for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", fromIndex="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_80 .. :try_end_9f} :catchall_53

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    .line 997
    :goto_a3
    :try_start_a3
    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_53

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public snapshot()Lcom/android/server/pm/AppsFilterSnapshot;
    .registers 1

    .line 259
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/AppsFilterSnapshot;

    return-object p0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .registers 1

    .line 96
    invoke-virtual {p0}, Lcom/android/server/pm/AppsFilterImpl;->snapshot()Lcom/android/server/pm/AppsFilterSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .registers 2

    .line 148
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method

.method public final updateEntireShouldFilterCache(Lcom/android/server/pm/Computer;I)V
    .registers 8

    .line 782
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v0

    .line 783
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v1

    const/4 v2, 0x0

    .line 785
    :goto_9
    array-length v3, v1

    const/16 v4, -0x2710

    if-ge v2, v3, :cond_18

    .line 786
    aget-object v3, v1, v2

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    if-ne p2, v3, :cond_15

    goto :goto_19

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_18
    move p2, v4

    :goto_19
    if-ne p2, v4, :cond_23

    .line 792
    const-string p2, "AppsFilter"

    const-string v2, "We encountered a new user that isn\'t a member of known users, updating the whole cache"

    invoke-static {p2, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    .line 796
    :cond_23
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/pm/AppsFilterImpl;->updateEntireShouldFilterCacheInner(Lcom/android/server/pm/Computer;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V

    .line 798
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    return-void
.end method

.method public final updateEntireShouldFilterCacheAsync(Landroid/content/pm/PackageManagerInternal;I)V
    .registers 5

    const-wide/16 v0, 0x2710

    .line 819
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/pm/AppsFilterImpl;->updateEntireShouldFilterCacheAsync(Landroid/content/pm/PackageManagerInternal;JI)V

    return-void
.end method

.method public final updateEntireShouldFilterCacheAsync(Landroid/content/pm/PackageManagerInternal;JI)V
    .registers 12

    .line 824
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/AppsFilterImpl$$ExternalSyntheticLambda1;

    move-object v2, p0

    move-object v3, p1

    move-wide v5, p2

    move v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/AppsFilterImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/AppsFilterImpl;Landroid/content/pm/PackageManagerInternal;IJ)V

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final updateEntireShouldFilterCacheInner(Lcom/android/server/pm/Computer;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V
    .registers 15

    .line 805
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterLocked;->mCacheLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    const/4 v0, -0x1

    if-ne p4, v0, :cond_12

    .line 807
    :try_start_9
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->clear()V

    goto :goto_12

    :catchall_f
    move-exception v0

    move-object p0, v0

    goto :goto_43

    .line 809
    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    array-length v2, p3

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->setCapacity(I)V

    .line 810
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v9, v0

    :goto_24
    if-ltz v9, :cond_3e

    .line 812
    invoke-virtual {p2, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/pm/pkg/PackageStateInternal;

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    .line 811
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;II)V

    add-int/lit8 v9, v9, -0x1

    move-object p0, v2

    move-object p1, v3

    move-object p2, v6

    move-object p3, v7

    move p4, v8

    goto :goto_24

    .line 815
    :cond_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_9 .. :try_end_3f} :catchall_f

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :goto_43
    :try_start_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_f

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final updateShouldFilterCacheForImplicitAccess()V
    .registers 2

    .line 899
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForImplicitAccess(Lcom/android/server/utils/WatchedSparseSetArray;)V

    .line 900
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForImplicitAccess(Lcom/android/server/utils/WatchedSparseSetArray;)V

    return-void
.end method

.method public final updateShouldFilterCacheForImplicitAccess(Lcom/android/server/utils/WatchedSparseSetArray;)V
    .registers 9

    .line 905
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterLocked;->mCacheLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 906
    :goto_8
    :try_start_8
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedSparseSetArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_35

    .line 907
    invoke-virtual {p1, v2}, Lcom/android/server/utils/WatchedSparseSetArray;->keyAt(I)I

    move-result v3

    .line 908
    invoke-virtual {p1, v3}, Lcom/android/server/utils/WatchedSparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v4

    .line 909
    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 910
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v3, v5, v1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->put(IIZ)V

    goto :goto_1a

    :catchall_30
    move-exception p0

    goto :goto_3a

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 913
    :cond_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_30

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    return-void

    :goto_3a
    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_30

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final updateShouldFilterCacheForPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;)V
    .registers 13

    .line 918
    iget-boolean v0, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    if-nez v0, :cond_5

    return-void

    .line 922
    :cond_5
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v5

    .line 923
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 924
    iget-object v9, p0, Lcom/android/server/pm/AppsFilterLocked;->mCacheLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v9

    .line 926
    :try_start_13
    invoke-virtual {v5, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 927
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/4 v3, 0x0

    const/4 v7, -0x1

    move-object v1, p0

    move-object v2, p1

    .line 925
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;II)V

    .line 928
    monitor-exit v9
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_2d

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 929
    invoke-direct {v1}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    return-void

    :catchall_2d
    move-exception v0

    move-object p0, v0

    .line 928
    :try_start_2f
    monitor-exit v9
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2d

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw p0
.end method

.method public final updateShouldFilterCacheForPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;II)V
    .registers 15

    .line 937
    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p7, v0}, Ljava/lang/Math;->min(II)I

    move-result p7

    :goto_a
    if-ltz p7, :cond_55

    .line 938
    invoke-virtual {p4, p7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 939
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    if-ne v0, v1, :cond_23

    :cond_1d
    :goto_1d
    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p5

    move v6, p6

    goto :goto_4d

    .line 943
    :cond_23
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eq v0, p2, :cond_1d

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-ne v0, p2, :cond_30

    goto :goto_1d

    :cond_30
    const/4 v0, -0x1

    if-ne p6, v0, :cond_45

    const/4 v0, 0x0

    .line 948
    :goto_34
    array-length v1, p5

    if-ge v0, v1, :cond_1d

    .line 949
    aget-object v1, p5, v0

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForUser(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/PackageStateInternal;[Landroid/content/pm/UserInfo;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    :cond_45
    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p5

    move v6, p6

    .line 953
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForUser(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/PackageStateInternal;[Landroid/content/pm/UserInfo;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    :goto_4d
    add-int/lit8 p7, p7, -0x1

    move-object p0, v1

    move-object p1, v2

    move-object p3, v3

    move-object p5, v4

    move p6, v6

    goto :goto_a

    :cond_55
    return-void
.end method

.method public final updateShouldFilterCacheForUser(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/PackageStateInternal;[Landroid/content/pm/UserInfo;Lcom/android/server/pm/pkg/PackageStateInternal;I)V
    .registers 16

    const/4 v0, 0x0

    move v6, v0

    .line 963
    :goto_2
    array-length v0, p3

    if-ge v6, v0, :cond_39

    .line 964
    aget-object v0, p3, v6

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    .line 965
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    move v7, p5

    invoke-static {p5, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 966
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    invoke-static {v5, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v8

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p4

    .line 967
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterBase;->shouldFilterApplicationInternal(Lcom/android/server/pm/Computer;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result v9

    move-object v5, v4

    move-object v4, v3

    move-object v3, v5

    move v5, v7

    move v7, v2

    move v2, v8

    .line 969
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterBase;->shouldFilterApplicationInternal(Lcom/android/server/pm/Computer;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result v8

    .line 971
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v1, v7, v2, v9}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->put(IIZ)V

    .line 972
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v1, v2, v7, v8}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->put(IIZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_39
    return-void
.end method
