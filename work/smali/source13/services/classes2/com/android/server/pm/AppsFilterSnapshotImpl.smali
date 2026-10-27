.class public final Lcom/android/server/pm/AppsFilterSnapshotImpl;
.super Lcom/android/server/pm/AppsFilterBase;
.source "AppsFilterSnapshotImpl.java"


# direct methods
.method constructor <init>(Lcom/android/server/pm/AppsFilterImpl;)V
    .registers 4
    .param p1, "orig"    # Lcom/android/server/pm/AppsFilterImpl;

    .line 28
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilterBase;-><init>()V

    .line 29
    iget-object v0, p1, Lcom/android/server/pm/AppsFilterImpl;->mImplicitlyQueryableLock:Ljava/lang/Object;

    monitor-enter v0

    .line 30
    :try_start_6
    iget-object v1, p1, Lcom/android/server/pm/AppsFilterImpl;->mImplicitQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v1}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/WatchedSparseSetArray;

    iput-object v1, p0, Lcom/android/server/pm/AppsFilterSnapshotImpl;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 31
    iget-object v1, p1, Lcom/android/server/pm/AppsFilterImpl;->mRetainedImplicitlyQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v1}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/WatchedSparseSetArray;

    iput-object v1, p0, Lcom/android/server/pm/AppsFilterSnapshotImpl;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 32
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_f2

    .line 33
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterSnapshotImpl;->mImplicitQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 34
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterSnapshotImpl;->mRetainedImplicitlyQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 35
    iget-object v1, p1, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackageLock:Ljava/lang/Object;

    monitor-enter v1

    .line 36
    :try_start_2c
    iget-object v0, p1, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackageSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedSparseSetArray;

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterSnapshotImpl;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 37
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_ef

    .line 38
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterSnapshotImpl;->mQueriesViaPackageSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 39
    iget-object v0, p1, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponentLock:Ljava/lang/Object;

    monitor-enter v0

    .line 40
    :try_start_41
    iget-object v1, p1, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponentSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v1}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/WatchedSparseSetArray;

    iput-object v1, p0, Lcom/android/server/pm/AppsFilterSnapshotImpl;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 41
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_41 .. :try_end_4c} :catchall_ec

    .line 42
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterSnapshotImpl;->mQueriesViaComponentSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 43
    iget-object v1, p1, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesLibraryLock:Ljava/lang/Object;

    monitor-enter v1

    .line 44
    :try_start_56
    iget-object v0, p1, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesLibrarySnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedSparseSetArray;

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterSnapshotImpl;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 45
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_56 .. :try_end_61} :catchall_e9

    .line 46
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterSnapshotImpl;->mQueryableViaUsesLibrarySnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 47
    iget-object v0, p1, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryableLock:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_6b
    iget-object v1, p1, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v1}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/WatchedArraySet;

    iput-object v1, p0, Lcom/android/server/pm/AppsFilterSnapshotImpl;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    .line 49
    monitor-exit v0
    :try_end_76
    .catchall {:try_start_6b .. :try_end_76} :catchall_e6

    .line 50
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterSnapshotImpl;->mForceQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 51
    iget-object v1, p1, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcastsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 52
    :try_start_80
    iget-object v0, p1, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcastsSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedArrayList;

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterSnapshotImpl;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArrayList;

    .line 53
    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_80 .. :try_end_8b} :catchall_e3

    .line 54
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterSnapshotImpl;->mProtectedBroadcastsSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 55
    iget-object v0, p1, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterSnapshotImpl;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    iget-object v0, p1, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryableByDevicePackageNames:[Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryableByDevicePackageNames:[Ljava/lang/String;

    array-length v1, v1

    .line 57
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterSnapshotImpl;->mForceQueryableByDevicePackageNames:[Ljava/lang/String;

    .line 59
    iget-boolean v0, p1, Lcom/android/server/pm/AppsFilterImpl;->mSystemAppsQueryable:Z

    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilterSnapshotImpl;->mSystemAppsQueryable:Z

    .line 60
    iget-object v0, p1, Lcom/android/server/pm/AppsFilterImpl;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {v0}, Lcom/android/server/pm/FeatureConfig;->snapshot()Lcom/android/server/pm/FeatureConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterSnapshotImpl;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    .line 61
    iget-object v0, p1, Lcom/android/server/pm/AppsFilterImpl;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterSnapshotImpl;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    .line 62
    iget-object v0, p1, Lcom/android/server/pm/AppsFilterImpl;->mSystemSigningDetails:Landroid/content/pm/SigningDetails;

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterSnapshotImpl;->mSystemSigningDetails:Landroid/content/pm/SigningDetails;

    .line 64
    iget-boolean v0, p1, Lcom/android/server/pm/AppsFilterImpl;->mCacheReady:Z

    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilterSnapshotImpl;->mCacheReady:Z

    .line 65
    iget-boolean v0, p0, Lcom/android/server/pm/AppsFilterSnapshotImpl;->mCacheReady:Z

    if-eqz v0, :cond_d1

    .line 66
    iget-object v0, p1, Lcom/android/server/pm/AppsFilterImpl;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_c2
    iget-object v1, p1, Lcom/android/server/pm/AppsFilterImpl;->mShouldFilterCacheSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v1}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    iput-object v1, p0, Lcom/android/server/pm/AppsFilterSnapshotImpl;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 68
    monitor-exit v0

    goto :goto_d8

    :catchall_ce
    move-exception v1

    monitor-exit v0
    :try_end_d0
    .catchall {:try_start_c2 .. :try_end_d0} :catchall_ce

    throw v1

    .line 71
    :cond_d1
    new-instance v0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterSnapshotImpl;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 73
    :goto_d8
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterSnapshotImpl;->mShouldFilterCacheSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterSnapshotImpl;->mBackgroundHandler:Landroid/os/Handler;

    .line 76
    return-void

    .line 53
    :catchall_e3
    move-exception v0

    :try_start_e4
    monitor-exit v1
    :try_end_e5
    .catchall {:try_start_e4 .. :try_end_e5} :catchall_e3

    throw v0

    .line 49
    :catchall_e6
    move-exception v1

    :try_start_e7
    monitor-exit v0
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_e6

    throw v1

    .line 45
    :catchall_e9
    move-exception v0

    :try_start_ea
    monitor-exit v1
    :try_end_eb
    .catchall {:try_start_ea .. :try_end_eb} :catchall_e9

    throw v0

    .line 41
    :catchall_ec
    move-exception v1

    :try_start_ed
    monitor-exit v0
    :try_end_ee
    .catchall {:try_start_ed .. :try_end_ee} :catchall_ec

    throw v1

    .line 37
    :catchall_ef
    move-exception v0

    :try_start_f0
    monitor-exit v1
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_ef

    throw v0

    .line 32
    :catchall_f2
    move-exception v1

    :try_start_f3
    monitor-exit v0
    :try_end_f4
    .catchall {:try_start_f3 .. :try_end_f4} :catchall_f2

    throw v1
.end method
