.class public final Lcom/android/server/pm/AppsFilterImpl;
.super Lcom/android/server/pm/AppsFilterLocked;
.source "AppsFilterImpl.java"

# interfaces
.implements Lcom/android/server/utils/Watchable;
.implements Lcom/android/server/utils/Snappable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;
    }
.end annotation


# instance fields
.field private final mSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/AppsFilterSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private final mWatchable:Lcom/android/server/utils/WatchableImpl;


# direct methods
.method static bridge synthetic -$$Nest$monChanged(Lcom/android/server/pm/AppsFilterImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateShouldFilterCacheForPackage(Lcom/android/server/pm/AppsFilterImpl;Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForPackage(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/FeatureConfig;[Ljava/lang/String;ZLcom/android/server/om/OverlayReferenceMapper$Provider;Landroid/os/Handler;)V
    .registers 10
    .param p1, "featureConfig"    # Lcom/android/server/pm/FeatureConfig;
    .param p2, "forceQueryableList"    # [Ljava/lang/String;
    .param p3, "systemAppsQueryable"    # Z
    .param p4, "overlayProvider"    # Lcom/android/server/om/OverlayReferenceMapper$Provider;
    .param p5, "backgroundHandler"    # Landroid/os/Handler;

    .line 156
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilterLocked;-><init>()V

    .line 91
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 157
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterImpl;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    .line 158
    iput-object p2, p0, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryableByDevicePackageNames:[Ljava/lang/String;

    .line 159
    iput-boolean p3, p0, Lcom/android/server/pm/AppsFilterImpl;->mSystemAppsQueryable:Z

    .line 160
    new-instance v0, Lcom/android/server/om/OverlayReferenceMapper;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p4}, Lcom/android/server/om/OverlayReferenceMapper;-><init>(ZLcom/android/server/om/OverlayReferenceMapper$Provider;)V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    .line 162
    iput-object p5, p0, Lcom/android/server/pm/AppsFilterImpl;->mBackgroundHandler:Landroid/os/Handler;

    .line 163
    new-instance v0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 164
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    const-string v3, "AppsFilter.mShouldFilterCache"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mShouldFilterCacheSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 166
    new-instance v0, Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 167
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string v3, "AppsFilter.mImplicitlyQueryable"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mImplicitQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 169
    new-instance v0, Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 170
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string v3, "AppsFilter.mRetainedImplicitlyQueryable"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mRetainedImplicitlyQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 173
    new-instance v0, Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 174
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string v3, "AppsFilter.mQueriesViaPackage"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackageSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 176
    new-instance v0, Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 177
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string v3, "AppsFilter.mQueriesViaComponent"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponentSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 179
    new-instance v0, Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 180
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string v3, "AppsFilter.mQueryableViaUsesLibrary"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesLibrarySnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 183
    new-instance v0, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    .line 184
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    const-string v3, "AppsFilter.mForceQueryable"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 186
    new-instance v0, Lcom/android/server/utils/WatchedArrayList;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArrayList;

    .line 187
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArrayList;

    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArrayList;

    const-string v3, "AppsFilter.mProtectedBroadcasts"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcastsSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 190
    new-instance v0, Lcom/android/server/pm/AppsFilterImpl$1;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/server/pm/AppsFilterImpl$1;-><init>(Lcom/android/server/pm/AppsFilterImpl;Lcom/android/server/pm/AppsFilterSnapshot;Lcom/android/server/utils/Watchable;)V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 196
    return-void
.end method

.method private addPackageInternal(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;)Landroid/util/ArraySet;
    .registers 15
    .param p1, "newPkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 492
    .local p2, "existingSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    const-string v0, "android"

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 494
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mSystemSigningDetails:Landroid/content/pm/SigningDetails;

    .line 497
    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 498
    .local v1, "setting":Lcom/android/server/pm/pkg/PackageStateInternal;
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mSystemSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-static {v2, v1}, Lcom/android/server/pm/AppsFilterImpl;->isSystemSigned(Landroid/content/pm/SigningDetails;Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 499
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryableLock:Ljava/lang/Object;

    monitor-enter v2

    .line 500
    :try_start_31
    iget-object v3, p0, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 501
    monitor-exit v2

    goto :goto_43

    :catchall_40
    move-exception v0

    monitor-exit v2
    :try_end_42
    .catchall {:try_start_31 .. :try_end_42} :catchall_40

    throw v0

    .line 503
    .end local v1    # "setting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_43
    :goto_43
    goto :goto_1a

    .line 506
    :cond_44
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 507
    .local v0, "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v0, :cond_4c

    .line 508
    const/4 v1, 0x0

    return-object v1

    .line 512
    :cond_4c
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcastsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 513
    :try_start_4f
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArrayList;

    .line 514
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProtectedBroadcasts()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/utils/WatchedArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 515
    .local v2, "protectedBroadcastsChanged":Z
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_4f .. :try_end_5a} :catchall_25b

    .line 516
    const/4 v1, 0x1

    if-eqz v2, :cond_62

    .line 517
    iget-object v3, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 521
    :cond_62
    iget-object v3, p0, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryableLock:Ljava/lang/Object;

    monitor-enter v3

    .line 522
    :try_start_65
    iget-object v4, p0, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_9b

    .line 524
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->isForceQueryableOverride()Z

    move-result v4

    if-nez v4, :cond_9b

    .line 525
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v4

    if-eqz v4, :cond_99

    iget-boolean v4, p0, Lcom/android/server/pm/AppsFilterImpl;->mSystemAppsQueryable:Z

    if-nez v4, :cond_9b

    .line 526
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isForceQueryable()Z

    move-result v4

    if-nez v4, :cond_9b

    iget-object v4, p0, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryableByDevicePackageNames:[Ljava/lang/String;

    .line 528
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 527
    invoke-static {v4, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_99

    goto :goto_9b

    :cond_99
    move v4, v5

    goto :goto_9c

    :cond_9b
    :goto_9b
    move v4, v1

    .line 529
    .local v4, "newIsForceQueryable":Z
    :goto_9c
    if-nez v4, :cond_aa

    iget-object v6, p0, Lcom/android/server/pm/AppsFilterImpl;->mSystemSigningDetails:Landroid/content/pm/SigningDetails;

    if-eqz v6, :cond_b7

    iget-object v6, p0, Lcom/android/server/pm/AppsFilterImpl;->mSystemSigningDetails:Landroid/content/pm/SigningDetails;

    .line 531
    invoke-static {v6, p1}, Lcom/android/server/pm/AppsFilterImpl;->isSystemSigned(Landroid/content/pm/SigningDetails;Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result v6

    if-eqz v6, :cond_b7

    .line 532
    :cond_aa
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 534
    :cond_b7
    monitor-exit v3
    :try_end_b8
    .catchall {:try_start_65 .. :try_end_b8} :catchall_258

    .line 536
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "i":I
    :goto_bd
    if-ltz v3, :cond_222

    .line 537
    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 538
    .local v1, "existingSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v6

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v7

    if-eq v6, v7, :cond_21e

    .line 539
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    if-nez v6, :cond_d7

    .line 541
    goto/16 :goto_21e

    .line 543
    :cond_d7
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    .line 545
    .local v6, "existingPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v4, :cond_149

    .line 546
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-nez v7, :cond_106

    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArrayList;

    .line 547
    invoke-static {v6, v0, v7}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/utils/WatchedArrayList;)Z

    move-result v7

    if-eqz v7, :cond_106

    .line 548
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponentLock:Ljava/lang/Object;

    monitor-enter v7

    .line 549
    :try_start_f0
    iget-object v8, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v9

    .line 550
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 549
    invoke-virtual {v8, v9, v10}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 551
    monitor-exit v7

    goto :goto_106

    :catchall_103
    move-exception v5

    monitor-exit v7
    :try_end_105
    .catchall {:try_start_f0 .. :try_end_105} :catchall_103

    throw v5

    .line 553
    :cond_106
    :goto_106
    invoke-static {v6, v0}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v7

    if-nez v7, :cond_112

    .line 554
    invoke-static {v1, v0}, Lcom/android/server/pm/AppsFilterUtils;->canQueryAsInstaller(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v7

    if-eqz v7, :cond_127

    .line 555
    :cond_112
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackageLock:Ljava/lang/Object;

    monitor-enter v7

    .line 556
    :try_start_115
    iget-object v8, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v9

    .line 557
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 556
    invoke-virtual {v8, v9, v10}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 558
    monitor-exit v7
    :try_end_127
    .catchall {:try_start_115 .. :try_end_127} :catchall_146

    .line 560
    :cond_127
    invoke-static {v6, v0}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaUsesLibrary(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v7

    if-eqz v7, :cond_149

    .line 561
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesLibraryLock:Ljava/lang/Object;

    monitor-enter v7

    .line 562
    :try_start_130
    iget-object v8, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v9

    .line 563
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 562
    invoke-virtual {v8, v9, v10}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 564
    monitor-exit v7

    goto :goto_149

    :catchall_143
    move-exception v5

    monitor-exit v7
    :try_end_145
    .catchall {:try_start_130 .. :try_end_145} :catchall_143

    throw v5

    .line 558
    :catchall_146
    move-exception v5

    :try_start_147
    monitor-exit v7
    :try_end_148
    .catchall {:try_start_147 .. :try_end_148} :catchall_146

    throw v5

    .line 568
    :cond_149
    :goto_149
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryableLock:Ljava/lang/Object;

    monitor-enter v7

    .line 569
    :try_start_14c
    iget-object v8, p0, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 570
    .local v8, "existingIsForceQueryable":Z
    monitor-exit v7
    :try_end_15b
    .catchall {:try_start_14c .. :try_end_15b} :catchall_21b

    .line 572
    if-nez v8, :cond_1c9

    .line 573
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-nez v7, :cond_186

    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArrayList;

    .line 574
    invoke-static {v0, v6, v7}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/utils/WatchedArrayList;)Z

    move-result v7

    if-eqz v7, :cond_186

    .line 575
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponentLock:Ljava/lang/Object;

    monitor-enter v7

    .line 576
    :try_start_170
    iget-object v9, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v10

    .line 577
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 576
    invoke-virtual {v9, v10, v11}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 578
    monitor-exit v7

    goto :goto_186

    :catchall_183
    move-exception v5

    monitor-exit v7
    :try_end_185
    .catchall {:try_start_170 .. :try_end_185} :catchall_183

    throw v5

    .line 580
    :cond_186
    :goto_186
    invoke-static {v0, v6}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v7

    if-nez v7, :cond_192

    .line 581
    invoke-static {p1, v6}, Lcom/android/server/pm/AppsFilterUtils;->canQueryAsInstaller(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v7

    if-eqz v7, :cond_1a7

    .line 582
    :cond_192
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackageLock:Ljava/lang/Object;

    monitor-enter v7

    .line 583
    :try_start_195
    iget-object v9, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v10

    .line 584
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 583
    invoke-virtual {v9, v10, v11}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 585
    monitor-exit v7
    :try_end_1a7
    .catchall {:try_start_195 .. :try_end_1a7} :catchall_1c6

    .line 587
    :cond_1a7
    invoke-static {v0, v6}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaUsesLibrary(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v7

    if-eqz v7, :cond_1c9

    .line 588
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesLibraryLock:Ljava/lang/Object;

    monitor-enter v7

    .line 589
    :try_start_1b0
    iget-object v9, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v10

    .line 590
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 589
    invoke-virtual {v9, v10, v11}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 591
    monitor-exit v7

    goto :goto_1c9

    :catchall_1c3
    move-exception v5

    monitor-exit v7
    :try_end_1c5
    .catchall {:try_start_1b0 .. :try_end_1c5} :catchall_1c3

    throw v5

    .line 585
    :catchall_1c6
    move-exception v5

    :try_start_1c7
    monitor-exit v7
    :try_end_1c8
    .catchall {:try_start_1c7 .. :try_end_1c8} :catchall_1c6

    throw v5

    .line 595
    :cond_1c9
    :goto_1c9
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v7

    if-eqz v7, :cond_21e

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v7

    if-eqz v7, :cond_21e

    .line 596
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v7

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/server/pm/AppsFilterImpl;->pkgInstruments(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v7

    if-nez v7, :cond_1f1

    .line 597
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v7

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/server/pm/AppsFilterImpl;->pkgInstruments(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v7

    if-eqz v7, :cond_21e

    .line 598
    :cond_1f1
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackageLock:Ljava/lang/Object;

    monitor-enter v7

    .line 599
    :try_start_1f4
    iget-object v9, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v10

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 600
    iget-object v9, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v10

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 601
    monitor-exit v7

    goto :goto_21e

    :catchall_218
    move-exception v5

    monitor-exit v7
    :try_end_21a
    .catchall {:try_start_1f4 .. :try_end_21a} :catchall_218

    throw v5

    .line 570
    .end local v8    # "existingIsForceQueryable":Z
    :catchall_21b
    move-exception v5

    :try_start_21c
    monitor-exit v7
    :try_end_21d
    .catchall {:try_start_21c .. :try_end_21d} :catchall_21b

    throw v5

    .line 536
    .end local v1    # "existingSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v6    # "existingPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_21e
    :goto_21e
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_bd

    .line 605
    .end local v3    # "i":I
    :cond_222
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 606
    .local v1, "existingSize":I
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 607
    .local v3, "existingPkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_22c
    if-ge v6, v1, :cond_248

    .line 608
    invoke-virtual {p2, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 609
    .local v7, "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v8

    if-eqz v8, :cond_245

    .line 610
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    .end local v7    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_245
    add-int/lit8 v6, v6, 0x1

    goto :goto_22c

    .line 614
    .end local v6    # "index":I
    :cond_248
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterImpl;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    .line 615
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lcom/android/server/om/OverlayReferenceMapper;->addPkg(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Map;)Landroid/util/ArraySet;

    move-result-object v6

    .line 617
    .local v6, "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {v7, p1, v5}, Lcom/android/server/pm/FeatureConfig;->updatePackageState(Lcom/android/server/pm/pkg/PackageStateInternal;Z)V

    .line 619
    return-object v6

    .line 534
    .end local v1    # "existingSize":I
    .end local v3    # "existingPkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .end local v4    # "newIsForceQueryable":Z
    .end local v6    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_258
    move-exception v1

    :try_start_259
    monitor-exit v3
    :try_end_25a
    .catchall {:try_start_259 .. :try_end_25a} :catchall_258

    throw v1

    .line 515
    .end local v2    # "protectedBroadcastsChanged":Z
    :catchall_25b
    move-exception v2

    :try_start_25c
    monitor-exit v1
    :try_end_25d
    .catchall {:try_start_25c .. :try_end_25d} :catchall_25b

    throw v2
.end method

.method private collectProtectedBroadcasts(Landroid/util/ArrayMap;Ljava/lang/String;)V
    .registers 8
    .param p2, "excludePackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 825
    .local p1, "existingSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcastsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 826
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayList;->clear()V

    .line 827
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_41

    .line 828
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 829
    .local v2, "setting":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 831
    goto :goto_3e

    .line 833
    :cond_2b
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProtectedBroadcasts()Ljava/util/List;

    move-result-object v3

    .line 834
    .local v3, "protectedBroadcasts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3e

    .line 835
    iget-object v4, p0, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v4, v3}, Lcom/android/server/utils/WatchedArrayList;->addAll(Ljava/util/Collection;)Z

    .line 827
    .end local v2    # "setting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v3    # "protectedBroadcasts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3e
    :goto_3e
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 838
    .end local v1    # "i":I
    :cond_41
    monitor-exit v0

    .line 839
    return-void

    .line 838
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public static create(Lcom/android/server/pm/PackageManagerServiceInjector;Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/pm/AppsFilterImpl;
    .registers 12
    .param p0, "injector"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pmInt"    # Landroid/content/pm/PackageManagerInternal;

    .line 362
    nop

    .line 363
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 364
    const v1, 0x1110156

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 365
    .local v0, "forceSystemAppsQueryable":Z
    new-instance v1, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;-><init>(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl-IA;)V

    .line 367
    .local v1, "featureConfig":Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;
    if-eqz v0, :cond_1d

    .line 369
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    move-object v8, v2

    .local v2, "forcedQueryablePackageNames":[Ljava/lang/String;
    goto :goto_3d

    .line 371
    .end local v2    # "forcedQueryablePackageNames":[Ljava/lang/String;
    :cond_1d
    nop

    .line 372
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070071

    .line 373
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 374
    .restart local v2    # "forcedQueryablePackageNames":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2e
    array-length v4, v2

    if-ge v3, v4, :cond_3c

    .line 375
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 374
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_3c
    move-object v8, v2

    .line 378
    .end local v2    # "forcedQueryablePackageNames":[Ljava/lang/String;
    .end local v3    # "i":I
    .local v8, "forcedQueryablePackageNames":[Ljava/lang/String;
    :goto_3d
    new-instance v9, Lcom/android/server/pm/AppsFilterImpl;

    const/4 v6, 0x0

    .line 380
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v7

    move-object v2, v9

    move-object v3, v1

    move-object v4, v8

    move v5, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/AppsFilterImpl;-><init>(Lcom/android/server/pm/FeatureConfig;[Ljava/lang/String;ZLcom/android/server/om/OverlayReferenceMapper$Provider;Landroid/os/Handler;)V

    .line 381
    .local v2, "appsFilter":Lcom/android/server/pm/AppsFilterImpl;
    invoke-virtual {v1, v2}, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->setAppsFilter(Lcom/android/server/pm/AppsFilterImpl;)V

    .line 382
    return-object v2
.end method

.method private invalidateCache(Ljava/lang/String;)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mCacheValid:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalidating cache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppsFilter"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_22
    return-void
.end method

.method private static isSystemSigned(Landroid/content/pm/SigningDetails;Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 3
    .param p0, "sysSigningDetails"    # Landroid/content/pm/SigningDetails;
    .param p1, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 818
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 819
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/SigningDetails;->signaturesMatchExactly(Landroid/content/pm/SigningDetails;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 818
    :goto_13
    return v0
.end method

.method private onChanged()V
    .registers 1

    .line 142
    invoke-virtual {p0, p0}, Lcom/android/server/pm/AppsFilterImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 143
    return-void
.end method

.method private static pkgInstruments(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 7
    .param p0, "source"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "target"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1052
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1053
    .local v0, "packageName":Ljava/lang/String;
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v1

    .line 1054
    .local v1, "inst":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedInstrumentation;>;"
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_e
    if-ltz v2, :cond_24

    .line 1055
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_26

    if-eqz v4, :cond_21

    .line 1056
    return v3

    .line 1054
    :cond_21
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 1059
    .end local v2    # "i":I
    :cond_24
    const/4 v2, 0x0

    return v2

    .line 1061
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "inst":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedInstrumentation;>;"
    :catchall_26
    move-exception v0

    .line 1064
    throw v0
.end method

.method private recomputeComponentVisibility(Landroid/util/ArrayMap;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;)V"
        }
    .end annotation

    .line 859
    .local p1, "existingSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponentLock:Ljava/lang/Object;

    monitor-enter v0

    .line 860
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedSparseSetArray;->clear()V

    .line 861
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_90

    .line 862
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_f
    if-ltz v0, :cond_86

    .line 863
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 864
    .local v1, "setting":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    if-eqz v2, :cond_83

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/AppsFilterUtils;->requestsQueryAllPackages(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 865
    goto :goto_83

    .line 867
    :cond_28
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_2e
    if-ltz v2, :cond_83

    .line 868
    if-ne v0, v2, :cond_33

    .line 869
    goto :goto_80

    .line 871
    :cond_33
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 872
    .local v3, "otherSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v4

    if-eqz v4, :cond_80

    iget-object v4, p0, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    .line 873
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 872
    invoke-virtual {v4, v5}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 874
    goto :goto_80

    .line 877
    :cond_50
    iget-object v4, p0, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcastsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 878
    :try_start_53
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    .line 879
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArrayList;

    .line 878
    invoke-static {v5, v6, v7}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/utils/WatchedArrayList;)Z

    move-result v5

    .line 880
    .local v5, "canQueryViaComponents":Z
    monitor-exit v4
    :try_end_62
    .catchall {:try_start_53 .. :try_end_62} :catchall_7d

    .line 881
    if-eqz v5, :cond_80

    .line 882
    iget-object v4, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponentLock:Ljava/lang/Object;

    monitor-enter v4

    .line 883
    :try_start_67
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v7

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 884
    monitor-exit v4

    goto :goto_80

    :catchall_7a
    move-exception v6

    monitor-exit v4
    :try_end_7c
    .catchall {:try_start_67 .. :try_end_7c} :catchall_7a

    throw v6

    .line 880
    .end local v5    # "canQueryViaComponents":Z
    :catchall_7d
    move-exception v5

    :try_start_7e
    monitor-exit v4
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    throw v5

    .line 867
    .end local v3    # "otherSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_80
    :goto_80
    add-int/lit8 v2, v2, -0x1

    goto :goto_2e

    .line 862
    .end local v1    # "setting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v2    # "j":I
    :cond_83
    :goto_83
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 889
    .end local v0    # "i":I
    :cond_86
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 890
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    .line 891
    return-void

    .line 861
    :catchall_90
    move-exception v1

    :try_start_91
    monitor-exit v0
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    throw v1
.end method

.method private removeAppIdFromVisibilityCache(I)V
    .registers 5
    .param p1, "appId"    # I

    .line 623
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 624
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 625
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    if-ne v2, p1, :cond_1f

    .line 626
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->removeAt(I)V

    .line 631
    add-int/lit8 v1, v1, -0x1

    .line 624
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 634
    .end local v1    # "i":I
    :cond_22
    monitor-exit v0

    .line 635
    return-void

    .line 634
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private removeShouldFilterCacheForUser(I)V
    .registers 11
    .param p1, "userId"    # I

    .line 793
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 795
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->keys()[I

    move-result-object v1

    .line 796
    .local v1, "cacheUids":[I
    array-length v2, v1

    .line 797
    .local v2, "size":I
    const/4 v3, 0x0

    invoke-static {p1, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v4

    .line 798
    .local v4, "pos":I
    if-ltz v4, :cond_17

    move v5, v4

    goto :goto_18

    :cond_17
    not-int v5, v4

    .line 799
    .local v5, "fromIndex":I
    :goto_18
    if-ge v5, v2, :cond_7c

    aget v6, v1, v5

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-eq v6, p1, :cond_23

    goto :goto_7c

    .line 804
    :cond_23
    add-int/lit8 v6, p1, 0x1

    invoke-static {v6, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    .line 805
    .end local v4    # "pos":I
    .local v3, "pos":I
    if-ltz v3, :cond_34

    add-int/lit8 v4, v3, 0x1

    goto :goto_35

    :cond_34
    not-int v4, v3

    .line 806
    .local v4, "toIndex":I
    :goto_35
    if-ge v5, v4, :cond_4e

    add-int/lit8 v6, v4, -0x1

    aget v6, v1, v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-eq v6, p1, :cond_42

    goto :goto_4e

    .line 811
    :cond_42
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterImpl;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v6, v5, v4}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->removeRange(II)V

    .line 812
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterImpl;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v6}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->compact()V

    .line 813
    .end local v1    # "cacheUids":[I
    .end local v2    # "size":I
    .end local v3    # "pos":I
    .end local v4    # "toIndex":I
    .end local v5    # "fromIndex":I
    monitor-exit v0

    .line 814
    return-void

    .line 807
    .restart local v1    # "cacheUids":[I
    .restart local v2    # "size":I
    .restart local v3    # "pos":I
    .restart local v4    # "toIndex":I
    .restart local v5    # "fromIndex":I
    :cond_4e
    :goto_4e
    const-string v6, "AppsFilter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to remove should filter cache for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", fromIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", toIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    monitor-exit v0

    return-void

    .line 800
    .end local v3    # "pos":I
    .local v4, "pos":I
    :cond_7c
    :goto_7c
    const-string v3, "AppsFilter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to remove should filter cache for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", fromIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    monitor-exit v0

    return-void

    .line 813
    .end local v1    # "cacheUids":[I
    .end local v2    # "size":I
    .end local v4    # "pos":I
    .end local v5    # "fromIndex":I
    :catchall_a0
    move-exception v1

    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_3 .. :try_end_a2} :catchall_a0

    throw v1
.end method

.method private updateEntireShouldFilterCache(Lcom/android/server/pm/snapshot/PackageDataSnapshot;I)V
    .registers 8
    .param p1, "snapshot"    # Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .param p2, "subjectUserId"    # I

    .line 638
    nop

    .line 639
    invoke-interface {p1}, Lcom/android/server/pm/snapshot/PackageDataSnapshot;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v0

    .line 640
    .local v0, "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-interface {p1}, Lcom/android/server/pm/snapshot/PackageDataSnapshot;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 641
    .local v1, "users":[Landroid/content/pm/UserInfo;
    const/16 v2, -0x2710

    .line 642
    .local v2, "userId":I
    const/4 v3, 0x0

    .local v3, "u":I
    :goto_c
    array-length v4, v1

    if-ge v3, v4, :cond_1a

    .line 643
    aget-object v4, v1, v3

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    if-ne p2, v4, :cond_17

    .line 644
    move v2, p2

    .line 645
    goto :goto_1a

    .line 642
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 648
    .end local v3    # "u":I
    :cond_1a
    :goto_1a
    const/16 v3, -0x2710

    if-ne v2, v3, :cond_26

    .line 649
    const-string v3, "AppsFilter"

    const-string v4, "We encountered a new user that isn\'t a member of known users, updating the whole cache"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const/4 v2, -0x1

    .line 653
    :cond_26
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/pm/AppsFilterImpl;->updateEntireShouldFilterCacheInner(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V

    .line 655
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    .line 656
    return-void
.end method

.method private updateEntireShouldFilterCacheAsync(Landroid/content/pm/PackageManagerInternal;)V
    .registers 4
    .param p1, "pmInternal"    # Landroid/content/pm/PackageManagerInternal;

    .line 676
    const-wide/16 v0, 0x2710

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/AppsFilterImpl;->updateEntireShouldFilterCacheAsync(Landroid/content/pm/PackageManagerInternal;J)V

    .line 677
    return-void
.end method

.method private updateEntireShouldFilterCacheAsync(Landroid/content/pm/PackageManagerInternal;J)V
    .registers 6
    .param p1, "pmInternal"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "delayMs"    # J

    .line 681
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/AppsFilterImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/pm/AppsFilterImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/AppsFilterImpl;Landroid/content/pm/PackageManagerInternal;J)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 715
    return-void
.end method

.method private updateEntireShouldFilterCacheInner(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V
    .registers 15
    .param p1, "snapshot"    # Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .param p3, "users"    # [Landroid/content/pm/UserInfo;
    .param p4, "subjectUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/snapshot/PackageDataSnapshot;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;[",
            "Landroid/content/pm/UserInfo;",
            "I)V"
        }
    .end annotation

    .line 662
    .local p2, "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 663
    const/4 v1, -0x1

    if-ne p4, v1, :cond_b

    .line 664
    :try_start_6
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->clear()V

    .line 666
    :cond_b
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    array-length v2, p3

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->setCapacity(I)V

    .line 667
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_1c
    if-ltz v1, :cond_32

    .line 668
    const/4 v4, 0x0

    .line 669
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 668
    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    move v9, v1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForPackage(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;II)V

    .line 667
    add-int/lit8 v1, v1, -0x1

    goto :goto_1c

    .line 672
    .end local v1    # "i":I
    :cond_32
    monitor-exit v0

    .line 673
    return-void

    .line 672
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_6 .. :try_end_36} :catchall_34

    throw v1
.end method

.method private updateShouldFilterCacheForPackage(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/String;)V
    .registers 14
    .param p1, "snapshot"    # Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 734
    iget-boolean v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mCacheReady:Z

    if-nez v0, :cond_5

    .line 735
    return-void

    .line 737
    :cond_5
    nop

    .line 738
    invoke-interface {p1}, Lcom/android/server/pm/snapshot/PackageDataSnapshot;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v0

    .line 739
    .local v0, "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-interface {p1}, Lcom/android/server/pm/snapshot/PackageDataSnapshot;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v9

    .line 740
    .local v9, "users":[Landroid/content/pm/UserInfo;
    iget-object v10, p0, Lcom/android/server/pm/AppsFilterImpl;->mCacheLock:Ljava/lang/Object;

    monitor-enter v10

    .line 741
    const/4 v3, 0x0

    .line 742
    :try_start_12
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    const/4 v7, -0x1

    .line 743
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 741
    move-object v1, p0

    move-object v2, p1

    move-object v5, v0

    move-object v6, v9

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForPackage(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;II)V

    .line 744
    monitor-exit v10
    :try_end_26
    .catchall {:try_start_12 .. :try_end_26} :catchall_2a

    .line 745
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    .line 746
    return-void

    .line 744
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v10
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method private updateShouldFilterCacheForPackage(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;II)V
    .registers 22
    .param p1, "snapshot"    # Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .param p2, "skipPackageName"    # Ljava/lang/String;
    .param p3, "subjectSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p5, "allUsers"    # [Landroid/content/pm/UserInfo;
    .param p6, "subjectUserId"    # I
    .param p7, "maxIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/snapshot/PackageDataSnapshot;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;[",
            "Landroid/content/pm/UserInfo;",
            "II)V"
        }
    .end annotation

    .line 753
    .local p4, "allSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    move-object/from16 v0, p2

    move-object/from16 v7, p5

    invoke-virtual/range {p4 .. p4}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move/from16 v8, p7

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v9, v1

    .local v9, "i":I
    :goto_11
    if-ltz v9, :cond_66

    .line 754
    move-object/from16 v10, p4

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 755
    .local v11, "otherSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v1

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v2

    if-ne v1, v2, :cond_29

    .line 756
    move/from16 v12, p6

    goto :goto_63

    .line 759
    :cond_29
    invoke-interface/range {p3 .. p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eq v1, v0, :cond_61

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-ne v1, v0, :cond_38

    .line 761
    move/from16 v12, p6

    goto :goto_63

    .line 763
    :cond_38
    const/4 v1, -0x1

    move/from16 v12, p6

    if-ne v12, v1, :cond_54

    .line 764
    const/4 v1, 0x0

    move v13, v1

    .local v13, "su":I
    :goto_3f
    array-length v1, v7

    if-ge v13, v1, :cond_53

    .line 765
    aget-object v1, v7, v13

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object v5, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForUser(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[Landroid/content/pm/UserInfo;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    .line 764
    add-int/lit8 v13, v13, 0x1

    goto :goto_3f

    .end local v13    # "su":I
    :cond_53
    goto :goto_63

    .line 769
    :cond_54
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object v5, v11

    move/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForUser(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[Landroid/content/pm/UserInfo;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    goto :goto_63

    .line 759
    :cond_61
    move/from16 v12, p6

    .line 753
    .end local v11    # "otherSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_63
    add-int/lit8 v9, v9, -0x1

    goto :goto_11

    :cond_66
    move-object/from16 v10, p4

    move/from16 v12, p6

    .line 773
    .end local v9    # "i":I
    return-void
.end method

.method private updateShouldFilterCacheForUser(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[Landroid/content/pm/UserInfo;Lcom/android/server/pm/pkg/PackageStateInternal;I)V
    .registers 20
    .param p1, "snapshot"    # Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .param p2, "subjectSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p3, "allUsers"    # [Landroid/content/pm/UserInfo;
    .param p4, "otherSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p5, "subjectUserId"    # I

    .line 779
    move-object v6, p0

    move-object/from16 v7, p3

    const/4 v0, 0x0

    move v8, v0

    .local v8, "ou":I
    :goto_5
    array-length v0, v7

    if-ge v8, v0, :cond_42

    .line 780
    aget-object v0, v7, v8

    iget v9, v0, Landroid/content/pm/UserInfo;->id:I

    .line 781
    .local v9, "otherUser":I
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v0

    move/from16 v10, p5

    invoke-static {v10, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v11

    .line 782
    .local v11, "subjectUid":I
    invoke-interface/range {p4 .. p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v0

    invoke-static {v9, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v12

    .line 783
    .local v12, "otherUid":I
    move-object v0, p0

    move-object v1, p1

    move v2, v11

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterImpl;->shouldFilterApplicationInternal(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result v13

    .line 785
    .local v13, "shouldFilterSubjectToOther":Z
    move v2, v12

    move-object/from16 v3, p4

    move-object/from16 v4, p2

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterImpl;->shouldFilterApplicationInternal(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result v0

    .line 787
    .local v0, "shouldFilterOtherToSubject":Z
    iget-object v1, v6, Lcom/android/server/pm/AppsFilterImpl;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v1, v11, v12, v13}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->put(IIZ)V

    .line 788
    iget-object v1, v6, Lcom/android/server/pm/AppsFilterImpl;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v1, v12, v11, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->put(IIZ)V

    .line 779
    .end local v0    # "shouldFilterOtherToSubject":Z
    .end local v9    # "otherUser":I
    .end local v11    # "subjectUid":I
    .end local v12    # "otherUid":I
    .end local v13    # "shouldFilterSubjectToOther":Z
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_42
    move/from16 v10, p5

    .line 790
    .end local v8    # "ou":I
    return-void
.end method


# virtual methods
.method public addPackage(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 4
    .param p1, "snapshot"    # Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .param p2, "newPkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 900
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/AppsFilterImpl;->addPackage(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;Z)V

    .line 901
    return-void
.end method

.method public addPackage(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;Z)V
    .registers 22
    .param p1, "snapshot"    # Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .param p2, "newPkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p3, "isReplace"    # Z

    move-object/from16 v15, p0

    move-object/from16 v14, p2

    .line 446
    if-eqz p3, :cond_d

    .line 448
    const/4 v0, 0x1

    move-object/from16 v13, p1

    :try_start_9
    invoke-virtual {v15, v13, v14, v0}, Lcom/android/server/pm/AppsFilterImpl;->removePackage(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;Z)V

    goto :goto_f

    .line 446
    :cond_d
    move-object/from16 v13, p1

    .line 450
    :goto_f
    nop

    .line 451
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/snapshot/PackageDataSnapshot;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v0

    move-object v12, v0

    .line 452
    .local v12, "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/snapshot/PackageDataSnapshot;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 453
    .local v6, "users":[Landroid/content/pm/UserInfo;
    nop

    .line 454
    invoke-direct {v15, v14, v12}, Lcom/android/server/pm/AppsFilterImpl;->addPackageInternal(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;)Landroid/util/ArraySet;

    move-result-object v0

    move-object v11, v0

    .line 455
    .local v11, "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-boolean v0, v15, Lcom/android/server/pm/AppsFilterImpl;->mCacheReady:Z

    if-eqz v0, :cond_8d

    .line 456
    iget-object v10, v15, Lcom/android/server/pm/AppsFilterImpl;->mCacheLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_b0

    .line 457
    const/4 v3, 0x0

    const/4 v7, -0x1

    .line 458
    :try_start_28
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 457
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object v5, v12

    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForPackage(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;II)V

    .line 459
    if-eqz v11, :cond_7c

    .line 460
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_39
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_76

    .line 461
    invoke-virtual {v11, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 462
    .local v1, "changedPackage":Ljava/lang/String;
    invoke-virtual {v12, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 463
    .local v2, "changedPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v2, :cond_53

    .line 467
    move-object v5, v10

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    goto :goto_6a

    .line 469
    :cond_53
    const/4 v9, 0x0

    const/4 v3, -0x1

    .line 470
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v4
    :try_end_59
    .catchall {:try_start_28 .. :try_end_59} :catchall_83

    .line 469
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object v5, v10

    move-object v10, v2

    move-object/from16 v16, v11

    .end local v11    # "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v16, "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object v11, v12

    move-object/from16 v17, v12

    .end local v12    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .local v17, "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    move-object v12, v6

    move v13, v3

    move v14, v4

    :try_start_67
    invoke-direct/range {v7 .. v14}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForPackage(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;II)V

    .line 460
    .end local v1    # "changedPackage":Ljava/lang/String;
    .end local v2    # "changedPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_6a
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object v10, v5

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    goto :goto_39

    .end local v16    # "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v17    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v11    # "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v12    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :cond_76
    move-object v5, v10

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    .end local v11    # "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v12    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v16    # "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v17    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    goto :goto_81

    .line 459
    .end local v0    # "index":I
    .end local v16    # "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v17    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v11    # "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v12    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :cond_7c
    move-object v5, v10

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    .line 473
    .end local v11    # "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v12    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v16    # "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v17    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :goto_81
    monitor-exit v5

    goto :goto_ab

    .end local v16    # "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v17    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v11    # "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v12    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :catchall_83
    move-exception v0

    move-object v5, v10

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    .end local v11    # "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v12    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v16    # "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v17    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :goto_89
    monitor-exit v5
    :try_end_8a
    .catchall {:try_start_67 .. :try_end_8a} :catchall_8b

    .end local p0    # "this":Lcom/android/server/pm/AppsFilterImpl;
    .end local p1    # "snapshot":Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .end local p2    # "newPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local p3    # "isReplace":Z
    :try_start_8a
    throw v0

    .restart local p0    # "this":Lcom/android/server/pm/AppsFilterImpl;
    .restart local p1    # "snapshot":Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .restart local p2    # "newPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local p3    # "isReplace":Z
    :catchall_8b
    move-exception v0

    goto :goto_89

    .line 475
    .end local v16    # "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v17    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v11    # "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v12    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :cond_8d
    move-object/from16 v16, v11

    move-object/from16 v17, v12

    .end local v11    # "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v12    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v16    # "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v17    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addPackage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v0}, Lcom/android/server/pm/AppsFilterImpl;->invalidateCache(Ljava/lang/String;)V
    :try_end_ab
    .catchall {:try_start_8a .. :try_end_ab} :catchall_b0

    .line 478
    .end local v6    # "users":[Landroid/content/pm/UserInfo;
    .end local v16    # "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v17    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :goto_ab
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    .line 482
    nop

    .line 483
    return-void

    .line 478
    :catchall_b0
    move-exception v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    .line 482
    throw v0
.end method

.method public dispatchChange(Lcom/android/server/utils/Watchable;)V
    .registers 3
    .param p1, "what"    # Lcom/android/server/utils/Watchable;

    .line 135
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 136
    return-void
.end method

.method public getFeatureConfig()Lcom/android/server/pm/FeatureConfig;
    .registers 2

    .line 386
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    return-object v0
.end method

.method public grantImplicitAccess(IIZ)Z
    .registers 8
    .param p1, "recipientUid"    # I
    .param p2, "visibleUid"    # I
    .param p3, "retainOnUpdate"    # Z

    .line 399
    const/4 v0, 0x0

    if-ne p1, p2, :cond_4

    .line 400
    return v0

    .line 403
    :cond_4
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mImplicitlyQueryableLock:Ljava/lang/Object;

    monitor-enter v1

    .line 404
    if-eqz p3, :cond_14

    .line 405
    :try_start_9
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    move-result v2

    goto :goto_1e

    .line 406
    :cond_14
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    move-result v2

    :goto_1e
    nop

    .line 407
    .local v2, "changed":Z
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_5a

    .line 408
    nop

    .line 413
    iget-boolean v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mCacheReady:Z

    if-eqz v1, :cond_32

    .line 414
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 416
    :try_start_28
    iget-object v3, p0, Lcom/android/server/pm/AppsFilterImpl;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v3, p1, p2, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->put(IIZ)V

    .line 417
    monitor-exit v1

    goto :goto_54

    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_2f

    throw v0

    .line 418
    :cond_32
    if-eqz v2, :cond_54

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "grantImplicitAccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/AppsFilterImpl;->invalidateCache(Ljava/lang/String;)V

    .line 421
    :cond_54
    :goto_54
    if-eqz v2, :cond_59

    .line 422
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    .line 424
    :cond_59
    return v2

    .line 407
    .end local v2    # "changed":Z
    :catchall_5a
    move-exception v0

    :try_start_5b
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v0
.end method

.method protected isQueryableViaComponentWhenRequireRecompute(Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArraySet;Lcom/android/server/pm/parsing/pkg/AndroidPackage;II)Z
    .registers 8
    .param p2, "callingPkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p4, "targetPkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p5, "callingAppId"    # I
    .param p6, "targetAppId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "II)Z"
        }
    .end annotation

    .line 849
    .local p1, "existingSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .local p3, "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-direct {p0, p1}, Lcom/android/server/pm/AppsFilterImpl;->recomputeComponentVisibility(Landroid/util/ArrayMap;)V

    .line 850
    invoke-virtual {p0, p5, p6}, Lcom/android/server/pm/AppsFilterImpl;->isQueryableViaComponent(II)Z

    move-result v0

    return v0
.end method

.method public isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z
    .registers 3
    .param p1, "observer"    # Lcom/android/server/utils/Watcher;

    .line 123
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchableImpl;->isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$updateEntireShouldFilterCacheAsync$0$com-android-server-pm-AppsFilterImpl(Landroid/content/pm/PackageManagerInternal;J)V
    .registers 15
    .param p1, "pmInternal"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "delayMs"    # J

    .line 682
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mCacheValid:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    .line 684
    return-void

    .line 687
    :cond_b
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 688
    .local v0, "packagesCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    new-array v3, v2, [[Landroid/content/pm/UserInfo;

    .line 689
    .local v3, "usersRef":[[Landroid/content/pm/UserInfo;
    invoke-virtual {p1}, Landroid/content/pm/PackageManagerInternal;->snapshot()Lcom/android/server/pm/snapshot/PackageDataSnapshot;

    move-result-object v4

    .line 690
    .local v4, "snapshot":Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    nop

    .line 691
    invoke-interface {v4}, Lcom/android/server/pm/snapshot/PackageDataSnapshot;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v5

    .line 692
    .local v5, "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-interface {v4}, Lcom/android/server/pm/snapshot/PackageDataSnapshot;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 694
    .local v6, "users":[Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 695
    aput-object v6, v3, v1

    .line 698
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .local v8, "max":I
    :goto_2d
    if-ge v7, v8, :cond_45

    .line 699
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v9

    .line 700
    .local v9, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v0, v10, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    .end local v9    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    add-int/lit8 v7, v7, 0x1

    goto :goto_2d

    .line 703
    .end local v7    # "i":I
    .end local v8    # "max":I
    :cond_45
    aget-object v1, v3, v1

    const/4 v7, -0x1

    invoke-direct {p0, v4, v5, v1, v7}, Lcom/android/server/pm/AppsFilterImpl;->updateEntireShouldFilterCacheInner(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V

    .line 704
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    .line 706
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mCacheValid:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 707
    const-string v1, "AppsFilter"

    const-string v2, "Cache invalidated while building, retrying."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const-wide/16 v1, 0x2

    mul-long/2addr v1, p2

    const-wide/16 v7, 0x2710

    .line 709
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 708
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/pm/AppsFilterImpl;->updateEntireShouldFilterCacheAsync(Landroid/content/pm/PackageManagerInternal;J)V

    .line 710
    return-void

    .line 713
    :cond_6a
    iput-boolean v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mCacheReady:Z

    .line 714
    return-void
.end method

.method public onSystemReady(Landroid/content/pm/PackageManagerInternal;)V
    .registers 3
    .param p1, "pmInternal"    # Landroid/content/pm/PackageManagerInternal;

    .line 428
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayReferenceMapper;->rebuildIfDeferred()V

    .line 429
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {v0}, Lcom/android/server/pm/FeatureConfig;->onSystemReady()V

    .line 431
    invoke-direct {p0, p1}, Lcom/android/server/pm/AppsFilterImpl;->updateEntireShouldFilterCacheAsync(Landroid/content/pm/PackageManagerInternal;)V

    .line 432
    return-void
.end method

.method public onUserCreated(Lcom/android/server/pm/snapshot/PackageDataSnapshot;I)V
    .registers 4
    .param p1, "snapshot"    # Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .param p2, "newUserId"    # I

    .line 718
    iget-boolean v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mCacheReady:Z

    if-nez v0, :cond_5

    .line 719
    return-void

    .line 721
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/AppsFilterImpl;->updateEntireShouldFilterCache(Lcom/android/server/pm/snapshot/PackageDataSnapshot;I)V

    .line 722
    return-void
.end method

.method public onUserDeleted(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 725
    iget-boolean v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mCacheReady:Z

    if-nez v0, :cond_5

    .line 726
    return-void

    .line 728
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/pm/AppsFilterImpl;->removeShouldFilterCacheForUser(I)V

    .line 729
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    .line 730
    return-void
.end method

.method public registerObserver(Lcom/android/server/utils/Watcher;)V
    .registers 3
    .param p1, "observer"    # Lcom/android/server/utils/Watcher;

    .line 101
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 102
    return-void
.end method

.method public removePackage(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;Z)V
    .registers 25
    .param p1, "snapshot"    # Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .param p2, "setting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p3, "isReplace"    # Z

    .line 912
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    .line 913
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/snapshot/PackageDataSnapshot;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v11

    .line 914
    .local v11, "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/snapshot/PackageDataSnapshot;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v12

    .line 915
    .local v12, "users":[Landroid/content/pm/UserInfo;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/snapshot/PackageDataSnapshot;->getAllSharedUsers()Ljava/util/Collection;

    move-result-object v13

    .line 916
    .local v13, "sharedUserSettings":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/SharedUserSetting;>;"
    array-length v14, v12

    .line 917
    .local v14, "userCount":I
    iget-object v1, v9, Lcom/android/server/pm/AppsFilterImpl;->mImplicitlyQueryableLock:Ljava/lang/Object;

    monitor-enter v1

    .line 918
    const/4 v0, 0x0

    .local v0, "u":I
    :goto_15
    const/4 v2, 0x1

    if-ge v0, v14, :cond_6a

    .line 919
    :try_start_18
    aget-object v3, v12, v0

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 920
    .local v3, "userId":I
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v4

    invoke-static {v3, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 921
    .local v4, "removingUid":I
    iget-object v5, v9, Lcom/android/server/pm/AppsFilterImpl;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v5, v4}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(I)V

    .line 922
    iget-object v5, v9, Lcom/android/server/pm/AppsFilterImpl;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v5}, Lcom/android/server/utils/WatchedSparseSetArray;->size()I

    move-result v5

    sub-int/2addr v5, v2

    .local v5, "i":I
    :goto_30
    if-ltz v5, :cond_44

    .line 923
    iget-object v6, v9, Lcom/android/server/pm/AppsFilterImpl;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    iget-object v7, v9, Lcom/android/server/pm/AppsFilterImpl;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v7, v5}, Lcom/android/server/utils/WatchedSparseSetArray;->keyAt(I)I

    move-result v7

    .line 924
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 923
    invoke-virtual {v6, v7, v8}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 922
    add-int/lit8 v5, v5, -0x1

    goto :goto_30

    .line 927
    .end local v5    # "i":I
    :cond_44
    if-eqz p3, :cond_47

    .line 928
    goto :goto_67

    .line 931
    :cond_47
    iget-object v5, v9, Lcom/android/server/pm/AppsFilterImpl;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v5, v4}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(I)V

    .line 932
    iget-object v5, v9, Lcom/android/server/pm/AppsFilterImpl;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v5}, Lcom/android/server/utils/WatchedSparseSetArray;->size()I

    move-result v5

    sub-int/2addr v5, v2

    .restart local v5    # "i":I
    :goto_53
    if-ltz v5, :cond_67

    .line 933
    iget-object v2, v9, Lcom/android/server/pm/AppsFilterImpl;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    iget-object v6, v9, Lcom/android/server/pm/AppsFilterImpl;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 934
    invoke-virtual {v6, v5}, Lcom/android/server/utils/WatchedSparseSetArray;->keyAt(I)I

    move-result v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 933
    invoke-virtual {v2, v6, v7}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 932
    add-int/lit8 v5, v5, -0x1

    goto :goto_53

    .line 918
    .end local v3    # "userId":I
    .end local v4    # "removingUid":I
    .end local v5    # "i":I
    :cond_67
    :goto_67
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 937
    .end local v0    # "u":I
    :cond_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_18 .. :try_end_6b} :catchall_275

    .line 939
    iget-object v0, v9, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_a3

    .line 940
    iget-object v1, v9, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponentLock:Ljava/lang/Object;

    monitor-enter v1

    .line 941
    :try_start_76
    iget-object v0, v9, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(I)V

    .line 942
    iget-object v0, v9, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedSparseSetArray;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .local v0, "i":I
    :goto_86
    if-ltz v0, :cond_9e

    .line 943
    iget-object v3, v9, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    iget-object v4, v9, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v4, v0}, Lcom/android/server/utils/WatchedSparseSetArray;->keyAt(I)I

    move-result v4

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 942
    add-int/lit8 v0, v0, -0x1

    goto :goto_86

    .line 945
    .end local v0    # "i":I
    :cond_9e
    monitor-exit v1

    goto :goto_a3

    :catchall_a0
    move-exception v0

    monitor-exit v1
    :try_end_a2
    .catchall {:try_start_76 .. :try_end_a2} :catchall_a0

    throw v0

    .line 948
    :cond_a3
    :goto_a3
    iget-object v3, v9, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackageLock:Ljava/lang/Object;

    monitor-enter v3

    .line 949
    :try_start_a6
    iget-object v0, v9, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(I)V

    .line 950
    iget-object v0, v9, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedSparseSetArray;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .restart local v0    # "i":I
    :goto_b6
    if-ltz v0, :cond_ce

    .line 951
    iget-object v1, v9, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    iget-object v4, v9, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v4, v0}, Lcom/android/server/utils/WatchedSparseSetArray;->keyAt(I)I

    move-result v4

    .line 952
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 951
    invoke-virtual {v1, v4, v5}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 950
    add-int/lit8 v0, v0, -0x1

    goto :goto_b6

    .line 954
    .end local v0    # "i":I
    :cond_ce
    monitor-exit v3
    :try_end_cf
    .catchall {:try_start_a6 .. :try_end_cf} :catchall_272

    .line 956
    iget-object v1, v9, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesLibraryLock:Ljava/lang/Object;

    monitor-enter v1

    .line 957
    :try_start_d2
    iget-object v0, v9, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(I)V

    .line 958
    iget-object v0, v9, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedSparseSetArray;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .restart local v0    # "i":I
    :goto_e2
    if-ltz v0, :cond_fa

    .line 959
    iget-object v3, v9, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    iget-object v4, v9, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v4, v0}, Lcom/android/server/utils/WatchedSparseSetArray;->keyAt(I)I

    move-result v4

    .line 960
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 959
    invoke-virtual {v3, v4, v5}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 958
    add-int/lit8 v0, v0, -0x1

    goto :goto_e2

    .line 962
    .end local v0    # "i":I
    :cond_fa
    monitor-exit v1
    :try_end_fb
    .catchall {:try_start_d2 .. :try_end_fb} :catchall_26f

    .line 964
    iget-object v3, v9, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryableLock:Ljava/lang/Object;

    monitor-enter v3

    .line 965
    :try_start_fe
    iget-object v0, v9, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    .line 966
    monitor-exit v3
    :try_end_10c
    .catchall {:try_start_fe .. :try_end_10c} :catchall_26c

    .line 968
    const/4 v1, 0x0

    .line 969
    .local v1, "protectedBroadcastsChanged":Z
    iget-object v4, v9, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcastsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 970
    :try_start_110
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_144

    .line 971
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProtectedBroadcasts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_144

    .line 972
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 973
    .local v0, "removingPackageName":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, v9, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArrayList;

    .line 974
    invoke-virtual {v5}, Lcom/android/server/utils/WatchedArrayList;->untrackedStorage()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 975
    .local v3, "protectedBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v9, v11, v0}, Lcom/android/server/pm/AppsFilterImpl;->collectProtectedBroadcasts(Landroid/util/ArrayMap;Ljava/lang/String;)V

    .line 976
    iget-object v5, v9, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v5, v3}, Lcom/android/server/utils/WatchedArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v5
    :try_end_140
    .catchall {:try_start_110 .. :try_end_140} :catchall_269

    xor-int/2addr v5, v2

    move v1, v5

    move v15, v1

    goto :goto_145

    .line 978
    .end local v0    # "removingPackageName":Ljava/lang/String;
    .end local v3    # "protectedBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_144
    move v15, v1

    .end local v1    # "protectedBroadcastsChanged":Z
    .local v15, "protectedBroadcastsChanged":Z
    :goto_145
    :try_start_145
    monitor-exit v4
    :try_end_146
    .catchall {:try_start_145 .. :try_end_146} :catchall_266

    .line 980
    if-eqz v15, :cond_14d

    .line 981
    iget-object v0, v9, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 984
    :cond_14d
    iget-object v0, v9, Lcom/android/server/pm/AppsFilterImpl;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/om/OverlayReferenceMapper;->removePkg(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v8

    .line 985
    .local v8, "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, v9, Lcom/android/server/pm/AppsFilterImpl;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {v0, v10, v2}, Lcom/android/server/pm/FeatureConfig;->updatePackageState(Lcom/android/server/pm/pkg/PackageStateInternal;Z)V

    .line 991
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->hasSharedUser()Z

    move-result v0

    if-eqz v0, :cond_186

    .line 992
    nop

    .line 993
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSharedUserAppId()I

    move-result v0

    invoke-virtual {v9, v0, v13}, Lcom/android/server/pm/AppsFilterImpl;->getSharedUserPackages(ILjava/util/Collection;)Landroid/util/ArraySet;

    move-result-object v0

    .line 994
    .local v0, "sharedUserPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_170
    if-ltz v1, :cond_186

    .line 995
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v10, :cond_179

    .line 996
    goto :goto_183

    .line 998
    :cond_179
    nop

    .line 999
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 998
    invoke-direct {v9, v3, v11}, Lcom/android/server/pm/AppsFilterImpl;->addPackageInternal(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;)Landroid/util/ArraySet;

    .line 994
    :goto_183
    add-int/lit8 v1, v1, -0x1

    goto :goto_170

    .line 1003
    .end local v0    # "sharedUserPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v1    # "i":I
    :cond_186
    iget-boolean v0, v9, Lcom/android/server/pm/AppsFilterImpl;->mCacheReady:Z

    if-eqz v0, :cond_246

    .line 1004
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v0

    invoke-direct {v9, v0}, Lcom/android/server/pm/AppsFilterImpl;->removeAppIdFromVisibilityCache(I)V

    .line 1006
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->hasSharedUser()Z

    move-result v0

    if-eqz v0, :cond_1f8

    .line 1007
    nop

    .line 1008
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSharedUserAppId()I

    move-result v0

    invoke-virtual {v9, v0, v13}, Lcom/android/server/pm/AppsFilterImpl;->getSharedUserPackages(ILjava/util/Collection;)Landroid/util/ArraySet;

    move-result-object v7

    .line 1009
    .local v7, "sharedUserPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v2

    move v6, v0

    .local v6, "i":I
    :goto_1a6
    if-ltz v6, :cond_1f2

    .line 1010
    nop

    .line 1011
    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 1012
    .local v5, "siblingSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-ne v5, v10, :cond_1b8

    .line 1013
    move/from16 v19, v6

    move-object/from16 v20, v7

    move-object v10, v8

    goto :goto_1dc

    .line 1015
    :cond_1b8
    iget-object v4, v9, Lcom/android/server/pm/AppsFilterImpl;->mCacheLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1016
    nop

    .line 1017
    :try_start_1bc
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    .line 1018
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v16
    :try_end_1c5
    .catchall {:try_start_1bc .. :try_end_1c5} :catchall_1e4

    .line 1016
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v17, v4

    move-object v4, v5

    move-object/from16 v18, v5

    .end local v5    # "siblingSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v18, "siblingSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    move-object v5, v11

    move/from16 v19, v6

    .end local v6    # "i":I
    .local v19, "i":I
    move-object v6, v12

    move-object/from16 v20, v7

    .end local v7    # "sharedUserPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .local v20, "sharedUserPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    move v7, v0

    move-object v10, v8

    .end local v8    # "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v10, "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move/from16 v8, v16

    :try_start_1d8
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForPackage(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;II)V

    .line 1019
    monitor-exit v17

    .line 1009
    .end local v18    # "siblingSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_1dc
    add-int/lit8 v6, v19, -0x1

    move-object v8, v10

    move-object/from16 v7, v20

    move-object/from16 v10, p2

    .end local v19    # "i":I
    .restart local v6    # "i":I
    goto :goto_1a6

    .line 1019
    .end local v10    # "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v20    # "sharedUserPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v5    # "siblingSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v7    # "sharedUserPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v8    # "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_1e4
    move-exception v0

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move/from16 v19, v6

    move-object/from16 v20, v7

    move-object v10, v8

    .end local v5    # "siblingSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v6    # "i":I
    .end local v7    # "sharedUserPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v8    # "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v10    # "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v18    # "siblingSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v19    # "i":I
    .restart local v20    # "sharedUserPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :goto_1ee
    monitor-exit v17
    :try_end_1ef
    .catchall {:try_start_1d8 .. :try_end_1ef} :catchall_1f0

    throw v0

    :catchall_1f0
    move-exception v0

    goto :goto_1ee

    .line 1009
    .end local v10    # "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v18    # "siblingSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v19    # "i":I
    .end local v20    # "sharedUserPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v6    # "i":I
    .restart local v7    # "sharedUserPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v8    # "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_1f2
    move/from16 v19, v6

    move-object/from16 v20, v7

    move-object v10, v8

    .end local v6    # "i":I
    .end local v7    # "sharedUserPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v8    # "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v10    # "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v19    # "i":I
    .restart local v20    # "sharedUserPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    goto :goto_1f9

    .line 1006
    .end local v10    # "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v19    # "i":I
    .end local v20    # "sharedUserPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v8    # "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_1f8
    move-object v10, v8

    .line 1023
    .end local v8    # "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v10    # "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_1f9
    if-eqz v10, :cond_262

    .line 1024
    const/4 v0, 0x0

    move v8, v0

    .local v8, "index":I
    :goto_1fd
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v8, v0, :cond_243

    .line 1025
    invoke-virtual {v10, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 1026
    .local v7, "changedPackage":Ljava/lang/String;
    invoke-virtual {v11, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 1027
    .local v16, "changedPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v16, :cond_217

    .line 1031
    move/from16 v20, v8

    goto :goto_235

    .line 1033
    :cond_217
    iget-object v6, v9, Lcom/android/server/pm/AppsFilterImpl;->mCacheLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1034
    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 1035
    :try_start_21c
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v17
    :try_end_220
    .catchall {:try_start_21c .. :try_end_220} :catchall_23a

    .line 1034
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, v16

    move-object v5, v11

    move-object/from16 v18, v6

    move-object v6, v12

    move-object/from16 v19, v7

    .end local v7    # "changedPackage":Ljava/lang/String;
    .local v19, "changedPackage":Ljava/lang/String;
    move v7, v0

    move/from16 v20, v8

    .end local v8    # "index":I
    .local v20, "index":I
    move/from16 v8, v17

    :try_start_231
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForPackage(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;II)V

    .line 1036
    monitor-exit v18

    .line 1024
    .end local v16    # "changedPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v19    # "changedPackage":Ljava/lang/String;
    :goto_235
    add-int/lit8 v8, v20, 0x1

    .end local v20    # "index":I
    .restart local v8    # "index":I
    goto :goto_1fd

    .line 1036
    .end local v8    # "index":I
    .restart local v16    # "changedPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v19    # "changedPackage":Ljava/lang/String;
    .restart local v20    # "index":I
    :catchall_238
    move-exception v0

    goto :goto_241

    .end local v19    # "changedPackage":Ljava/lang/String;
    .end local v20    # "index":I
    .restart local v7    # "changedPackage":Ljava/lang/String;
    .restart local v8    # "index":I
    :catchall_23a
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v8

    .end local v7    # "changedPackage":Ljava/lang/String;
    .end local v8    # "index":I
    .restart local v19    # "changedPackage":Ljava/lang/String;
    .restart local v20    # "index":I
    :goto_241
    monitor-exit v18
    :try_end_242
    .catchall {:try_start_231 .. :try_end_242} :catchall_238

    throw v0

    .line 1024
    .end local v16    # "changedPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v19    # "changedPackage":Ljava/lang/String;
    .end local v20    # "index":I
    .restart local v8    # "index":I
    :cond_243
    move/from16 v20, v8

    .end local v8    # "index":I
    goto :goto_262

    .line 1040
    .end local v10    # "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v8, "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_246
    move-object v10, v8

    .end local v8    # "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v10    # "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removePackage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/android/server/pm/AppsFilterImpl;->invalidateCache(Ljava/lang/String;)V

    .line 1042
    :cond_262
    :goto_262
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    .line 1043
    return-void

    .line 978
    .end local v10    # "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_266
    move-exception v0

    move v1, v15

    goto :goto_26a

    .end local v15    # "protectedBroadcastsChanged":Z
    .local v1, "protectedBroadcastsChanged":Z
    :catchall_269
    move-exception v0

    :goto_26a
    :try_start_26a
    monitor-exit v4
    :try_end_26b
    .catchall {:try_start_26a .. :try_end_26b} :catchall_269

    throw v0

    .line 966
    .end local v1    # "protectedBroadcastsChanged":Z
    :catchall_26c
    move-exception v0

    :try_start_26d
    monitor-exit v3
    :try_end_26e
    .catchall {:try_start_26d .. :try_end_26e} :catchall_26c

    throw v0

    .line 962
    :catchall_26f
    move-exception v0

    :try_start_270
    monitor-exit v1
    :try_end_271
    .catchall {:try_start_270 .. :try_end_271} :catchall_26f

    throw v0

    .line 954
    :catchall_272
    move-exception v0

    :try_start_273
    monitor-exit v3
    :try_end_274
    .catchall {:try_start_273 .. :try_end_274} :catchall_272

    throw v0

    .line 937
    :catchall_275
    move-exception v0

    :try_start_276
    monitor-exit v1
    :try_end_277
    .catchall {:try_start_276 .. :try_end_277} :catchall_275

    throw v0
.end method

.method public snapshot()Lcom/android/server/pm/AppsFilterSnapshot;
    .registers 2

    .line 204
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/AppsFilterSnapshot;

    return-object v0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .registers 2

    .line 80
    invoke-virtual {p0}, Lcom/android/server/pm/AppsFilterImpl;->snapshot()Lcom/android/server/pm/AppsFilterSnapshot;

    move-result-object v0

    return-object v0
.end method

.method public unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .registers 3
    .param p1, "observer"    # Lcom/android/server/utils/Watcher;

    .line 112
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchableImpl;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 113
    return-void
.end method
