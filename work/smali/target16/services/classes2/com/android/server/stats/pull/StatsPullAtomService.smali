.class public Lcom/android/server/stats/pull/StatsPullAtomService;
.super Lcom/android/server/SystemService;
.source "StatsPullAtomService.java"


# static fields
.field public static final ENABLE_MEMCG_STATS_PULLER:Z

.field public static final ENABLE_MOBILE_DATA_STATS_AGGREGATED_PULLER:Z

.field public static final NETSTATS_UID_DEFAULT_BUCKET_DURATION_MS:J

.field public static final RANDOM_SEED:I

.field public static final mPreviousThermalThrottlingStatus:Landroid/util/ArrayMap;


# instance fields
.field public mAggregatedMobileDataStatsPuller:Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;

.field public final mAppOpsLock:Ljava/lang/Object;

.field public mAppOpsSamplingRate:I

.field public final mAppSizeLock:Ljava/lang/Object;

.field public final mAppsOnExternalStorageInfoLock:Ljava/lang/Object;

.field public final mAttributedAppOpsLock:Ljava/lang/Object;

.field public mBaseDir:Ljava/io/File;

.field public final mBinderCallsStatsExceptionsLock:Ljava/lang/Object;

.field public final mBinderCallsStatsLock:Ljava/lang/Object;

.field public final mBluetoothActivityInfoLock:Ljava/lang/Object;

.field public final mBluetoothBytesTransferLock:Ljava/lang/Object;

.field public final mBuildInformationLock:Ljava/lang/Object;

.field public final mCategorySizeLock:Ljava/lang/Object;

.field public final mContext:Landroid/content/Context;

.field public final mCooldownDeviceLock:Ljava/lang/Object;

.field public final mCpuActiveTimeLock:Ljava/lang/Object;

.field public final mCpuClusterTimeLock:Ljava/lang/Object;

.field public final mCpuTimePerClusterFreqLock:Ljava/lang/Object;

.field public final mCpuTimePerThreadFreqLock:Ljava/lang/Object;

.field public final mCpuTimePerUidFreqLock:Ljava/lang/Object;

.field public final mCpuTimePerUidLock:Ljava/lang/Object;

.field public mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

.field public mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

.field public mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

.field public mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

.field public final mDangerousAppOpsList:Landroid/util/ArraySet;

.field public final mDangerousAppOpsListLock:Ljava/lang/Object;

.field public final mDangerousPermissionStateLock:Ljava/lang/Object;

.field public final mDataBytesTransferLock:Ljava/lang/Object;

.field public final mDebugElapsedClockLock:Ljava/lang/Object;

.field public mDebugElapsedClockPreviousValue:J

.field public mDebugElapsedClockPullCount:J

.field public final mDebugFailingElapsedClockLock:Ljava/lang/Object;

.field public mDebugFailingElapsedClockPreviousValue:J

.field public mDebugFailingElapsedClockPullCount:J

.field public final mDeviceCalculatedPowerUseLock:Ljava/lang/Object;

.field public final mDirectoryUsageLock:Ljava/lang/Object;

.field public final mDiskIoLock:Ljava/lang/Object;

.field public final mDiskStatsLock:Ljava/lang/Object;

.field public final mExternalStorageInfoLock:Ljava/lang/Object;

.field public final mFaceSettingsLock:Ljava/lang/Object;

.field public final mHealthHalLock:Ljava/lang/Object;

.field public mHealthService:Lcom/android/server/health/HealthServiceWrapper;

.field public final mHistoricalSubs:Ljava/util/ArrayList;

.field public mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;

.field public final mInstalledIncrementalPackagesLock:Ljava/lang/Object;

.field public final mIonHeapSizeLock:Ljava/lang/Object;

.field public mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

.field public final mKernelWakelockLock:Ljava/lang/Object;

.field public mKernelWakelockReader:Lcom/android/server/power/stats/KernelWakelockReader;

.field public final mKeystoreLock:Ljava/lang/Object;

.field public mLastNetworkStatsPollTime:J

.field public final mLooperStatsLock:Ljava/lang/Object;

.field public final mModemActivityInfoLock:Ljava/lang/Object;

.field public final mNetworkStatsAccumulators:Ljava/util/ArrayList;

.field public final mNetworkStatsBaselines:Ljava/util/ArrayList;

.field public mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

.field public mNotificationManagerService:Landroid/app/INotificationManager;

.field public final mNotificationRemoteViewsLock:Ljava/lang/Object;

.field public final mNotificationStatsLock:Ljava/lang/Object;

.field public final mNumBiometricsEnrolledLock:Ljava/lang/Object;

.field public final mPowerProfileLock:Ljava/lang/Object;

.field public final mProcStatsLock:Ljava/lang/Object;

.field public final mProcessCpuTimeLock:Ljava/lang/Object;

.field public mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

.field public final mProcessMemoryHighWaterMarkLock:Ljava/lang/Object;

.field public mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

.field public final mProcessSystemIonHeapSizeLock:Ljava/lang/Object;

.field public final mRoleHolderLock:Ljava/lang/Object;

.field public final mRuntimeAppOpAccessMessageLock:Ljava/lang/Object;

.field public final mSettingsStatsLock:Ljava/lang/Object;

.field public mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

.field public mStatsManager:Landroid/app/StatsManager;

.field public mStatsSubscriptionsListener:Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;

.field public mStorageManager:Landroid/os/storage/StorageManager;

.field public mStorageService:Landroid/os/IStoraged;

.field public final mStoragedLock:Ljava/lang/Object;

.field public mStoragedUidIoStatsReader:Lcom/android/internal/os/StoragedUidIoStatsReader;

.field public mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field public mSurfaceFlingerProcessCpuThreadReader:Lcom/android/internal/os/SelectedProcessCpuThreadReader;

.field public final mSystemElapsedRealtimeLock:Ljava/lang/Object;

.field public final mSystemIonHeapSizeLock:Ljava/lang/Object;

.field public final mSystemUptimeLock:Ljava/lang/Object;

.field public mTelephony:Landroid/telephony/TelephonyManager;

.field public final mTemperatureLock:Ljava/lang/Object;

.field public final mThermalLock:Ljava/lang/Object;

.field public mThermalService:Landroid/os/IThermalService;

.field public final mTimeZoneDataInfoLock:Ljava/lang/Object;

.field public final mTimeZoneDetectionInfoLock:Ljava/lang/Object;

.field public mTmpWakelockStats:Lcom/android/server/power/stats/KernelWakelockStats;

.field public final mUwbActivityInfoLock:Ljava/lang/Object;

.field public mUwbManager:Landroid/uwb/UwbManager;

.field public final mVoldLock:Ljava/lang/Object;

.field public mVoldService:Landroid/os/IVold;

.field public final mWifiActivityInfoLock:Ljava/lang/Object;

.field public mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$2G3dtA7-HybuySk0pkfmrx7d3hA(Lcom/android/server/stats/pull/StatsPullAtomService;Landroid/net/NetworkTemplate;ZJJ)Landroid/net/NetworkStats;
    .registers 7

    .line 0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$getUidNetworkStatsSnapshotForTemplateLocked$10(Landroid/net/NetworkTemplate;ZJJ)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7rdEH0oTAE_b3AzyIoB5LoAbnPs(Ljava/util/List;II[J)V
    .registers 11

    const/4 v0, 0x0

    .line 2103
    aget-wide v3, p3, v0

    const/4 v0, 0x1

    aget-wide v5, p3, v0

    move v1, p1

    move v2, p2

    .line 2105
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p1

    .line 2104
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$ALHViK8FcsPFqZnRfLw--YP3uMs(I)Z
    .registers 2

    .line 5166
    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    return v0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$BbsrUZcUgOXid-RQNqI1gnAhjiM(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .registers 19

    .line 1743
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v2

    .line 1747
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v10

    .line 1748
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct/range {v0 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$DYMWf4Votw_arNFvSQLuK5f5pT8(Ljava/util/concurrent/atomic/AtomicInteger;[I)V
    .registers 2

    .line 5167
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public static synthetic $r8$lambda$LjwVJ-sQoBVfkgH9IMV73uaq6cM(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$getIProcessStatsService$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ll3mOdQ9olMqFnK5BfKgAFD0mqY(Landroid/util/SparseArray;Landroid/app/ProcessMemoryState;)V
    .registers 2

    .line 2611
    iget p1, p1, Landroid/app/ProcessMemoryState;->pid:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$THE31T_26pRWuieKNsCmZkU9lKg(Landroid/util/SparseArray;I[I[J[DI[J)V
    .registers 14

    .line 2153
    invoke-static {p5}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4c

    .line 2157
    :cond_7
    invoke-static {p5}, Landroid/os/UserHandle;->isSharedAppGid(I)Z

    move-result v0

    if-eqz v0, :cond_11

    const p5, 0xea5f

    goto :goto_15

    .line 2162
    :cond_11
    invoke-static {p5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p5

    .line 2165
    :goto_15
    invoke-virtual {p0, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    if-nez v0, :cond_24

    mul-int/lit8 p1, p1, 0x3

    .line 2167
    new-array v0, p1, [D

    .line 2168
    invoke-virtual {p0, p5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_24
    const/4 p0, 0x0

    .line 2171
    :goto_25
    array-length p1, p6

    if-ge p0, p1, :cond_4c

    .line 2172
    aget p1, p2, p0

    .line 2173
    aget-wide v1, p6, p0

    mul-int/lit8 p1, p1, 0x3

    .line 2174
    aget-wide v3, v0, p1

    aget-wide v5, p3, p0

    mul-long/2addr v5, v1

    long-to-double v5, v5

    add-double/2addr v3, v5

    aput-wide v3, v0, p1

    add-int/lit8 p5, p1, 0x1

    .line 2175
    aget-wide v3, v0, p5

    long-to-double v1, v1

    add-double/2addr v3, v1

    aput-wide v3, v0, p5

    add-int/lit8 p1, p1, 0x2

    .line 2176
    aget-wide v3, v0, p1

    aget-wide v5, p4, p0

    mul-double/2addr v5, v1

    add-double/2addr v3, v5

    aput-wide v3, v0, p1

    add-int/lit8 p0, p0, 0x1

    goto :goto_25

    :cond_4c
    :goto_4c
    return-void
.end method

.method public static synthetic $r8$lambda$VoDTyT62lxBoRqW8CTJvP46i2Ik([I)Z
    .registers 2

    .line 5166
    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda30;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_M509hRSVerI6Jrh8_YA_UVQAjk(Ljava/util/List;II[J)V
    .registers 7

    const/4 v0, 0x0

    .line 2290
    :goto_1
    array-length v1, p3

    if-ge v0, v1, :cond_10

    .line 2291
    aget-wide v1, p3, v0

    .line 2292
    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJ)Landroid/util/StatsEvent;

    move-result-object v1

    .line 2291
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    return-void
.end method

.method public static synthetic $r8$lambda$_ZNOzsAqhxMJp3F5aq03MrLfJzM(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .registers 19

    .line 1756
    new-instance v0, Landroid/net/NetworkStats$Entry;

    .line 1757
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getSet()I

    move-result v3

    .line 1760
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v10

    .line 1761
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct/range {v0 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$bPepm5XbBa0NabKwFzNSXvCK2KU(Landroid/util/SparseArray;Landroid/app/ProcessMemoryState;)V
    .registers 2

    .line 2538
    iget p1, p1, Landroid/app/ProcessMemoryState;->pid:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$eeBnXGn8RW5D6HzYOeiH83u_dpQ(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)Z
    .registers 2

    .line 1428
    invoke-virtual {p1, p0}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->hasSameSlicing(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$f8CMvmwmNLc8uUbjdjU3zNO3uPg(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$getIThermalService$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$fBtiMXk9aIaWnrTzdfhmfOwjEJ4(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$getIKeystoreMetricsService$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$fJqqLeRtKIVId8mu_5AiI7ldKEg(Landroid/os/SynchronousResultReceiver;Landroid/uwb/UwbActivityEnergyInfo;)V
    .registers 4

    .line 2447
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2448
    const-string v1, "controller_activity"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 2449
    invoke-virtual {p0, p1, v0}, Landroid/os/SynchronousResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i440XMRR42LK3B4TESgZqvoLqfY(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$getIVoldService$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$kJjVPMrH_Ja0uLhmMjMcZ65lA9k(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .registers 19

    .line 1782
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v2

    .line 1783
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTag()I

    move-result v4

    .line 1784
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getMetered()I

    move-result v5

    .line 1786
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v10

    .line 1787
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct/range {v0 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$nDZunlpOzCs1i7lfI0cUjcU0NcQ(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$getINotificationManagerService$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$nNR4Gctk6hlu9qnTsuOvrymZzfk(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$onBootPhase$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$owhpb2v8gTbRJs117eCDNuoh8os(Landroid/util/SparseArray;I[J)V
    .registers 8

    .line 2215
    invoke-static {p1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_31

    .line 2219
    :cond_7
    invoke-static {p1}, Landroid/os/UserHandle;->isSharedAppGid(I)Z

    move-result v0

    if-eqz v0, :cond_11

    const p1, 0xea5f

    goto :goto_15

    .line 2224
    :cond_11
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 2227
    :goto_15
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    if-nez v0, :cond_23

    .line 2229
    array-length v0, p2

    new-array v0, v0, [J

    .line 2230
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_23
    const/4 p0, 0x0

    .line 2232
    :goto_24
    array-length p1, p2

    if-ge p0, p1, :cond_31

    .line 2233
    aget-wide v1, v0, p0

    aget-wide v3, p2, p0

    add-long/2addr v1, v3

    aput-wide v1, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_24

    :cond_31
    :goto_31
    return-void
.end method

.method public static synthetic $r8$lambda$piAN_vDJhf9hK3wrqW_X9Lo5Rn0(I)Z
    .registers 2

    .line 5430
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$qb74jErDmbpYjoDRKkDDIHHyoHk(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$onBootPhase$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$s1Td2gXbtrCqiWFQ0yJmU43A1Ec(Ljava/util/List;IILjava/lang/Long;)V
    .registers 6

    .line 2268
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJ)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$u2TW10N9uT7noY_TMQjdO6jOhxM(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/io/File;Ljava/lang/String;)Z
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$readProcStatsHighWaterMark$24(ILjava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wUxNdOqdAvu1eEZFEhCqsRMnYeg(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .registers 19

    .line 1769
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v2

    .line 1770
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getSet()I

    move-result v3

    .line 1773
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v10

    .line 1774
    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct/range {v0 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$wsQuotj3SWNkKRsw_uNa6J17ks0(Landroid/os/SynchronousResultReceiver;Landroid/os/connectivity/WifiActivityEnergyInfo;)V
    .registers 4

    .line 2322
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2323
    const-string v1, "controller_activity"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 2324
    invoke-virtual {p0, p1, v0}, Landroid/os/SynchronousResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xOFqwPE7nMI3fCLOQoBFq0pcvKM(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->lambda$getIStoragedService$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$xeuQq6fOL1UHDCnAX43nv245240(Ljava/util/List;IIJJJJJJJJJJ)V
    .registers 23

    .line 3398
    invoke-static/range {p1 .. p22}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJJJJJJJJJ)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$yqp5chme2v7MqTJIlvKeyhs0tKo(Landroid/net/NetworkTemplate;ZLcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;)Z
    .registers 3

    .line 1651
    invoke-virtual {p2, p0, p1}, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->hasEqualParameters(Landroid/net/NetworkTemplate;Z)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAggregatedMobileDataStatsPuller(Lcom/android/server/stats/pull/StatsPullAtomService;)Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAggregatedMobileDataStatsPuller:Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppOpsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppSizeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppsOnExternalStorageInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppsOnExternalStorageInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAttributedAppOpsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAttributedAppOpsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBinderCallsStatsExceptionsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBinderCallsStatsExceptionsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBinderCallsStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBinderCallsStatsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBluetoothActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBluetoothActivityInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBluetoothBytesTransferLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBluetoothBytesTransferLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBuildInformationLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBuildInformationLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCategorySizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCategorySizeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCooldownDeviceLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCooldownDeviceLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCpuActiveTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuActiveTimeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCpuClusterTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuClusterTimeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCpuTimePerClusterFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerClusterFreqLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCpuTimePerThreadFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerThreadFreqLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCpuTimePerUidFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerUidFreqLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCpuTimePerUidLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerUidLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDangerousPermissionStateLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousPermissionStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDataBytesTransferLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDataBytesTransferLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDebugElapsedClockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDebugFailingElapsedClockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceCalculatedPowerUseLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDeviceCalculatedPowerUseLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDirectoryUsageLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDirectoryUsageLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDiskIoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDiskIoLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDiskStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDiskStatsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmExternalStorageInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mExternalStorageInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFaceSettingsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mFaceSettingsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHealthHalLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHealthHalLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHistoricalSubs(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHistoricalSubs:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInstalledIncrementalPackagesLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mInstalledIncrementalPackagesLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIonHeapSizeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmKernelWakelockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelWakelockLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLooperStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mLooperStatsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmModemActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mModemActivityInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNetworkStatsBaselines(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNotificationRemoteViewsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationRemoteViewsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNumBiometricsEnrolledLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNumBiometricsEnrolledLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerProfileLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mPowerProfileLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcessCpuTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTimeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcessMemoryHighWaterMarkLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessMemoryHighWaterMarkLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcessSystemIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessSystemIonHeapSizeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRoleHolderLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mRoleHolderLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRuntimeAppOpAccessMessageLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mRuntimeAppOpAccessMessageLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSettingsStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSettingsStatsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemElapsedRealtimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemElapsedRealtimeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemIonHeapSizeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSystemUptimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemUptimeLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTelephony(Lcom/android/server/stats/pull/StatsPullAtomService;)Landroid/telephony/TelephonyManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTelephony:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTemperatureLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTemperatureLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTimeZoneDataInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTimeZoneDataInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTimeZoneDetectionInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTimeZoneDetectionInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUwbActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mUwbActivityInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVoldLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mVoldLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWifiActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mWifiActivityInfoLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetDataUsageBytesTransferSnapshotForSubLocked(Lcom/android/server/stats/pull/StatsPullAtomService;Lcom/android/server/stats/pull/netstats/SubInfo;)Ljava/util/List;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->getDataUsageBytesTransferSnapshotForSubLocked(Lcom/android/server/stats/pull/netstats/SubInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mpullCachedAppsHighWatermark(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCachedAppsHighWatermark(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mpullDataBytesTransferLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDataBytesTransferLocked(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mpullHdrCapabilities(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullHdrCapabilities(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mpullHealthHalLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullHealthHalLocked(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mpullNumBiometricsEnrolledLocked(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullNumBiometricsEnrolledLocked(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mpullPendingIntentsPerPackage(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullPendingIntentsPerPackage(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mpullProcStatsLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcStatsLocked(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mpullProcessAssociationLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessAssociationLocked(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mpullProcessStateLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessStateLocked(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetmPreviousThermalThrottlingStatus()Landroid/util/ArrayMap;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mPreviousThermalThrottlingStatus:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 296
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    sput v0, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    .line 315
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/stats/pull/StatsPullAtomService;->NETSTATS_UID_DEFAULT_BUCKET_DURATION_MS:J

    const/4 v0, 0x1

    .line 474
    sput-boolean v0, Lcom/android/server/stats/pull/StatsPullAtomService;->ENABLE_MOBILE_DATA_STATS_AGGREGATED_PULLER:Z

    const/4 v0, 0x0

    .line 477
    sput-boolean v0, Lcom/android/server/stats/pull/StatsPullAtomService;->ENABLE_MEMCG_STATS_PULLER:Z

    .line 479
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mPreviousThermalThrottlingStatus:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 537
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 352
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalLock:Ljava/lang/Object;

    .line 356
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedLock:Ljava/lang/Object;

    .line 360
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationStatsLock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 370
    iput-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPreviousValue:J

    .line 372
    iput-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    .line 375
    iput-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPreviousValue:J

    .line 377
    iput-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPullCount:J

    const/4 v0, 0x0

    .line 397
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    const/4 v1, 0x0

    .line 432
    iput v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsSamplingRate:I

    .line 434
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousAppOpsListLock:Ljava/lang/Object;

    .line 435
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousAppOpsList:Landroid/util/ArraySet;

    .line 440
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    .line 447
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsAccumulators:Ljava/util/ArrayList;

    const-wide/16 v1, -0x3a98

    .line 452
    iput-wide v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mLastNetworkStatsPollTime:J

    .line 458
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHistoricalSubs:Ljava/util/ArrayList;

    .line 467
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAggregatedMobileDataStatsPuller:Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;

    .line 482
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDataBytesTransferLock:Ljava/lang/Object;

    .line 483
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBluetoothBytesTransferLock:Ljava/lang/Object;

    .line 484
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelWakelockLock:Ljava/lang/Object;

    .line 485
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerClusterFreqLock:Ljava/lang/Object;

    .line 486
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerUidLock:Ljava/lang/Object;

    .line 487
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerUidFreqLock:Ljava/lang/Object;

    .line 488
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuActiveTimeLock:Ljava/lang/Object;

    .line 489
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuClusterTimeLock:Ljava/lang/Object;

    .line 490
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mWifiActivityInfoLock:Ljava/lang/Object;

    .line 491
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mModemActivityInfoLock:Ljava/lang/Object;

    .line 492
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBluetoothActivityInfoLock:Ljava/lang/Object;

    .line 493
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mUwbActivityInfoLock:Ljava/lang/Object;

    .line 494
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemElapsedRealtimeLock:Ljava/lang/Object;

    .line 495
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemUptimeLock:Ljava/lang/Object;

    .line 496
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessMemoryHighWaterMarkLock:Ljava/lang/Object;

    .line 497
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSystemIonHeapSizeLock:Ljava/lang/Object;

    .line 498
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIonHeapSizeLock:Ljava/lang/Object;

    .line 499
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessSystemIonHeapSizeLock:Ljava/lang/Object;

    .line 500
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTemperatureLock:Ljava/lang/Object;

    .line 501
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCooldownDeviceLock:Ljava/lang/Object;

    .line 502
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBinderCallsStatsLock:Ljava/lang/Object;

    .line 503
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBinderCallsStatsExceptionsLock:Ljava/lang/Object;

    .line 504
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mLooperStatsLock:Ljava/lang/Object;

    .line 505
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDiskStatsLock:Ljava/lang/Object;

    .line 506
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDirectoryUsageLock:Ljava/lang/Object;

    .line 507
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppSizeLock:Ljava/lang/Object;

    .line 508
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCategorySizeLock:Ljava/lang/Object;

    .line 509
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNumBiometricsEnrolledLock:Ljava/lang/Object;

    .line 510
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    .line 511
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDiskIoLock:Ljava/lang/Object;

    .line 512
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mPowerProfileLock:Ljava/lang/Object;

    .line 513
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTimeLock:Ljava/lang/Object;

    .line 514
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuTimePerThreadFreqLock:Ljava/lang/Object;

    .line 515
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDeviceCalculatedPowerUseLock:Ljava/lang/Object;

    .line 516
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockLock:Ljava/lang/Object;

    .line 517
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockLock:Ljava/lang/Object;

    .line 518
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBuildInformationLock:Ljava/lang/Object;

    .line 519
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mRoleHolderLock:Ljava/lang/Object;

    .line 520
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTimeZoneDataInfoLock:Ljava/lang/Object;

    .line 521
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTimeZoneDetectionInfoLock:Ljava/lang/Object;

    .line 522
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mExternalStorageInfoLock:Ljava/lang/Object;

    .line 523
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppsOnExternalStorageInfoLock:Ljava/lang/Object;

    .line 524
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mFaceSettingsLock:Ljava/lang/Object;

    .line 525
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAppOpsLock:Ljava/lang/Object;

    .line 526
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mRuntimeAppOpAccessMessageLock:Ljava/lang/Object;

    .line 527
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationRemoteViewsLock:Ljava/lang/Object;

    .line 528
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousPermissionStateLock:Ljava/lang/Object;

    .line 529
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHealthHalLock:Ljava/lang/Object;

    .line 530
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mVoldLock:Ljava/lang/Object;

    .line 531
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAttributedAppOpsLock:Ljava/lang/Object;

    .line 532
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSettingsStatsLock:Ljava/lang/Object;

    .line 533
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mInstalledIncrementalPackagesLock:Ljava/lang/Object;

    .line 534
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKeystoreLock:Ljava/lang/Object;

    .line 538
    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-wide/16 v1, 0x7d0

    .line 1973
    :try_start_6
    invoke-virtual {p0, v1, v2}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    move-result-object v1

    .line 1974
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    if-eqz v2, :cond_3d

    const/4 v3, 0x1

    .line 1976
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 1978
    iget-object v1, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string v2, "controller_activity"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0
    :try_end_1a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_1a} :catch_1d

    if-eqz p0, :cond_3d

    return-object p0

    .line 1984
    :catch_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timeout reading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " stats"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "StatsPullAtomService"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    return-object v0
.end method

.method public static canQueryNetworkStatsForTypeProxy()Z
    .registers 2

    .line 1626
    :try_start_0
    new-instance v0, Landroid/net/NetworkTemplate$Builder;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_a} :catch_c

    const/4 v0, 0x1

    return v0

    .line 1629
    :catch_c
    const-string v0, "StatsPullAtomService"

    const-string v1, "Querying network stats for TYPE_PROXY is not allowed"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static convertTimeZoneSuggestionToProtoBytes(Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;)[B
    .registers 10

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 3883
    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3884
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3885
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;->isCertain()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x2

    :goto_17
    const-wide v3, 0x10e00000001L

    .line 3888
    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3890
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;->isCertain()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 3891
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;->getZoneIdOrdinals()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_2c
    if-ge v5, v3, :cond_3b

    aget v6, v2, v5

    const-wide v7, 0x20500000002L

    .line 3892
    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    .line 3896
    :cond_3b
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;->getZoneIds()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_51

    .line 3898
    array-length v2, p0

    :goto_42
    if-ge v4, v2, :cond_51

    aget-object v3, p0, v4

    const-wide v5, 0x20900000003L

    .line 3899
    invoke-virtual {v1, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    .line 3905
    :cond_51
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 3906
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3907
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static convertToMetricsDetectionMode(I)I
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_c

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_c

    if-eq p0, v0, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    return v1

    :cond_c
    return v0
.end method

.method public static getAllCollapsedRatTypes()[I
    .registers 6

    .line 1724
    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v0

    .line 1725
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1726
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_c
    if-ge v4, v2, :cond_1e

    aget v5, v0, v4

    .line 1727
    invoke-static {v5}, Landroid/app/usage/NetworkStatsManager;->getCollapsedRatType(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_1e
    const/4 v0, -0x2

    .line 1733
    invoke-static {v0}, Landroid/app/usage/NetworkStatsManager;->getCollapsedRatType(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1732
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1735
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1736
    invoke-static {v1}, Lcom/android/net/module/util/CollectionUtils;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v0

    return-object v0
.end method

.method private native initializeNativePullers()V
.end method

.method private synthetic lambda$onBootPhase$0()V
    .registers 1

    .line 890
    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->initializeNativePullers()V

    .line 891
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->initializePullersState()V

    .line 892
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerPullers()V

    .line 893
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerEventListeners()V

    return-void
.end method

.method public static readFully(Ljava/io/InputStream;[I)[B
    .registers 6

    .line 4349
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_9

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_9
    const/16 v0, 0x4000

    .line 4350
    :goto_b
    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    .line 4352
    :cond_f
    :goto_f
    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-gez v3, :cond_1a

    .line 4360
    aput v2, p1, v1

    return-object v0

    :cond_1a
    add-int/2addr v2, v3

    .line 4364
    array-length v3, v0

    if-lt v2, v3, :cond_f

    add-int/lit16 v3, v2, 0x4000

    .line 4365
    new-array v3, v3, [B

    .line 4369
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    goto :goto_f
.end method

.method public static removeEmptyEntries(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .registers 7

    .line 1452
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1453
    invoke-virtual {p0}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_43

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStats$Entry;

    .line 1454
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_3f

    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_3f

    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_3f

    .line 1455
    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_3f

    invoke-virtual {v1}, Landroid/net/NetworkStats$Entry;->getOperations()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-eqz v2, :cond_9

    .line 1456
    :cond_3f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1459
    :cond_43
    invoke-static {}, Lcom/android/server/stats/pull/netstats/NetworkStatsUtils;->isAddEntriesSupported()Z

    move-result p0

    if-eqz p0, :cond_57

    .line 1460
    new-instance p0, Landroid/net/NetworkStats;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, v2, v3, v1}, Landroid/net/NetworkStats;-><init>(JI)V

    invoke-virtual {p0, v0}, Landroid/net/NetworkStats;->addEntries(Ljava/util/List;)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0

    .line 1462
    :cond_57
    new-instance p0, Landroid/net/NetworkStats;

    const/4 v1, 0x1

    invoke-direct {p0, v2, v3, v1}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 1463
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_62
    if-ge v2, v1, :cond_71

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/net/NetworkStats$Entry;

    .line 1464
    invoke-virtual {p0, v3}, Landroid/net/NetworkStats;->addEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object p0

    goto :goto_62

    :cond_71
    return-object p0
.end method

.method public static unpackStreamedData(ILjava/util/List;Ljava/util/List;)V
    .registers 5

    .line 4341
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    const/4 p2, 0x1

    .line 4342
    new-array p2, p2, [I

    .line 4343
    invoke-static {v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->readFully(Ljava/io/InputStream;[I)[B

    move-result-object v0

    .line 4344
    aget p2, p2, v1

    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[B)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final addNetworkStats(ILjava/util/List;Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)V
    .registers 40

    move/from16 v0, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 1479
    iget v3, v14, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->oemManaged:I

    .line 1484
    iget v1, v14, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    const/4 v2, -0x2

    const/4 v4, 0x1

    if-ne v1, v2, :cond_11

    move/from16 v16, v4

    goto :goto_13

    :cond_11
    const/16 v16, 0x0

    :goto_13
    if-nez v16, :cond_1d

    const/16 v2, 0x14

    if-ne v1, v2, :cond_1a

    goto :goto_1d

    :cond_1a
    const/16 v32, 0x0

    goto :goto_1f

    :cond_1d
    :goto_1d
    move/from16 v32, v4

    :goto_1f
    const/16 v1, 0x2774

    if-ne v0, v1, :cond_90

    .line 1489
    iget-object v0, v14, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->transports:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_27
    if-ge v2, v1, :cond_1e3

    move v5, v4

    aget v4, v0, v2

    .line 1490
    iget-object v6, v14, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v6}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_32
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_85

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkStats$Entry;

    move v7, v1

    .line 1492
    invoke-virtual {v6}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v1

    .line 1493
    invoke-virtual {v6}, Landroid/net/NetworkStats$Entry;->getSet()I

    move-result v8

    if-lez v8, :cond_4e

    move v8, v2

    move v2, v5

    move v10, v2

    :goto_4c
    move-object v9, v6

    goto :goto_52

    :cond_4e
    move v8, v2

    move v10, v5

    const/4 v2, 0x0

    goto :goto_4c

    :goto_52
    invoke-virtual {v9}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v5

    move v11, v7

    move v12, v8

    .line 1494
    invoke-virtual {v9}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v7

    move-object/from16 v17, v9

    move/from16 v18, v10

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v9

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v19

    move-object/from16 v17, v0

    const/16 v0, 0x2774

    move/from16 v15, v18

    move/from16 v18, v11

    move-wide/from16 v34, v19

    move/from16 v19, v12

    move-wide/from16 v11, v34

    .line 1491
    invoke-static/range {v0 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIZIIJJJJ)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v15

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    goto :goto_32

    :cond_85
    move-object/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move v15, v5

    add-int/lit8 v2, v19, 0x1

    move v4, v15

    goto :goto_27

    :cond_90
    move v15, v4

    .line 1500
    iget-object v1, v14, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v1}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :goto_97
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e3

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStats$Entry;

    const/16 v2, 0x2762

    const/16 v3, 0xd

    if-eq v0, v2, :cond_1a7

    const/16 v2, 0x2763

    if-eq v0, v2, :cond_170

    const/16 v2, 0x27d8

    if-eq v0, v2, :cond_d6

    const/16 v2, 0x2809

    .line 1501
    const-string v3, "StatsPullAtomService"

    if-eq v0, v2, :cond_f9

    const/16 v2, 0x280a

    if-eq v0, v2, :cond_f9

    packed-switch v0, :pswitch_data_1e4

    .line 1550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected atom passed to addNetworkStats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d3
    move-object/from16 v4, p0

    goto :goto_110

    :cond_d6
    :pswitch_d6
    move-object v0, v1

    goto/16 :goto_148

    :pswitch_d9
    move-object v2, v1

    .line 1546
    invoke-virtual {v2}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v1

    move-object v4, v2

    .line 1547
    invoke-virtual {v4}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v2

    move-object v6, v4

    invoke-virtual {v6}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v4

    move-object v8, v6

    invoke-virtual {v8}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v6

    .line 1548
    invoke-virtual {v8}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v8

    .line 1546
    invoke-static/range {v0 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJJJ)Landroid/util/StatsEvent;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d3

    :cond_f9
    move-object v8, v1

    .line 1522
    invoke-static {}, Lcom/android/server/stats/pull/netstats/NetworkStatsUtils;->isTransportTypeSupported()Z

    move-result v0

    if-nez v0, :cond_106

    .line 1523
    const-string v0, "addNetworkStats for Satellite/Ethernet without flag enabled!"

    invoke-static {v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1527
    :cond_106
    invoke-virtual {v8}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_113

    :goto_110
    move/from16 v0, p1

    goto :goto_97

    .line 1532
    :cond_113
    invoke-virtual {v8}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v1

    .line 1533
    invoke-virtual {v8}, Landroid/net/NetworkStats$Entry;->getTag()I

    move-result v2

    invoke-virtual {v8}, Landroid/net/NetworkStats$Entry;->getMetered()I

    move-result v0

    if-ne v0, v15, :cond_123

    move v3, v15

    goto :goto_124

    :cond_123
    const/4 v3, 0x0

    .line 1534
    :goto_124
    invoke-virtual {v8}, Landroid/net/NetworkStats$Entry;->getSet()I

    move-result v0

    if-ne v0, v15, :cond_12c

    move v4, v15

    goto :goto_12d

    :cond_12c
    const/4 v4, 0x0

    :goto_12d
    invoke-virtual {v8}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v5

    move-object v0, v8

    .line 1535
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v7

    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v9

    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v11

    move/from16 v0, p1

    .line 1532
    invoke-static/range {v0 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIZZJJJJ)Landroid/util/StatsEvent;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d3

    .line 1540
    :goto_148
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v1

    .line 1541
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getSet()I

    move-result v2

    if-lez v2, :cond_154

    move v2, v15

    goto :goto_155

    :cond_154
    const/4 v2, 0x0

    :goto_155
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v5

    .line 1542
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v7

    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v9

    move/from16 v0, p1

    .line 1540
    invoke-static/range {v0 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIZJJJJ)Landroid/util/StatsEvent;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d3

    :cond_170
    move-object v0, v1

    .line 1504
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v18

    .line 1505
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getMetered()I

    move-result v1

    if-ne v1, v15, :cond_17e

    move/from16 v19, v15

    goto :goto_180

    :cond_17e
    const/16 v19, 0x0

    :goto_180
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getTag()I

    move-result v20

    .line 1506
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v21

    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v23

    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v25

    .line 1507
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v27

    if-eqz v16, :cond_199

    :goto_196
    move/from16 v29, v3

    goto :goto_19c

    .line 1508
    :cond_199
    iget v3, v14, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    goto :goto_196

    :goto_19c
    const/16 v17, 0x2763

    .line 1503
    invoke-static/range {v17 .. v29}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIZIJJJJI)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d3

    :cond_1a7
    move-object v0, v1

    .line 1513
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getSet()I

    move-result v18

    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v19

    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v21

    .line 1514
    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v23

    invoke-virtual {v0}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v25

    if-eqz v16, :cond_1c1

    :goto_1be
    move/from16 v27, v3

    goto :goto_1c4

    .line 1515
    :cond_1c1
    iget v3, v14, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    goto :goto_1be

    :goto_1c4
    iget-object v0, v14, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

    iget-object v1, v0, Lcom/android/server/stats/pull/netstats/SubInfo;->mcc:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/stats/pull/netstats/SubInfo;->mnc:Ljava/lang/String;

    iget v3, v0, Lcom/android/server/stats/pull/netstats/SubInfo;->carrierId:I

    move-object/from16 v4, p0

    .line 1519
    invoke-virtual {v4, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->subInfoisOpportunistic(Lcom/android/server/stats/pull/netstats/SubInfo;)I

    move-result v31

    const/16 v17, 0x2762

    move-object/from16 v28, v1

    move-object/from16 v29, v2

    move/from16 v30, v3

    .line 1511
    invoke-static/range {v17 .. v32}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJJJILjava/lang/String;Ljava/lang/String;IIZ)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_110

    :cond_1e3
    return-void

    :pswitch_data_1e4
    .packed-switch 0x2710
        :pswitch_d9
        :pswitch_d6
        :pswitch_d9
        :pswitch_d6
    .end packed-switch
.end method

.method public final collectNetworkStatsSnapshotForAtomLocked(I)Ljava/util/List;
    .registers 16

    .line 1329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x2762

    const/4 v2, 0x0

    if-eq p1, v1, :cond_128

    const/16 v1, 0x2763

    const/4 v3, 0x1

    if-eq p1, v1, :cond_ed

    const/16 v1, 0x2774

    if-eq p1, v1, :cond_e5

    const/16 v1, 0x27d8

    if-eq p1, v1, :cond_bd

    const/16 v1, 0x2809

    const/16 v4, 0x280a

    if-eq p1, v1, :cond_8d

    if-eq p1, v4, :cond_8d

    packed-switch p1, :pswitch_data_142

    .line 1412
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown atomTag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1355
    :pswitch_39
    invoke-virtual {p0, v2, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTransportLocked(IZ)Landroid/net/NetworkStats;

    move-result-object p1

    .line 1357
    new-instance v1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUidAndFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p0

    filled-new-array {v2}, [I

    move-result-object p1

    invoke-direct {v1, p0, p1, v3}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 1347
    :pswitch_4e
    invoke-virtual {p0, v2, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTransportLocked(IZ)Landroid/net/NetworkStats;

    move-result-object p1

    .line 1349
    new-instance v1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUid(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p0

    filled-new-array {v2}, [I

    move-result-object p1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 1339
    :pswitch_63
    invoke-virtual {p0, v3, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTransportLocked(IZ)Landroid/net/NetworkStats;

    move-result-object p1

    .line 1341
    new-instance v1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUidAndFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p0

    filled-new-array {v3}, [I

    move-result-object p1

    invoke-direct {v1, p0, p1, v3}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 1332
    :pswitch_78
    invoke-virtual {p0, v3, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTransportLocked(IZ)Landroid/net/NetworkStats;

    move-result-object p1

    .line 1334
    new-instance v1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUid(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p0

    filled-new-array {v3}, [I

    move-result-object p1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 1397
    :cond_8d
    invoke-static {}, Lcom/android/server/stats/pull/netstats/NetworkStatsUtils;->isTransportTypeSupported()Z

    move-result v1

    if-nez v1, :cond_9b

    .line 1398
    const-string p0, "StatsPullAtomService"

    const-string p1, "Ethernet/Satellite case reached without flag enabled!"

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_9b
    if-ne p1, v4, :cond_a0

    const/16 p1, 0xa

    goto :goto_a1

    :cond_a0
    const/4 p1, 0x3

    .line 1403
    :goto_a1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTransportLocked(IZ)Landroid/net/NetworkStats;

    move-result-object v1

    .line 1405
    new-instance v2, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-virtual {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUidTagAndMetered(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v3

    filled-new-array {p1}, [I

    move-result-object v4

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;IZ)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 1362
    :cond_bd
    new-instance p1, Landroid/net/NetworkTemplate$Builder;

    const/16 v1, 0x9

    invoke-direct {p1, v1}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 1363
    invoke-virtual {p1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object p1

    .line 1362
    invoke-virtual {p0, p1, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplateLocked(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    move-result-object p1

    .line 1364
    new-instance v1, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUidAndFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v2

    const/4 p0, 0x2

    filled-new-array {p0}, [I

    move-result-object v3

    const/4 v9, -0x1

    const/4 v10, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 1392
    :cond_e5
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getDataUsageBytesTransferSnapshotForOemManagedLocked()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0

    .line 1372
    :cond_ed
    new-instance p1, Landroid/net/NetworkTemplate$Builder;

    const/4 v1, 0x4

    invoke-direct {p1, v1}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 1373
    invoke-virtual {p1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object p1

    .line 1372
    invoke-virtual {p0, p1, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplateLocked(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    move-result-object p1

    .line 1374
    new-instance v1, Landroid/net/NetworkTemplate$Builder;

    invoke-direct {v1, v3}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 1376
    invoke-virtual {v1, v3}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 1374
    invoke-virtual {p0, v1, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplateLocked(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    move-result-object v1

    .line 1377
    invoke-virtual {p1, v1}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p1

    .line 1378
    new-instance v4, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUidTagAndMetered(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v5

    filled-new-array {v3, v2}, [I

    move-result-object v6

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;IZ)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 1386
    :cond_128
    iget-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHistoricalSubs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_12e
    if-ge v2, v1, :cond_140

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/stats/pull/netstats/SubInfo;

    .line 1387
    invoke-virtual {p0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->getDataUsageBytesTransferSnapshotForSubLocked(Lcom/android/server/stats/pull/netstats/SubInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_12e

    :cond_140
    return-object v0

    nop

    :pswitch_data_142
    .packed-switch 0x2710
        :pswitch_78
        :pswitch_63
        :pswitch_4e
        :pswitch_39
    .end packed-switch
.end method

.method public final convertToAccessibilityShortcutType(I)I
    .registers 2

    .line 0
    const/4 p0, 0x1

    if-eqz p1, :cond_d

    if-eq p1, p0, :cond_c

    const/4 p0, 0x2

    if-eq p1, p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 p0, 0x6

    return p0

    :cond_c
    const/4 p0, 0x5

    :cond_d
    return p0
.end method

.method public final countAccessibilityServices(Ljava/lang/String;)I
    .registers 5

    .line 5427
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    return v0

    .line 5430
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->chars()Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda22;

    invoke-direct {v1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda22;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->count()J

    move-result-wide v1

    long-to-int p0, v1

    .line 5431
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_21

    return v0

    :cond_21
    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final createModeGroups([Landroid/view/Display$Mode;)Ljava/util/Map;
    .registers 14

    .line 5389
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 5391
    array-length v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_9
    if-ge v4, v1, :cond_61

    aget-object v5, p1, v4

    .line 5392
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getModeId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    goto :goto_5e

    .line 5395
    :cond_1c
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getModeId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5396
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getAlternativeRefreshRates()[F

    move-result-object v6

    array-length v7, v6

    move v8, v3

    :goto_31
    if-ge v8, v7, :cond_5c

    aget v9, v6, v8

    .line 5397
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v10

    .line 5398
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v11

    .line 5397
    invoke-virtual {p0, p1, v10, v11, v9}, Lcom/android/server/stats/pull/StatsPullAtomService;->findModeId([Landroid/view/Display$Mode;IIF)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_59

    .line 5399
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_59

    .line 5400
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_59
    add-int/lit8 v8, v8, 0x1

    goto :goto_31

    :cond_5c
    add-int/lit8 v2, v2, 0x1

    :goto_5e
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_61
    return-object v0
.end method

.method public final fetchBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .registers 5

    .line 1990
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 1992
    new-instance v1, Landroid/os/SynchronousResultReceiver;

    const-string v2, "bluetooth"

    invoke-direct {v1, v2}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 1994
    new-instance v2, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    new-instance v3, Lcom/android/server/stats/pull/StatsPullAtomService$1;

    invoke-direct {v3, p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService$1;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;Landroid/os/SynchronousResultReceiver;)V

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->requestControllerActivityEnergyInfo(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)V

    .line 2016
    invoke-static {v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    return-object p0

    .line 2018
    :cond_21
    const-string p0, "StatsPullAtomService"

    const-string v0, "Failed to get bluetooth adapter!"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final findModeId([Landroid/view/Display$Mode;IIF)I
    .registers 8

    .line 5409
    array-length p0, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p0, :cond_14

    aget-object v1, p1, v0

    .line 5410
    invoke-virtual {v1, p2, p3, p4}, Landroid/view/Display$Mode;->matches(IIF)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 5411
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    move-result p0

    return p0

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_14
    const/4 p0, -0x1

    return p0
.end method

.method public final getDataUsageBytesTransferSnapshotForOemManagedLocked()Ljava/util/List;
    .registers 20

    move-object/from16 v0, p0

    .line 1558
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x5

    .line 1559
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Landroid/util/Pair;

    const/4 v4, 0x1

    .line 1560
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v2, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Landroid/util/Pair;

    const/4 v8, 0x4

    .line 1561
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1558
    invoke-static {v1, v2, v7}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    .line 1563
    filled-new-array {v3, v4, v2}, [I

    move-result-object v2

    .line 1566
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1568
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 1569
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    move v8, v6

    :goto_4d
    if-ge v8, v3, :cond_3c

    .line 1570
    aget v9, v2, v8

    .line 1574
    new-instance v10, Landroid/net/NetworkTemplate$Builder;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v10, v11}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 1575
    invoke-virtual {v10, v9}, Landroid/net/NetworkTemplate$Builder;->setOemManaged(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v10

    .line 1576
    invoke-virtual {v0, v10, v6}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplateLocked(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    move-result-object v10

    .line 1578
    iget-object v11, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    move/from16 v17, v9

    .line 1579
    new-instance v9, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-virtual {v0, v10}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByUidAndFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v10

    .line 1580
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    filled-new-array {v11}, [I

    move-result-object v11

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;IZ)V

    .line 1579
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_4d

    :cond_8b
    return-object v4
.end method

.method public final getDataUsageBytesTransferSnapshotForSubLocked(Lcom/android/server/stats/pull/netstats/SubInfo;)Ljava/util/List;
    .registers 19

    move-object/from16 v0, p0

    .line 1701
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1702
    invoke-static {}, Lcom/android/server/stats/pull/StatsPullAtomService;->getAllCollapsedRatTypes()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_e
    if-ge v5, v3, :cond_51

    aget v12, v2, v5

    .line 1703
    new-instance v6, Landroid/net/NetworkTemplate$Builder;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    move-object/from16 v13, p1

    iget-object v8, v13, Lcom/android/server/stats/pull/netstats/SubInfo;->subscriberId:Ljava/lang/String;

    .line 1705
    invoke-static {v8}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/net/NetworkTemplate$Builder;->setSubscriberIds(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    move-result-object v6

    .line 1706
    invoke-virtual {v6, v12}, Landroid/net/NetworkTemplate$Builder;->setRatType(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object v6

    .line 1707
    invoke-virtual {v6, v7}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v6

    .line 1709
    invoke-virtual {v0, v6, v4}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplateLocked(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    move-result-object v6

    .line 1710
    new-instance v7, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    invoke-virtual {v0, v6}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStatsByFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v6

    filled-new-array {v4}, [I

    move-result-object v8

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v16, v7

    move-object v7, v6

    move-object/from16 v6, v16

    invoke-direct/range {v6 .. v15}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;IZ)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_51
    return-object v1
.end method

.method public final getIKeystoreMetricsService()Landroid/security/metrics/IKeystoreMetrics;
    .registers 5

    .line 1203
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKeystoreLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1204
    :try_start_3
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;

    if-nez v1, :cond_30

    .line 1205
    const-string v1, "android.security.metrics"

    .line 1206
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1205
    invoke-static {v1}, Landroid/security/metrics/IKeystoreMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/metrics/IKeystoreMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_23

    if-eqz v1, :cond_30

    .line 1209
    :try_start_15
    invoke-interface {v1}, Landroid/security/metrics/IKeystoreMetrics;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_22} :catch_25
    .catchall {:try_start_15 .. :try_end_22} :catchall_23

    goto :goto_30

    :catchall_23
    move-exception p0

    goto :goto_34

    :catch_25
    move-exception v1

    .line 1215
    :try_start_26
    const-string v2, "StatsPullAtomService"

    const-string v3, "linkToDeath with IKeystoreMetrics failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    .line 1216
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;

    .line 1220
    :cond_30
    :goto_30
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;

    monitor-exit v0

    return-object p0

    .line 1221
    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_26 .. :try_end_35} :catchall_23

    throw p0
.end method

.method public final getINotificationManagerService()Landroid/app/INotificationManager;
    .registers 5

    .line 1270
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1271
    :try_start_3
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    if-nez v1, :cond_17

    .line 1272
    const-string/jumbo v1, "notification"

    .line 1273
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1272
    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    goto :goto_17

    :catchall_15
    move-exception p0

    goto :goto_38

    .line 1275
    :cond_17
    :goto_17
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_15

    if-eqz v1, :cond_34

    .line 1277
    :try_start_1b
    invoke-interface {v1}, Landroid/app/INotificationManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_28} :catch_29
    .catchall {:try_start_1b .. :try_end_28} :catchall_15

    goto :goto_34

    :catch_29
    move-exception v1

    .line 1283
    :try_start_2a
    const-string v2, "StatsPullAtomService"

    const-string v3, "linkToDeath with notificationManager failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    .line 1284
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    .line 1287
    :cond_34
    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_15

    .line 1288
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    return-object p0

    .line 1287
    :goto_38
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_15

    throw p0
.end method

.method public final getIProcessStatsService()Lcom/android/internal/app/procstats/IProcessStats;
    .registers 5

    .line 1292
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1293
    :try_start_3
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    if-nez v1, :cond_17

    .line 1294
    const-string/jumbo v1, "procstats"

    .line 1295
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1294
    invoke-static {v1}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/procstats/IProcessStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    goto :goto_17

    :catchall_15
    move-exception p0

    goto :goto_38

    .line 1297
    :cond_17
    :goto_17
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_15

    if-eqz v1, :cond_34

    .line 1299
    :try_start_1b
    invoke-interface {v1}, Lcom/android/internal/app/procstats/IProcessStats;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_28} :catch_29
    .catchall {:try_start_1b .. :try_end_28} :catchall_15

    goto :goto_34

    :catch_29
    move-exception v1

    .line 1305
    :try_start_2a
    const-string v2, "StatsPullAtomService"

    const-string v3, "linkToDeath with ProcessStats failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    .line 1306
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    .line 1309
    :cond_34
    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_15

    .line 1310
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    return-object p0

    .line 1309
    :goto_38
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_15

    throw p0
.end method

.method public final getIStoragedService()Landroid/os/IStoraged;
    .registers 5

    .line 1225
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1226
    :try_start_3
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    if-nez v1, :cond_17

    .line 1227
    const-string/jumbo v1, "storaged"

    .line 1228
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1227
    invoke-static {v1}, Landroid/os/IStoraged$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStoraged;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    goto :goto_17

    :catchall_15
    move-exception p0

    goto :goto_38

    .line 1230
    :cond_17
    :goto_17
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_15

    if-eqz v1, :cond_34

    .line 1232
    :try_start_1b
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda26;

    invoke-direct {v2, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_28} :catch_29
    .catchall {:try_start_1b .. :try_end_28} :catchall_15

    goto :goto_34

    :catch_29
    move-exception v1

    .line 1238
    :try_start_2a
    const-string v2, "StatsPullAtomService"

    const-string v3, "linkToDeath with storagedService failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    .line 1239
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    .line 1242
    :cond_34
    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_15

    .line 1243
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    return-object p0

    .line 1242
    :goto_38
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_15

    throw p0
.end method

.method public final getIThermalService()Landroid/os/IThermalService;
    .registers 5

    .line 1181
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1182
    :try_start_3
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;

    if-nez v1, :cond_31

    .line 1183
    const-string/jumbo v1, "thermalservice"

    .line 1184
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1183
    invoke-static {v1}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_24

    if-eqz v1, :cond_31

    .line 1187
    :try_start_16
    invoke-interface {v1}, Landroid/os/IThermalService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_23} :catch_26
    .catchall {:try_start_16 .. :try_end_23} :catchall_24

    goto :goto_31

    :catchall_24
    move-exception p0

    goto :goto_35

    :catch_26
    move-exception v1

    .line 1193
    :try_start_27
    const-string v2, "StatsPullAtomService"

    const-string v3, "linkToDeath with thermalService failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    .line 1194
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;

    .line 1198
    :cond_31
    :goto_31
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;

    monitor-exit v0

    return-object p0

    .line 1199
    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_27 .. :try_end_36} :catchall_24

    throw p0
.end method

.method public final getIVoldService()Landroid/os/IVold;
    .registers 5

    .line 1248
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mVoldLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1249
    :try_start_3
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mVoldService:Landroid/os/IVold;

    if-nez v1, :cond_17

    .line 1250
    const-string/jumbo v1, "vold"

    .line 1251
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1250
    invoke-static {v1}, Landroid/os/IVold$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVold;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mVoldService:Landroid/os/IVold;

    goto :goto_17

    :catchall_15
    move-exception p0

    goto :goto_38

    .line 1253
    :cond_17
    :goto_17
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mVoldService:Landroid/os/IVold;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_15

    if-eqz v1, :cond_34

    .line 1255
    :try_start_1b
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda25;

    invoke-direct {v2, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_28} :catch_29
    .catchall {:try_start_1b .. :try_end_28} :catchall_15

    goto :goto_34

    :catch_29
    move-exception v1

    .line 1261
    :try_start_2a
    const-string v2, "StatsPullAtomService"

    const-string v3, "linkToDeath with Vold failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    .line 1262
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mVoldService:Landroid/os/IVold;

    .line 1265
    :cond_34
    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_15

    .line 1266
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mVoldService:Landroid/os/IVold;

    return-object p0

    .line 1265
    :goto_38
    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_15

    throw p0
.end method

.method public final getNetworkStatsManager()Landroid/app/usage/NetworkStatsManager;
    .registers 2

    .line 1091
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    if-eqz p0, :cond_5

    return-object p0

    .line 1092
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "NetworkStatsManager is not ready"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getStatsFromProcessStatsService(I)Lcom/android/internal/app/procstats/ProcessStats;
    .registers 15

    .line 3252
    const-string v0, "_"

    const-string v1, "/"

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIProcessStatsService()Lcom/android/internal/app/procstats/IProcessStats;

    move-result-object v2

    const/4 v9, 0x0

    if-nez v2, :cond_c

    return-object v9

    .line 3256
    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 3259
    :try_start_10
    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->readProcStatsHighWaterMark(I)J

    move-result-wide v3

    .line 3260
    new-instance v8, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v5, 0x0

    invoke-direct {v8, v5}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v5, 0x1f

    .line 3263
    invoke-interface/range {v2 .. v8}, Lcom/android/internal/app/procstats/IProcessStats;->getCommittedStatsMerged(JIZLjava/util/List;Lcom/android/internal/app/procstats/ProcessStats;)J

    move-result-wide v5

    .line 3269
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBaseDir:Ljava/io/File;

    .line 3270
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3272
    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->highWaterMarkFilePrefix(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3275
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3276
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBaseDir:Ljava/io/File;

    .line 3277
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3279
    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->highWaterMarkFilePrefix(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3282
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_76} :catch_7d
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_76} :catch_7d
    .catchall {:try_start_10 .. :try_end_76} :catchall_7a

    .line 3288
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v8

    :catchall_7a
    move-exception v0

    move-object p0, v0

    goto :goto_8a

    :catch_7d
    move-exception v0

    move-object p0, v0

    .line 3285
    :try_start_7f
    const-string p1, "StatsPullAtomService"

    const-string v0, "Getting procstats failed: "

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_7a

    .line 3288
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v9

    :goto_8a
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3289
    throw p0
.end method

.method public final getUidNetworkStatsSnapshotForTemplateLocked(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;
    .registers 19

    move-object/from16 v0, p0

    .line 1644
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1645
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sub-long v1, v3, v1

    .line 1647
    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "netstats_uid_bucket_duration"

    sget-wide v7, Lcom/android/server/stats/pull/StatsPullAtomService;->NETSTATS_UID_DEFAULT_BUCKET_DURATION_MS:J

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v12

    .line 1650
    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsAccumulators:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda4;

    move-object/from16 v10, p1

    move/from16 v11, p2

    invoke-direct {v6, v10, v11}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda4;-><init>(Landroid/net/NetworkTemplate;Z)V

    invoke-static {v5, v6}, Lcom/android/internal/util/CollectionUtils;->find(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;

    if-nez v5, :cond_41

    .line 1653
    new-instance v9, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;

    sub-long v14, v1, v12

    invoke-direct/range {v9 .. v15}, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;-><init>(Landroid/net/NetworkTemplate;ZJJ)V

    .line 1658
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsAccumulators:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, v9

    .line 1661
    :cond_41
    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    invoke-virtual {v5, v3, v4, v1}, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->queryStats(JLcom/android/server/stats/pull/netstats/NetworkStatsAccumulator$StatsQueryFunction;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public final getUidNetworkStatsSnapshotForTemplateLocked(Landroid/net/NetworkTemplate;ZJJ)Landroid/net/NetworkStats;
    .registers 14

    .line 1674
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1676
    iget-wide v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mLastNetworkStatsPollTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3a98

    cmp-long v2, v2, v4

    if-ltz v2, :cond_17

    .line 1677
    iput-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mLastNetworkStatsPollTime:J

    .line 1678
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getNetworkStatsManager()Landroid/app/usage/NetworkStatsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/usage/NetworkStatsManager;->forceUpdate()V

    .line 1682
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getNetworkStatsManager()Landroid/app/usage/NetworkStatsManager;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v1 .. v6}, Landroid/app/usage/NetworkStatsManager;->querySummary(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats;

    move-result-object p1

    move-object v1, v2

    move-wide v2, v3

    move-wide v4, v5

    .line 1685
    invoke-static {p1}, Lcom/android/server/stats/pull/netstats/NetworkStatsUtils;->fromPublicNetworkStats(Landroid/app/usage/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p3

    .line 1686
    invoke-virtual {p1}, Landroid/app/usage/NetworkStats;->close()V

    if-nez p2, :cond_2f

    return-object p3

    .line 1690
    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getNetworkStatsManager()Landroid/app/usage/NetworkStatsManager;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/NetworkStatsManager;->queryTaggedSummary(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats;

    move-result-object p0

    .line 1692
    invoke-static {p0}, Lcom/android/server/stats/pull/netstats/NetworkStatsUtils;->fromPublicNetworkStats(Landroid/app/usage/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p1

    .line 1693
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->close()V

    .line 1694
    invoke-virtual {p3, p1}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method public final getUidNetworkStatsSnapshotForTransportLocked(IZ)Landroid/net/NetworkStats;
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_3a

    if-eq p1, v0, :cond_2f

    const/4 v0, 0x3

    .line 1597
    const-string v1, "StatsPullAtomService"

    if-eq p1, v0, :cond_14

    const/16 v0, 0xa

    if-eq p1, v0, :cond_14

    .line 1614
    const-string p1, "Unexpected transport."

    invoke-static {v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 1607
    :cond_14
    invoke-static {}, Lcom/android/server/stats/pull/netstats/NetworkStatsUtils;->isTransportTypeSupported()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1608
    const-string p1, "Attempted to call setTransportType without flag enabled!"

    invoke-static {v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    const/4 p1, 0x0

    goto :goto_47

    .line 1611
    :cond_21
    new-instance v0, Landroid/net/NetworkTemplate$Builder;

    invoke-direct {v0}, Landroid/net/NetworkTemplate$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/net/NetworkTemplate$Builder;->setTransportType(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object p1

    goto :goto_47

    .line 1603
    :cond_2f
    new-instance p1, Landroid/net/NetworkTemplate$Builder;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    invoke-virtual {p1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object p1

    goto :goto_47

    .line 1599
    :cond_3a
    new-instance p1, Landroid/net/NetworkTemplate$Builder;

    invoke-direct {p1, v0}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 1600
    invoke-virtual {p1, v0}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object p1

    .line 1616
    :goto_47
    invoke-virtual {p0, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplateLocked(Landroid/net/NetworkTemplate;Z)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method public final hasDolbyVisionIssue(Landroid/view/Display;)Z
    .registers 4

    .line 5163
    new-instance p0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 5164
    invoke-virtual {p1}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda11;-><init>()V

    .line 5165
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda12;-><init>()V

    .line 5166
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda13;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 5167
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 5169
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_3a

    .line 5170
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object p1

    array-length p1, p1

    if-ge p0, p1, :cond_3a

    const/4 p0, 0x1

    return p0

    :cond_3a
    const/4 p0, 0x0

    return p0
.end method

.method public final highWaterMarkFilePrefix(I)Ljava/lang/String;
    .registers 3

    const/16 p0, 0x272d

    if-ne p1, p0, :cond_b

    const/16 p0, 0x1f

    .line 3347
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/16 p0, 0x2732

    if-ne p1, p0, :cond_15

    const/4 p0, 0x2

    .line 3350
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3352
    :cond_15
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "atom-"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final initAndRegisterDeferredPullers()V
    .registers 3

    .line 1174
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.uwb"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1175
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/uwb/UwbManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/UwbManager;

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mUwbManager:Landroid/uwb/UwbManager;

    .line 1177
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerUwbActivityInfo()V

    return-void
.end method

.method public final initAndRegisterNetworkStatsPullers()V
    .registers 5

    .line 1106
    invoke-static {}, Lcom/android/server/stats/pull/StatsPullAtomService;->canQueryNetworkStatsForTypeProxy()Z

    move-result v0

    .line 1109
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDataBytesTransferLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1110
    :try_start_7
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v3, 0x2710

    .line 1111
    invoke-virtual {p0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtomLocked(I)Ljava/util/List;

    move-result-object v3

    .line 1110
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1113
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v3, 0x2711

    .line 1114
    invoke-virtual {p0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtomLocked(I)Ljava/util/List;

    move-result-object v3

    .line 1113
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1116
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v3, 0x2712

    .line 1117
    invoke-virtual {p0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtomLocked(I)Ljava/util/List;

    move-result-object v3

    .line 1116
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1119
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v3, 0x2713

    invoke-virtual {p0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtomLocked(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1121
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v3, 0x2763

    invoke-virtual {p0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtomLocked(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1123
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v3, 0x2762

    .line 1124
    invoke-virtual {p0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtomLocked(I)Ljava/util/List;

    move-result-object v3

    .line 1123
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1126
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v3, 0x2774

    .line 1127
    invoke-virtual {p0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtomLocked(I)Ljava/util/List;

    move-result-object v3

    .line 1126
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v0, :cond_64

    .line 1130
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v3, 0x27d8

    invoke-virtual {p0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtomLocked(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_64

    :catchall_62
    move-exception p0

    goto :goto_bd

    .line 1133
    :cond_64
    :goto_64
    invoke-static {}, Lcom/android/server/stats/pull/netstats/NetworkStatsUtils;->isTransportTypeSupported()Z

    move-result v2

    if-eqz v2, :cond_80

    .line 1134
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v3, 0x2809

    .line 1135
    invoke-virtual {p0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtomLocked(I)Ljava/util/List;

    move-result-object v3

    .line 1134
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1136
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    const/16 v3, 0x280a

    .line 1137
    invoke-virtual {p0, v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtomLocked(I)Ljava/util/List;

    move-result-object v3

    .line 1136
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1139
    :cond_80
    monitor-exit v1
    :try_end_81
    .catchall {:try_start_7 .. :try_end_81} :catchall_62

    .line 1143
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 1144
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsSubscriptionsListener:Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;

    .line 1143
    invoke-virtual {v1, v2, v3}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 1146
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerWifiBytesTransfer()V

    .line 1147
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerWifiBytesTransferBackground()V

    .line 1148
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerMobileBytesTransfer()V

    .line 1149
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerMobileBytesTransferBackground()V

    .line 1150
    sget-boolean v1, Lcom/android/server/stats/pull/StatsPullAtomService;->ENABLE_MOBILE_DATA_STATS_AGGREGATED_PULLER:Z

    if-eqz v1, :cond_a2

    .line 1151
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->initMobileDataStatsPuller()V

    .line 1152
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerMobileBytesTransferByProcState()V

    .line 1154
    :cond_a2
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBytesTransferByTagAndMetered()V

    .line 1155
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDataUsageBytesTransfer()V

    .line 1156
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerOemManagedBytesTransfer()V

    if-eqz v0, :cond_b0

    .line 1158
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProxyBytesTransferBackground()V

    .line 1160
    :cond_b0
    invoke-static {}, Lcom/android/server/stats/pull/netstats/NetworkStatsUtils;->isTransportTypeSupported()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 1161
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerEthernetBytesTransfer()V

    .line 1162
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerSatelliteBytesTransfer()V

    :cond_bc
    return-void

    .line 1139
    :goto_bd
    :try_start_bd
    monitor-exit v1
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_62

    throw p0
.end method

.method public final initMobileDataStatsPuller()V
    .registers 3

    .line 1080
    sget-boolean v0, Lcom/android/server/stats/pull/StatsPullAtomService;->ENABLE_MOBILE_DATA_STATS_AGGREGATED_PULLER:Z

    if-eqz v0, :cond_d

    .line 1081
    new-instance v0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mAggregatedMobileDataStatsPuller:Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;

    :cond_d
    return-void
.end method

.method public final initNetworkStatsManager()V
    .registers 3

    .line 1098
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/NetworkStatsManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    return-void
.end method

.method public initializePullersState()V
    .registers 6

    .line 910
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "stats"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    .line 911
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 912
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 913
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telephony_subscription_service"

    .line 914
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 915
    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-direct {v0, p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;Landroid/telephony/SubscriptionManager;)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsSubscriptionsListener:Lcom/android/server/stats/pull/StatsPullAtomService$StatsSubscriptionsListener;

    .line 916
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 919
    new-instance v0, Lcom/android/internal/os/StoragedUidIoStatsReader;

    invoke-direct {v0}, Lcom/android/internal/os/StoragedUidIoStatsReader;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedUidIoStatsReader:Lcom/android/internal/os/StoragedUidIoStatsReader;

    .line 922
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "stats_pull"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBaseDir:Ljava/io/File;

    .line 923
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 926
    new-instance v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    .line 927
    new-instance v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    .line 928
    new-instance v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    .line 929
    new-instance v0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    .line 932
    new-instance v0, Lcom/android/server/power/stats/KernelWakelockReader;

    invoke-direct {v0}, Lcom/android/server/power/stats/KernelWakelockReader;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelWakelockReader:Lcom/android/server/power/stats/KernelWakelockReader;

    .line 933
    new-instance v0, Lcom/android/server/power/stats/KernelWakelockStats;

    invoke-direct {v0}, Lcom/android/server/power/stats/KernelWakelockStats;-><init>()V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTmpWakelockStats:Lcom/android/server/power/stats/KernelWakelockStats;

    .line 936
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 937
    invoke-static {v0}, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;->getSettingsModifiedReader(Landroid/content/Context;)Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    const/4 v0, 0x0

    .line 941
    :try_start_95
    invoke-static {v0}, Lcom/android/server/health/HealthServiceWrapper;->create(Lcom/android/server/health/HealthInfoCallback;)Lcom/android/server/health/HealthServiceWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHealthService:Lcom/android/server/health/HealthServiceWrapper;
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_95 .. :try_end_9b} :catch_9c
    .catch Ljava/util/NoSuchElementException; {:try_start_95 .. :try_end_9b} :catch_9c

    goto :goto_a3

    .line 943
    :catch_9c
    const-string v0, "StatsPullAtomService"

    const-string v2, "failed to initialize healthHalWrapper"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :goto_a3
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move v2, v1

    :goto_aa
    const/16 v3, 0xaa

    if-ge v2, v3, :cond_cc

    .line 949
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b5

    goto :goto_c9

    .line 955
    :cond_b5
    :try_start_b5
    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v3

    .line 956
    invoke-virtual {v3}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c9

    .line 957
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDangerousAppOpsList:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_c9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b5 .. :try_end_c9} :catch_c9

    :catch_c9
    :cond_c9
    :goto_c9
    add-int/lit8 v2, v2, 0x1

    goto :goto_aa

    .line 965
    :cond_cc
    new-instance v0, Lcom/android/internal/os/SelectedProcessCpuThreadReader;

    const-string v1, "/system/bin/surfaceflinger"

    invoke-direct {v0, v1}, Lcom/android/internal/os/SelectedProcessCpuThreadReader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mSurfaceFlingerProcessCpuThreadReader:Lcom/android/internal/os/SelectedProcessCpuThreadReader;

    .line 968
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIKeystoreMetricsService()Landroid/security/metrics/IKeystoreMetrics;

    return-void
.end method

.method public final isAccessibilityFloatingMenuUser(Landroid/content/Context;I)Z
    .registers 5

    .line 5457
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 5458
    const-string p1, "accessibility_button_mode"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 5460
    const-string v1, "accessibility_button_targets"

    invoke-static {p0, v1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1b

    .line 5464
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1b

    return p2

    :cond_1b
    return v0
.end method

.method public final isAccessibilityShortcutUser(Landroid/content/Context;I)Z
    .registers 8

    .line 5435
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 5437
    const-string p1, "accessibility_button_targets"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 5439
    const-string v0, "accessibility_shortcut_target_service"

    invoke-static {p0, v0, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 5441
    const-string v1, "accessibility_qs_targets"

    invoke-static {p0, v1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 5443
    const-string v2, "accessibility_shortcut_dialog_shown"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_22

    move v2, v4

    goto :goto_23

    :cond_22
    move v2, v3

    .line 5445
    :goto_23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz v2, :cond_31

    .line 5447
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    move v0, v4

    goto :goto_32

    :cond_31
    move v0, v3

    .line 5448
    :goto_32
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 5449
    const-string v2, "accessibility_display_magnification_enabled"

    invoke-static {p0, v2, v3, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v4, :cond_40

    move p0, v4

    goto :goto_41

    :cond_40
    move p0, v3

    :goto_41
    if-eqz p1, :cond_4b

    if-nez v0, :cond_4b

    if-nez p0, :cond_4b

    if-nez v1, :cond_4a

    goto :goto_4b

    :cond_4a
    return v3

    :cond_4b
    :goto_4b
    return v4
.end method

.method public final isHealthAppOp(I)Z
    .registers 2

    .line 5481
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 5482
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Landroid/health/connect/HealthConnectManager;->isHealthPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$getIKeystoreMetricsService$3()V
    .registers 3

    .line 1210
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKeystoreLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1211
    :try_start_4
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mIKeystoreMetrics:Landroid/security/metrics/IKeystoreMetrics;

    .line 1212
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final synthetic lambda$getINotificationManagerService$6()V
    .registers 3

    .line 1278
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationStatsLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1279
    :try_start_4
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNotificationManagerService:Landroid/app/INotificationManager;

    .line 1280
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final synthetic lambda$getIProcessStatsService$7()V
    .registers 3

    .line 1300
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcStatsLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1301
    :try_start_4
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessStatsService:Lcom/android/internal/app/procstats/IProcessStats;

    .line 1302
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final synthetic lambda$getIStoragedService$4()V
    .registers 3

    .line 1233
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1234
    :try_start_4
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageService:Landroid/os/IStoraged;

    .line 1235
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final synthetic lambda$getIThermalService$2()V
    .registers 3

    .line 1188
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1189
    :try_start_4
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mThermalService:Landroid/os/IThermalService;

    .line 1190
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final synthetic lambda$getIVoldService$5()V
    .registers 3

    .line 1256
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mVoldLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1257
    :try_start_4
    iput-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mVoldService:Landroid/os/IVold;

    .line 1258
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final synthetic lambda$getUidNetworkStatsSnapshotForTemplateLocked$10(Landroid/net/NetworkTemplate;ZJJ)Landroid/net/NetworkStats;
    .registers 9

    .line 1663
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDataBytesTransferLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1664
    :try_start_3
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/stats/pull/StatsPullAtomService;->getUidNetworkStatsSnapshotForTemplateLocked(Landroid/net/NetworkTemplate;ZJJ)Landroid/net/NetworkStats;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_9
    move-exception v0

    move-object p0, v0

    .line 1666
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_9

    throw p0
.end method

.method public final synthetic lambda$onBootPhase$1()V
    .registers 1

    .line 899
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->initAndRegisterNetworkStatsPullers()V

    .line 901
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->initAndRegisterDeferredPullers()V

    return-void
.end method

.method public final synthetic lambda$readProcStatsHighWaterMark$24(ILjava/io/File;Ljava/lang/String;)Z
    .registers 4

    .line 3362
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3363
    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->highWaterMarkFilePrefix(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5f

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final milliAmpHrsToNanoAmpSecs(D)J
    .registers 5

    .line 0
    const-wide v0, 0x41ead27480000000L    # 3.6E9

    mul-double/2addr p1, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p1, v0

    double-to-long p0, p1

    return-wide p0
.end method

.method public onBootPhase(I)V
    .registers 3

    .line 887
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_14

    .line 889
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_14
    const/16 v0, 0x258

    if-ne p1, v0, :cond_27

    .line 896
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->initNetworkStatsManager()V

    .line 897
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_27
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 879
    sget-boolean v0, Lcom/android/server/stats/pull/StatsPullAtomService;->ENABLE_MOBILE_DATA_STATS_AGGREGATED_PULLER:Z

    if-eqz v0, :cond_f

    .line 880
    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomServiceInternalImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomServiceInternalImpl;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;Lcom/android/server/stats/pull/StatsPullAtomService-IA;)V

    const-class p0, Lcom/android/server/stats/pull/StatsPullAtomServiceInternal;

    invoke-static {p0, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_f
    return-void
.end method

.method public parseKeystoreAtomWithOverflow([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .registers 8

    .line 4814
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_28

    aget-object v2, p1, v1

    .line 4815
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_12

    const/4 p0, 0x1

    return p0

    .line 4819
    :cond_12
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getKeystore2AtomWithOverflow()Landroid/security/metrics/Keystore2AtomWithOverflow;

    move-result-object v3

    .line 4820
    iget v3, v3, Landroid/security/metrics/Keystore2AtomWithOverflow;->atom_id:I

    iget v2, v2, Landroid/security/metrics/KeystoreAtom;->count:I

    const/16 v4, 0x2789

    invoke-static {v4, v3, v2}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(III)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_28
    return v0
.end method

.method public parseKeystoreCrashStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .registers 8

    .line 4875
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_27

    aget-object v2, p1, v1

    .line 4876
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_13

    const/4 p0, 0x1

    return p0

    .line 4879
    :cond_13
    iget-object v2, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v2}, Landroid/security/metrics/KeystoreAtomPayload;->getCrashStats()Landroid/security/metrics/CrashStats;

    move-result-object v2

    const/16 v3, 0x278d

    .line 4880
    iget v2, v2, Landroid/security/metrics/CrashStats;->count_of_crash_events:I

    invoke-static {v3, v2}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_27
    return v0
.end method

.method public parseKeystoreKeyCreationWithAuthInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .registers 10

    .line 4782
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_2c

    aget-object v2, p1, v1

    .line 4783
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_12

    const/4 p0, 0x1

    return p0

    .line 4786
    :cond_12
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithAuthInfo()Landroid/security/metrics/KeyCreationWithAuthInfo;

    move-result-object v3

    .line 4787
    iget v4, v3, Landroid/security/metrics/KeyCreationWithAuthInfo;->user_auth_type:I

    iget v5, v3, Landroid/security/metrics/KeyCreationWithAuthInfo;->log10_auth_key_timeout_seconds:I

    iget v3, v3, Landroid/security/metrics/KeyCreationWithAuthInfo;->security_level:I

    iget v2, v2, Landroid/security/metrics/KeystoreAtom;->count:I

    const/16 v6, 0x2787

    invoke-static {v6, v4, v5, v3, v2}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIII)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2c
    return v0
.end method

.method public parseKeystoreKeyCreationWithGeneralInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .registers 15

    .line 4767
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_31

    aget-object v2, p1, v1

    .line 4768
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_11

    return v4

    .line 4772
    :cond_11
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithGeneralInfo()Landroid/security/metrics/KeyCreationWithGeneralInfo;

    move-result-object v3

    .line 4773
    iget v5, v3, Landroid/security/metrics/KeyCreationWithGeneralInfo;->algorithm:I

    iget v6, v3, Landroid/security/metrics/KeyCreationWithGeneralInfo;->key_size:I

    iget v7, v3, Landroid/security/metrics/KeyCreationWithGeneralInfo;->ec_curve:I

    iget v8, v3, Landroid/security/metrics/KeyCreationWithGeneralInfo;->key_origin:I

    iget v9, v3, Landroid/security/metrics/KeyCreationWithGeneralInfo;->error_code:I

    iget-boolean v10, v3, Landroid/security/metrics/KeyCreationWithGeneralInfo;->attestation_requested:Z

    iget v11, v2, Landroid/security/metrics/KeystoreAtom;->count:I

    const/16 v4, 0x2786

    invoke-static/range {v4 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIIZI)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_31
    return v0
.end method

.method public parseKeystoreKeyCreationWithPurposeModesInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .registers 14

    .line 4797
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_30

    aget-object v2, p1, v1

    .line 4798
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_12

    const/4 p0, 0x1

    return p0

    .line 4802
    :cond_12
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    .line 4803
    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyCreationWithPurposeAndModesInfo()Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;

    move-result-object v3

    .line 4804
    iget v5, v3, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->algorithm:I

    iget v6, v3, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->purpose_bitmap:I

    iget v7, v3, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->padding_mode_bitmap:I

    iget v8, v3, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->digest_bitmap:I

    iget v9, v3, Landroid/security/metrics/KeyCreationWithPurposeAndModesInfo;->block_mode_bitmap:I

    iget v10, v2, Landroid/security/metrics/KeystoreAtom;->count:I

    const/16 v4, 0x2788

    invoke-static/range {v4 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIII)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_30
    return v0
.end method

.method public parseKeystoreKeyOperationWithGeneralInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .registers 13

    .line 4846
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_2e

    aget-object v2, p1, v1

    .line 4847
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_12

    const/4 p0, 0x1

    return p0

    .line 4851
    :cond_12
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyOperationWithGeneralInfo()Landroid/security/metrics/KeyOperationWithGeneralInfo;

    move-result-object v3

    .line 4852
    iget v5, v3, Landroid/security/metrics/KeyOperationWithGeneralInfo;->outcome:I

    iget v6, v3, Landroid/security/metrics/KeyOperationWithGeneralInfo;->error_code:I

    iget-boolean v7, v3, Landroid/security/metrics/KeyOperationWithGeneralInfo;->key_upgraded:Z

    iget v8, v3, Landroid/security/metrics/KeyOperationWithGeneralInfo;->security_level:I

    iget v9, v2, Landroid/security/metrics/KeystoreAtom;->count:I

    const/16 v4, 0x278b

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIZII)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2e
    return v0
.end method

.method public parseKeystoreKeyOperationWithPurposeModesInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .registers 13

    .line 4829
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_2e

    aget-object v2, p1, v1

    .line 4830
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_12

    const/4 p0, 0x1

    return p0

    .line 4834
    :cond_12
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    .line 4835
    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getKeyOperationWithPurposeAndModesInfo()Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;

    move-result-object v3

    .line 4836
    iget v5, v3, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;->purpose:I

    iget v6, v3, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;->padding_mode_bitmap:I

    iget v7, v3, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;->digest_bitmap:I

    iget v8, v3, Landroid/security/metrics/KeyOperationWithPurposeAndModesInfo;->block_mode_bitmap:I

    iget v9, v2, Landroid/security/metrics/KeystoreAtom;->count:I

    const/16 v4, 0x278a

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIII)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2e
    return v0
.end method

.method public parseKeystoreKeysPerUid([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .registers 8

    .line 4888
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_29

    aget-object v2, p1, v1

    .line 4889
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_13

    const/4 p0, 0x1

    return p0

    .line 4892
    :cond_13
    iget-object v2, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v2}, Landroid/security/metrics/KeystoreAtomPayload;->getKeysPerUid()Landroid/security/metrics/KeysPerUid;

    move-result-object v2

    .line 4893
    iget v3, v2, Landroid/security/metrics/KeysPerUid;->uid:I

    iget v2, v2, Landroid/security/metrics/KeysPerUid;->key_count:I

    const/16 v4, 0x2808

    invoke-static {v4, v3, v2}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(III)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_29
    return v0
.end method

.method public parseKeystoreStorageStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .registers 9

    .line 4754
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_29

    aget-object v2, p1, v1

    .line 4755
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v3

    if-eqz v3, :cond_11

    const/4 p0, 0x1

    return p0

    .line 4758
    :cond_11
    iget-object v2, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v2}, Landroid/security/metrics/KeystoreAtomPayload;->getStorageStats()Landroid/security/metrics/StorageStats;

    move-result-object v2

    .line 4759
    iget v3, v2, Landroid/security/metrics/StorageStats;->storage_type:I

    iget v4, v2, Landroid/security/metrics/StorageStats;->size:I

    iget v2, v2, Landroid/security/metrics/StorageStats;->unused_size:I

    const/16 v5, 0x2777

    invoke-static {v5, v3, v4, v2}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIII)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_29
    return v0
.end method

.method public parseRkpErrorStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I
    .registers 9

    .line 4861
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_2a

    aget-object v2, p1, v1

    .line 4862
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getTag()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_12

    const/4 p0, 0x1

    return p0

    .line 4865
    :cond_12
    iget-object v3, v2, Landroid/security/metrics/KeystoreAtom;->payload:Landroid/security/metrics/KeystoreAtomPayload;

    invoke-virtual {v3}, Landroid/security/metrics/KeystoreAtomPayload;->getRkpErrorStats()Landroid/security/metrics/RkpErrorStats;

    move-result-object v3

    .line 4866
    iget v4, v3, Landroid/security/metrics/RkpErrorStats;->rkpError:I

    iget v2, v2, Landroid/security/metrics/KeystoreAtom;->count:I

    iget v3, v3, Landroid/security/metrics/RkpErrorStats;->security_level:I

    const/16 v5, 0x278c

    invoke-static {v5, v4, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIII)Landroid/util/StatsEvent;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2a
    return v0
.end method

.method public pullAccessibilityFloatingMenuStatsLocked(ILjava/util/List;)I
    .registers 14

    .line 5001
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const/4 v1, 0x1

    if-nez v0, :cond_e

    return v1

    .line 5005
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5007
    :try_start_12
    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 5013
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_20
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 5014
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 5016
    iget-object v7, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v7, v5}, Lcom/android/server/stats/pull/StatsPullAtomService;->isAccessibilityFloatingMenuUser(Landroid/content/Context;I)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 5017
    const-string v7, "accessibility_floating_menu_size"

    invoke-static {v4, v7, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    .line 5019
    const-string v8, "accessibility_floating_menu_icon_type"

    invoke-static {v4, v8, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    .line 5022
    const-string v9, "accessibility_floating_menu_fade_enabled"

    invoke-static {v4, v9, v1, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-ne v9, v1, :cond_52

    move v6, v1

    .line 5025
    :cond_52
    const-string v9, "accessibility_floating_menu_opacity"

    const v10, 0x3f0ccccd    # 0.55f

    invoke-static {v4, v9, v10, v5}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v5

    .line 5030
    invoke-static {p1, v7, v8, v6, v5}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIZF)Landroid/util/StatsEvent;

    move-result-object v5

    .line 5029
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_62
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_62} :catch_65
    .catchall {:try_start_12 .. :try_end_62} :catchall_63

    goto :goto_20

    :catchall_63
    move-exception p0

    goto :goto_77

    :catch_65
    move-exception p0

    goto :goto_6b

    .line 5038
    :cond_67
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    .line 5035
    :goto_6b
    :try_start_6b
    const-string p1, "StatsPullAtomService"

    const-string/jumbo p2, "pulling accessibility floating menu stats failed at getUsers"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_73
    .catchall {:try_start_6b .. :try_end_73} :catchall_63

    .line 5038
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :goto_77
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5039
    throw p0
.end method

.method public pullAccessibilityShortcutStatsLocked(Ljava/util/List;)I
    .registers 20

    move-object/from16 v0, p0

    .line 4949
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    const/4 v2, 0x1

    if-nez v1, :cond_10

    return v2

    .line 4953
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 4955
    :try_start_14
    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 4956
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_86

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 4957
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 4959
    iget-object v8, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8, v6}, Lcom/android/server/stats/pull/StatsPullAtomService;->isAccessibilityShortcutUser(Landroid/content/Context;I)Z

    move-result v8

    if-eqz v8, :cond_83

    .line 4960
    const-string v8, "accessibility_button_mode"

    .line 4961
    invoke-static {v5, v8, v7, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    .line 4960
    invoke-virtual {v0, v8}, Lcom/android/server/stats/pull/StatsPullAtomService;->convertToAccessibilityShortcutType(I)I

    move-result v10

    .line 4963
    const-string v8, "accessibility_button_targets"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 4965
    invoke-virtual {v0, v8}, Lcom/android/server/stats/pull/StatsPullAtomService;->countAccessibilityServices(Ljava/lang/String;)I

    move-result v11

    .line 4968
    const-string v8, "accessibility_shortcut_target_service"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 4970
    invoke-virtual {v0, v8}, Lcom/android/server/stats/pull/StatsPullAtomService;->countAccessibilityServices(Ljava/lang/String;)I

    move-result v13

    .line 4973
    const-string v8, "accessibility_qs_targets"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 4975
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/lit8 v17, v8, 0x1

    .line 4978
    const-string v8, "accessibility_display_magnification_enabled"

    invoke-static {v5, v8, v7, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    const/4 v14, 0x3

    const/16 v16, 0x9

    const/16 v9, 0x278f

    const/4 v12, 0x2

    .line 4980
    invoke-static/range {v9 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIIIIZ)Landroid/util/StatsEvent;

    move-result-object v6

    move-object/from16 v7, p1

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7e
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_7e} :catch_81
    .catchall {:try_start_14 .. :try_end_7e} :catchall_7f

    goto :goto_22

    :catchall_7f
    move-exception v0

    goto :goto_96

    :catch_81
    move-exception v0

    goto :goto_8a

    :cond_83
    move-object/from16 v7, p1

    goto :goto_22

    .line 4995
    :cond_86
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    .line 4992
    :goto_8a
    :try_start_8a
    const-string v1, "StatsPullAtomService"

    const-string/jumbo v5, "pulling accessibility shortcuts stats failed at getUsers"

    invoke-static {v1, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_92
    .catchall {:try_start_8a .. :try_end_92} :catchall_7f

    .line 4995
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_96
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4996
    throw v0
.end method

.method public pullAppOpsLocked(ILjava/util/List;)I
    .registers 3

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public pullAppSizeLocked(ILjava/util/List;)I
    .registers 27

    .line 3058
    const-string v0, "StatsPullAtomService"

    const/4 v1, 0x1

    :try_start_3
    const-string v2, "/data/system/diskstats_cache.json"

    invoke-static {v2}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3059
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3060
    const-string/jumbo v2, "queryTime"

    const-wide/16 v4, -0x1

    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 3061
    const-string/jumbo v2, "packageNames"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 3062
    const-string v6, "appSizes"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 3063
    const-string v7, "appDataSizes"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 3064
    const-string v8, "cacheSizes"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 3066
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 3067
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ne v9, v8, :cond_84

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ne v9, v8, :cond_84

    .line 3068
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-eq v9, v8, :cond_47

    goto :goto_84

    :cond_47
    const/16 v16, 0x0

    move/from16 v9, v16

    :goto_4b
    if-ge v9, v8, :cond_83

    .line 3073
    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3074
    invoke-virtual {v6, v9, v4, v5}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v11

    move-wide/from16 v17, v11

    move-object v12, v10

    .line 3075
    invoke-virtual {v7, v9, v4, v5}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v10

    move-object/from16 v19, v7

    move-object v7, v12

    .line 3076
    invoke-virtual {v3, v9, v4, v5}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v12

    move/from16 v20, v9

    move-object/from16 v21, v6

    move/from16 v6, p1

    move-wide/from16 v22, v17

    move-object/from16 v17, v21

    move/from16 v18, v8

    move-wide/from16 v8, v22

    .line 3073
    invoke-static/range {v6 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;JJJJ)Landroid/util/StatsEvent;

    move-result-object v7

    move-object/from16 v6, p2

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v20, 0x1

    move-object/from16 v6, v17

    move/from16 v8, v18

    move-object/from16 v7, v19

    goto :goto_4b

    :cond_83
    return v16

    .line 3069
    :cond_84
    :goto_84
    const-string v2, "formatting error in diskstats cache file!"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_89} :catch_8a
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_89} :catch_8a

    return v1

    .line 3079
    :catch_8a
    const-string v2, "Unable to read diskstats cache file within pullAppSize"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public pullAppsOnExternalStorageInfoLocked(ILjava/util/List;)I
    .registers 10

    .line 3966
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageManager:Landroid/os/storage/StorageManager;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 3970
    :cond_6
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    .line 3971
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 3972
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 3973
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    if-nez v4, :cond_26

    goto :goto_15

    .line 3978
    :cond_26
    iget-object v5, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 3979
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3978
    invoke-virtual {v5, v4}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v4

    if-nez v4, :cond_33

    goto :goto_15

    .line 3984
    :cond_33
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v4

    if-nez v4, :cond_3a

    goto :goto_15

    .line 3990
    :cond_3a
    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_43

    move v4, v1

    goto :goto_54

    .line 3992
    :cond_43
    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v4

    if-eqz v4, :cond_4b

    const/4 v4, 0x2

    goto :goto_54

    .line 3994
    :cond_4b
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isExternal()Z

    move-result v4

    if-eqz v4, :cond_53

    const/4 v4, 0x3

    goto :goto_54

    :cond_53
    move v4, v6

    :goto_54
    if-eq v4, v6, :cond_15

    .line 4000
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v4, v3}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_60
    return v2
.end method

.method public pullAttributedAppOpsLocked(ILjava/util/List;)I
    .registers 3

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public pullBinderCallsStatsExceptionsLocked(ILjava/util/List;)I
    .registers 7

    .line 2903
    const-class p0, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 2904
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/BinderCallsStatsService$Internal;

    if-nez p0, :cond_13

    .line 2906
    const-string p0, "StatsPullAtomService"

    const-string p1, "failed to get binderStats"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 2910
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/BinderCallsStatsService$Internal;->getExportedExceptionStats()Landroid/util/ArrayMap;

    move-result-object p0

    .line 2913
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2915
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-static {p1, v1, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;J)Landroid/util/StatsEvent;

    move-result-object v0

    .line 2914
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_44
    const/4 p0, 0x0

    return p0
.end method

.method public pullBinderCallsStatsLocked(ILjava/util/List;)I
    .registers 35

    .line 2872
    const-class v0, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 2873
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/BinderCallsStatsService$Internal;

    if-nez v0, :cond_13

    .line 2875
    const-string v0, "StatsPullAtomService"

    const-string v1, "failed to get binderStats"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    .line 2879
    :cond_13
    invoke-virtual {v0}, Lcom/android/server/BinderCallsStatsService$Internal;->getExportedCallStats()Ljava/util/ArrayList;

    move-result-object v1

    .line 2880
    invoke-virtual {v0}, Lcom/android/server/BinderCallsStatsService$Internal;->reset()V

    .line 2881
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v0, :cond_6e

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    .line 2882
    iget v6, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->workSourceUid:I

    iget-object v7, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->className:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->methodName:Ljava/lang/String;

    iget-wide v9, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callCount:J

    iget-wide v11, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->exceptionCount:J

    iget-wide v13, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->latencyMicros:J

    move/from16 v29, v3

    const/16 p0, 0x0

    iget-wide v2, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxLatencyMicros:J

    move/from16 v31, v0

    move-object/from16 v30, v1

    iget-wide v0, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->cpuTimeMicros:J

    move-wide/from16 v17, v0

    iget-wide v0, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxCpuTimeMicros:J

    move-wide/from16 v19, v0

    iget-wide v0, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxReplySizeBytes:J

    move-wide/from16 v21, v0

    iget-wide v0, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->maxRequestSizeBytes:J

    move-wide/from16 v23, v0

    iget-wide v0, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->recordedCallCount:J

    iget-boolean v5, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->screenInteractive:Z

    iget v4, v4, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;->callingUid:I

    move-wide/from16 v25, v0

    move-wide v15, v2

    move/from16 v28, v4

    move/from16 v27, v5

    move/from16 v5, p1

    invoke-static/range {v5 .. v28}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;JJJJJJJJJZI)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v3, v29

    move-object/from16 v1, v30

    move/from16 v0, v31

    goto :goto_1f

    :cond_6e
    const/16 p0, 0x0

    return p0
.end method

.method public pullBluetoothActivityInfoLocked(ILjava/util/List;)I
    .registers 15

    .line 2417
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->fetchBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 2421
    :cond_8
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getTimestampMillis()J

    move-result-wide v1

    .line 2422
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getBluetoothStackState()I

    move-result v3

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v4

    .line 2423
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v8

    .line 2424
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerEnergyUsed()J

    move-result-wide v10

    move v0, p1

    .line 2421
    invoke-static/range {v0 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJIJJJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public pullBluetoothBytesTransferLocked(ILjava/util/List;)I
    .registers 10

    .line 2024
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->fetchBluetoothData()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 2028
    :cond_8
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getUidTraffic()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/UidTraffic;

    .line 2030
    invoke-virtual {v0}, Landroid/bluetooth/UidTraffic;->getUid()I

    move-result v2

    invoke-virtual {v0}, Landroid/bluetooth/UidTraffic;->getRxBytes()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/bluetooth/UidTraffic;->getTxBytes()J

    move-result-wide v5

    move v1, p1

    .line 2029
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p1, v1

    goto :goto_10

    :cond_32
    const/4 p0, 0x0

    return p0
.end method

.method public pullBuildInformationLocked(ILjava/util/List;)I
    .registers 13

    .line 3630
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE_OR_CODENAME:Ljava/lang/String;

    sget-object v6, Landroid/os/Build;->ID:Ljava/lang/String;

    sget-object v7, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    sget-object v8, Landroid/os/Build;->TYPE:Ljava/lang/String;

    sget-object v9, Landroid/os/Build;->TAGS:Ljava/lang/String;

    move v0, p1

    invoke-static/range {v0 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public final pullCachedAppsHighWatermark(ILjava/util/List;)I
    .registers 4

    .line 5157
    const-class p0, Landroid/app/ActivityManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManagerInternal;

    const/4 v0, 0x1

    .line 5158
    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityManagerInternal;->getCachedAppsHighWatermarkStats(IZ)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/StatsEvent;

    .line 5157
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public pullCategorySizeLocked(ILjava/util/List;)I
    .registers 12

    .line 3097
    :try_start_0
    const-string p0, "/data/system/diskstats_cache.json"

    invoke-static {p0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3098
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3099
    const-string/jumbo p0, "queryTime"

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 3102
    const-string p0, "appSize"

    .line 3104
    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    const/4 v4, 0x1

    move v3, p1

    .line 3102
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3107
    const-string p0, "appDataSize"

    .line 3109
    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    const/4 v4, 0x2

    .line 3107
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3112
    const-string p0, "cacheSize"

    .line 3114
    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    const/4 v4, 0x3

    .line 3112
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3117
    const-string/jumbo p0, "photosSize"

    .line 3119
    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    const/4 v4, 0x4

    .line 3117
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3121
    const-string/jumbo p0, "videosSize"

    .line 3123
    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    const/4 v4, 0x5

    .line 3121
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3125
    const-string p0, "audioSize"

    .line 3127
    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    const/4 v4, 0x6

    .line 3125
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3129
    const-string p0, "downloadsSize"

    .line 3131
    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    const/4 v4, 0x7

    .line 3129
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3134
    const-string/jumbo p0, "systemSize"

    .line 3136
    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    const/16 v4, 0x8

    .line 3134
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3138
    const-string/jumbo p0, "otherSize"

    .line 3140
    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    const/16 v4, 0x9

    .line 3138
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_99} :catch_9b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_99} :catch_9b

    const/4 p0, 0x0

    return p0

    .line 3142
    :catch_9b
    const-string p0, "StatsPullAtomService"

    const-string p1, "Unable to read diskstats cache file within pullCategorySize"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public pullCooldownDeviceLocked(ILjava/util/List;)I
    .registers 14

    .line 2837
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIThermalService()Landroid/os/IThermalService;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_8

    return v0

    .line 2841
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2843
    :try_start_c
    invoke-interface {p0}, Landroid/os/IThermalService;->getCurrentCoolingDevices()[Landroid/os/CoolingDevice;

    move-result-object p0

    .line 2844
    array-length v3, p0

    const/4 v4, 0x0

    move v5, v4

    :goto_13
    if-ge v5, v3, :cond_30

    aget-object v6, p0, v5

    .line 2846
    invoke-virtual {v6}, Landroid/os/CoolingDevice;->getType()I

    move-result v7

    invoke-virtual {v6}, Landroid/os/CoolingDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Landroid/os/CoolingDevice;->getValue()J

    move-result-wide v9

    long-to-int v6, v9

    .line 2845
    invoke-static {p1, v7, v8, v6}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;I)Landroid/util/StatsEvent;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_2b} :catch_34
    .catchall {:try_start_c .. :try_end_2b} :catchall_2e

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :catchall_2e
    move-exception p0

    goto :goto_3f

    .line 2853
    :cond_30
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 2850
    :catch_34
    :try_start_34
    const-string p0, "StatsPullAtomService"

    const-string p1, "Disconnected from thermal service. Cannot pull temperatures."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_2e

    .line 2853
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :goto_3f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2854
    throw p0
.end method

.method public pullCpuActiveTimeLocked(ILjava/util/List;)I
    .registers 4

    .line 2267
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda15;

    invoke-direct {v0, p2, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda15;-><init>(Ljava/util/List;I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    const/4 p0, 0x0

    return p0
.end method

.method public pullCpuClusterTimeLocked(ILjava/util/List;)I
    .registers 4

    .line 2289
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda29;

    invoke-direct {v0, p2, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda29;-><init>(Ljava/util/List;I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    const/4 p0, 0x0

    return p0
.end method

.method public pullCpuCyclesPerUidClusterLocked(ILjava/util/List;)I
    .registers 20

    move-object/from16 v0, p0

    .line 2128
    new-instance v1, Lcom/android/internal/os/PowerProfile;

    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    .line 2129
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqsClusters()[I

    move-result-object v6

    .line 2130
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getClusters()I

    move-result v5

    .line 2131
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqs()[J

    move-result-object v7

    .line 2132
    array-length v2, v7

    new-array v8, v2, [D

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v4, v2

    move v9, v4

    .line 2137
    :goto_1c
    array-length v10, v7

    if-ge v4, v10, :cond_30

    .line 2138
    aget v10, v6, v4

    if-eq v10, v3, :cond_24

    move v9, v2

    .line 2145
    :cond_24
    invoke-virtual {v1, v10, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuCore(II)D

    move-result-wide v11

    aput-wide v11, v8, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v9, v9, 0x1

    move v3, v10

    goto :goto_1c

    .line 2151
    :cond_30
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 2152
    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    new-instance v3, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda18;

    invoke-direct/range {v3 .. v8}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda18;-><init>(Landroid/util/SparseArray;I[I[J[D)V

    invoke-virtual {v0, v3}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    .line 2181
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v1, v2

    :goto_44
    if-ge v1, v0, :cond_81

    .line 2183
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 2184
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    move v8, v2

    :goto_51
    if-ge v8, v5, :cond_7c

    mul-int/lit8 v6, v8, 0x3

    .line 2186
    aget-wide v9, v3, v6

    const-wide v11, 0x412e848000000000L    # 1000000.0

    div-double/2addr v9, v11

    double-to-long v9, v9

    add-int/lit8 v11, v6, 0x1

    aget-wide v11, v3, v11

    double-to-long v11, v11

    add-int/lit8 v6, v6, 0x2

    aget-wide v13, v3, v6

    const-wide v15, 0x408f400000000000L    # 1000.0

    div-double/2addr v13, v15

    double-to-long v13, v13

    move/from16 v6, p1

    invoke-static/range {v6 .. v14}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJJJ)Landroid/util/StatsEvent;

    move-result-object v9

    move-object/from16 v6, p2

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_51

    :cond_7c
    move-object/from16 v6, p2

    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    :cond_81
    return v2
.end method

.method public pullCpuTimePerClusterFreqLocked(ILjava/util/List;)I
    .registers 11

    .line 2073
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqsClusters()[I

    move-result-object p0

    .line 2074
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqs()[J

    move-result-object v0

    .line 2075
    invoke-static {}, Lcom/android/internal/os/KernelCpuTotalBpfMapReader;->read()[J

    move-result-object v1

    if-nez v1, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 v2, 0x0

    move v3, v2

    .line 2079
    :goto_12
    array-length v4, v1

    if-ge v3, v4, :cond_26

    .line 2080
    aget v4, p0, v3

    .line 2081
    aget-wide v5, v0, v3

    long-to-int v5, v5

    .line 2082
    aget-wide v6, v1, v3

    .line 2083
    invoke-static {p1, v4, v5, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJ)Landroid/util/StatsEvent;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_26
    return v2
.end method

.method public pullCpuTimePerThreadFreqLocked(ILjava/util/List;)I
    .registers 40

    move-object/from16 v0, p0

    .line 3466
    iget-object v1, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    const-string v2, "StatsPullAtomService"

    const/4 v3, 0x1

    if-nez v1, :cond_f

    .line 3467
    const-string v0, "mKernelCpuThreadReader is null"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 3471
    :cond_f
    invoke-virtual {v1}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->getProcessCpuUsageDiffed()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1c

    .line 3473
    const-string/jumbo v0, "processCpuUsages is null"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 3476
    :cond_1c
    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelCpuThreadReaderDiff;

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuThreadReaderDiff;->getCpuFrequenciesKhz()[I

    move-result-object v0

    .line 3477
    array-length v4, v0

    const/16 v5, 0x8

    if-le v4, v5, :cond_3d

    .line 3478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected maximum 8 frequencies, but got "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3480
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3d
    const/4 v4, 0x0

    move v6, v4

    .line 3483
    :goto_3f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_f6

    .line 3484
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;

    .line 3485
    iget-object v8, v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->threadCpuUsages:Ljava/util/ArrayList;

    move v9, v4

    .line 3487
    :goto_4e
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_ee

    .line 3488
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;

    .line 3489
    iget-object v11, v10, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    array-length v11, v11

    array-length v12, v0

    if-eq v11, v12, :cond_81

    .line 3490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected number of usage times, expected "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " but got "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v10, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3493
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 3497
    :cond_81
    new-array v11, v5, [I

    .line 3498
    new-array v12, v5, [I

    move v13, v4

    :goto_86
    if-ge v13, v5, :cond_9d

    .line 3500
    array-length v14, v0

    if-ge v13, v14, :cond_96

    .line 3501
    aget v14, v0, v13

    aput v14, v11, v13

    .line 3502
    iget-object v14, v10, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->usageTimesMillis:[I

    aget v14, v14, v13

    aput v14, v12, v13

    goto :goto_9a

    .line 3507
    :cond_96
    aput v4, v11, v13

    .line 3508
    aput v4, v12, v13

    :goto_9a
    add-int/lit8 v13, v13, 0x1

    goto :goto_86

    .line 3511
    :cond_9d
    iget v15, v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->uid:I

    iget v13, v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processId:I

    iget v14, v10, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadId:I

    move/from16 v36, v3

    iget-object v3, v7, Lcom/android/internal/os/KernelCpuThreadReader$ProcessCpuUsage;->processName:Ljava/lang/String;

    iget-object v10, v10, Lcom/android/internal/os/KernelCpuThreadReader$ThreadCpuUsage;->threadName:Ljava/lang/String;

    aget v20, v11, v4

    aget v21, v12, v4

    aget v22, v11, v36

    aget v23, v12, v36

    const/16 v16, 0x2

    aget v24, v11, v16

    aget v25, v12, v16

    const/16 v16, 0x3

    aget v26, v11, v16

    aget v27, v12, v16

    const/16 v16, 0x4

    aget v28, v11, v16

    aget v29, v12, v16

    const/16 v16, 0x5

    aget v30, v11, v16

    aget v31, v12, v16

    const/16 v16, 0x6

    aget v32, v11, v16

    aget v33, v12, v16

    const/16 v16, 0x7

    aget v34, v11, v16

    aget v35, v12, v16

    move-object/from16 v18, v3

    move-object/from16 v19, v10

    move/from16 v16, v13

    move/from16 v17, v14

    move/from16 v14, p1

    invoke-static/range {v14 .. v35}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIILjava/lang/String;Ljava/lang/String;IIIIIIIIIIIIIIII)Landroid/util/StatsEvent;

    move-result-object v3

    move-object/from16 v10, p2

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v36

    goto/16 :goto_4e

    :cond_ee
    move-object/from16 v10, p2

    move/from16 v36, v3

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3f

    :cond_f6
    return v4
.end method

.method public pullCpuTimePerUidFreqLocked(ILjava/util/List;)I
    .registers 13

    .line 2213
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2214
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda23;

    invoke-direct {v1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda23;-><init>(Landroid/util/SparseArray;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    .line 2237
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v1, 0x0

    move v2, v1

    :goto_15
    if-ge v2, p0, :cond_3a

    .line 2239
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 2240
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    move v5, v1

    .line 2241
    :goto_22
    array-length v6, v4

    if-ge v5, v6, :cond_37

    .line 2242
    aget-wide v6, v4, v5

    const-wide/16 v8, 0xa

    cmp-long v8, v6, v8

    if-ltz v8, :cond_34

    .line 2243
    invoke-static {p1, v3, v5, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJ)Landroid/util/StatsEvent;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_3a
    return v1
.end method

.method public pullCpuTimePerUidLocked(ILjava/util/List;)I
    .registers 4

    .line 2102
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda21;

    invoke-direct {v0, p2, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda21;-><init>(Ljava/util/List;I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->readAbsolute(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V

    const/4 p0, 0x0

    return p0
.end method

.method public pullDangerousPermissionStateLocked(ILjava/util/List;)I
    .registers 28

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 3707
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 3708
    const-string v2, "dangerous_permission_state_sample_rate"

    const v3, 0x3c75c28f    # 0.015f

    const-string/jumbo v4, "permissions"

    invoke-static {v4, v2, v3}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v9

    .line 3710
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 3712
    :try_start_19
    iget-object v2, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 3714
    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v13

    .line 3716
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    const/4 v0, 0x0

    :goto_32
    if-ge v0, v14, :cond_175

    .line 3718
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 3721
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    const/16 v4, 0x1000

    .line 3720
    invoke-virtual {v12, v4, v3}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v3

    .line 3723
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_4d
    if-ge v5, v4, :cond_166

    .line 3725
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;
    :try_end_55
    .catchall {:try_start_19 .. :try_end_55} :catchall_160

    const/16 v16, 0x1

    .line 3727
    :try_start_57
    iget-object v11, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v11, :cond_6b

    :cond_5b
    :goto_5b
    move/from16 v17, v0

    move-object/from16 v20, v2

    move-object/from16 v18, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move-wide/from16 v23, v7

    move-object/from16 v0, p2

    goto/16 :goto_150

    .line 3731
    :cond_6b
    iget-object v11, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7a

    goto :goto_5b

    .line 3735
    :cond_7a
    iget-object v11, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v11, 0x2753

    if-ne v1, v11, :cond_9b

    .line 3738
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/ThreadLocalRandom;->nextFloat()F

    move-result v11

    cmpl-float v11, v11, v9

    if-lez v11, :cond_9b

    goto :goto_5b

    :catchall_96
    move-exception v0

    move-wide/from16 v23, v7

    goto/16 :goto_17c

    .line 3742
    :cond_9b
    iget-object v11, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v11, v11

    const/4 v15, 0x0

    :goto_9f
    if-ge v15, v11, :cond_5b

    move/from16 v17, v0

    .line 3744
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v0, v0, v15
    :try_end_a7
    .catchall {:try_start_57 .. :try_end_a7} :catchall_96

    move-object/from16 v18, v3

    const/4 v3, 0x0

    .line 3749
    :try_start_aa
    invoke-virtual {v12, v0, v3}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v19

    .line 3750
    iget-object v3, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 3751
    invoke-virtual {v12, v0, v3, v2}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v3
    :try_end_b4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_aa .. :try_end_b4} :catch_132
    .catchall {:try_start_aa .. :try_end_b4} :catchall_96

    move-object/from16 v20, v2

    .line 3756
    :try_start_b6
    const-string v2, "android.permission."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c4

    const/16 v2, 0x13

    .line 3757
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_c4
    const/16 v2, 0x2742

    if-ne v1, v2, :cond_103

    .line 3762
    iget-object v2, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v21, v5

    move v5, v3

    const-string v3, ""

    move-object/from16 v22, v0

    iget-object v0, v6, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v0, v0, v15

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_df

    move v0, v4

    move/from16 v4, v16

    goto :goto_e1

    :cond_df
    move v0, v4

    const/4 v4, 0x0

    .line 3767
    :goto_e1
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v23

    .line 3768
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v19
    :try_end_e9
    .catchall {:try_start_b6 .. :try_end_e9} :catchall_96

    or-int v19, v23, v19

    move/from16 v23, v21

    move/from16 v21, v0

    move v0, v1

    move-object/from16 v1, v22

    move/from16 v22, v23

    move-wide/from16 v23, v7

    move-object v7, v6

    move/from16 v6, v19

    .line 3762
    :try_start_f9
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;ILjava/lang/String;ZII)Landroid/util/StatsEvent;

    move-result-object v1

    :goto_fd
    move-object/from16 v0, p2

    goto :goto_12e

    :catchall_100
    move-exception v0

    goto/16 :goto_17c

    :cond_103
    move-object v1, v0

    move/from16 v21, v4

    move/from16 v22, v5

    move-wide/from16 v23, v7

    move v5, v3

    move-object v7, v6

    .line 3771
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v0, v0, v15

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_11b

    move/from16 v3, v16

    goto :goto_11c

    :cond_11b
    const/4 v3, 0x0

    .line 3776
    :goto_11c
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v0

    .line 3777
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v4

    or-int/2addr v0, v4

    move v4, v5

    move v5, v0

    move/from16 v0, p1

    .line 3771
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;IZII)Landroid/util/StatsEvent;

    move-result-object v1

    goto :goto_fd

    .line 3779
    :goto_12e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_131
    .catchall {:try_start_f9 .. :try_end_131} :catchall_100

    goto :goto_13d

    :catch_132
    move-object/from16 v0, p2

    move-object/from16 v20, v2

    move/from16 v21, v4

    move/from16 v22, v5

    move-wide/from16 v23, v7

    move-object v7, v6

    :goto_13d
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, p1

    move-object v6, v7

    move/from16 v0, v17

    move-object/from16 v3, v18

    move-object/from16 v2, v20

    move/from16 v4, v21

    move/from16 v5, v22

    move-wide/from16 v7, v23

    goto/16 :goto_9f

    :goto_150
    add-int/lit8 v5, v22, 0x1

    move/from16 v1, p1

    move/from16 v0, v17

    move-object/from16 v3, v18

    move-object/from16 v2, v20

    move/from16 v4, v21

    move-wide/from16 v7, v23

    goto/16 :goto_4d

    :catchall_160
    move-exception v0

    move-wide/from16 v23, v7

    const/16 v16, 0x1

    goto :goto_17c

    :cond_166
    move/from16 v17, v0

    move-wide/from16 v23, v7

    const/16 v16, 0x1

    move-object/from16 v0, p2

    add-int/lit8 v1, v17, 0x1

    move v0, v1

    move/from16 v1, p1

    goto/16 :goto_32

    :cond_175
    move-wide/from16 v23, v7

    .line 3787
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v3, 0x0

    return v3

    .line 3784
    :goto_17c
    :try_start_17c
    const-string v1, "StatsPullAtomService"

    const-string v2, "Could not read permissions"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_183
    .catchall {:try_start_17c .. :try_end_183} :catchall_187

    .line 3787
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v16

    :catchall_187
    move-exception v0

    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3788
    throw v0
.end method

.method public final pullDataBytesTransferLocked(ILjava/util/List;)I
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1419
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->collectNetworkStatsSnapshotForAtomLocked(I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    .line 1421
    const-string v4, ", return."

    const-string v5, "StatsPullAtomService"

    if-nez v2, :cond_27

    .line 1422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current snapshot is null for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1426
    :cond_27
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    .line 1427
    iget-object v7, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mNetworkStatsBaselines:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda17;

    invoke-direct {v8, v6}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)V

    invoke-static {v7, v8}, Lcom/android/internal/util/CollectionUtils;->find(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    if-nez v7, :cond_5e

    .line 1433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "baseline is null for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1437
    :cond_5e
    new-instance v8, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;

    iget-object v9, v6, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    iget-object v7, v7, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    .line 1438
    invoke-virtual {v9, v7}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/stats/pull/StatsPullAtomService;->removeEmptyEntries(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v7

    move-object v9, v8

    iget-object v8, v6, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->transports:[I

    move-object v10, v9

    iget-boolean v9, v6, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByFgbg:Z

    move-object v11, v10

    iget-boolean v10, v6, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByTag:Z

    move-object v12, v11

    iget-boolean v11, v6, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->slicedByMetered:Z

    move-object v13, v12

    iget v12, v6, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->ratType:I

    move-object v14, v13

    iget-object v13, v6, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->subInfo:Lcom/android/server/stats/pull/netstats/SubInfo;

    move-object v15, v14

    iget v14, v6, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->oemManaged:I

    iget-boolean v6, v6, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->isTypeProxy:Z

    move-object/from16 v16, v15

    move v15, v6

    move-object/from16 v6, v16

    invoke-direct/range {v6 .. v15}, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;-><init>(Landroid/net/NetworkStats;[IZZZILcom/android/server/stats/pull/netstats/SubInfo;IZ)V

    move-object v13, v6

    .line 1443
    iget-object v6, v13, Lcom/android/server/stats/pull/netstats/NetworkStatsExt;->stats:Landroid/net/NetworkStats;

    invoke-virtual {v6}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_99

    goto :goto_2b

    :cond_99
    move-object/from16 v6, p2

    .line 1445
    invoke-virtual {v0, v1, v6, v13}, Lcom/android/server/stats/pull/StatsPullAtomService;->addNetworkStats(ILjava/util/List;Lcom/android/server/stats/pull/netstats/NetworkStatsExt;)V

    goto :goto_2b

    :cond_9f
    const/4 v0, 0x0

    return v0
.end method

.method public pullDebugElapsedClockLocked(ILjava/util/List;)I
    .registers 15

    .line 3564
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 3565
    iget-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPreviousValue:J

    const-wide/16 v5, 0x0

    cmp-long v2, v0, v5

    if-nez v2, :cond_e

    :goto_c
    move-wide v7, v5

    goto :goto_11

    :cond_e
    sub-long v5, v3, v0

    goto :goto_c

    .line 3568
    :goto_11
    iget-wide v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    const/4 v9, 0x1

    move-wide v5, v3

    move v0, p1

    invoke-static/range {v0 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJJI)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3573
    iget-wide v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    const-wide/16 v5, 0x2

    rem-long v5, v1, v5

    const-wide/16 v10, 0x1

    cmp-long p1, v5, v10

    if-nez p1, :cond_32

    const/4 v9, 0x2

    move-wide v5, v3

    .line 3574
    invoke-static/range {v0 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJJI)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3580
    :cond_32
    iget-wide p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    add-long/2addr p1, v10

    iput-wide p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPullCount:J

    .line 3581
    iput-wide v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugElapsedClockPreviousValue:J

    const/4 p0, 0x0

    return p0
.end method

.method public pullDebugFailingElapsedClockLocked(ILjava/util/List;)I
    .registers 12

    .line 3599
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 3601
    iget-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPullCount:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v0

    iput-wide v5, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPullCount:J

    const-wide/16 v7, 0x5

    rem-long/2addr v0, v7

    const-wide/16 v7, 0x0

    cmp-long v0, v0, v7

    if-nez v0, :cond_1f

    .line 3602
    iput-wide v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPreviousValue:J

    .line 3603
    const-string p0, "StatsPullAtomService"

    const-string p1, "Failing debug elapsed clock"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 3611
    :cond_1f
    iget-wide v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPreviousValue:J

    cmp-long v2, v0, v7

    if-nez v2, :cond_27

    :goto_25
    move-wide v1, v5

    goto :goto_2a

    :cond_27
    sub-long v7, v3, v0

    goto :goto_25

    :goto_2a
    move-wide v5, v3

    move v0, p1

    .line 3607
    invoke-static/range {v0 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJJ)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3615
    iput-wide v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mDebugFailingElapsedClockPreviousValue:J

    const/4 p0, 0x0

    return p0
.end method

.method public pullDeviceCalculatedPowerUseLocked(ILjava/util/List;)I
    .registers 5

    .line 3538
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/BatteryStatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStatsManager;

    .line 3540
    :try_start_a
    invoke-virtual {v0}, Landroid/os/BatteryStatsManager;->getBatteryUsageStats()Landroid/os/BatteryUsageStats;

    move-result-object v0

    .line 3542
    invoke-virtual {v0}, Landroid/os/BatteryUsageStats;->getConsumedPower()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->milliAmpHrsToNanoAmpSecs(D)J

    move-result-wide v0

    .line 3541
    invoke-static {p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1d} :catch_1f

    const/4 p0, 0x0

    return p0

    :catch_1f
    move-exception p0

    .line 3545
    const-string p1, "StatsPullAtomService"

    const-string p2, "Could not obtain battery usage stats"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    return p0
.end method

.method public pullDirectoryUsageLocked(ILjava/util/List;)I
    .registers 13

    .line 3023
    new-instance p0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 3024
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 3025
    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 3026
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getMetadataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 3029
    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v6

    .line 3030
    invoke-virtual {p0}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v8

    const/4 v5, 0x1

    move v4, p1

    .line 3028
    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    move v3, v4

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3034
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v5

    invoke-virtual {v1}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v7

    const/4 v4, 0x2

    .line 3032
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3038
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v5

    invoke-virtual {v0}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v7

    const/4 v4, 0x3

    .line 3036
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3042
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v5

    invoke-virtual {v2}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v7

    const/4 v4, 0x4

    .line 3040
    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIJJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public pullDiskIOLocked(ILjava/util/List;)I
    .registers 4

    .line 3395
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStoragedUidIoStatsReader:Lcom/android/internal/os/StoragedUidIoStatsReader;

    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda19;

    invoke-direct {v0, p2, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda19;-><init>(Ljava/util/List;I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/os/StoragedUidIoStatsReader;->readAbsolute(Lcom/android/internal/os/StoragedUidIoStatsReader$Callback;)V

    const/4 p0, 0x0

    return p0
.end method

.method public pullDiskStatsLocked(ILjava/util/List;)I
    .registers 11

    const/16 v0, 0x200

    .line 2964
    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v0, :cond_e

    int-to-byte v4, v3

    .line 2965
    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 2967
    :cond_e
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "system/statsdperftest.tmp"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2971
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x0

    .line 2973
    :try_start_1f
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_24} :catch_33
    .catchall {:try_start_1f .. :try_end_24} :catchall_31

    .line 2974
    :try_start_24
    invoke-virtual {v6, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_2e
    .catchall {:try_start_24 .. :try_end_27} :catchall_2b

    .line 2979
    :goto_27
    :try_start_27
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_3f

    goto :goto_3f

    :catchall_2b
    move-exception p0

    move-object v5, v6

    goto :goto_36

    :catch_2e
    move-exception v1

    :goto_2f
    move-object v5, v1

    goto :goto_3c

    :catchall_31
    move-exception p0

    goto :goto_36

    :catch_33
    move-exception v1

    move-object v6, v5

    goto :goto_2f

    :goto_36
    if-eqz v5, :cond_3b

    :try_start_38
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3b

    .line 2983
    :catch_3b
    :cond_3b
    throw p0

    :goto_3c
    if-eqz v6, :cond_3f

    goto :goto_27

    .line 2985
    :catch_3f
    :cond_3f
    :goto_3f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v3

    .line 2986
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2988
    :cond_4d
    const-string v0, "StatsPullAtomService"

    if-eqz v5, :cond_58

    .line 2989
    const-string v1, "Error performing diskstats latency test"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, -0x1

    .line 2993
    :cond_58
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    move-result v1

    .line 2997
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIStoragedService()Landroid/os/IStoraged;

    move-result-object p0

    if-nez p0, :cond_64

    const/4 p0, 0x1

    return p0

    .line 3002
    :cond_64
    :try_start_64
    invoke-interface {p0}, Landroid/os/IStoraged;->getRecentPerf()I

    move-result p0
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_68} :catch_69

    goto :goto_70

    .line 3004
    :catch_69
    const-string/jumbo p0, "storaged not found"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    .line 3008
    :goto_70
    invoke-static {p1, v6, v7, v1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJZI)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v2
.end method

.method public pullExternalStorageInfoLocked(ILjava/util/List;)I
    .registers 9

    .line 3921
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStorageManager:Landroid/os/storage/StorageManager;

    const/4 v0, 0x1

    if-nez p0, :cond_6

    return v0

    .line 3925
    :cond_6
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object p0

    .line 3926
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 3927
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v2

    invoke-static {v2}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v2

    .line 3928
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 3929
    const-string/jumbo v4, "mounted"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3932
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-nez v2, :cond_3b

    move v1, v0

    goto :goto_44

    .line 3934
    :cond_3b
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v1

    if-ne v1, v0, :cond_43

    move v1, v4

    goto :goto_44

    :cond_43
    move v1, v5

    .line 3940
    :goto_44
    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v2

    if-eqz v2, :cond_4c

    move v4, v0

    goto :goto_54

    .line 3942
    :cond_4c
    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v2

    if-eqz v2, :cond_53

    goto :goto_54

    :cond_53
    move v4, v5

    .line 3948
    :goto_54
    iget-wide v2, v3, Landroid/os/storage/DiskInfo;->size:J

    invoke-static {p1, v4, v1, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIJ)Landroid/util/StatsEvent;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_5e
    const/4 p0, 0x0

    return p0
.end method

.method public pullFaceSettingsLocked(ILjava/util/List;)I
    .registers 24

    move-object/from16 v0, p0

    .line 4018
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4020
    :try_start_6
    iget-object v3, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/UserManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_b1

    const/4 v4, 0x1

    if-nez v3, :cond_17

    .line 4054
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 4024
    :cond_17
    :try_start_17
    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    .line 4025
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_21
    if-ge v7, v5, :cond_b3

    .line 4027
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 4029
    iget-object v9, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 4030
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "face_unlock_keyguard_enabled"

    .line 4029
    invoke-static {v9, v10, v4, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    .line 4032
    iget-object v10, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 4033
    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "face_unlock_dismisses_keyguard"

    .line 4032
    invoke-static {v10, v11, v4, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    .line 4035
    iget-object v11, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 4036
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "face_unlock_attention_required"

    .line 4035
    invoke-static {v11, v12, v6, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    .line 4038
    iget-object v12, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 4039
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "face_unlock_app_enabled"

    .line 4038
    invoke-static {v12, v13, v4, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    .line 4041
    iget-object v13, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 4042
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "face_unlock_always_require_confirmation"

    .line 4041
    invoke-static {v13, v14, v6, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    .line 4044
    iget-object v14, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 4045
    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "face_unlock_diversity_required"

    .line 4044
    invoke-static {v14, v15, v4, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v9, :cond_7d

    move v15, v4

    goto :goto_7e

    :cond_7d
    move v15, v6

    :goto_7e
    if-eqz v10, :cond_83

    move/from16 v16, v4

    goto :goto_85

    :cond_83
    move/from16 v16, v6

    :goto_85
    if-eqz v11, :cond_8a

    move/from16 v17, v4

    goto :goto_8c

    :cond_8a
    move/from16 v17, v6

    :goto_8c
    if-eqz v12, :cond_91

    move/from16 v18, v4

    goto :goto_93

    :cond_91
    move/from16 v18, v6

    :goto_93
    if-eqz v13, :cond_98

    move/from16 v19, v4

    goto :goto_9a

    :cond_98
    move/from16 v19, v6

    :goto_9a
    if-eqz v8, :cond_a1

    move/from16 v20, v4

    :goto_9e
    move/from16 v14, p1

    goto :goto_a4

    :cond_a1
    move/from16 v20, v6

    goto :goto_9e

    .line 4048
    :goto_a4
    invoke-static/range {v14 .. v20}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IZZZZZZ)Landroid/util/StatsEvent;

    move-result-object v8

    move-object/from16 v9, p2

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ad
    .catchall {:try_start_17 .. :try_end_ad} :catchall_b1

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_21

    :catchall_b1
    move-exception v0

    goto :goto_b7

    .line 4054
    :cond_b3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :goto_b7
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4055
    throw v0
.end method

.method public final pullHdrCapabilities(ILjava/util/List;)I
    .registers 15

    .line 5138
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    .line 5139
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    .line 5141
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getHdrConversionMode()Landroid/hardware/display/HdrConversionMode;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/display/HdrConversionMode;->getConversionMode()I

    move-result v3

    .line 5142
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getHdrConversionMode()Landroid/hardware/display/HdrConversionMode;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/display/HdrConversionMode;->getPreferredHdrOutputType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v3, v5, :cond_24

    move v8, v5

    goto :goto_25

    :cond_24
    move v8, v1

    :goto_25
    const/4 v6, -0x1

    if-ne v4, v6, :cond_2a

    move v9, v1

    goto :goto_2b

    :cond_2a
    move v9, v4

    .line 5145
    :goto_2b
    invoke-virtual {p0, v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->hasDolbyVisionIssue(Landroid/view/Display;)Z

    move-result v10

    .line 5146
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getSupportedHdrOutputTypes()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes([I)[B

    move-result-object v7

    if-eqz v3, :cond_3c

    move v11, v5

    :goto_3a
    move v6, p1

    goto :goto_3e

    :cond_3c
    move v11, v1

    goto :goto_3a

    .line 5149
    :goto_3e
    invoke-static/range {v6 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[BZIZZ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method public final pullHealthHalLocked(ILjava/util/List;)I
    .registers 11

    .line 4505
    const-string v0, "StatsPullAtomService"

    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHealthService:Lcom/android/server/health/HealthServiceWrapper;

    const/4 v2, 0x1

    if-nez v1, :cond_8

    return v2

    .line 4510
    :cond_8
    :try_start_8
    invoke-virtual {v1}, Lcom/android/server/health/HealthServiceWrapper;->getHealthInfo()Landroid/hardware/health/HealthInfo;

    move-result-object v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_b7
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_c} :catch_b7

    if-nez v1, :cond_f

    return v2

    :cond_f
    const/16 v3, 0x2723

    const/4 v4, 0x0

    if-eq p1, v3, :cond_ad

    const/16 v3, 0x2724

    if-eq p1, v3, :cond_aa

    const/16 v3, 0x272e

    if-eq p1, v3, :cond_a7

    const/16 v3, 0x273b

    if-eq p1, v3, :cond_a4

    const/16 v3, 0x273d

    if-eq p1, v3, :cond_a1

    const/16 v3, 0x27ec

    if-eq p1, v3, :cond_57

    const/16 p0, 0x2805

    if-eq p1, p0, :cond_35

    const/16 p0, 0x2806

    if-eq p1, p0, :cond_31

    return v2

    .line 4530
    :cond_31
    iget p0, v1, Landroid/hardware/health/HealthInfo;->batteryFullChargeDesignCapacityUah:I

    goto/16 :goto_af

    .line 4577
    :cond_35
    iget-boolean p0, v1, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    if-eqz p0, :cond_56

    iget p0, v1, Landroid/hardware/health/HealthInfo;->batteryCurrentMicroamps:I

    if-nez p0, :cond_3e

    goto :goto_56

    .line 4580
    :cond_3e
    iget v0, v1, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double/2addr v0, v2

    const-wide v2, 0x3feeb851eb851eb8L    # 0.96

    mul-double/2addr v0, v2

    .line 4581
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    int-to-double v2, p0

    div-double/2addr v0, v2

    .line 4580
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    goto :goto_af

    :cond_56
    :goto_56
    return v2

    .line 4541
    :cond_57
    :try_start_57
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHealthService:Lcom/android/server/health/HealthServiceWrapper;

    invoke-virtual {v1}, Lcom/android/server/health/HealthServiceWrapper;->getBatteryHealthData()Landroid/hardware/health/BatteryHealthData;

    move-result-object v1
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_5d} :catch_a0
    .catch Ljava/lang/IllegalStateException; {:try_start_57 .. :try_end_5d} :catch_a0

    if-nez v1, :cond_60

    return v2

    .line 4551
    :cond_60
    :try_start_60
    new-instance v3, Landroid/os/BatteryProperty;

    invoke-direct {v3}, Landroid/os/BatteryProperty;-><init>()V

    .line 4552
    new-instance v5, Landroid/os/BatteryProperty;

    invoke-direct {v5}, Landroid/os/BatteryProperty;-><init>()V

    .line 4554
    iget-object v6, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHealthService:Lcom/android/server/health/HealthServiceWrapper;

    const/4 v7, 0x6

    invoke-virtual {v6, v7, v3}, Lcom/android/server/health/HealthServiceWrapper;->getProperty(ILandroid/os/BatteryProperty;)I

    move-result v6

    if-gez v6, :cond_74

    return v2

    .line 4558
    :cond_74
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mHealthService:Lcom/android/server/health/HealthServiceWrapper;

    const/16 v6, 0x9

    invoke-virtual {p0, v6, v5}, Lcom/android/server/health/HealthServiceWrapper;->getProperty(ILandroid/os/BatteryProperty;)I

    move-result p0

    if-gez p0, :cond_7f

    return v2

    .line 4563
    :cond_7f
    invoke-virtual {v3}, Landroid/os/BatteryProperty;->getLong()J

    move-result-wide v6

    long-to-int p0, v6

    .line 4564
    invoke-virtual {v5}, Landroid/os/BatteryProperty;->getLong()J

    move-result-wide v5

    long-to-int v3, v5

    .line 4565
    invoke-static {p1, v1, p0, v3}, Lcom/android/server/stats/pull/BatteryHealthUtility;->buildStatsEvent(ILandroid/hardware/health/BatteryHealthData;II)Landroid/util/StatsEvent;

    move-result-object p0

    .line 4567
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_90
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_90} :catch_93
    .catch Ljava/lang/IllegalStateException; {:try_start_60 .. :try_end_90} :catch_93
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_60 .. :try_end_90} :catch_91

    return v4

    :catch_91
    move-exception p0

    goto :goto_95

    :catch_93
    move-exception p0

    goto :goto_9b

    .line 4573
    :goto_95
    const-string p1, "Could not find message digest algorithm"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a0

    .line 4571
    :goto_9b
    const-string p1, "Failed to add pulled data"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_a0
    :goto_a0
    return v2

    .line 4536
    :cond_a1
    iget p0, v1, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    goto :goto_af

    .line 4521
    :cond_a4
    iget p0, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    goto :goto_af

    .line 4533
    :cond_a7
    iget p0, v1, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    goto :goto_af

    .line 4527
    :cond_aa
    iget p0, v1, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    goto :goto_af

    .line 4524
    :cond_ad
    iget p0, v1, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 4586
    :goto_af
    invoke-static {p1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v4

    :catch_b7
    return v2
.end method

.method public pullInstalledIncrementalPackagesLocked(ILjava/util/List;)I
    .registers 17

    .line 4667
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 4668
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 4669
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 4670
    const-string v1, "android.software.incremental_delivery"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_18

    return v2

    .line 4674
    :cond_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 4676
    :try_start_1c
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v1

    .line 4677
    array-length v5, v1

    move v6, v2

    :goto_2a
    if-ge v6, v5, :cond_7a

    aget v7, v1, v6

    .line 4678
    invoke-virtual {p0, v2, v7}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v8

    .line 4680
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_36
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_75

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageInfo;

    .line 4681
    iget-object v10, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 4682
    invoke-virtual {v10}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v10

    .line 4681
    invoke-static {v10}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_72

    .line 4683
    iget-object v10, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v11, 0x3e8

    invoke-virtual {v0, v10, v11, v7}, Landroid/content/pm/PackageManagerInternal;->getIncrementalStatesInfo(Ljava/lang/String;II)Landroid/content/pm/IncrementalStatesInfo;

    move-result-object v10

    .line 4685
    iget-object v9, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4687
    invoke-virtual {v10}, Landroid/content/pm/IncrementalStatesInfo;->isLoading()Z

    move-result v11

    invoke-virtual {v10}, Landroid/content/pm/IncrementalStatesInfo;->getLoadingCompletedTime()J

    move-result-wide v12

    .line 4686
    invoke-static {p1, v9, v11, v12, v13}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIZJ)Landroid/util/StatsEvent;

    move-result-object v9

    move-object/from16 v11, p2

    .line 4685
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_6b} :catch_6f
    .catchall {:try_start_1c .. :try_end_6b} :catchall_6c

    goto :goto_36

    :catchall_6c
    move-exception v0

    move-object p0, v0

    goto :goto_8a

    :catch_6f
    move-exception v0

    move-object p0, v0

    goto :goto_7e

    :cond_72
    move-object/from16 v11, p2

    goto :goto_36

    :cond_75
    move-object/from16 v11, p2

    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    .line 4695
    :cond_7a
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 4692
    :goto_7e
    :try_start_7e
    const-string v0, "StatsPullAtomService"

    const-string v1, "failed to pullInstalledIncrementalPackagesLocked"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_85
    .catchall {:try_start_7e .. :try_end_85} :catchall_6c

    .line 4695
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :goto_8a
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4696
    throw p0
.end method

.method public pullIonHeapSizeLocked(ILjava/util/List;)I
    .registers 5

    .line 2672
    invoke-static {}, Landroid/os/Debug;->getIonHeapsSizeKb()J

    move-result-wide v0

    long-to-int p0, v0

    .line 2673
    invoke-static {p1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public pullKernelWakelockLocked(ILjava/util/List;)I
    .registers 11

    .line 2046
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mKernelWakelockReader:Lcom/android/server/power/stats/KernelWakelockReader;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTmpWakelockStats:Lcom/android/server/power/stats/KernelWakelockStats;

    .line 2047
    invoke-virtual {v0, p0}, Lcom/android/server/power/stats/KernelWakelockReader;->readKernelWakelockStats(Lcom/android/server/power/stats/KernelWakelockStats;)Lcom/android/server/power/stats/KernelWakelockStats;

    move-result-object p0

    .line 2048
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2049
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 2050
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/KernelWakelockStats$Entry;

    .line 2051
    iget v4, v0, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->count:I

    iget v5, v0, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->version:I

    iget-wide v6, v0, Lcom/android/server/power/stats/KernelWakelockStats$Entry;->totalTimeUs:J

    move v2, p1

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;IIJ)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p1, v2

    goto :goto_10

    :cond_39
    const/4 p0, 0x0

    return p0
.end method

.method public pullKeystoreAtoms(ILjava/util/List;)I
    .registers 9

    .line 4900
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIKeystoreMetricsService()Landroid/security/metrics/IKeystoreMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 4901
    const-string v2, "StatsPullAtomService"

    if-nez v0, :cond_f

    .line 4902
    const-string p0, "Keystore service is null"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4905
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 4907
    :try_start_13
    invoke-interface {v0, p1}, Landroid/security/metrics/IKeystoreMetrics;->pullMetrics(I)[Landroid/security/metrics/KeystoreAtom;

    move-result-object v0

    const/16 v5, 0x2777

    if-eq p1, v5, :cond_89

    const/16 v5, 0x2808

    if-eq p1, v5, :cond_81

    packed-switch p1, :pswitch_data_bc

    .line 4930
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported keystore atom: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_36} :catch_3f
    .catch Landroid/os/ServiceSpecificException; {:try_start_13 .. :try_end_36} :catch_3d
    .catchall {:try_start_13 .. :try_end_36} :catchall_3a

    .line 4941
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_3a
    move-exception p0

    goto/16 :goto_b7

    :catch_3d
    move-exception p0

    goto :goto_91

    :catch_3f
    move-exception p0

    goto :goto_ae

    .line 4926
    :pswitch_41
    :try_start_41
    invoke-virtual {p0, v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreCrashStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result p0
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_45} :catch_3f
    .catch Landroid/os/ServiceSpecificException; {:try_start_41 .. :try_end_45} :catch_3d
    .catchall {:try_start_41 .. :try_end_45} :catchall_3a

    .line 4941
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 4924
    :pswitch_49
    :try_start_49
    invoke-virtual {p0, v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseRkpErrorStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result p0
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4d} :catch_3f
    .catch Landroid/os/ServiceSpecificException; {:try_start_49 .. :try_end_4d} :catch_3d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_3a

    .line 4941
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 4922
    :pswitch_51
    :try_start_51
    invoke-virtual {p0, v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreKeyOperationWithGeneralInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result p0
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_55} :catch_3f
    .catch Landroid/os/ServiceSpecificException; {:try_start_51 .. :try_end_55} :catch_3d
    .catchall {:try_start_51 .. :try_end_55} :catchall_3a

    .line 4941
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 4920
    :pswitch_59
    :try_start_59
    invoke-virtual {p0, v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreKeyOperationWithPurposeModesInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result p0
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_5d} :catch_3f
    .catch Landroid/os/ServiceSpecificException; {:try_start_59 .. :try_end_5d} :catch_3d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_3a

    .line 4941
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 4918
    :pswitch_61
    :try_start_61
    invoke-virtual {p0, v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreAtomWithOverflow([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result p0
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_65} :catch_3f
    .catch Landroid/os/ServiceSpecificException; {:try_start_61 .. :try_end_65} :catch_3d
    .catchall {:try_start_61 .. :try_end_65} :catchall_3a

    .line 4941
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 4916
    :pswitch_69
    :try_start_69
    invoke-virtual {p0, v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreKeyCreationWithPurposeModesInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result p0
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_6d} :catch_3f
    .catch Landroid/os/ServiceSpecificException; {:try_start_69 .. :try_end_6d} :catch_3d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_3a

    .line 4941
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 4914
    :pswitch_71
    :try_start_71
    invoke-virtual {p0, v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreKeyCreationWithAuthInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result p0
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_75} :catch_3f
    .catch Landroid/os/ServiceSpecificException; {:try_start_71 .. :try_end_75} :catch_3d
    .catchall {:try_start_71 .. :try_end_75} :catchall_3a

    .line 4941
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 4912
    :pswitch_79
    :try_start_79
    invoke-virtual {p0, v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreKeyCreationWithGeneralInfo([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result p0
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_79 .. :try_end_7d} :catch_3f
    .catch Landroid/os/ServiceSpecificException; {:try_start_79 .. :try_end_7d} :catch_3d
    .catchall {:try_start_79 .. :try_end_7d} :catchall_3a

    .line 4941
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 4928
    :cond_81
    :try_start_81
    invoke-virtual {p0, v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreKeysPerUid([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result p0
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_85} :catch_3f
    .catch Landroid/os/ServiceSpecificException; {:try_start_81 .. :try_end_85} :catch_3d
    .catchall {:try_start_81 .. :try_end_85} :catchall_3a

    .line 4941
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 4910
    :cond_89
    :try_start_89
    invoke-virtual {p0, v0, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->parseKeystoreStorageStats([Landroid/security/metrics/KeystoreAtom;Ljava/util/List;)I

    move-result p0
    :try_end_8d
    .catch Landroid/os/RemoteException; {:try_start_89 .. :try_end_8d} :catch_3f
    .catch Landroid/os/ServiceSpecificException; {:try_start_89 .. :try_end_8d} :catch_3d
    .catchall {:try_start_89 .. :try_end_8d} :catchall_3a

    .line 4941
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 4938
    :goto_91
    :try_start_91
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Pulling keystore atom with tag "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " failed"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_aa
    .catchall {:try_start_91 .. :try_end_aa} :catchall_3a

    .line 4941
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    .line 4935
    :goto_ae
    :try_start_ae
    const-string p1, "Disconnected from keystore service. Cannot pull."

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b3
    .catchall {:try_start_ae .. :try_end_b3} :catchall_3a

    .line 4941
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :goto_b7
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4942
    throw p0

    nop

    :pswitch_data_bc
    .packed-switch 0x2786
        :pswitch_79
        :pswitch_71
        :pswitch_69
        :pswitch_61
        :pswitch_59
        :pswitch_51
        :pswitch_49
        :pswitch_41
    .end packed-switch
.end method

.method public pullLooperStatsLocked(ILjava/util/List;)I
    .registers 31

    .line 2934
    const-class v0, Lcom/android/internal/os/LooperStats;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/LooperStats;

    if-nez v0, :cond_c

    const/4 v0, 0x1

    return v0

    .line 2939
    :cond_c
    invoke-virtual {v0}, Lcom/android/internal/os/LooperStats;->getEntries()Ljava/util/List;

    move-result-object v1

    .line 2940
    invoke-virtual {v0}, Lcom/android/internal/os/LooperStats;->reset()V

    .line 2941
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/LooperStats$ExportedEntry;

    .line 2942
    iget v3, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->workSourceUid:I

    iget-object v4, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->handlerClassName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->threadName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageName:Ljava/lang/String;

    iget-wide v7, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->messageCount:J

    iget-wide v9, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->exceptionCount:J

    iget-wide v11, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->recordedMessageCount:J

    iget-wide v13, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->totalLatencyMicros:J

    move v15, v3

    iget-wide v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->cpuUsageMicros:J

    move-object/from16 p0, v0

    iget-boolean v0, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->isInteractive:Z

    move-wide/from16 v16, v2

    iget-wide v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxCpuUsageMicros:J

    move-wide/from16 v18, v2

    iget-wide v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxLatencyMicros:J

    move-wide/from16 v20, v2

    iget-wide v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->recordedDelayMessageCount:J

    move-wide/from16 v22, v2

    iget-wide v2, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->delayMillis:J

    move/from16 v24, v0

    iget-wide v0, v1, Lcom/android/internal/os/LooperStats$ExportedEntry;->maxDelayMillis:J

    move-wide/from16 v26, v2

    move v3, v15

    move-wide/from16 v15, v16

    move/from16 v17, v24

    move-wide/from16 v24, v26

    move/from16 v2, p1

    move-wide/from16 v26, v0

    invoke-static/range {v2 .. v27}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJJZJJJJJ)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    goto :goto_17

    :cond_67
    const/4 v0, 0x0

    return v0
.end method

.method public pullMediaCapabilitiesStats(ILjava/util/List;)I
    .registers 25

    move-object/from16 v1, p0

    .line 5044
    const-string v2, "StatsPullAtomService"

    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.software.leanback"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_14

    return v3

    .line 5047
    :cond_14
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-nez v0, :cond_21

    return v3

    .line 5053
    :cond_21
    invoke-virtual {v0}, Landroid/media/AudioManager;->getSurroundFormats()Ljava/util/Map;

    move-result-object v4

    .line 5054
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v5}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes(Ljava/util/List;)[B

    move-result-object v8

    .line 5055
    invoke-virtual {v0}, Landroid/media/AudioManager;->getReportedSurroundFormats()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes(Ljava/util/List;)[B

    move-result-object v9

    .line 5056
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5057
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5058
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 5059
    invoke-virtual {v0, v10}, Landroid/media/AudioManager;->isSurroundFormatEnabled(I)Z

    move-result v10

    if-nez v10, :cond_66

    .line 5060
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 5062
    :cond_66
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 5065
    :cond_6a
    invoke-virtual {v1, v5}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes(Ljava/util/List;)[B

    move-result-object v10

    .line 5066
    invoke-virtual {v1, v6}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes(Ljava/util/List;)[B

    move-result-object v11

    .line 5067
    invoke-virtual {v0}, Landroid/media/AudioManager;->getEncodedSurroundMode()I

    move-result v12

    .line 5069
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/hardware/display/DisplayManager;

    const/4 v5, 0x0

    .line 5070
    invoke-virtual {v4, v5}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 5072
    invoke-virtual {v0}, Landroid/view/Display;->getHdrCapabilities()Landroid/view/Display$HdrCapabilities;

    move-result-object v6

    .line 5073
    new-array v7, v5, [B

    if-eqz v6, :cond_96

    .line 5075
    invoke-virtual {v6}, Landroid/view/Display$HdrCapabilities;->getSupportedHdrTypes()[I

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes([I)[B

    move-result-object v7

    :cond_96
    move-object v13, v7

    .line 5077
    invoke-virtual {v0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes([Landroid/view/Display$Mode;)[B

    move-result-object v14

    .line 5079
    invoke-static {}, Landroid/media/MediaDrm;->getSupportedCryptoSchemes()Ljava/util/List;

    move-result-object v0

    const/4 v6, -0x1

    .line 5081
    :try_start_a4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_bc

    .line 5082
    new-instance v7, Landroid/media/MediaDrm;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    invoke-direct {v7, v0}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    .line 5083
    invoke-virtual {v7}, Landroid/media/MediaDrm;->getConnectedHdcpLevel()I

    move-result v0
    :try_end_b9
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_a4 .. :try_end_b9} :catch_ba

    goto :goto_bd

    :catch_ba
    move-exception v0

    goto :goto_bf

    :cond_bc
    move v0, v6

    :goto_bd
    move v15, v0

    goto :goto_c6

    .line 5086
    :goto_bf
    const-string/jumbo v7, "pulling hdcp level failed."

    invoke-static {v2, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v15, v6

    .line 5092
    :goto_c6
    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getMatchContentFrameRateUserPreference()I

    move-result v16

    .line 5093
    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getUserDisabledHdrTypes()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->toBytes([I)[B

    move-result-object v17

    .line 5095
    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getGlobalUserPreferredDisplayMode()Landroid/view/Display$Mode;

    move-result-object v0

    if-eqz v0, :cond_df

    .line 5097
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    move/from16 v18, v4

    goto :goto_e1

    :cond_df
    move/from16 v18, v6

    :goto_e1
    if-eqz v0, :cond_e7

    .line 5099
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v6

    :cond_e7
    move/from16 v19, v6

    if-eqz v0, :cond_f2

    .line 5101
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    :goto_ef
    move/from16 v20, v0

    goto :goto_f4

    :cond_f2
    const/4 v0, 0x0

    goto :goto_ef

    .line 5104
    :goto_f4
    :try_start_f4
    iget-object v0, v1, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    .line 5105
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "minimal_post_processing_allowed"

    .line 5104
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_101
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_f4 .. :try_end_101} :catch_10a

    if-nez v0, :cond_104

    goto :goto_105

    :cond_104
    move v3, v5

    :goto_105
    move/from16 v21, v3

    :goto_107
    move/from16 v7, p1

    goto :goto_114

    :catch_10a
    move-exception v0

    .line 5109
    const-string/jumbo v1, "unable to find setting for MINIMAL_POST_PROCESSING_ALLOWED."

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move/from16 v21, v5

    goto :goto_107

    .line 5116
    :goto_114
    invoke-static/range {v7 .. v21}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[B[B[B[BI[B[BII[BIIFZ)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v1, p2

    .line 5115
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v5
.end method

.method public pullMemcgProcessHighMemoryHighWatermark(ILjava/util/List;)I
    .registers 12

    .line 5298
    const-class p0, Landroid/app/ActivityManagerInternal;

    .line 5299
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManagerInternal;

    .line 5300
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getMemoryStateForProcesses()Ljava/util/List;

    move-result-object p0

    .line 5301
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProcessMemoryState;

    .line 5302
    iget v1, v0, Landroid/app/ProcessMemoryState;->pid:I

    .line 5303
    invoke-static {v1}, Lcom/android/internal/os/MemcgProcMemoryUtil;->readHighWaterMarkMemorySnapshot(I)Lcom/android/internal/os/MemcgProcMemoryUtil$MemcgHighWaterMarkMemorySnapshot;

    move-result-object v1

    if-nez v1, :cond_25

    goto :goto_10

    .line 5307
    :cond_25
    iget v3, v0, Landroid/app/ProcessMemoryState;->uid:I

    iget-object v4, v0, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    iget-wide v5, v1, Lcom/android/internal/os/MemcgProcMemoryUtil$MemcgHighWaterMarkMemorySnapshot;->memcgMemoryPeakInBytes:J

    const-wide/16 v7, 0x400

    div-long/2addr v5, v7

    iget-wide v0, v1, Lcom/android/internal/os/MemcgProcMemoryUtil$MemcgHighWaterMarkMemorySnapshot;->memcgSwapMemoryPeakInBytes:J

    div-long v7, v0, v7

    move v2, p1

    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;JJ)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p1, v2

    goto :goto_10

    :cond_3c
    const/4 p0, 0x0

    return p0
.end method

.method public pullMemcgProcessMemoryInformation(ILjava/util/List;)I
    .registers 12

    .line 5278
    const-class p0, Landroid/app/ActivityManagerInternal;

    .line 5279
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManagerInternal;

    .line 5280
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getMemoryStateForProcesses()Ljava/util/List;

    move-result-object p0

    .line 5281
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProcessMemoryState;

    .line 5282
    iget v1, v0, Landroid/app/ProcessMemoryState;->pid:I

    invoke-static {v1}, Lcom/android/internal/os/MemcgProcMemoryUtil;->readMemcgMemorySnapshot(I)Lcom/android/internal/os/MemcgProcMemoryUtil$MemcgMemorySnapshot;

    move-result-object v1

    if-nez v1, :cond_25

    goto :goto_10

    .line 5286
    :cond_25
    iget v3, v0, Landroid/app/ProcessMemoryState;->uid:I

    iget-object v4, v0, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    iget-wide v5, v1, Lcom/android/internal/os/MemcgProcMemoryUtil$MemcgMemorySnapshot;->memcgMemoryInBytes:J

    const-wide/16 v7, 0x400

    div-long/2addr v5, v7

    iget-wide v0, v1, Lcom/android/internal/os/MemcgProcMemoryUtil$MemcgMemorySnapshot;->memcgSwapMemoryInBytes:J

    div-long v7, v0, v7

    move v2, p1

    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;JJ)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p1, v2

    goto :goto_10

    :cond_3c
    const/4 p0, 0x0

    return p0
.end method

.method public pullModemActivityInfoLocked(ILjava/util/List;)I
    .registers 30

    move-object/from16 v0, p0

    .line 2357
    const-string v1, "StatsPullAtomService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2359
    :try_start_8
    new-instance v4, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v4}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 2360
    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mTelephony:Landroid/telephony/TelephonyManager;

    new-instance v6, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    new-instance v7, Lcom/android/server/stats/pull/StatsPullAtomService$3;

    invoke-direct {v7, v0, v4}, Lcom/android/server/stats/pull/StatsPullAtomService$3;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v5, v6, v7}, Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_66

    const/4 v5, 0x1

    .line 2377
    :try_start_1d
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v6, v7, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ModemActivityInfo;
    :try_end_27
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1d .. :try_end_27} :catch_6a
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_27} :catch_6a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1d .. :try_end_27} :catch_68
    .catchall {:try_start_1d .. :try_end_27} :catchall_66

    if-nez v0, :cond_2d

    .line 2401
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    .line 2391
    :cond_2d
    :try_start_2d
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getTimestampMillis()J

    move-result-wide v7

    .line 2392
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()J

    move-result-wide v9

    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()J

    move-result-wide v11

    const/4 v1, 0x0

    .line 2393
    invoke-virtual {v0, v1}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(I)J

    move-result-wide v13

    .line 2394
    invoke-virtual {v0, v5}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(I)J

    move-result-wide v15

    const/4 v4, 0x2

    .line 2395
    invoke-virtual {v0, v4}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(I)J

    move-result-wide v17

    const/4 v4, 0x3

    .line 2396
    invoke-virtual {v0, v4}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(I)J

    move-result-wide v19

    const/4 v4, 0x4

    .line 2397
    invoke-virtual {v0, v4}, Landroid/telephony/ModemActivityInfo;->getTransmitDurationMillisAtPowerLevel(I)J

    move-result-wide v21

    .line 2398
    invoke-virtual {v0}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis()J

    move-result-wide v23

    const-wide/16 v25, -0x1

    move/from16 v6, p1

    .line 2390
    invoke-static/range {v6 .. v26}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJJJJJJJJ)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v4, p2

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_62
    .catchall {:try_start_2d .. :try_end_62} :catchall_66

    .line 2401
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_66
    move-exception v0

    goto :goto_a1

    :catch_68
    move-exception v0

    goto :goto_6c

    :catch_6a
    move-exception v0

    goto :goto_88

    .line 2383
    :goto_6c
    :try_start_6c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception reading modem stats: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catchall {:try_start_6c .. :try_end_84} :catchall_66

    .line 2401
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    .line 2380
    :goto_88
    :try_start_88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "timeout or interrupt reading modem stats: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catchall {:try_start_88 .. :try_end_9d} :catchall_66

    .line 2401
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :goto_a1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2402
    throw v0
.end method

.method public pullNotificationRemoteViewsLocked(ILjava/util/List;)I
    .registers 14

    .line 4386
    const-string v1, "Getting notistats failed: "

    const-string v2, "StatsPullAtomService"

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getINotificationManagerService()Landroid/app/INotificationManager;

    move-result-object v3

    const/4 p0, 0x1

    if-nez v3, :cond_c

    return p0

    .line 4390
    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 4393
    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 4394
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1

    .line 4395
    invoke-virtual {v0, v7, v8, v6}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 4397
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 4398
    invoke-interface/range {v3 .. v8}, Landroid/app/INotificationManager;->pullStats(JIZLjava/util/List;)J

    .line 4400
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_30} :catch_47
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_30} :catch_44
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_30} :catch_41
    .catchall {:try_start_10 .. :try_end_30} :catchall_3e

    if-eq v0, p0, :cond_36

    .line 4414
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 4403
    :cond_36
    :try_start_36
    invoke-static {p1, p2, v8}, Lcom/android/server/stats/pull/StatsPullAtomService;->unpackStreamedData(ILjava/util/List;Ljava/util/List;)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_47
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_39} :catch_44
    .catch Ljava/lang/SecurityException; {:try_start_36 .. :try_end_39} :catch_41
    .catchall {:try_start_36 .. :try_end_39} :catchall_3e

    .line 4414
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :catchall_3e
    move-exception v0

    move-object p0, v0

    goto :goto_5f

    :catch_41
    move-exception v0

    move-object p1, v0

    goto :goto_4a

    :catch_44
    move-exception v0

    move-object p1, v0

    goto :goto_51

    :catch_47
    move-exception v0

    move-object p1, v0

    goto :goto_58

    .line 4411
    :goto_4a
    :try_start_4a
    invoke-static {v2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_3e

    .line 4414
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 4408
    :goto_51
    :try_start_51
    invoke-static {v2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_3e

    .line 4414
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 4405
    :goto_58
    :try_start_58
    invoke-static {v2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_3e

    .line 4414
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :goto_5f
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4415
    throw p0
.end method

.method public final pullNumBiometricsEnrolledLocked(IILjava/util/List;)I
    .registers 12

    .line 3170
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3174
    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 3175
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    goto :goto_1b

    :cond_1a
    move-object v1, v2

    .line 3177
    :goto_1b
    const-string v3, "android.hardware.biometrics.face"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 3178
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/face/FaceManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/hardware/face/FaceManager;

    :cond_2e
    const/4 v0, 0x1

    if-ne p1, v0, :cond_34

    if-nez v1, :cond_34

    return v0

    :cond_34
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3a

    if-nez v2, :cond_3a

    return v0

    .line 3187
    :cond_3a
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/UserManager;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    if-nez p0, :cond_47

    return v0

    .line 3192
    :cond_47
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3194
    :try_start_4b
    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_53
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 3195
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    if-ne p1, v0, :cond_74

    .line 3198
    invoke-virtual {v1, v6}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    goto :goto_7e

    :catchall_72
    move-exception p0

    goto :goto_8f

    :cond_74
    if-ne p1, v3, :cond_86

    .line 3200
    invoke-virtual {v2, v6}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .line 3204
    :goto_7e
    invoke-static {p2, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(III)Landroid/util/StatsEvent;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_85
    .catchall {:try_start_4b .. :try_end_85} :catchall_72

    goto :goto_53

    .line 3207
    :cond_86
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :cond_8a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :goto_8f
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3208
    throw p0
.end method

.method public final pullPendingIntentsPerPackage(ILjava/util/List;)I
    .registers 6

    .line 5178
    const-class p0, Landroid/app/ActivityManagerInternal;

    .line 5179
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getPendingIntentStats()Ljava/util/List;

    move-result-object p0

    .line 5180
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntentStats;

    .line 5181
    iget v1, v0, Landroid/app/PendingIntentStats;->uid:I

    iget v2, v0, Landroid/app/PendingIntentStats;->count:I

    iget v0, v0, Landroid/app/PendingIntentStats;->sizeKb:I

    invoke-static {p1, v1, v2, v0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIII)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method public pullPowerProfileLocked(ILjava/util/List;)I
    .registers 4

    .line 3416
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    .line 3417
    new-instance p0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 3418
    invoke-virtual {v0, p0}, Lcom/android/internal/os/PowerProfile;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 3419
    invoke-virtual {p0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 3420
    invoke-virtual {p0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[B)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public pullPressureStallInformation(ILjava/util/List;)I
    .registers 23

    .line 5228
    new-instance v0, Lcom/android/server/stats/pull/psi/PsiExtractor;

    invoke-direct {v0}, Lcom/android/server/stats/pull/psi/PsiExtractor;-><init>()V

    .line 5229
    invoke-static {}, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;->values()[Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_c
    if-ge v4, v2, :cond_6d

    aget-object v5, v1, v4

    .line 5230
    invoke-virtual {v0, v5}, Lcom/android/server/stats/pull/psi/PsiExtractor;->getPsiData(Lcom/android/server/stats/pull/psi/PsiData$ResourceType;)Lcom/android/server/stats/pull/psi/PsiData;

    move-result-object v6

    if-nez v6, :cond_35

    .line 5232
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to pull PressureStallInformation atom for resource: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5235
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5232
    const-string v6, "StatsPullAtomService"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v7, p0

    move-object/from16 v6, p2

    goto :goto_6a

    .line 5240
    :cond_35
    invoke-virtual {v6}, Lcom/android/server/stats/pull/psi/PsiData;->getResourceType()Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    move-result-object v5

    move-object/from16 v7, p0

    invoke-virtual {v7, v5}, Lcom/android/server/stats/pull/StatsPullAtomService;->toProtoPsiResourceType(Lcom/android/server/stats/pull/psi/PsiData$ResourceType;)I

    move-result v9

    .line 5241
    invoke-virtual {v6}, Lcom/android/server/stats/pull/psi/PsiData;->getSomeAvg10SecPercentage()F

    move-result v10

    .line 5242
    invoke-virtual {v6}, Lcom/android/server/stats/pull/psi/PsiData;->getSomeAvg60SecPercentage()F

    move-result v11

    .line 5243
    invoke-virtual {v6}, Lcom/android/server/stats/pull/psi/PsiData;->getSomeAvg300SecPercentage()F

    move-result v12

    .line 5244
    invoke-virtual {v6}, Lcom/android/server/stats/pull/psi/PsiData;->getSomeTotalUsec()J

    move-result-wide v13

    .line 5245
    invoke-virtual {v6}, Lcom/android/server/stats/pull/psi/PsiData;->getFullAvg10SecPercentage()F

    move-result v15

    .line 5246
    invoke-virtual {v6}, Lcom/android/server/stats/pull/psi/PsiData;->getFullAvg60SecPercentage()F

    move-result v16

    .line 5247
    invoke-virtual {v6}, Lcom/android/server/stats/pull/psi/PsiData;->getFullAvg300SecPercentage()F

    move-result v17

    .line 5248
    invoke-virtual {v6}, Lcom/android/server/stats/pull/psi/PsiData;->getFullTotalUsec()J

    move-result-wide v18

    move/from16 v8, p1

    .line 5238
    invoke-static/range {v8 .. v19}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIFFFJFFFJ)Landroid/util/StatsEvent;

    move-result-object v5

    move-object/from16 v6, p2

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6a
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_6d
    return v3
.end method

.method public final pullProcStatsLocked(ILjava/util/List;)I
    .registers 8

    .line 3294
    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->getStatsFromProcessStatsService(I)Lcom/android/internal/app/procstats/ProcessStats;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 v0, 0x5

    .line 3298
    new-array v1, v0, [Landroid/util/proto/ProtoOutputStream;

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v0, :cond_19

    .line 3300
    new-instance v4, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v4}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_19
    const-wide/32 v3, 0xe666

    .line 3302
    invoke-virtual {p0, v1, v3, v4}, Lcom/android/internal/app/procstats/ProcessStats;->dumpAggregatedProtoForStatsd([Landroid/util/proto/ProtoOutputStream;J)V

    move p0, v2

    :goto_20
    if-ge p0, v0, :cond_35

    .line 3304
    aget-object v3, v1, p0

    invoke-virtual {v3}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    .line 3305
    array-length v4, v3

    if-lez v4, :cond_32

    .line 3307
    invoke-static {p1, v3, p0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(I[BI)Landroid/util/StatsEvent;

    move-result-object v3

    .line 3306
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_32
    add-int/lit8 p0, p0, 0x1

    goto :goto_20

    :cond_35
    return v2
.end method

.method public final pullProcessAssociationLocked(ILjava/util/List;)I
    .registers 4

    .line 3335
    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->getStatsFromProcessStatsService(I)Lcom/android/internal/app/procstats/ProcessStats;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 3339
    :cond_8
    new-instance v0, Lcom/android/internal/app/procstats/StatsEventOutput;

    invoke-direct {v0, p2}, Lcom/android/internal/app/procstats/StatsEventOutput;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/ProcessStats;->dumpProcessAssociation(ILcom/android/internal/app/procstats/StatsEventOutput;)V

    const/4 p0, 0x0

    return p0
.end method

.method public pullProcessCpuTimeLocked(ILjava/util/List;)I
    .registers 13

    .line 3439
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 3440
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 3441
    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    .line 3443
    :cond_f
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    move v0, v1

    .line 3444
    :goto_15
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v2

    if-ge v0, v2, :cond_37

    .line 3445
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2, v0}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v2

    .line 3446
    iget v4, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    iget-object v5, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget-wide v6, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_utime:J

    iget-wide v8, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->base_stime:J

    move v3, p1

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;JJ)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    move p1, v3

    goto :goto_15

    :cond_37
    return v1
.end method

.method public pullProcessDmabufMemory(ILjava/util/List;)I
    .registers 17

    .line 2710
    invoke-static {}, Lcom/android/internal/os/KernelAllocationStats;->getDmabufAllocations()[Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 2715
    :cond_8
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_2c

    aget-object v3, p0, v2

    .line 2716
    iget v5, v3, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->uid:I

    iget-object v6, v3, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->processName:Ljava/lang/String;

    iget v7, v3, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->oomScore:I

    iget v8, v3, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->retainedSizeKb:I

    iget v9, v3, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->retainedBuffersCount:I

    iget v12, v3, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->surfaceFlingerSizeKb:I

    iget v13, v3, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->surfaceFlingerCount:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v4, p1

    invoke-static/range {v4 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;IIIIIII)Landroid/util/StatsEvent;

    move-result-object v3

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_2c
    return v1
.end method

.method public pullProcessMemoryHighWaterMarkLocked(ILjava/util/List;)I
    .registers 19

    move-object/from16 v0, p2

    .line 2516
    const-class v1, Landroid/app/ActivityManagerInternal;

    .line 2517
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 2518
    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->getMemoryStateForProcesses()Ljava/util/List;

    move-result-object v1

    .line 2519
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-wide/16 v4, 0x400

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ProcessMemoryState;

    .line 2520
    iget v6, v3, Landroid/app/ProcessMemoryState;->pid:I

    invoke-static {v6}, Lcom/android/internal/os/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(I)Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;

    move-result-object v6

    if-nez v6, :cond_29

    goto :goto_12

    .line 2524
    :cond_29
    sget-object v7, Lcom/android/internal/os/ProcfsMemoryUtil$DmaBufType;->RSS_HWM:Lcom/android/internal/os/ProcfsMemoryUtil$DmaBufType;

    iget v8, v3, Landroid/app/ProcessMemoryState;->pid:I

    .line 2525
    invoke-static {v7, v8}, Lcom/android/internal/os/ProcfsMemoryUtil;->readDmabufFromProcfs(Lcom/android/internal/os/ProcfsMemoryUtil$DmaBufType;I)I

    move-result v15

    .line 2526
    iget v10, v3, Landroid/app/ProcessMemoryState;->uid:I

    iget-object v11, v3, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    iget v14, v6, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->rssHighWaterMarkInKilobytes:I

    int-to-long v6, v14

    mul-long v12, v6, v4

    move/from16 v9, p1

    .line 2527
    invoke-static/range {v9 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;JII)Landroid/util/StatsEvent;

    move-result-object v3

    .line 2526
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 2537
    :cond_44
    invoke-static {}, Lcom/android/internal/os/ProcfsMemoryUtil;->getProcessCmdlines()Landroid/util/SparseArray;

    move-result-object v2

    .line 2538
    new-instance v3, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda20;

    invoke-direct {v3, v2}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda20;-><init>(Landroid/util/SparseArray;)V

    invoke-interface {v1, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 2539
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v3, 0x0

    move v13, v3

    :goto_56
    if-ge v13, v1, :cond_85

    .line 2541
    invoke-virtual {v2, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/os/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(I)Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;

    move-result-object v6

    if-nez v6, :cond_63

    goto :goto_82

    .line 2545
    :cond_63
    sget-object v7, Lcom/android/internal/os/ProcfsMemoryUtil$DmaBufType;->RSS_HWM:Lcom/android/internal/os/ProcfsMemoryUtil$DmaBufType;

    .line 2546
    invoke-virtual {v2, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/internal/os/ProcfsMemoryUtil;->readDmabufFromProcfs(Lcom/android/internal/os/ProcfsMemoryUtil$DmaBufType;I)I

    move-result v12

    .line 2547
    iget v7, v6, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->uid:I

    .line 2551
    invoke-virtual {v2, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget v11, v6, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->rssHighWaterMarkInKilobytes:I

    int-to-long v9, v11

    mul-long/2addr v9, v4

    move/from16 v6, p1

    .line 2548
    invoke-static/range {v6 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;JII)Landroid/util/StatsEvent;

    move-result-object v7

    .line 2547
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_82
    add-int/lit8 v13, v13, 0x1

    goto :goto_56

    .line 2558
    :cond_85
    const-string/jumbo v0, "sys.rss_hwm_reset.on"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public pullProcessMemorySnapshot(ILjava/util/List;)I
    .registers 27

    move-object/from16 v0, p2

    .line 2573
    const-class v1, Landroid/app/ActivityManagerInternal;

    .line 2574
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 2575
    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->getMemoryStateForProcesses()Ljava/util/List;

    move-result-object v1

    .line 2577
    invoke-static {}, Lcom/android/internal/os/KernelAllocationStats;->getGpuAllocations()[Lcom/android/internal/os/KernelAllocationStats$ProcessGpuMem;

    move-result-object v2

    .line 2578
    new-instance v3, Landroid/util/SparseIntArray;

    array-length v4, v2

    invoke-direct {v3, v4}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 2579
    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_1b
    if-ge v6, v4, :cond_29

    aget-object v7, v2, v6

    .line 2580
    iget v8, v7, Lcom/android/internal/os/KernelAllocationStats$ProcessGpuMem;->pid:I

    iget v7, v7, Lcom/android/internal/os/KernelAllocationStats$ProcessGpuMem;->gpuMemoryKb:I

    invoke-virtual {v3, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 2582
    :cond_29
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ProcessMemoryState;

    .line 2583
    iget v6, v4, Landroid/app/ProcessMemoryState;->pid:I

    invoke-static {v6}, Lcom/android/internal/os/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(I)Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;

    move-result-object v6

    if-nez v6, :cond_42

    goto :goto_2d

    .line 2587
    :cond_42
    sget-object v7, Lcom/android/internal/os/ProcfsMemoryUtil$DmaBufType;->RSS:Lcom/android/internal/os/ProcfsMemoryUtil$DmaBufType;

    iget v8, v4, Landroid/app/ProcessMemoryState;->pid:I

    .line 2588
    invoke-static {v7, v8}, Lcom/android/internal/os/ProcfsMemoryUtil;->readDmabufFromProcfs(Lcom/android/internal/os/ProcfsMemoryUtil$DmaBufType;I)I

    move-result v23

    .line 2589
    iget v10, v4, Landroid/app/ProcessMemoryState;->uid:I

    iget-object v11, v4, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    iget v12, v4, Landroid/app/ProcessMemoryState;->pid:I

    iget v13, v4, Landroid/app/ProcessMemoryState;->oomScore:I

    iget v14, v6, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->rssInKilobytes:I

    iget v15, v6, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->anonRssInKilobytes:I

    iget v7, v6, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->swapInKilobytes:I

    add-int v17, v15, v7

    .line 2600
    invoke-virtual {v3, v12}, Landroid/util/SparseIntArray;->get(I)I

    move-result v18

    iget-boolean v8, v4, Landroid/app/ProcessMemoryState;->hasForegroundServices:Z

    iget v6, v6, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->rssShmemKilobytes:I

    iget v9, v4, Landroid/app/ProcessMemoryState;->mHostingComponentTypes:I

    iget v4, v4, Landroid/app/ProcessMemoryState;->mHistoricalHostingComponentTypes:I

    move/from16 v22, v4

    move/from16 v20, v6

    move/from16 v16, v7

    move/from16 v19, v8

    move/from16 v21, v9

    move/from16 v9, p1

    .line 2590
    invoke-static/range {v9 .. v23}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;IIIIIIIZIIII)Landroid/util/StatsEvent;

    move-result-object v4

    .line 2589
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 2610
    :cond_7a
    invoke-static {}, Lcom/android/internal/os/ProcfsMemoryUtil;->getProcessCmdlines()Landroid/util/SparseArray;

    move-result-object v2

    .line 2611
    new-instance v4, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda27;

    invoke-direct {v4, v2}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda27;-><init>(Landroid/util/SparseArray;)V

    invoke-interface {v1, v4}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 2612
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v4, v5

    :goto_8b
    if-ge v4, v1, :cond_ca

    .line 2614
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 2615
    invoke-static {v9}, Lcom/android/internal/os/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(I)Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;

    move-result-object v6

    if-nez v6, :cond_98

    goto :goto_c7

    .line 2619
    :cond_98
    sget-object v7, Lcom/android/internal/os/ProcfsMemoryUtil$DmaBufType;->RSS:Lcom/android/internal/os/ProcfsMemoryUtil$DmaBufType;

    invoke-static {v7, v9}, Lcom/android/internal/os/ProcfsMemoryUtil;->readDmabufFromProcfs(Lcom/android/internal/os/ProcfsMemoryUtil$DmaBufType;I)I

    move-result v20

    .line 2620
    iget v7, v6, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->uid:I

    .line 2624
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget v11, v6, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->rssInKilobytes:I

    iget v12, v6, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->anonRssInKilobytes:I

    iget v13, v6, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->swapInKilobytes:I

    add-int v14, v12, v13

    .line 2631
    invoke-virtual {v3, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v15

    iget v6, v6, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->rssShmemKilobytes:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v10, -0x3e9

    const/16 v16, 0x0

    move/from16 v17, v6

    move/from16 v6, p1

    .line 2621
    invoke-static/range {v6 .. v20}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;IIIIIIIZIIII)Landroid/util/StatsEvent;

    move-result-object v7

    .line 2620
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_c7
    add-int/lit8 v4, v4, 0x1

    goto :goto_8b

    :cond_ca
    return v5
.end method

.method public final pullProcessStateLocked(ILjava/util/List;)I
    .registers 4

    .line 3325
    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->getStatsFromProcessStatsService(I)Lcom/android/internal/app/procstats/ProcessStats;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 3329
    :cond_8
    new-instance v0, Lcom/android/internal/app/procstats/StatsEventOutput;

    invoke-direct {v0, p2}, Lcom/android/internal/app/procstats/StatsEventOutput;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/procstats/ProcessStats;->dumpProcessState(ILcom/android/internal/app/procstats/StatsEventOutput;)V

    const/4 p0, 0x0

    return p0
.end method

.method public pullProcessSystemIonHeapSizeLocked(ILjava/util/List;)I
    .registers 14

    .line 2688
    invoke-static {}, Lcom/android/server/stats/pull/IonMemoryUtil;->readProcessSystemIonHeapSizesFromDebugfs()Ljava/util/List;

    move-result-object p0

    .line 2689
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;

    .line 2690
    iget v1, v0, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->pid:I

    invoke-static {v1}, Landroid/os/Process;->getUidForPid(I)I

    move-result v3

    iget v1, v0, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->pid:I

    .line 2691
    invoke-static {v1}, Lcom/android/internal/os/ProcfsMemoryUtil;->readCmdlineFromProcfs(I)Ljava/lang/String;

    move-result-object v4

    iget-wide v1, v0, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->totalSizeInBytes:J

    const-wide/16 v5, 0x400

    div-long/2addr v1, v5

    long-to-int v1, v1

    move-wide v7, v5

    iget v6, v0, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->count:I

    iget-wide v9, v0, Lcom/android/server/stats/pull/IonMemoryUtil$IonAllocations;->maxSizeInBytes:J

    div-long/2addr v9, v7

    long-to-int v7, v9

    move v2, p1

    move v5, v1

    .line 2690
    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;III)Landroid/util/StatsEvent;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p1, v2

    goto :goto_8

    :cond_38
    const/4 p0, 0x0

    return p0
.end method

.method public pullRoleHolderLocked(ILjava/util/List;)I
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 3648
    const-string v3, "StatsPullAtomService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3650
    :try_start_c
    iget-object v6, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 3651
    const-class v7, Lcom/android/role/RoleManagerLocal;

    invoke-static {v7}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/role/RoleManagerLocal;

    .line 3654
    iget-object v0, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v8, Landroid/os/UserManager;

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 3656
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    const/4 v10, 0x0

    :goto_2d
    if-ge v10, v8, :cond_c4

    .line 3658
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/UserInfo;

    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    .line 3660
    invoke-interface {v7, v11}, Lcom/android/role/RoleManagerLocal;->getRolesAndHolders(I)Ljava/util/Map;

    move-result-object v12

    .line 3662
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_49
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_be

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 3663
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 3664
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Set;

    .line 3666
    invoke-interface {v13}, Ljava/util/Set;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_af

    .line 3667
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_ac

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;
    :try_end_77
    .catchall {:try_start_c .. :try_end_77} :catchall_83

    move-object/from16 v16, v0

    const/4 v9, 0x0

    .line 3670
    :try_start_7a
    invoke-virtual {v6, v15, v9, v11}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 3671
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_82
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7a .. :try_end_82} :catch_85
    .catchall {:try_start_7a .. :try_end_82} :catchall_83

    goto :goto_a2

    :catchall_83
    move-exception v0

    goto :goto_c9

    .line 3673
    :catch_85
    :try_start_85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Role holder "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " not found for user "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 3677
    :goto_a2
    invoke-static {v1, v0, v15, v14}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    goto :goto_6b

    :cond_ac
    move-object/from16 v16, v0

    goto :goto_bb

    :cond_af
    move-object/from16 v16, v0

    .line 3682
    const-string v0, ""

    const/4 v9, -0x1

    invoke-static {v1, v9, v0, v14}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_bb
    .catchall {:try_start_85 .. :try_end_bb} :catchall_83

    :goto_bb
    move-object/from16 v0, v16

    goto :goto_49

    :cond_be
    move-object/from16 v16, v0

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2d

    .line 3691
    :cond_c4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v9, 0x0

    return v9

    .line 3688
    :goto_c9
    :try_start_c9
    const-string v1, "Could not read role holders"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ce
    .catchall {:try_start_c9 .. :try_end_ce} :catchall_d3

    .line 3691
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x1

    return v0

    :catchall_d3
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3692
    throw v0
.end method

.method public pullRuntimeAppOpAccessMessageLocked(ILjava/util/List;)I
    .registers 17

    .line 4309
    const-string v1, "StatsPullAtomService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x1

    .line 4311
    :try_start_7
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 4313
    invoke-virtual {v0}, Landroid/app/AppOpsManager;->collectRuntimeAppOpAccessMessage()Landroid/app/RuntimeAppOpAccessMessage;

    move-result-object v0

    const/4 v5, 0x0

    if-nez v0, :cond_24

    .line 4315
    const-string p0, "No runtime appop access message collected"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_21

    .line 4334
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :catchall_21
    move-exception v0

    move-object p0, v0

    goto :goto_6d

    .line 4319
    :cond_24
    :try_start_24
    invoke-virtual {v0}, Landroid/app/RuntimeAppOpAccessMessage;->getOp()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/stats/pull/StatsPullAtomService;->isHealthAppOp(I)Z

    move-result p0
    :try_end_30
    .catchall {:try_start_24 .. :try_end_30} :catchall_21

    if-eqz p0, :cond_36

    .line 4334
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 4324
    :cond_36
    :try_start_36
    invoke-virtual {v0}, Landroid/app/RuntimeAppOpAccessMessage;->getUid()I

    move-result v7

    .line 4325
    invoke-virtual {v0}, Landroid/app/RuntimeAppOpAccessMessage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    .line 4326
    invoke-virtual {v0}, Landroid/app/RuntimeAppOpAccessMessage;->getAttributionTag()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4a

    const-string p0, ""

    :goto_48
    move-object v10, p0

    goto :goto_4f

    :cond_4a
    invoke-virtual {v0}, Landroid/app/RuntimeAppOpAccessMessage;->getAttributionTag()Ljava/lang/String;

    move-result-object p0

    goto :goto_48

    .line 4327
    :goto_4f
    invoke-virtual {v0}, Landroid/app/RuntimeAppOpAccessMessage;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Landroid/app/RuntimeAppOpAccessMessage;->getSamplingStrategy()I

    move-result v12

    .line 4328
    invoke-virtual {v0}, Landroid/app/RuntimeAppOpAccessMessage;->getOp()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v13

    move v6, p1

    .line 4324
    invoke-static/range {v6 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/util/StatsEvent;

    move-result-object p0

    move-object/from16 v0, p2

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_69
    .catchall {:try_start_36 .. :try_end_69} :catchall_21

    .line 4334
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    .line 4331
    :goto_6d
    :try_start_6d
    const-string v0, "Could not read runtime appop access message"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_72
    .catchall {:try_start_6d .. :try_end_72} :catchall_76

    .line 4334
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_76
    move-exception v0

    move-object p0, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4335
    throw p0
.end method

.method public pullSettingsStatsLocked(ILjava/util/List;)I
    .registers 10

    .line 4630
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const/4 v1, 0x1

    if-nez v0, :cond_e

    return v1

    .line 4635
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4637
    :try_start_12
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 4638
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    if-nez v4, :cond_3f

    .line 4641
    iget-object v6, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-static {v6, p1, v5}, Lcom/android/server/stats/pull/SettingsStatsUtil;->logGlobalSettings(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3f

    :catchall_3b
    move-exception p0

    goto :goto_61

    :catch_3d
    move-exception p0

    goto :goto_56

    .line 4644
    :cond_3f
    :goto_3f
    iget-object v5, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, v4}, Lcom/android/server/stats/pull/SettingsStatsUtil;->logSystemSettings(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4645
    iget-object v5, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, v4}, Lcom/android/server/stats/pull/SettingsStatsUtil;->logSecureSettings(Landroid/content/Context;II)Ljava/util/List;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_51} :catch_3d
    .catchall {:try_start_12 .. :try_end_51} :catchall_3b

    goto :goto_1a

    .line 4651
    :cond_52
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    .line 4648
    :goto_56
    :try_start_56
    const-string p1, "StatsPullAtomService"

    const-string p2, "failed to pullSettingsStats"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_3b

    .line 4651
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :goto_61
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4652
    throw p0
.end method

.method public pullSystemElapsedRealtimeLocked(ILjava/util/List;)I
    .registers 5

    .line 2486
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public pullSystemIonHeapSizeLocked(ILjava/util/List;)I
    .registers 5

    .line 2653
    invoke-static {}, Lcom/android/server/stats/pull/IonMemoryUtil;->readSystemIonHeapSizeFromDebugfs()J

    move-result-wide v0

    .line 2654
    invoke-static {p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public pullSystemMemory(ILjava/util/List;)I
    .registers 28

    .line 2743
    invoke-static {}, Lcom/android/server/stats/pull/SystemMemoryUtil;->getMetrics()Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;

    move-result-object v0

    .line 2744
    iget v2, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->unreclaimableSlabKb:I

    iget v3, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->vmallocUsedKb:I

    iget v4, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->pageTablesKb:I

    iget v5, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->kernelStackKb:I

    iget v6, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->totalIonKb:I

    iget v7, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->unaccountedKb:I

    iget v8, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->gpuTotalUsageKb:I

    iget v9, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->gpuPrivateAllocationsKb:I

    iget v10, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->dmaBufTotalExportedKb:I

    iget v11, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->shmemKb:I

    iget v12, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->totalKb:I

    iget v13, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->freeKb:I

    iget v14, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->availableKb:I

    iget v15, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->activeKb:I

    iget v1, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->inactiveKb:I

    move/from16 v16, v1

    iget v1, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->activeAnonKb:I

    move/from16 v17, v1

    iget v1, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->inactiveAnonKb:I

    move/from16 v18, v1

    iget v1, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->activeFileKb:I

    move/from16 v19, v1

    iget v1, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->inactiveFileKb:I

    move/from16 v20, v1

    iget v1, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->swapTotalKb:I

    move/from16 v21, v1

    iget v1, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->swapFreeKb:I

    move/from16 v22, v1

    iget v1, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->cmaTotalKb:I

    iget v0, v0, Lcom/android/server/stats/pull/SystemMemoryUtil$Metrics;->cmaFreeKb:I

    move/from16 v24, v0

    move/from16 v23, v1

    move/from16 v1, p1

    .line 2745
    invoke-static/range {v1 .. v24}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIIIIIIIIIIIIIIIIIIII)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v1, p2

    .line 2744
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public pullSystemServerPinnerStats(ILjava/util/List;)I
    .registers 6

    .line 5332
    const-class p0, Lcom/android/server/pinner/PinnerService;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pinner/PinnerService;

    .line 5333
    invoke-virtual {p0}, Lcom/android/server/pinner/PinnerService;->dumpDataForStatsd()Ljava/util/List;

    move-result-object p0

    .line 5334
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pinner/PinnerService$PinnedFileStats;

    .line 5335
    iget v1, v0, Lcom/android/server/pinner/PinnerService$PinnedFileStats;->uid:I

    iget-object v2, v0, Lcom/android/server/pinner/PinnerService$PinnedFileStats;->filename:Ljava/lang/String;

    iget v0, v0, Lcom/android/server/pinner/PinnerService$PinnedFileStats;->sizeKb:I

    invoke-static {p1, v1, v2, v0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;I)Landroid/util/StatsEvent;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method public pullSystemUptimeLocked(ILjava/util/List;)I
    .registers 5

    .line 2501
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJ)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public pullTemperatureLocked(ILjava/util/List;)I
    .registers 14

    .line 2805
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIThermalService()Landroid/os/IThermalService;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_8

    return v0

    .line 2809
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2811
    :try_start_c
    invoke-interface {p0}, Landroid/os/IThermalService;->getCurrentTemperatures()[Landroid/os/Temperature;

    move-result-object p0

    .line 2812
    array-length v3, p0

    const/4 v4, 0x0

    move v5, v4

    :goto_13
    if-ge v5, v3, :cond_37

    aget-object v6, p0, v5

    .line 2813
    invoke-virtual {v6}, Landroid/os/Temperature;->getType()I

    move-result v7

    .line 2814
    invoke-virtual {v6}, Landroid/os/Temperature;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Landroid/os/Temperature;->getValue()F

    move-result v9

    const/high16 v10, 0x41200000    # 10.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v6}, Landroid/os/Temperature;->getStatus()I

    move-result v6

    .line 2813
    invoke-static {p1, v7, v8, v9, v6}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IILjava/lang/String;II)Landroid/util/StatsEvent;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_32} :catch_3b
    .catchall {:try_start_c .. :try_end_32} :catchall_35

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :catchall_35
    move-exception p0

    goto :goto_46

    .line 2821
    :cond_37
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 2818
    :catch_3b
    :try_start_3b
    const-string p0, "StatsPullAtomService"

    const-string p1, "Disconnected from thermal service. Cannot pull temperatures."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_35

    .line 2821
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :goto_46
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2822
    throw p0
.end method

.method public pullTimeZoneDataInfoLocked(ILjava/util/List;)I
    .registers 3

    .line 3805
    :try_start_0
    invoke-static {}, Landroid/icu/util/TimeZone;->getTZDataVersion()Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_4} :catch_d

    .line 3811
    invoke-static {p1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(ILjava/lang/String;)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0

    :catch_d
    move-exception p0

    .line 3807
    const-string p1, "StatsPullAtomService"

    const-string p2, "Getting tzdb version failed: "

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    return p0
.end method

.method public pullTimeZoneDetectorStateLocked(ILjava/util/List;)I
    .registers 21

    .line 3826
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3828
    :try_start_4
    const-class v0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;

    .line 3829
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;

    .line 3831
    invoke-interface {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorInternal;->generateMetricsState()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;

    move-result-object v0

    .line 3833
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->isTelephonyDetectionSupported()Z

    move-result v4

    .line 3834
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->isGeoDetectionSupported()Z

    move-result v5

    .line 3835
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getUserLocationEnabledSetting()Z

    move-result v6

    .line 3836
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getAutoDetectionEnabledSetting()Z

    move-result v7

    .line 3837
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getGeoDetectionEnabledSetting()Z

    move-result v8

    .line 3838
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getDetectionMode()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->convertToMetricsDetectionMode(I)I

    move-result v9

    .line 3839
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getDeviceTimeZoneIdOrdinal()I

    move-result v10

    .line 3841
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getLatestManualSuggestion()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    move-result-object v3

    .line 3840
    invoke-static {v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->convertTimeZoneSuggestionToProtoBytes(Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;)[B

    move-result-object v11

    .line 3843
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getLatestTelephonySuggestion()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    move-result-object v3

    .line 3842
    invoke-static {v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->convertTimeZoneSuggestionToProtoBytes(Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;)[B

    move-result-object v12

    .line 3845
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getLatestGeolocationSuggestion()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;

    move-result-object v3

    .line 3844
    invoke-static {v3}, Lcom/android/server/stats/pull/StatsPullAtomService;->convertTimeZoneSuggestionToProtoBytes(Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState$MetricsTimeZoneSuggestion;)[B

    move-result-object v13

    .line 3846
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->isTelephonyTimeZoneFallbackSupported()Z

    move-result v14

    .line 3847
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getDeviceTimeZoneId()Ljava/lang/String;

    move-result-object v15

    .line 3848
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->isEnhancedMetricsCollectionEnabled()Z

    move-result v16

    .line 3849
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->getGeoDetectionRunInBackgroundEnabled()Z

    move-result v17

    move/from16 v3, p1

    .line 3832
    invoke-static/range {v3 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IZZZZZII[B[B[BZLjava/lang/String;ZZ)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v3, p2

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_63
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_63} :catch_6a
    .catchall {:try_start_4 .. :try_end_63} :catchall_68

    .line 3855
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    return v0

    :catchall_68
    move-exception v0

    goto :goto_77

    :catch_6a
    move-exception v0

    .line 3852
    :try_start_6b
    const-string v3, "StatsPullAtomService"

    const-string v4, "Getting time zone detection state failed: "

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_72
    .catchall {:try_start_6b .. :try_end_72} :catchall_68

    .line 3855
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x1

    return v0

    :goto_77
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3856
    throw v0
.end method

.method public pullUwbActivityInfoLocked(ILjava/util/List;)I
    .registers 16

    .line 2442
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x1

    .line 2444
    :try_start_5
    new-instance v0, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v4, "uwb"

    invoke-direct {v0, v4}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 2445
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mUwbManager:Landroid/uwb/UwbManager;

    new-instance v4, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    new-instance v5, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda28;

    invoke-direct {v5, v0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda28;-><init>(Landroid/os/SynchronousResultReceiver;)V

    invoke-virtual {p0, v4, v5}, Landroid/uwb/UwbManager;->getUwbActivityEnergyInfoAsync(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2452
    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/uwb/UwbActivityEnergyInfo;
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_22} :catch_48
    .catchall {:try_start_5 .. :try_end_22} :catchall_45

    if-nez p0, :cond_28

    .line 2466
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    .line 2458
    :cond_28
    :try_start_28
    invoke-virtual {p0}, Landroid/uwb/UwbActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v5

    .line 2459
    invoke-virtual {p0}, Landroid/uwb/UwbActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v7

    .line 2460
    invoke-virtual {p0}, Landroid/uwb/UwbActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v9

    .line 2461
    invoke-virtual {p0}, Landroid/uwb/UwbActivityEnergyInfo;->getControllerWakeCount()J

    move-result-wide v11

    move v4, p1

    .line 2457
    invoke-static/range {v4 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJJ)Landroid/util/StatsEvent;

    move-result-object p0

    .line 2456
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_40
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_40} :catch_48
    .catchall {:try_start_28 .. :try_end_40} :catchall_45

    .line 2466
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :catchall_45
    move-exception v0

    move-object p0, v0

    goto :goto_55

    :catch_48
    move-exception v0

    move-object p0, v0

    .line 2463
    :try_start_4a
    const-string p1, "StatsPullAtomService"

    const-string p2, "failed to getUwbActivityEnergyInfoAsync"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_45

    .line 2466
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :goto_55
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2467
    throw p0
.end method

.method public pullVmStat(ILjava/util/List;)I
    .registers 3

    .line 2784
    invoke-static {}, Lcom/android/internal/os/ProcfsMemoryUtil;->readVmStat()Lcom/android/internal/os/ProcfsMemoryUtil$VmStat;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 2786
    iget p0, p0, Lcom/android/internal/os/ProcfsMemoryUtil$VmStat;->oomKillCount:I

    .line 2787
    invoke-static {p1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II)Landroid/util/StatsEvent;

    move-result-object p0

    .line 2786
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public pullVoldLocked(ILjava/util/List;)I
    .registers 5

    .line 4601
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIVoldService()Landroid/os/IVold;

    move-result-object p0

    const/4 v0, 0x1

    .line 4602
    const-string v1, "StatsPullAtomService"

    if-nez p0, :cond_f

    .line 4603
    const-string p0, "Failed getting Vold service"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 4609
    :cond_f
    :try_start_f
    invoke-interface {p0}, Landroid/os/IVold;->getStorageRemainingLifetime()I

    move-result p0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_13} :catch_1c

    .line 4615
    invoke-static {p1, p0}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(II)Landroid/util/StatsEvent;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0

    .line 4611
    :catch_1c
    const-string p0, "Failed fetching Vold remaining lifetime"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public pullWifiActivityInfoLocked(ILjava/util/List;)I
    .registers 19

    move-object/from16 v0, p0

    .line 2309
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x1

    .line 2311
    :try_start_7
    new-instance v4, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v5, "wifi"

    invoke-direct {v4, v5}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 2312
    iget-object v5, v0, Lcom/android/server/stats/pull/StatsPullAtomService;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v6, Lcom/android/server/stats/pull/StatsPullAtomService$2;

    invoke-direct {v6, v0}, Lcom/android/server/stats/pull/StatsPullAtomService$2;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda14;

    invoke-direct {v0, v4}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda14;-><init>(Landroid/os/SynchronousResultReceiver;)V

    invoke-virtual {v5, v6, v0}, Landroid/net/wifi/WifiManager;->getWifiActivityEnergyInfoAsync(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;)V

    .line 2327
    invoke-static {v4}, Lcom/android/server/stats/pull/StatsPullAtomService;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/connectivity/WifiActivityEnergyInfo;
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_24} :catch_54
    .catchall {:try_start_7 .. :try_end_24} :catchall_52

    if-nez v0, :cond_2a

    .line 2341
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    .line 2332
    :cond_2a
    :try_start_2a
    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v5

    .line 2333
    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getStackState()I

    move-result v7

    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v8

    .line 2334
    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v10

    .line 2335
    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v12

    .line 2336
    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v14

    move/from16 v4, p1

    .line 2332
    invoke-static/range {v4 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJIJJJJ)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v4, p2

    .line 2331
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4d
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_4d} :catch_54
    .catchall {:try_start_2a .. :try_end_4d} :catchall_52

    .line 2341
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    return v0

    :catchall_52
    move-exception v0

    goto :goto_60

    :catch_54
    move-exception v0

    .line 2338
    :try_start_55
    const-string v4, "StatsPullAtomService"

    const-string v5, "failed to getWifiActivityEnergyInfoAsync"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5c
    .catchall {:try_start_55 .. :try_end_5c} :catchall_52

    .line 2341
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :goto_60
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2342
    throw v0
.end method

.method public final readProcStatsHighWaterMark(I)J
    .registers 7

    .line 3359
    const-string v0, "StatsPullAtomService"

    const-wide/16 v1, 0x0

    :try_start_4
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mBaseDir:Ljava/io/File;

    new-instance v4, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda24;

    invoke-direct {v4, p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;I)V

    .line 3360
    invoke-virtual {v3, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_4b

    .line 3365
    array-length p1, p0

    if-nez p1, :cond_15

    goto :goto_4b

    .line 3368
    :cond_15
    array-length p1, p0

    const/4 v3, 0x1

    if-le p1, v3, :cond_33

    .line 3369
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Only 1 file expected for high water mark. Found "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p0

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    :catch_2f
    move-exception p0

    goto :goto_4c

    :catch_31
    move-exception p0

    goto :goto_52

    :cond_33
    :goto_33
    const/4 p1, 0x0

    .line 3371
    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "_"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_4a
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4a} :catch_31
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4a} :catch_2f

    return-wide p0

    :cond_4b
    :goto_4b
    return-wide v1

    .line 3375
    :goto_4c
    const-string p1, "Failed to parse file name."

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_57

    .line 3373
    :goto_52
    const-string p1, "Failed to get procstats high watermark file."

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_57
    return-wide v1
.end method

.method public final registerAccessibilityFloatingMenuStats()V
    .registers 5

    .line 4735
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2790

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerAccessibilityShortcutStats()V
    .registers 5

    .line 4725
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x278f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerAppSize()V
    .registers 5

    .line 3048
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x272b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerAppsOnExternalStorageInfo()V
    .registers 5

    .line 3957
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2749

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerBatteryCycleCount()V
    .registers 5

    .line 4481
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x273d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerBatteryHealth()V
    .registers 5

    .line 4491
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x27ec

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerBatteryLevel()V
    .registers 5

    .line 4431
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x273b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerBatteryLife()V
    .registers 5

    .line 4498
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2805

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerBatteryVoltage()V
    .registers 5

    .line 4471
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x272e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerBinderCallsStats()V
    .registers 7

    .line 2860
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/16 v1, 0x8

    const/16 v2, 0xc

    const/4 v3, 0x4

    const/4 v4, 0x5

    const/4 v5, 0x6

    filled-new-array {v3, v4, v5, v1, v2}, [I

    move-result-object v1

    .line 2861
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 2862
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 2863
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2726

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerBinderCallsStatsExceptions()V
    .registers 5

    .line 2894
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2727

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerBluetoothActivityInfo()V
    .registers 5

    .line 2408
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2717

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerBluetoothBytesTransfer()V
    .registers 5

    .line 1950
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x3

    filled-new-array {v1, v2}, [I

    move-result-object v1

    .line 1951
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 1952
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 1953
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2716

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerBuildInformation()V
    .registers 5

    .line 3621
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x273c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerBytesTransferByTagAndMetered()V
    .registers 6

    .line 1885
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x6

    const/4 v2, 0x7

    const/4 v3, 0x4

    const/4 v4, 0x5

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    .line 1886
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 1887
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 1888
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2763

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerCachedAppsHighWatermarkPuller()V
    .registers 5

    .line 5209
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x27cd

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerCategorySize()V
    .registers 5

    .line 3087
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x272c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerCoolingDevice()V
    .registers 5

    .line 2828
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x274b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerCpuActiveTime()V
    .registers 5

    .line 2255
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x2

    filled-new-array {v1}, [I

    move-result-object v1

    .line 2256
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 2257
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 2258
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2720

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerCpuClusterTime()V
    .registers 5

    .line 2277
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x3

    filled-new-array {v1}, [I

    move-result-object v1

    .line 2278
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 2279
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 2280
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2721

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerCpuCyclesPerUidCluster()V
    .registers 5

    .line 2113
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->isSupported()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getClusters()I

    move-result v0

    if-lez v0, :cond_d

    goto :goto_e

    :cond_d
    return-void

    .line 2115
    :cond_e
    :goto_e
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x4

    const/4 v2, 0x5

    const/4 v3, 0x3

    filled-new-array {v3, v1, v2}, [I

    move-result-object v1

    .line 2116
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 2117
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 2118
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2770

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerCpuTimePerClusterFreq()V
    .registers 5

    .line 2058
    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2060
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x3

    filled-new-array {v1}, [I

    move-result-object v1

    .line 2061
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 2062
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 2063
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x276f

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    :cond_23
    return-void
.end method

.method public final registerCpuTimePerThreadFreq()V
    .registers 5

    .line 3454
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_20

    .line 3455
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 3456
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 3457
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2735

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void

    :array_20
    .array-data 4
        0x7
        0x9
        0xb
        0xd
        0xf
        0x11
        0x13
        0x15
    .end array-data
.end method

.method public final registerCpuTimePerUid()V
    .registers 5

    .line 2090
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x3

    filled-new-array {v1, v2}, [I

    move-result-object v1

    .line 2091
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 2092
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 2093
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2719

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerCpuTimePerUidFreq()V
    .registers 5

    .line 2200
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x3

    filled-new-array {v1}, [I

    move-result-object v1

    .line 2201
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 2202
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 2203
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x271a

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerDangerousPermissionState()V
    .registers 5

    .line 3698
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2742

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerDangerousPermissionStateSampled()V
    .registers 5

    .line 4421
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2753

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerDataUsageBytesTransfer()V
    .registers 6

    .line 1898
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x4

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x3

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    .line 1899
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 1900
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 1901
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2762

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerDebugElapsedClock()V
    .registers 6

    .line 3552
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x2

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    .line 3553
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 3554
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 3555
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x273e

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerDebugFailingElapsedClock()V
    .registers 6

    .line 3587
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x2

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    .line 3588
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 3589
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 3590
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x273f

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerDeviceCalculatedPowerUse()V
    .registers 5

    .line 3529
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2737

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerDirectoryUsage()V
    .registers 5

    .line 3014
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x272a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerDiskIO()V
    .registers 5

    .line 3382
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_26

    .line 3383
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    .line 3384
    invoke-virtual {v0, v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setCoolDownMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 3385
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 3386
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2730

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void

    :array_26
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data
.end method

.method public final registerDiskStats()V
    .registers 5

    .line 2954
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2729

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerEthernetBytesTransfer()V
    .registers 6

    .line 1924
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x7

    const/16 v2, 0x8

    const/4 v3, 0x5

    const/4 v4, 0x6

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    .line 1925
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 1926
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 1927
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2809

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public registerEventListeners()V
    .registers 4

    .line 974
    const-string v0, "StatsPullAtomService"

    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->getIThermalService()Landroid/os/IThermalService;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 977
    :try_start_8
    new-instance v1, Lcom/android/server/stats/pull/StatsPullAtomService$ThermalEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/stats/pull/StatsPullAtomService$ThermalEventListener;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService-IA;)V

    invoke-interface {p0, v1}, Landroid/os/IThermalService;->registerThermalEventListener(Landroid/os/IThermalEventListener;)Z

    .line 978
    const-string/jumbo p0, "register thermal listener successfully"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_17} :catch_18

    return-void

    .line 980
    :catch_18
    const-string p0, "failed to register thermal listener"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return-void
.end method

.method public final registerExternalStorageInfo()V
    .registers 5

    .line 3912
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2745

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerFaceSettings()V
    .registers 5

    .line 4009
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x274a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerFullBatteryCapacity()V
    .registers 5

    .line 4451
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2724

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerFullBatteryDesignCapacity()V
    .registers 5

    .line 4461
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2806

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerHdrCapabilitiesPuller()V
    .registers 5

    .line 5199
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x27bf

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerInstalledIncrementalPackages()V
    .registers 5

    .line 4658
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2782

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerIonHeapSize()V
    .registers 5

    .line 2659
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/kernel/ion/total_heaps_kb"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    .line 2663
    :cond_e
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2756

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerKernelWakelock()V
    .registers 5

    .line 2037
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2714

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerKeystorePullers()V
    .registers 9

    const/16 v0, 0xa

    .line 4701
    new-array v1, v0, [I

    fill-array-data v1, :array_1a

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_19

    .line 4714
    aget v3, v1, v2

    .line 4715
    iget-object v4, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v5, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v6, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v7, 0x0

    invoke-virtual {v4, v3, v7, v5, v6}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_19
    return-void

    :array_1a
    .array-data 4
        0x2777
        0x2786
        0x2787
        0x2788
        0x2789
        0x278a
        0x278b
        0x278c
        0x278d
        0x2808
    .end array-data
.end method

.method public final registerLooperStats()V
    .registers 7

    .line 2922
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/16 v1, 0x8

    const/16 v2, 0x9

    const/4 v3, 0x5

    const/4 v4, 0x6

    const/4 v5, 0x7

    filled-new-array {v3, v4, v5, v1, v2}, [I

    move-result-object v1

    .line 2923
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 2924
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 2925
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2728

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerMediaCapabilitiesStats()V
    .registers 5

    .line 4745
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2792

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerMemcgInformation()V
    .registers 5

    .line 5255
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const-wide/16 v2, 0x3e8

    .line 5258
    invoke-virtual {v1, v2, v3}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setCoolDownMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 5259
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x280b

    .line 5255
    invoke-virtual {v0, v3, v1, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerMemcgMemoryHighWaterMark()V
    .registers 5

    .line 5267
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    new-instance v1, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const-wide/16 v2, 0x3e8

    .line 5270
    invoke-virtual {v1, v2, v3}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setCoolDownMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v1

    .line 5271
    invoke-virtual {v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v1

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x280c

    .line 5267
    invoke-virtual {v0, v3, v1, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerMobileBytesTransfer()V
    .registers 6

    .line 1846
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x4

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x3

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    .line 1847
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 1848
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 1849
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2712

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerMobileBytesTransferBackground()V
    .registers 6

    .line 1859
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x5

    const/4 v2, 0x6

    const/4 v3, 0x3

    const/4 v4, 0x4

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    .line 1860
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 1861
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 1862
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2713

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerMobileBytesTransferByProcState()V
    .registers 6

    .line 1168
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x5

    const/4 v2, 0x6

    const/4 v3, 0x3

    const/4 v4, 0x4

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    .line 1169
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 1170
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x27dc

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerModemActivityInfo()V
    .registers 5

    .line 2348
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x271c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerNotificationRemoteViews()V
    .registers 5

    .line 4377
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2752

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerNumFacesEnrolled()V
    .registers 5

    .line 3160
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2740

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerNumFingerprintsEnrolled()V
    .registers 5

    .line 3150
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x272f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerOemManagedBytesTransfer()V
    .registers 6

    .line 1911
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x7

    const/16 v2, 0x8

    const/4 v3, 0x5

    const/4 v4, 0x6

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    .line 1912
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 1913
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 1914
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2774

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerPendingIntentsPerPackagePuller()V
    .registers 5

    .line 5129
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x27a7

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerPinnerServiceStats()V
    .registers 5

    .line 5189
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x27a6

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerPowerProfile()V
    .registers 5

    .line 3407
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2731

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerPressureStallInformation()V
    .registers 5

    .line 5219
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x27f5

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerProcStats()V
    .registers 5

    .line 3214
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x272d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerProcStatsPkgProc()V
    .registers 5

    .line 3224
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2732

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerProcessAssociation()V
    .registers 5

    .line 3243
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x27bc

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerProcessCpuTime()V
    .registers 5

    .line 3427
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const-wide/16 v1, 0x1388

    .line 3428
    invoke-virtual {v0, v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setCoolDownMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 3429
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 3430
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2733

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerProcessDmabufMemory()V
    .registers 5

    .line 2700
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2779

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerProcessMemoryHighWaterMark()V
    .registers 5

    .line 2507
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x273a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerProcessMemorySnapshot()V
    .registers 5

    .line 2564
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2750

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerProcessState()V
    .registers 5

    .line 3234
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x27bb

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerProcessSystemIonHeapSize()V
    .registers 5

    .line 2679
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x274d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerProxyBytesTransferBackground()V
    .registers 6

    .line 1872
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x5

    const/4 v2, 0x6

    const/4 v3, 0x3

    const/4 v4, 0x4

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    .line 1873
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 1874
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 1875
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x27d8

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public registerPullers()V
    .registers 3

    .line 989
    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;Lcom/android/server/stats/pull/StatsPullAtomService-IA;)V

    iput-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    .line 990
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBluetoothBytesTransfer()V

    .line 991
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKernelWakelock()V

    .line 992
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuTimePerClusterFreq()V

    .line 993
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuTimePerUid()V

    .line 994
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuCyclesPerUidCluster()V

    .line 995
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuTimePerUidFreq()V

    .line 996
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuActiveTime()V

    .line 997
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuClusterTime()V

    .line 998
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerWifiActivityInfo()V

    .line 999
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerModemActivityInfo()V

    .line 1000
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBluetoothActivityInfo()V

    .line 1001
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerSystemElapsedRealtime()V

    .line 1002
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerSystemUptime()V

    .line 1003
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessMemoryHighWaterMark()V

    .line 1004
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessMemorySnapshot()V

    .line 1005
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerSystemIonHeapSize()V

    .line 1006
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerIonHeapSize()V

    .line 1007
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessSystemIonHeapSize()V

    .line 1008
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerSystemMemory()V

    .line 1009
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessDmabufMemory()V

    .line 1010
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerVmStat()V

    .line 1011
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerTemperature()V

    .line 1012
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCoolingDevice()V

    .line 1013
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBinderCallsStats()V

    .line 1014
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBinderCallsStatsExceptions()V

    .line 1015
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerLooperStats()V

    .line 1016
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDiskStats()V

    .line 1017
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDirectoryUsage()V

    .line 1018
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerAppSize()V

    .line 1019
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCategorySize()V

    .line 1020
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerNumFingerprintsEnrolled()V

    .line 1021
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerNumFacesEnrolled()V

    .line 1022
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcStats()V

    .line 1023
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcStatsPkgProc()V

    .line 1024
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessState()V

    .line 1025
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessAssociation()V

    .line 1026
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDiskIO()V

    .line 1027
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerPowerProfile()V

    .line 1028
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerProcessCpuTime()V

    .line 1029
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCpuTimePerThreadFreq()V

    .line 1030
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDeviceCalculatedPowerUse()V

    .line 1031
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDebugElapsedClock()V

    .line 1032
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDebugFailingElapsedClock()V

    .line 1033
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBuildInformation()V

    .line 1034
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerRoleHolder()V

    .line 1035
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerTimeZoneDataInfo()V

    .line 1036
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerTimeZoneDetectorState()V

    .line 1037
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerExternalStorageInfo()V

    .line 1038
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerAppsOnExternalStorageInfo()V

    .line 1039
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerFaceSettings()V

    .line 1044
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerRuntimeAppOpAccessMessage()V

    .line 1045
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerNotificationRemoteViews()V

    .line 1046
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDangerousPermissionState()V

    .line 1047
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerDangerousPermissionStateSampled()V

    .line 1048
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBatteryLevel()V

    .line 1049
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerRemainingBatteryCapacity()V

    .line 1050
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerFullBatteryCapacity()V

    .line 1051
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerFullBatteryDesignCapacity()V

    .line 1052
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBatteryVoltage()V

    .line 1053
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBatteryCycleCount()V

    .line 1054
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBatteryHealth()V

    .line 1055
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerSettingsStats()V

    .line 1056
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerStorageHealth()V

    .line 1057
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerInstalledIncrementalPackages()V

    .line 1058
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerKeystorePullers()V

    .line 1059
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerAccessibilityShortcutStats()V

    .line 1060
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerAccessibilityFloatingMenuStats()V

    .line 1061
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerMediaCapabilitiesStats()V

    .line 1062
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerPendingIntentsPerPackagePuller()V

    .line 1063
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerPinnerServiceStats()V

    .line 1064
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerHdrCapabilitiesPuller()V

    .line 1065
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerCachedAppsHighWatermarkPuller()V

    .line 1066
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerPressureStallInformation()V

    .line 1067
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerBatteryLife()V

    .line 1068
    sget-boolean v0, Lcom/android/server/stats/pull/StatsPullAtomService;->ENABLE_MEMCG_STATS_PULLER:Z

    if-eqz v0, :cond_f0

    .line 1069
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerMemcgInformation()V

    .line 1070
    invoke-virtual {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->registerMemcgMemoryHighWaterMark()V

    :cond_f0
    return-void
.end method

.method public final registerRemainingBatteryCapacity()V
    .registers 5

    .line 4441
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2723

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerRoleHolder()V
    .registers 5

    .line 3638
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2741

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerRuntimeAppOpAccessMessage()V
    .registers 5

    .line 4071
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2755

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerSatelliteBytesTransfer()V
    .registers 6

    .line 1937
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x7

    const/16 v2, 0x8

    const/4 v3, 0x5

    const/4 v4, 0x6

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    .line 1938
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 1939
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 1940
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x280a

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerSettingsStats()V
    .registers 5

    .line 4621
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2760

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerStorageHealth()V
    .registers 5

    .line 4592
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x27ff

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerSystemElapsedRealtime()V
    .registers 5

    .line 2473
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const-wide/16 v1, 0x3e8

    .line 2474
    invoke-virtual {v0, v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setCoolDownMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 2475
    invoke-virtual {v0, v1, v2}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setTimeoutMillis(J)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 2476
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 2477
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x271e

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerSystemIonHeapSize()V
    .registers 5

    .line 2644
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2748

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerSystemMemory()V
    .registers 5

    .line 2734
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x276c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerSystemUptime()V
    .registers 5

    .line 2492
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x271f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerTemperature()V
    .registers 5

    .line 2796
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2725

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerTimeZoneDataInfo()V
    .registers 5

    .line 3794
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2744

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerTimeZoneDetectorState()V
    .registers 5

    .line 3817
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2776

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerUwbActivityInfo()V
    .registers 5

    .line 2429
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mUwbManager:Landroid/uwb/UwbManager;

    if-nez v0, :cond_5

    return-void

    .line 2433
    :cond_5
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x27cc

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerVmStat()V
    .registers 5

    .line 2775
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x2785

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerWifiActivityInfo()V
    .registers 5

    .line 2300
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v2, 0x271b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerWifiBytesTransfer()V
    .registers 6

    .line 1315
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x4

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x3

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    .line 1316
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 1317
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 1318
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2710

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final registerWifiBytesTransferBackground()V
    .registers 6

    .line 1833
    new-instance v0, Landroid/app/StatsManager$PullAtomMetadata$Builder;

    invoke-direct {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;-><init>()V

    const/4 v1, 0x5

    const/4 v2, 0x6

    const/4 v3, 0x3

    const/4 v4, 0x4

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    .line 1834
    invoke-virtual {v0, v1}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->setAdditiveFields([I)Landroid/app/StatsManager$PullAtomMetadata$Builder;

    move-result-object v0

    .line 1835
    invoke-virtual {v0}, Landroid/app/StatsManager$PullAtomMetadata$Builder;->build()Landroid/app/StatsManager$PullAtomMetadata;

    move-result-object v0

    .line 1836
    iget-object v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsManager:Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService;->mStatsCallbackImpl:Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;

    const/16 v3, 0x2711

    invoke-virtual {v1, v3, v0, v2, p0}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method public final sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/Function;)Landroid/net/NetworkStats;
    .registers 5

    .line 1816
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1817
    invoke-virtual {p1}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStats$Entry;

    .line 1818
    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStats$Entry;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1820
    :cond_1f
    invoke-static {}, Lcom/android/server/stats/pull/netstats/NetworkStatsUtils;->isAddEntriesSupported()Z

    move-result p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_35

    .line 1821
    new-instance p1, Landroid/net/NetworkStats;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-direct {p1, v0, v1, p2}, Landroid/net/NetworkStats;-><init>(JI)V

    invoke-virtual {p1, p0}, Landroid/net/NetworkStats;->addEntries(Ljava/util/List;)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0

    .line 1823
    :cond_35
    new-instance p1, Landroid/net/NetworkStats;

    const/4 p2, 0x1

    invoke-direct {p1, v0, v1, p2}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 1824
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_40
    if-ge v0, p2, :cond_4f

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Landroid/net/NetworkStats$Entry;

    .line 1825
    invoke-virtual {p1, v1}, Landroid/net/NetworkStats;->addEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object p1

    goto :goto_40

    :cond_4f
    return-object p1
.end method

.method public final sliceNetworkStatsByFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .registers 3

    .line 1754
    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/Function;)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method public final sliceNetworkStatsByUid(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .registers 3

    .line 1741
    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/Function;)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method public final sliceNetworkStatsByUidAndFgbg(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .registers 3

    .line 1767
    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/Function;)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method public final sliceNetworkStatsByUidTagAndMetered(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .registers 3

    .line 1780
    new-instance v0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->sliceNetworkStats(Landroid/net/NetworkStats;Ljava/util/function/Function;)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method public final subInfoisOpportunistic(Lcom/android/server/stats/pull/netstats/SubInfo;)I
    .registers 2

    .line 1472
    iget-boolean p0, p1, Lcom/android/server/stats/pull/netstats/SubInfo;->isOpportunistic:Z

    if-eqz p0, :cond_6

    const/4 p0, 0x2

    return p0

    :cond_6
    const/4 p0, 0x3

    return p0
.end method

.method public final toBytes(Ljava/util/List;)[B
    .registers 5

    .line 5342
    new-instance p0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 5343
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-wide v1, 0x20e00000001L

    .line 5344
    invoke-virtual {p0, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_9

    .line 5348
    :cond_22
    invoke-virtual {p0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public final toBytes([I)[B
    .registers 7

    .line 5352
    new-instance p0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 5353
    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_16

    aget v2, p1, v1

    const-wide v3, 0x20e00000001L

    .line 5354
    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 5358
    :cond_16
    invoke-virtual {p0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public final toBytes([Landroid/view/Display$Mode;)[B
    .registers 10

    .line 5362
    invoke-virtual {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->createModeGroups([Landroid/view/Display$Mode;)Ljava/util/Map;

    move-result-object p0

    .line 5363
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 5364
    array-length v1, p1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_61

    aget-object v3, p1, v2

    .line 5365
    new-instance v4, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v4}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    const-wide v5, 0x10500000001L

    .line 5368
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v7

    .line 5366
    invoke-virtual {v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10500000002L

    .line 5371
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v7

    .line 5369
    invoke-virtual {v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10200000003L

    .line 5374
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v7

    .line 5372
    invoke-virtual {v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 5377
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-wide v5, 0x10500000004L

    .line 5375
    invoke-virtual {v4, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x20b00000001L

    .line 5381
    invoke-virtual {v4}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    .line 5378
    invoke-virtual {v0, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 5383
    :cond_61
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public final toProtoPsiResourceType(Lcom/android/server/stats/pull/psi/PsiData$ResourceType;)I
    .registers 2

    .line 5319
    sget-object p0, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;->CPU:Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 5321
    :cond_6
    sget-object p0, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;->MEMORY:Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    if-ne p1, p0, :cond_c

    const/4 p0, 0x2

    return p0

    .line 5323
    :cond_c
    sget-object p0, Lcom/android/server/stats/pull/psi/PsiData$ResourceType;->IO:Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    if-ne p1, p0, :cond_12

    const/4 p0, 0x3

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method
